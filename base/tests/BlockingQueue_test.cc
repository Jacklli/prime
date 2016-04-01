#include <prime/base/BlockingQueue.h>
#include <prime/base/CountDownLatch.h>
#include <prime/base/Thread.h>

#include <boost/bind.hpp>
#include <boost/ptr_container/ptr_vector.hpp>
#include <string>
#include <stdio.h>
#include <unistd.h>

class Test
{
 public:
  Test(int numThreads)
    : latch_(numThreads),
      threads_(numThreads)
  {
    for (int i = 0; i < numThreads; ++i)
    {
      char name[32];
      snprintf(name, sizeof name, "work thread %d", i);
      threads_.push_back(new prime::Thread(
            boost::bind(&Test::threadFunc, this), prime::string(name)));
    }
    for_each(threads_.begin(), threads_.end(), boost::bind(&prime::Thread::start, _1));
  }

  void run(int times)
  {
    printf("waiting for count down latch\n");
    latch_.wait();
    printf("all threads started\n");
    for (int i = 0; i < times; ++i)
    {
      char buf[32];
      snprintf(buf, sizeof buf, "hello %d", i);
      queue_.put(buf);
      printf("tid=%d, put data = %s, size = %zd\n", prime::CurrentThread::tid(), buf, queue_.size());
    }
  }

  void joinAll()
  {
    for (size_t i = 0; i < threads_.size(); ++i)
    {
      queue_.put("stop");
    }

    for_each(threads_.begin(), threads_.end(), boost::bind(&prime::Thread::join, _1));
  }

 private:

  void threadFunc()
  {
    printf("tid=%d, %s started\n",
           prime::CurrentThread::tid(),
           prime::CurrentThread::name());

    latch_.countDown();
    bool running = true;
    while (running)
    {
      std::string d(queue_.take());
      printf("tid=%d, get data = %s, size = %zd\n", prime::CurrentThread::tid(), d.c_str(), queue_.size());
      running = (d != "stop");
    }

    printf("tid=%d, %s stopped\n",
           prime::CurrentThread::tid(),
           prime::CurrentThread::name());
  }

  prime::BlockingQueue<std::string> queue_;
  prime::CountDownLatch latch_;
  boost::ptr_vector<prime::Thread> threads_;
};

int main()
{
  printf("pid=%d, tid=%d\n", ::getpid(), prime::CurrentThread::tid());
  Test t(5);
  t.run(100);
  t.joinAll();

  printf("number of created threads %d\n", prime::Thread::numCreated());
}

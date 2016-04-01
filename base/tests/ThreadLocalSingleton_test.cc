#include <prime/base/ThreadLocalSingleton.h>
#include <prime/base/CurrentThread.h>
#include <prime/base/Thread.h>

#include <boost/bind.hpp>
#include <boost/noncopyable.hpp>
#include <stdio.h>

class Test : boost::noncopyable
{
 public:
  Test()
  {
    printf("tid=%d, constructing %p\n", prime::CurrentThread::tid(), this);
  }

  ~Test()
  {
    printf("tid=%d, destructing %p %s\n", prime::CurrentThread::tid(), this, name_.c_str());
  }

  const prime::string& name() const { return name_; }
  void setName(const prime::string& n) { name_ = n; }

 private:
  prime::string name_;
};

void threadFunc(const char* changeTo)
{
  printf("tid=%d, %p name=%s\n",
         prime::CurrentThread::tid(),
         &prime::ThreadLocalSingleton<Test>::instance(),
         prime::ThreadLocalSingleton<Test>::instance().name().c_str());
  prime::ThreadLocalSingleton<Test>::instance().setName(changeTo);
  printf("tid=%d, %p name=%s\n",
         prime::CurrentThread::tid(),
         &prime::ThreadLocalSingleton<Test>::instance(),
         prime::ThreadLocalSingleton<Test>::instance().name().c_str());

  // no need to manually delete it
  // prime::ThreadLocalSingleton<Test>::destroy();
}

int main()
{
  prime::ThreadLocalSingleton<Test>::instance().setName("main one");
  prime::Thread t1(boost::bind(threadFunc, "thread1"));
  prime::Thread t2(boost::bind(threadFunc, "thread2"));
  t1.start();
  t2.start();
  t1.join();
  printf("tid=%d, %p name=%s\n",
         prime::CurrentThread::tid(),
         &prime::ThreadLocalSingleton<Test>::instance(),
         prime::ThreadLocalSingleton<Test>::instance().name().c_str());
  t2.join();

  pthread_exit(0);
}

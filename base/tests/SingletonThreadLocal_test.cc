#include <prime/base/Singleton.h>
#include <prime/base/CurrentThread.h>
#include <prime/base/ThreadLocal.h>
#include <prime/base/Thread.h>

#include <boost/bind.hpp>
#include <boost/noncopyable.hpp>
#include <stdio.h>
#include <unistd.h>

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

#define STL prime::Singleton<prime::ThreadLocal<Test> >::instance().value()

void print()
{
  printf("tid=%d, %p name=%s\n",
         prime::CurrentThread::tid(),
         &STL,
         STL.name().c_str());
}

void threadFunc(const char* changeTo)
{
  print();
  STL.setName(changeTo);
  sleep(1);
  print();
}

int main()
{
  STL.setName("main one");
  prime::Thread t1(boost::bind(threadFunc, "thread1"));
  prime::Thread t2(boost::bind(threadFunc, "thread2"));
  t1.start();
  t2.start();
  t1.join();
  print();
  t2.join();
  pthread_exit(0);
}

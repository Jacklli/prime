#include <prime/base/Singleton.h>
#include <prime/base/CurrentThread.h>
#include <prime/base/Thread.h>

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

void threadFunc()
{
  printf("tid=%d, %p name=%s\n",
         prime::CurrentThread::tid(),
         &prime::Singleton<Test>::instance(),
         prime::Singleton<Test>::instance().name().c_str());
  prime::Singleton<Test>::instance().setName("only one, changed");
}

int main()
{
  prime::Singleton<Test>::instance().setName("only one");
  prime::Thread t1(threadFunc);
  t1.start();
  t1.join();
  printf("tid=%d, %p name=%s\n",
         prime::CurrentThread::tid(),
         &prime::Singleton<Test>::instance(),
         prime::Singleton<Test>::instance().name().c_str());
}

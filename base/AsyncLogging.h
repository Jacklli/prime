#ifndef MUDUO_BASE_ASYNCLOGGING_H
#define MUDUO_BASE_ASYNCLOGGING_H

#include <prime/base/CountDownLatch.h>
#include <prime/base/Mutex.h>
#include <prime/base/Thread.h>

#include <prime/base/LogStream.h>

#include <boost/bind.hpp>
#include <boost/noncopyable.hpp>
#include <boost/scoped_ptr.hpp>
#include <boost/ptr_container/ptr_vector.hpp>

namespace prime
{

class AsyncLogging : boost::noncopyable
{
 public:

  AsyncLogging(const string& basename,
               size_t rollSize,
               int flushInterval = 3);

  ~AsyncLogging()
  {
    if (running_)
    {
      stop();
    }
  }

  void append(const char* logline, int len);

  void start()
  {
    running_ = true;
    thread_.start();
    latch_.wait();
  }

  void stop()
  {
    running_ = false;
    cond_.notify();
    thread_.join();
  }

 private:

  // declare but not define, prevent compiler-synthesized functions
  AsyncLogging(const AsyncLogging&);  // ptr_container
  void operator=(const AsyncLogging&);  // ptr_container

  void threadFunc();

  typedef prime::detail::FixedBuffer<prime::detail::kLargeBuffer> Buffer;
  typedef boost::ptr_vector<Buffer> BufferVector;
  typedef BufferVector::auto_type BufferPtr;

  const int flushInterval_;
  bool running_;
  string basename_;
  size_t rollSize_;
  prime::Thread thread_;
  prime::CountDownLatch latch_;
  prime::MutexLock mutex_;
  prime::Condition cond_;
  BufferPtr currentBuffer_;
  BufferPtr nextBuffer_;
  BufferVector buffers_;
};

}
#endif  // MUDUO_BASE_ASYNCLOGGING_H

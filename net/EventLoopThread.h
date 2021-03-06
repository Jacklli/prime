// Copyright 2010, Shuo Chen.  All rights reserved.
// http://code.google.com/p/prime/
//
// Use of this source code is governed by a BSD-style license
// that can be found in the License file.

// Author: Shuo Chen (chenshuo at chenshuo dot com)
//
// This is a public header file, it must only include public header files.

#ifndef MUDUO_NET_EVENTLOOPTHREAD_H
#define MUDUO_NET_EVENTLOOPTHREAD_H

#include <prime/base/Condition.h>
#include <prime/base/Mutex.h>
#include <prime/base/Thread.h>

#include <boost/noncopyable.hpp>

namespace prime
{
namespace net
{

class EventLoop;

class EventLoopThread : boost::noncopyable
{
 public:
  typedef boost::function<void(EventLoop*)> ThreadInitCallback;

  EventLoopThread(const ThreadInitCallback& cb = ThreadInitCallback());
  ~EventLoopThread();
  EventLoop* startLoop();

 private:
  void threadFunc();

  EventLoop* loop_;
  bool exiting_;
  Thread thread_;
  MutexLock mutex_;
  Condition cond_;
  ThreadInitCallback callback_;
};

}
}

#endif  // MUDUO_NET_EVENTLOOPTHREAD_H


// Copyright 2010, Shuo Chen.  All rights reserved.
// http://code.google.com/p/prime/
//
// Use of this source code is governed by a BSD-style license
// that can be found in the License file.

// Author: Shuo Chen (chenshuo at chenshuo dot com)

#include <prime/net/Poller.h>

using namespace prime;
using namespace prime::net;

Poller::Poller(EventLoop* loop)
  : ownerLoop_(loop)
{
}

Poller::~Poller()
{
}


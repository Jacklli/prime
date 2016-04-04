include_directories("/root/") #the root path of the project

set(net_SRCS
  /root/prime/net/Acceptor.cc
  /root/prime/net/Buffer.cc
  /root/prime/net/Channel.cc
  /root/prime/net/Connector.cc
  /root/prime/net/EventLoop.cc
  /root/prime/net/InetAddress.cc
  /root/prime/net/Poller.cc
  /root/prime/net/poller/DefaultPoller.cc
  /root/prime/net/poller/EPollPoller.cc
  /root/prime/net/poller/PollPoller.cc
  /root/prime/net/Socket.cc
  /root/prime/net/SocketsOps.cc
  /root/prime/net/TcpClient.cc
  /root/prime/net/TcpConnection.cc
  /root/prime/net/TcpServer.cc
  /root/prime/net/Timer.cc
  /root/prime/net/TimerQueue.cc
  )

set(base_SRCS
  /root/prime/base/AsyncLogging.cc
  /root/prime/base/Condition.cc
  /root/prime/base/CountDownLatch.cc
  /root/prime/base/Date.cc
  /root/prime/base/Exception.cc
  /root/prime/base/FileUtil.cc
  /root/prime/base/LogFile.cc
  /root/prime/base/Logging.cc
  /root/prime/base/LogStream.cc
  /root/prime/base/ProcessInfo.cc
  /root/prime/base/Timestamp.cc
  /root/prime/base/TimeZone.cc
  /root/prime/base/Thread.cc
  )

set(CXX_FLAGS
 -g
 # -DVALGRIND
 # -DMUDUO_STD_STRING
 -DCHECK_PTHREAD_RETURN_VALUE
 -D_FILE_OFFSET_BITS=64
 -Wall
 -Wextra
 -Werror
 -Wconversion
 -Wno-unused-parameter
 -Wold-style-cast
 -Woverloaded-virtual
 -Wpointer-arith
 -Wshadow
 -Wwrite-strings
 -march=native
 # -MMD
 # -std=c++0x
 -rdynamic
 )

if(CMAKE_BUILD_BITS EQUAL 32)
  list(APPEND CXX_FLAGS "-m32")
endif()
string(REPLACE ";" " " CMAKE_CXX_FLAGS "${CXX_FLAGS}")


add_library(prime_net ${net_SRCS})
add_library(prime_base ${base_SRCS})

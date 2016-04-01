include_directories("/root/") #the root path of the project
#include_directories("/root/prime/net")

set(net_SRCS
  /root/prime/net/Acceptor.cc
  /root/prime/net/Buffer.cc
  /root/prime/net/Channel.cc
  /root/prime/net/Connector.cc
  /root/prime/net/EventLoop.cc
  /root/prime/net/EventLoopThread.cc
  /root/prime/net/EventLoopThreadPool.cc
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
  /root/prime/base/ThreadPool.cc
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


add_library(prime_base ${base_SRCS})
add_library(prime_net ${net_SRCS})

target_link_libraries(prime_base pthread rt)
target_link_libraries(prime_net prime_base)

add_executable(echoserver_unittest ../EchoServer_unittest.cc)
target_link_libraries(echoserver_unittest prime_net prime_base)

add_executable(echoclient_unittest ../EchoClient_unittest.cc)
target_link_libraries(echoclient_unittest prime_net)

add_executable(eventloop_unittest ../EventLoop_unittest.cc)
target_link_libraries(eventloop_unittest prime_net)

add_executable(eventloopthread_unittest ../EventLoopThread_unittest.cc)
target_link_libraries(eventloopthread_unittest prime_net)

add_executable(eventloopthreadpool_unittest ../EventLoopThreadPool_unittest.cc)
target_link_libraries(eventloopthreadpool_unittest prime_net)

if(BOOSTTEST_LIBRARY)
add_executable(buffer_unittest ../Buffer_unittest.cc)
target_link_libraries(buffer_unittest prime_net boost_unit_test_framework)

add_executable(buffer_cpp11_unittest ../Buffer_unittest.cc)
target_link_libraries(buffer_cpp11_unittest prime_net_cpp11 boost_unit_test_framework)
set_target_properties(buffer_cpp11_unittest PROPERTIES COMPILE_FLAGS "-std=c++0x")

add_executable(inetaddress_unittest ../InetAddress_unittest.cc)
target_link_libraries(inetaddress_unittest prime_net boost_unit_test_framework)
endif()

add_executable(tcpclient_reg1 ../TcpClient_reg1.cc)
target_link_libraries(tcpclient_reg1 prime_net)

add_executable(timerqueue_unittest ../TimerQueue_unittest.cc)
target_link_libraries(timerqueue_unittest prime_net)


include_directories("/root/")

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
target_link_libraries(prime_base pthread rt)
target_link_libraries(prime_net prime_base)

add_executable(asynclogging_test ../AsyncLogging_test.cc)
target_link_libraries(asynclogging_test prime_base)

add_executable(atomic_unittest ../Atomic_unittest.cc)
# target_link_libraries(atomic_unittest prime_base)

add_executable(blockingqueue_test ../BlockingQueue_test.cc)
target_link_libraries(blockingqueue_test prime_base)

add_executable(blockingqueue_bench ../BlockingQueue_bench.cc)
target_link_libraries(blockingqueue_bench prime_base)

add_executable(boundedblockingqueue_test ../BoundedBlockingQueue_test.cc)
target_link_libraries(boundedblockingqueue_test prime_base)

add_executable(date_unittest ../Date_unittest.cc)
target_link_libraries(date_unittest prime_base)

add_executable(exception_test ../Exception_test.cc)
target_link_libraries(exception_test prime_base)

add_executable(fileutil_test ../FileUtil_test.cc)
target_link_libraries(fileutil_test prime_base)

add_executable(fork_test ../Fork_test.cc)
target_link_libraries(fork_test prime_base)

add_executable(logfile_test ../LogFile_test.cc)
target_link_libraries(logfile_test prime_base)

add_executable(logging_test ../Logging_test.cc)
target_link_libraries(logging_test prime_base)

add_executable(logstream_bench ../LogStream_bench.cc)
target_link_libraries(logstream_bench prime_base)

if(BOOSTTEST_LIBRARY)
add_executable(logstream_test ../LogStream_test.cc)
target_link_libraries(logstream_test prime_base boost_unit_test_framework)
endif()

add_executable(mutex_test ../Mutex_test.cc)
target_link_libraries(mutex_test prime_base)

add_executable(processinfo_test ../ProcessInfo_test.cc)
target_link_libraries(processinfo_test prime_base)

add_executable(timestamp_unittest ../Timestamp_unittest.cc)
target_link_libraries(timestamp_unittest prime_base)

add_executable(timezone_unittest ../TimeZone_unittest.cc)
target_link_libraries(timezone_unittest prime_base)

add_executable(thread_bench ../Thread_bench.cc)
target_link_libraries(thread_bench prime_base)

add_executable(thread_test ../Thread_test.cc)
target_link_libraries(thread_test prime_base)



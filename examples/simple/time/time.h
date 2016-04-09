#ifndef MUDUO_EXAMPLES_SIMPLE_TIME_TIME_H
#define MUDUO_EXAMPLES_SIMPLE_TIME_TIME_H

#include <prime/net/TcpServer.h>

// RFC 868
class TimeServer
{
 public:
  TimeServer(prime::net::EventLoop* loop,
             const prime::net::InetAddress& listenAddr);

  void start();

 private:
  void onConnection(const prime::net::TcpConnectionPtr& conn);

  void onMessage(const prime::net::TcpConnectionPtr& conn,
                 prime::net::Buffer* buf,
                 prime::Timestamp time);

  prime::net::TcpServer server_;
};

#endif  // MUDUO_EXAMPLES_SIMPLE_TIME_TIME_H

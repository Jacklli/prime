#ifndef MUDUO_EXAMPLES_SIMPLE_DAYTIME_DAYTIME_H
#define MUDUO_EXAMPLES_SIMPLE_DAYTIME_DAYTIME_H

#include <prime/net/TcpServer.h>

// RFC 867
class DaytimeServer
{
 public:
  DaytimeServer(prime::net::EventLoop* loop,
                const prime::net::InetAddress& listenAddr);

  void start();

 private:
  void onConnection(const prime::net::TcpConnectionPtr& conn);

  void onMessage(const prime::net::TcpConnectionPtr& conn,
                 prime::net::Buffer* buf,
                 prime::Timestamp time);

  prime::net::TcpServer server_;
};

#endif  // MUDUO_EXAMPLES_SIMPLE_DAYTIME_DAYTIME_H

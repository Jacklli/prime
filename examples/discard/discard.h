#ifndef MUDUO_EXAMPLES_SIMPLE_DISCARD_DISCARD_H
#define MUDUO_EXAMPLES_SIMPLE_DISCARD_DISCARD_H

#include <prime/net/TcpServer.h>

// RFC 863
class DiscardServer
{
 public:
  DiscardServer(prime::net::EventLoop* loop,
                const prime::net::InetAddress& listenAddr);

  void start();

 private:
  void onConnection(const prime::net::TcpConnectionPtr& conn);

  void onMessage(const prime::net::TcpConnectionPtr& conn,
                 prime::net::Buffer* buf,
                 prime::Timestamp time);

  prime::net::TcpServer server_;
};

#endif  // MUDUO_EXAMPLES_SIMPLE_DISCARD_DISCARD_H

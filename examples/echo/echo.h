#ifndef MUDUO_EXAMPLES_SIMPLE_ECHO_ECHO_H
#define MUDUO_EXAMPLES_SIMPLE_ECHO_ECHO_H

#include <prime/net/TcpServer.h>

// RFC 862
class EchoServer
{
 public:
  EchoServer(prime::net::EventLoop* loop,
             const prime::net::InetAddress& listenAddr, int numThreads);

  void start();  // calls server_.start();

 private:
  void onConnection(const prime::net::TcpConnectionPtr& conn);

  void onMessage(const prime::net::TcpConnectionPtr& conn,
                 prime::net::Buffer* buf,
                 prime::Timestamp time);

  prime::net::TcpServer server_;
  int numThreads_;
};

#endif  // MUDUO_EXAMPLES_SIMPLE_ECHO_ECHO_H

#ifndef MUDUO_EXAMPLES_SIMPLE_CHARGEN_CHARGEN_H
#define MUDUO_EXAMPLES_SIMPLE_CHARGEN_CHARGEN_H

#include <prime/net/TcpServer.h>

// RFC 864
class ChargenServer
{
 public:
  ChargenServer(prime::net::EventLoop* loop,
                const prime::net::InetAddress& listenAddr,
                bool print = false);

  void start();

 private:
  void onConnection(const prime::net::TcpConnectionPtr& conn);

  void onMessage(const prime::net::TcpConnectionPtr& conn,
                 prime::net::Buffer* buf,
                 prime::Timestamp time);

  void onWriteComplete(const prime::net::TcpConnectionPtr& conn);
  void printThroughput();

  prime::net::TcpServer server_;

  prime::string message_;
  int64_t transferred_;
  prime::Timestamp startTime_;
};

#endif  // MUDUO_EXAMPLES_SIMPLE_CHARGEN_CHARGEN_H

#include "echo.h"

#include <prime/base/Logging.h>

#include <boost/bind.hpp>

// using namespace prime;
// using namespace prime::net;

EchoServer::EchoServer(prime::net::EventLoop* loop,
                       const prime::net::InetAddress& listenAddr, int numThreads)
  : server_(loop, listenAddr, "EchoServer"),numThreads_(numThreads)
{
  server_.setConnectionCallback(
      boost::bind(&EchoServer::onConnection, this, _1));
  server_.setMessageCallback(
      boost::bind(&EchoServer::onMessage, this, _1, _2, _3));
  server_.setThreadNum(numThreads_);
}

void EchoServer::start()
{
//  threadPool_.start(numThreads_);
  server_.start();
}

void EchoServer::onConnection(const prime::net::TcpConnectionPtr& conn)
{
  LOG_INFO << "EchoServer - " << conn->peerAddress().toIpPort() << " -> "
           << conn->localAddress().toIpPort() << " is "
           << (conn->connected() ? "UP" : "DOWN");
}

void EchoServer::onMessage(const prime::net::TcpConnectionPtr& conn,
                           prime::net::Buffer* buf,
                           prime::Timestamp time)
{
  prime::string msg(buf->retrieveAllAsString());
  LOG_INFO << conn->name() << " echo " << msg.size() << " bytes, "
           << "data received at " << time.toString();
  conn->send(msg);
}


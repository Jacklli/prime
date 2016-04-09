#include "time.h"

#include <prime/base/Logging.h>
#include <prime/net/Endian.h>

#include <boost/bind.hpp>

using namespace prime;
using namespace prime::net;

TimeServer::TimeServer(prime::net::EventLoop* loop,
                             const prime::net::InetAddress& listenAddr)
  : server_(loop, listenAddr, "TimeServer")
{
  server_.setConnectionCallback(
      boost::bind(&TimeServer::onConnection, this, _1));
  server_.setMessageCallback(
      boost::bind(&TimeServer::onMessage, this, _1, _2, _3));
}

void TimeServer::start()
{
  server_.start();
}

void TimeServer::onConnection(const prime::net::TcpConnectionPtr& conn)
{
  LOG_INFO << "TimeServer - " << conn->peerAddress().toIpPort() << " -> "
           << conn->localAddress().toIpPort() << " is "
           << (conn->connected() ? "UP" : "DOWN");
  if (conn->connected())
  {
    time_t now = ::time(NULL);
    int32_t be32 = sockets::hostToNetwork32(static_cast<int32_t>(now));
    conn->send(&be32, sizeof be32);
    conn->shutdown();
  }
}

void TimeServer::onMessage(const prime::net::TcpConnectionPtr& conn,
                 prime::net::Buffer* buf,
                 prime::Timestamp time)
{
  string msg(buf->retrieveAllAsString());
  LOG_INFO << conn->name() << " discards " << msg.size()
           << " bytes received at " << time.toString();
}


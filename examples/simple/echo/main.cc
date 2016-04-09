#include "echo.h"

#include <prime/base/Logging.h>
#include <prime/net/EventLoop.h>

// using namespace prime;
// using namespace prime::net;

int main()
{
  LOG_INFO << "pid = " << getpid();
  prime::net::EventLoop loop;
  prime::net::InetAddress listenAddr(2007);
  EchoServer server(&loop, listenAddr, 10);
  server.start();
  loop.loop();
}


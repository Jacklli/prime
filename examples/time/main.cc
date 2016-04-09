#include "time.h"

#include <prime/base/Logging.h>
#include <prime/net/EventLoop.h>

using namespace prime;
using namespace prime::net;

int main()
{
  LOG_INFO << "pid = " << getpid();
  EventLoop loop;
  InetAddress listenAddr(2037);
  TimeServer server(&loop, listenAddr);
  server.start();
  loop.loop();
}


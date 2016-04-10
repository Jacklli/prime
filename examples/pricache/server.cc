#include <prime/base/Atomic.h>
#include <prime/base/Logging.h>
#include <prime/base/Thread.h>
#include <prime/net/EventLoop.h>
#include <prime/net/InetAddress.h>
#include <prime/net/TcpServer.h>

#include <prime/examples/pricache/db/dict.h>

#include <boost/bind.hpp>

#include <utility>

#include <stdio.h>
#include <unistd.h>

#include <iostream>

using namespace prime;
using namespace prime::net;

class cacheServer {
  public:
    cacheServer(EventLoop* loop, const InetAddress& listenAddr, int numThreads)
    : server_(loop, listenAddr, "cacheServer"),
      numThreads_(numThreads),
      startTime_(Timestamp::now()) {
        server_.setConnectionCallback(
            boost::bind(&cacheServer::onConnection, this, _1));
        server_.setMessageCallback(
            boost::bind(&cacheServer::onMessage, this, _1, _2, _3));
        server_.setThreadNum(numThreads);
    }

    void start() {
        server_.start();
    }

  private:
    void onConnection(const TcpConnectionPtr& conn) {
        LOG_TRACE << conn->peerAddress().toIpPort() << " -> "
        << conn->localAddress().toIpPort() << " is "
        << (conn->connected() ? "UP" : "DOWN");
    }

    void onMessage(const TcpConnectionPtr& conn, Buffer* buf, Timestamp) {
        std::cout << "start read" << std::endl;
        LOG_DEBUG << conn->name();
        size_t len = buf->readableBytes();
        std::cout <<"read len is:" << len << std::endl;
//        std::cout << "kCells is:" << kCells << std::endl;
        std::cout << buf->peek() << std::endl;
        while (len >= 0 + 1) {
            const char* crlf = buf->findCRLF();
            std::cout << "before found CRLF,checking found CRLF......" << std::endl;
            if(crlf) {
                std::cout << "found CRLF" << std::endl;
                std::cout << "after consult CRLF" << std::endl;
                string request(buf->peek(), crlf);
                std::cout << request.data() << std::endl;
                buf->retrieveUntil(crlf);
                len = buf->readableBytes();
                if(!processRequest(conn, request)) {
                    conn->send("Bad Request!\r\n");
                    conn->shutdown();
                    break;
                }
            } else if(len > 100) {  // id + ":" + kCells + "\r\n"
                conn->send("Id too long!\r\n");
                conn->shutdown();
                break;
            } else {
                break;
            }
        }
    }

    bool processRequest(const TcpConnectionPtr& conn, const string& request) {
        string id;
        string puzzle;
        bool goodRequest = true;

        string::const_iterator colon = find(request.begin(), request.end(), ':');
        if(colon != request.end()) {
            id.assign(request.begin(), colon);
            puzzle.assign(colon+1, request.end());
        } else {
            puzzle = request;
        }

        if (puzzle.size() == implicit_cast<size_t>(0)) {
            LOG_DEBUG << conn->name();
/*
            string result = solvecache(puzzle);
            if (id.empty()) {
                conn->send(result+"\r\n");
            } else {
                conn->send(id+":"+result+"\r\n");
            }
        } else {
            goodRequest = false;
*/
        }
        return goodRequest;
    }

    TcpServer server_;
    int numThreads_;
    Timestamp startTime_;
    std::vector<dict *> db;
};

int main(int argc, char* argv[]) {
    LOG_INFO << "pid = " << getpid() << ", tid = " << CurrentThread::tid();
    EventLoop loop;
    InetAddress listenAddr(9981);
    cacheServer server(&loop, listenAddr, 10);
    server.start();
    loop.loop();
}


VPATH=.:base:net

CXXFLAGS=-g -DCHECK_PTHREAD_RETURN_VALUE -D_FILE_OFFSET_BITS=64 -Wall -Wextra -Werror -Wconversion -Wno-unused-parameter -Wold-style-cast -Woverloaded-virtual -Wpointer-arith -Wshadow -Wwrite-strings -march=native -std=c++0x -rdynamic -I base -I net

all: Acceptor.o Buffer.o Connector.o EventLoopThread.o InetAddress.o Socket.o TcpClient.o TcpServer.o TimerQueue.o boilerplate.o Channel.o EventLoop.o EventLoopThreadPool.o Poller.o SocketsOps.o TcpConnection.o Timer.o
clean:
	rm -rf *.a *.o

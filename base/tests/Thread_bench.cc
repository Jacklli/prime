#include <prime/base/CurrentThread.h>
#include <prime/base/Mutex.h>
#include <prime/base/Thread.h>
#include <prime/base/Timestamp.h>

#include <map>
#include <string>
#include <boost/bind.hpp>
#include <stdio.h>
#include <sys/wait.h>

prime::MutexLock g_mutex;
std::map<int, int> g_delays;

void threadFunc()
{
  //printf("tid=%d\n", prime::CurrentThread::tid());
}

void threadFunc2(prime::Timestamp start)
{
  prime::Timestamp now(prime::Timestamp::now());
  int delay = static_cast<int>(timeDifference(now, start) * 1000000);
  prime::MutexLockGuard lock(g_mutex);
  ++g_delays[delay];
}

void forkBench()
{
  sleep(10);
  prime::Timestamp start(prime::Timestamp::now());
  int kProcesses = 10*1000;

  for (int i = 0; i < kProcesses; ++i)
  {
    pid_t child = fork();
    if (child == 0) {
      exit(0);
    } else {
      waitpid(child, NULL, 0);
    }
  }

  double timeUsed = timeDifference(prime::Timestamp::now(), start);
  printf("process creation time used %f us\n", timeUsed*1000000/kProcesses);
  printf("number of created processes %d\n", kProcesses);
}

int main(int argc, char* argv[])
{
  printf("pid=%d, tid=%d\n", ::getpid(), prime::CurrentThread::tid());
  prime::Timestamp start(prime::Timestamp::now());

  int kThreads = 100*1000;
  for (int i = 0; i < kThreads; ++i)
  {
    prime::Thread t1(threadFunc);
    t1.start();
    t1.join();
  }

  double timeUsed = timeDifference(prime::Timestamp::now(), start);
  printf("thread creation time %f us\n", timeUsed*1000000/kThreads);
  printf("number of created threads %d\n", prime::Thread::numCreated());

  for (int i = 0; i < kThreads; ++i)
  {
    prime::Timestamp now(prime::Timestamp::now());
    prime::Thread t2(boost::bind(threadFunc2, now));
    t2.start();
    t2.join();
  }
  {
    prime::MutexLockGuard lock(g_mutex);
    for (std::map<int, int>::iterator it = g_delays.begin();
        it != g_delays.end(); ++it)
    {
      printf("delay = %d, count = %d\n",
             it->first, it->second);
    }
  }

  forkBench();
}

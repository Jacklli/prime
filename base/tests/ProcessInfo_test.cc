#include <prime/base/ProcessInfo.h>
#include <stdio.h>
#define __STDC_FORMAT_MACROS
#include <inttypes.h>

int main()
{
  printf("pid = %d\n", prime::ProcessInfo::pid());
  printf("uid = %d\n", prime::ProcessInfo::uid());
  printf("euid = %d\n", prime::ProcessInfo::euid());
  printf("start time = %s\n", prime::ProcessInfo::startTime().toFormattedString().c_str());
  printf("hostname = %s\n", prime::ProcessInfo::hostname().c_str());
  printf("opened files = %d\n", prime::ProcessInfo::openedFiles());
  printf("threads = %zd\n", prime::ProcessInfo::threads().size());
  printf("num threads = %d\n", prime::ProcessInfo::numThreads());
  printf("status = %s\n", prime::ProcessInfo::procStatus().c_str());
}

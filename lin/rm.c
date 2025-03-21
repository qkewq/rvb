#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(){
  char str[100];
  pid_t pid = getppid();
  sprintf(str, "kill -9 %d", pid);
  system(str);
  return 0;
}

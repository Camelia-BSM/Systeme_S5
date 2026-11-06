#include <signal.h>
#include <stdio.h>
#include <unistd.h>

void cause_toujours (int signum)
{
  printf("J'ai bien vu que tu m'as envoyé le signal %d, mais je résiste !!\n",
	 signum);
}


int main()
{
  // Intercepter certains signaux
  signal (SIGTERM, cause_toujours);	// signal de fin
  signal (SIGINT,  cause_toujours);	// interruption clavier (Ctrl-C)

  // Je bosse
  int i = -7;
  while (1)
    {
      ++i;
    }
  return 0;
}

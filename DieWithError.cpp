#include <stdio.h>  /* for perror() */
#include <stdlib.h> /* for exit() */
#include <string>

using namespace std;

void DieWithError(const string errorMessage)
{
  perror(errorMessage.c_str());
  exit(1);
}

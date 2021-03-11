#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "print_up.h"

int main (int argc, char ** argv){
  if (argc < 2){
    fprintf (stderr, "Wrong arguments\n");
    return 1;
  }
  printf("%d\n", argc);
  for (int n=2; n <= argc; n++){
	print_up (argv[n-1]);
	printf(" ");
  }
  printf("\n");
  return 0;
}
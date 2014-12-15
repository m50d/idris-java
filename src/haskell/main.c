#include <stdio.h>
#include "HsFFI.h"

//#ifdef __GLASGOW_HASKELL__
//#include "foo_stub.h"
//#endif
#include "hmain.h"

int main(int argc, char *argv[])
{
  int i;

  hs_init(&argc, &argv);

  hmain();
//  printf("Hello world\n");
 // for (i = 0; i < 5; i++) {
 //   printf("%d\n", foo(2500));
 // }

  hs_exit();
  return 0;
}

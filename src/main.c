#include <debugio.h>
#include "test_lib.h"
void
main(void)
{
#ifdef TEST
  debug_printf("hello world\n %d", test);
  debug_exit(0);
#endif
}

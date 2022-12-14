#include "memory.h"
#include <stdlib.h>

void *reallocate(void *pointer, size_t oldSize, size_t newSize) {
  /*
    oldsize    newSize                Operation
    =============================================================
    0          Non-zero               Allocate new block.
    Non-zero   0                      Free allocation.
    Non-zero   Smaller than oldsize   Shrink existing allocation.
    Non-zero   Larger than oldsize    Grow existing allocation.
   */
  if (newSize == 0) {
    free(pointer);
    return NULL;
  }
  void *result = realloc(pointer, newSize);

  // result will be null if the memory couldn't be allocated fully
  if (result == NULL) {
    exit(1);
  }

  return result;
}

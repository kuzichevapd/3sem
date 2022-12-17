#include "stdlib.h"
#include "reverse.h"
void reverse(unsigned *array, size_t array_length) {
    unsigned t = 0;
    size_t i;
    for (i = 0; i < array_length / 2; i +=1) {
        t = array[i];
        array[i] = array [array_length - i - 1];
        array[array_length - i - 1] = t;
    }

}

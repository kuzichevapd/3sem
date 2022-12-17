#include <stdio.h>
#include <stdlib.h>
#include "reverse.h"

int main(void) { 
    unsigned array[] = {0,1,2,3,4};
    reverse(array, sizeof(array)/sizeof(array[0]));
    size_t i;
    for (i = 0; i < sizeof(array)/sizeof(array[0]); i++) {
        printf("%d", array[i]);
    }
    return 0;
}

.text
__start:
.globl __start

    la a3, array_length
    lw a3, 0(a3) # загрузка длины массива
    
    la a4, array # адрес нулевого элемента
    
    call reverse # вызов подрограммы
    
    li a0, 10 # запись 10 в а0
    ecall # остановка программы
    
.rodata # неизменяемые данные
  array_length: # длина массива
    .word 5

.data # изменяемые  данные
  array: # массив
    .word 1, 2, 3, 4, 5   
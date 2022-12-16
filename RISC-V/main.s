.text
main:
.globl main

    lw a1, array_length # загрузка длины массива
    la a0, array # адрес нулевого элемента
    
    addi sp, sp, -16 # выделение памяти в стеке
    sw ra, 12(sp) # сохранение ra
    
    call reverse # вызов подрограммы
    
    lw ra, 12(sp) # восстановление ra
    addi sp, sp, 16 # освобождение памяти в стеке
    
    li a0, 0 # a0 = 0
    ret # return 0
    
.rodata # неизменяемые данные
  array_length: # длина массива
    .word 5

.data # изменяемые  данные
  array: # массив
    .word 1, 2, 3, 4, 5   
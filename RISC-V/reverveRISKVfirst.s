.text
__start:
.globl __start

    la a3, array_length
    lw a3, 0(a3) # загрузка длины массива
    la a4, array # адрес нулевого элемента
    slli a5, a3, 2 # адрес последнего элемента будет хранится в ячейке а5(a5 = a3*4)
    add a5, a4, a5 # a5 = a4 + a3 * 4
    addi a5, a5, -4 # коррекция адреса
    # а5 - адрес последнего элемента
    addi a2, a2, 1 # const = 1

loop:
    lw t1, 0(a4) # меняем местами элементы
    lw t0, 0(a5)
    sw t1, 0(a5)
    sw t0, 0(a4) 
    addi a5, a5, -4 # переходим на следующий элемент в конце
    addi a4, a4, 4 # переходим на следующий элемент в начале  
    addi a3, a3, -2 # отнимаем два от длины массива
    bgeu a2, a3, loop_exit #if( a2(1) >= a3(длина массива) goto loop_exit
    jal zero, loop # goto loop
loop_exit:

finish:
   li a0, 10 # x10 = 10
   li a1, 0 # x11 = 0
   ecall # ecall при значении x10 = 10 => останов симулятора
   
.rodata # неизменяемые данные
  array_length: # длина массива
    .word 5

.data # изменяемые  данные
  array: # массив
    .word 1, 2, 3, 4, 5
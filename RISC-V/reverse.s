.text
reverse:
.globl reverse
    # подпрограмма принимает два значения: адрес нулевого элемента и длину массива
    # в a0 – адрес 0-го элемента массива чисел типа unsigned
    # в a1 – длина массива
    slli a5, a1, 2 # адрес последнего элемента будет хранится в ячейке а5(a5 = a3*4)
    add a5, a0, a5 # a5 = a4 + a3 * 4
    addi a5, a5, -4 # коррекция адреса
    # а5 - адрес последнего элемента
    addi a2, a2, 1 # const = 1

loop:
    lw t1, 0(a0) # меняем местами элементы
    lw t0, 0(a5)
    sw t1, 0(a5)
    sw t0, 0(a0) 
    addi a5, a5, -4 # переходим на следующий элемент в конце
    addi a0, a0, 4 # переходим на следующий элемент в начале  
    addi a1, a1, -2 # отнимаем два от длины массива
    bgeu a2, a1, loop_exit #if( a2(1) >= a3(длина массива) goto loop_exit
    jal zero, loop # goto loop
loop_exit:
finish:
    ret
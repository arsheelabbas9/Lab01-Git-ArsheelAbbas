.text
.globl main
main:
    li x1, 5           # Load immediate value 5 into x1 (a)
    add x2, x0, x0     # x2 (b) = 0 + 0
    addi x1, x2, 32    # x1 (a) = b + 32
    add x3, x1, x2     # x3 = a + b
    addi x3, x3, -5    # x3 (d) = (a + b) - 5

    sub x4, x1, x3     # x4 = a - d
    sub x5, x2, x1     # x5 = b - a
    add x6, x4, x5     # x6 = (a - d) + (b - a)
    add x6, x6, x3     # x6 (e) = ((a - d) + (b - a)) + d

    add x7, x1, x2     # x7 = a + b
    add x7, x7, x3     # x7 = (a + b) + d
    add x6, x7, x6     # x6 (e) = (a + b + d) + e

end:
    j end              # Infinite loop to halt program
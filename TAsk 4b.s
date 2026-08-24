.text
.globl main
main:
    
    li x21, 0x100               
    li x23, 1
    sb x23, 0(x21)             
    li x24, 2
    sb x24, 1(x21)             
    li x25, 3
    sb x25, 2(x21)             
    li x26, 4  
    sb x26, 3(x21)             

    li x22, 0x200               
    li x27, 5
    sh x27, 0(x22)             
    li x28, 6
    sh x28, 2(x22)             
    li x29, 1
    sh x29, 4(x22)             
    li x30, 1
    sh x30, 6(x22)      

    # Element 1
    lb   x5, 0x100(x0)         
    lh   x6, 0x200(x0)         
    add  x7, x5, x6         
    sw   x7, 0x300(x0)      

    # Element 2
    lb   x5, 0x101(x0)          
    lh   x6, 0x202(x0)          
    add  x7, x5, x6         
    sw   x7, 0x304(x0)          

    # Element 3
    lb   x5, 0x102(x0)          
    lh   x6, 0x204(x0)         
    add  x7, x5, x6         
    sw   x7, 0x308(x0)          

    # Element 4
    lb   x5, 0x103(x0)          
    lh   x6, 0x206(x0)          
    add  x7, x5, x6         
    sw   x7, 0x30C(x0)          

end:
    j end                       # Infinite loop to halt program

.text
.globl main
main:
    li x21, 0x100          # Load base address 0x100 into x21
    li x23,1
    sb x23,0(x21)              # Store byte 1 at address 0x100
    li x24,2
    sb x24,1(x21)              # Store byte 2 at address 0x101
    li x25,3
    sb x25,2(x21)              # Store byte 3 at address 0x102
    li x26,4
    sb x26,3(x21)              # Store byte 4 at address 0x103
    li x22, 0x200          # Load base address 0x200 into     
    li x27,5
    sb x27,0(x22)              # Store byte 5 at address 0x200
    li x28,6
    sb x28,1(x22)              # Store byte 6 at address 0x201        
    li x29,1
    sb x29,2(x22)              # Store byte 7 at address 0x202
    li x30,1
    sb x30,3(x22)              # Store byte 8 at address 0


    lb   x5, 0x100(x0)      
    lh   x6, 0x200(x0)      
    add  x7, x5, x6         
    sw   x7, 0x300(x0)      

    lb   x5, 0x101(x0)     
    lh   x6, 0x201(x0)      
    add  x7, x5, x6         
    sw   x7, 0x301(x0)      

    lb   x5, 0x102(x0)      
    lh   x6, 0x202(x0)      
    add  x7, x5, x6         
    sw   x7, 0x302(x0)      

    lb   x5, 0x103(x0)      
    lh   x6, 0x203(x0)      
    add  x7, x5, x6         
    sw   x7, 0x303(x0)      
end:
    j end                   # Infinite loop to halt program
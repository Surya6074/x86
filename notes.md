
x86 Nasm Notes


[*] run the NASM Code 

    ->  nasm -f elf -o first.o first.asm
    ->  ld -m elf_i386 -o first first.o
    ->  ./first


[*] run the NASM code with C programs 
    
    ->  nasm -f elf -o hello.o hello.asm
    ->  gcc -no-pie -m32 hello.o -o hello
    -> ./hello 


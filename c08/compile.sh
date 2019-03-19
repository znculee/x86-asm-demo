#!/bin/bash

nasm -f bin c08_mbr.asm -o c08_mbr.bin
nasm -f bin c08.asm -o c08.bin
dd if=c08_mbr.bin of=a.img bs=512 count=1 conv=notrunc
dd if=c08.bin of=c.img bs=512 seek=100 conv=notrunc

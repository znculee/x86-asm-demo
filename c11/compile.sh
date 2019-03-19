#!/bin/bash

nasm c11_mbr.asm -o c11_mbr.bin
dd if=c11_mbr.bin of=a.img bs=512 count=1 conv=notrunc

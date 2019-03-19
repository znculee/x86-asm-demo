#!/bin/bash

nasm c07_mbr.asm -o c07_mbr.bin
dd if=c07_mbr.bin of=a.img bs=512 count=1 conv=notrunc

#!/bin/bash

nasm c06_mbr.asm -o c06_mbr.bin
dd if=c06_mbr.bin of=a.img bs=512 count=1 conv=notrunc

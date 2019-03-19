#!/bin/bash

nasm c05_mbr.asm -o c05_mbr.bin
dd if=c05_mbr.bin of=a.img bs=512 count=1 conv=notrunc

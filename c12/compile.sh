#!/bin/bash

nasm c12_mbr.asm -o c12_mbr.bin
dd if=c12_mbr.bin of=a.img bs=512 count=1 conv=notrunc

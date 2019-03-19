This repo contains the demos in [《x86汇编语言:从实模式到保护模式》](https://book.douban.com/subject/20492528/), and shows how to run them on Mac with Bochs.

# Environment

```shell
MacOS Mojave version 10.14.3
MacBook Pro (Retina, 13-inch, Mid 2014)
Processor 2.8 GHz Intel Core i5
Memory 16GB 1600 MHz DDR3
Graphics Intel Iris 1536 MB
```

```shell
NASM version 2.14.02 compiled on Dec 27 2018
Bochs x86 Emulator 2.6.9 (Built from SVN snapshot on April 9, 2017)
```

# Run examples with bochs

Install `nasm` and `bochs`.

```shell
brew install nasm
brew install bochs
```

Create a floppy disk and a hard disk with `bximage`.

```shell
bximage
    1. Create new floppy or hard disk image
    2. Convert hard disk image to other format (mode)
    3. Resize hard disk image
    4. Commit 'undoable' redolog to base image
    5. Disk image info
    0. Quit
    Please choose one [0] 1 <return>
  Create image
    Do you want to create a floppy disk image or a hard disk image?
    Please type hd or fd. [hd] fd
  Choose the size of floppy disk image to create.
    Please type 160k, 180k, 320k, 360k, 720k, 1.2M, 1.44M, 1.68M, 1.72M, or 2.88M.
    [1.44M] <return>
  What should be the name of the image?
    [a.img] <return>
```

```shell
bximage
    1. Create new floppy or hard disk image
    2. Convert hard disk image to other format (mode)
    3. Resize hard disk image
    4. Commit 'undoable' redolog to base image
    5. Disk image info
    0. Quit
    Please choose one [0] 1 <return>
  Create image
    Do you want to create a floppy disk image or a hard disk image?
    Please type hd or fd. [hd] <return>
  What kind of image should I create?
    Please type flat, sparse, growing, vpc or vmware4. [flat] <return>
  Enter the hard disk size in megabytes, between 10 and 8257535
    [10] <return>
  What should be the name of the image?
    [c.img] <return>
```

Check source files and compile them.

```shell
vim *.asm compile.sh
./compile.sh
```

Chech `bochs` settings and run!

```shell
vim bochsrc
./run.sh
  c <return>
```


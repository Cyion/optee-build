# OP-TEE on Samsung ARTIK 520 / 530 / 530S

# Contents
1. [Introduction](#1-introduction)
2. [Regular build](#2-regular-build)
3. [Booting the device](#3-booting-the-device)
4. [Debugging with JTAG](#4-debugging-with-jtag)

# 1. Introduction
Instructions on how to run OP-TEE on Samsung ARTIK 520 / 530 / 530S boards. 
Note that the ARTIK 530S requires a boot image that is authenticated
by the ROM bootloader, which has been signed by Samsung, whereas the
ARTIK 520 and 530 use development keys.

# 2. Regular build
Start out by following the "Get and build the solution" in the [README.md] file.
Use the manifest files for either ARTIK 520 or ARTIK 530 (which includes the 
ARTIK530).

For example, if building for ARTIK 520 use a `repo init` command such as :

```bash
$ repo init -u https://github.com/OP-TEE/manifest.git -m artik520.xml
```

And for an ARTIK 530 or ARTIK 530S:

```bash
$ repo init -u https://github.com/OP-TEE/manifest.git -m artik530.xml
```

The build instructions in the [README.md] file should be followed once the
source tree is in place.

# 3. Booting the device
(more instructions TBD)

## 3.1 SD Card boot
(more instructions TBD)

## 3.2 Flash boot
(more instructions TBD)

## 3.2 Booting with FIT image
(more instructions TBD)

# 4. Debugging with JTAG
(ToDo)

[README.md]: ../README.md

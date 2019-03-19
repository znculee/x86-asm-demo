#!/bin/bash

export LTDL_LIBRARY_PATH=/usr/local/Cellar/bochs/2.6.9_2/lib/bochs/plugins
export BXSHARE=/usr/local/Cellar/bochs/2.6.9_2/share/bochs
bochs -f bochsrc

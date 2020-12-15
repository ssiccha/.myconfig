#!/usr/bin/env python3

import os, sys, subprocess


call = [ '7z', 'a', '-p' + dst_row["password"], '-mhe=on', dst, src ]
subprocess.check_call(call)

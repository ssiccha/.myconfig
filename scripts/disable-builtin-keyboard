#!/usr/bin/env python3

import subprocess, re


call = ['xinput']
output = subprocess.run(call, capture_output = True, text = True)
output = output.stdout.splitlines()
keyboard_id = next(filter(lambda x: 'AT Translated Set 2 keyboard' in x, output))
keyboard_id = re.search('id=([0-9]*)', keyboard_id)
keyboard_id = keyboard_id.group(1)

call = ['xinput', '--list-props', keyboard_id]
output = subprocess.run(call, capture_output = True, text = True)
output = output.stdout.splitlines()
keyboard_enable_id = next(filter(lambda x: 'Device Enabled' in x, output))
keyboard_enable_id = re.search(r'Device Enabled \(([0-9]*)', keyboard_enable_id)
keyboard_enable_id = keyboard_enable_id.group(1)

call = ['xinput', '--set-prop', keyboard_id, keyboard_enable_id, '0']
subprocess.run(call)

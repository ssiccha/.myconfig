#!/usr/bin/env python3

import subprocess, re


call = ['xinput']
output = subprocess.run(call, capture_output = True, text = True)
output = output.stdout.splitlines()
mouse_id = next(filter(lambda x: 'Virtual core XTEST pointer' in x, output))
mouse_id = re.search('id=([0-9]*)', mouse_id)
mouse_id = mouse_id.group(1)

call = ['xinput', '--list-props', mouse_id]
output = subprocess.run(call, capture_output = True, text = True)
output = output.stdout.splitlines()
mouse_enable_id = next(filter(lambda x: 'Device Enabled' in x, output))
mouse_enable_id = re.search(r'Device Enabled \(([0-9]*)', mouse_enable_id)
mouse_enable_id = mouse_enable_id.group(1)

call = ['xinput', '--set-prop', mouse_id, mouse_enable_id, '0']
subprocess.run(call)

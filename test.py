#!/usr/bin/env python2.7

from serial import Serial
from optparse import OptionParser
import binascii


parser = OptionParser()
parser.add_option("-s", "--serial", dest="serial_port", default="/dev/ttyUSB0", help="Serial port")
(options, args) = parser.parse_args()

ser = Serial(options.serial_port, 19200, 8)

payload = "1c4027010000000000000000178ab19c1e0dc9651d37418fbbf44b976dfd4571c09241c49564141267eff8d801d0c14a507051881a057e08"
#result 010f0eb6

####
#1c4027030100000000000000178ab19c1e0dc9651d37418fbbf44b976dfd4571c09241c49564141267eff8d801d0c14a507051881a057e0800000000
#010f0eb6
#
#1c4027030100000000000000a74d832b36e116bf526fe4b5f2906d97bba672c03f03e3d0650e2452096b6223c7d23ebf507052d31a057e0800000000
#01bbc2c0
#
#1c402703010000000000000073461715670d130b315368aef4373e23fbb3a092f78ae43ca6f970dac7bfaa24a4054492507057771a057e0800000000
#0197a19d
#
#1040270301000000000000003b38b70f3e65b0632c2bc41aa731bee208ddab35a596c4fd473d0c447bc5ffdab65de901507061341a057e0800000000
#01f2733a
#
#104027030100000000000000ed42a35c482b0aba413176fae14fa5ae02f3999a7b05ff83e1ecd5c0d1b384f55ded3a2350706ee81a057e0800000000
#010ac666
#
#104027030100000000000000d40733a48ebb669f0b0d6b7fdc07f77bd966dbbe259fa36231a1f9b192ce8e74839fda9250706e4e1a057e0800000000
#01f4e996
#
#104027030100000000000000e0463e49c24e3ac83adf312a556c1011be5083fc23957da1296b946612bfab536567db9c507070591a057e0800000000
#01443ebe
#
#1040270301000000000000006206f201f4187012f125115e2c4e815d2e3756ef1c716f0da7f238cddd369c938494a15c50707a621a057e0800000000
#01abe269
#
#1040270301000000000000004f04c60f9bac61c14410103ba2ceee516ad492885fdd4078fb0eb25c890257c91fe2e7b8507097471a057e0800000000
#010e3940
#
####

print("Push payload to device:\n" + payload)
ser.write(payload.decode('hex'))

res=ser.read(56)
print("Result:\n" + binascii.hexlify(res))

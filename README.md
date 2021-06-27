# zig-bitjuggle

[![CI](https://github.com/leecannon/zig-bitjuggle/actions/workflows/main.yml/badge.svg?branch=master)](https://github.com/leecannon/zig-bitjuggle/actions/workflows/main.yml)
[![Publish](https://github.com/leecannon/zig-bitjuggle/actions/workflows/publish.yml/badge.svg?branch=master)](https://github.com/leecannon/zig-bitjuggle/actions/workflows/publish.yml)

This package contains various "bit juggling" helpers and functionality:
 - `isBitSet` - Check if a bit is set
 - `getBit` - Get the value of a bit
 - `getBits` - Get a range of bits
 - `setBit` - Set a specific bit
 - `setBits` - Set a range of bits
 - `Bitfield` - Used along with `extern union` to represent arbitrary bit fields
 - `Bit` - Used along with `extern union` to represent bit fields
 - `Boolean` - Used along with `extern union` to represent boolean bit fields
 
The `Bitfield`, `Bit` & `Boolean` types are taken pretty much verbatim from [Florence](https://github.com/FlorenceOS/Florence/blob/master/lib/util/bitfields.zig)
 
### Contributions are welcome!

## How to get

Currently [gyro](https://github.com/mattnite/gyro) is the only supported way of acquiring this package.

Just setup gyro as explained in it's documentation then `gyro add leecannon/bitjuggle`

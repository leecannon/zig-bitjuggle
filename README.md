# zig-bitjuggle

[![CI](https://github.com/leecannon/zig-bitjuggle/actions/workflows/main.yml/badge.svg?branch=master)](https://github.com/leecannon/zig-bitjuggle/actions/workflows/main.yml)

This package contains various "bit juggling" helpers and functionality:

- `isBitSet` - Check if a bit is set
- `getBit` - Get the value of a bit
- `getBits` - Get a range of bits
- `setBit` - Set a specific bit
- `setBits` - Set a range of bits
- `Bitfield` - Used along with `extern union` to represent arbitrary bit fields
- `Bit` - Used along with `extern union` to represent bit fields
- `Boolean` - Used along with `extern union` to represent boolean bit fields

The `Bitfield`, `Bit` & `Boolean` types are taken pretty much verbatim from [Florence](https://github.com/FlorenceOS/Florence/blob/master/lib/util/bitfields.zig) (see LICENSE-FLORENCE for original license)

## How to get

### Gyro

`gyro add leecannon/bitjuggle`

### Zigmod

`zigmod aq add 1/leecannon/bitjuggle`

### Git

#### Submodule

`git submodule add https://github.com/leecannon/zig-bitjuggle zig-bitjuggle`

#### Clone

`git clone https://github.com/leecannon/zig-bitjuggle`

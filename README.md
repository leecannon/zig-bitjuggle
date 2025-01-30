# zig-bitjuggle

This package contains various "bit juggling" helpers and functionality:

- `isBitSet` - Check if a bit is set
- `getBit` - Get the value of a bit
- `getBits` - Get a range of bits
- `setBit` - Set a specific bit
- `setBits` - Set a range of bits
- `Bitfield` - Used along with `extern union` to represent arbitrary bit fields
- `Bit` - Used along with `extern union` to represent bit fields
- `Boolean` - Used along with `extern union` to represent boolean bit fields

## Installation

Add the dependency to `build.zig.zon`:

```sh
zig fetch --save git+https://github.com/leecannon/zig-bitjuggle
```

Then add the following to `build.zig`:

```zig
const bitjuggle = b.dependency("bitjuggle", .{});
exe.root_module.addImport("bitjuggle", bitjuggle.module("bitjuggle"));
```

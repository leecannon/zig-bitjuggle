const std = @import("std");

pub fn build(b: *std.Build) !void {
    const optimize = b.standardOptimizeOption(.{});

    var tests = b.addTest(.{
        .root_source_file = .{ .path = "bitjuggle.zig" },
        .optimize = optimize,
    });

    const tests_step = b.step("test", "Run library tests");
    tests_step.dependOn(&tests.step);

    b.default_step = tests_step;
}

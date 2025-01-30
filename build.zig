// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: 2025 Lee Cannon <leecannon@leecannon.xyz>

const std = @import("std");

pub fn build(b: *std.Build) !void {
    _ = b.addModule("bitjuggle", .{
        .root_source_file = b.path("bitjuggle.zig"),
    });

    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const test_exe = b.addTest(.{
        .root_module = b.createModule(.{
            .root_source_file = b.path("bitjuggle.zig"),
            .target = target,
            .optimize = optimize,
        }),
    });
    const run_test_exe = b.addRunArtifact(test_exe);
    const test_step = b.step("test", "Run tests");
    test_step.dependOn(&run_test_exe.step);

    // check step
    {
        const check_test_exe = b.addTest(.{
            .root_module = b.createModule(.{
                .root_source_file = b.path("bitjuggle.zig"),
                .target = target,
                .optimize = optimize,
            }),
        });
        const check_test_step = b.step("check", "");
        check_test_step.dependOn(&check_test_exe.step);
    }
}

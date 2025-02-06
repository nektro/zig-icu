const std = @import("std");
const deps = @import("./deps.zig");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.option(std.builtin.Mode, "mode", "") orelse .Debug;

    const lib = b.addStaticLibrary(.{
        .name = "icu",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = mode,
    });
    deps.addAllTo(lib);
    b.installArtifact(lib);

    b.installDirectory(.{
        .source_dir = .{ .cwd_relative = deps.dirs._w3gat1zdicyt ++ "/icu4c/source/common/unicode" },
        .install_dir = .header,
        .install_subdir = "unicode",
    });

    const tests = b.addTest(.{
        .root_source_file = b.path("test.zig"),
        .target = target,
        .optimize = mode,
    });
    deps.addAllTo(tests);

    const test_step = b.step("test", "Run all library tests");
    const tests_run = b.addRunArtifact(tests);
    tests_run.has_side_effects = true;
    test_step.dependOn(&tests_run.step);
}

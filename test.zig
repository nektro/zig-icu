const std = @import("std");
const icu = @import("icu");

// TODO: run the official test suite from unicode
test {
    std.testing.refAllDeclsRecursive(icu);
}

const std = @import("std");
const icu = @import("icu");

// TODO: run the official tests from unicode
test {
    _ = &icu.hasDerivedCoreProperty;
    _ = &icu.hasProperty;
    _ = &icu.hasEmojiCategory;
    _ = &icu.age;
    _ = &icu.eastAsianWidth;
    _ = &icu.bidiPairedBracketType;
    _ = &icu.toLower;
}

const std = @import("std");
const ucd = @import("unicode-ucd");

pub fn hasDerivedCoreProperty(cp: u32, comptime prop: ucd.derived_core_properties.CoreProperty.Property) bool {
    @setEvalBranchQuota(100_000);
    inline for (ucd.derived_core_properties.data) |item| {
        if (item.property == prop) {
            if (cp >= item.from and cp <= item.to) {
                return true;
            }
        }
    }
    return false;
}

pub fn hasProperty(cp: u32, comptime prop: ucd.prop_list.PropList.Property) bool {
    @setEvalBranchQuota(100_000);
    inline for (ucd.prop_list.data) |item| {
        if (item.property == prop) {
            if (cp >= item.from and cp <= item.to) {
                return true;
            }
        }
    }
    return false;
}

pub fn hasEmojiCategory(cp: u32, comptime cat: ucd.emoji.Emoji.Category) bool {
    @setEvalBranchQuota(100_000);
    inline for (ucd.emoji.data) |item| {
        if (item.category == cat) {
            if (cp >= item.from and cp <= item.to) {
                return true;
            }
        }
    }
    return false;
}

/// {0,0} means not found
pub fn age(cp: u32) [2]u8 {
    @setEvalBranchQuota(100_000);
    inline for (ucd.derived_age.data) |item| {
        if (cp >= item.from and cp <= item.to) {
            return item.since;
        }
    }
    return .{ 0, 0 };
}

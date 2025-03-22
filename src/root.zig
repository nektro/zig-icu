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

pub fn eastAsianWidth(cp: u32) ?ucd.EastAsianWidth {
    @setEvalBranchQuota(100_000);
    inline for (ucd.east_asian_width.data) |item| {
        if (cp >= item.from and cp <= item.to) {
            return item.prop;
        }
    }
    return null;
}

pub fn bidiPairedBracketType(cp: u32) ?ucd.bidi_brackets.BracketPairing.Type {
    @setEvalBranchQuota(100_000);
    inline for (ucd.bidi_brackets.data) |item| {
        if (cp == item.codepoint) {
            return item.type;
        }
    }
    return null;
}

pub fn toLower(cp: u32) ?u32 {
    @setEvalBranchQuota(100_000);
    inline for (ucd.unicode_data.data) |row| {
        if (comptime row[11]) |lc| {
            if (cp == row[0]) return lc;
        }
    }
    return null;
}

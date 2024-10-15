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

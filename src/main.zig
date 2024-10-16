const std = @import("std");
const icu = @import("icu");

const t = @import("./types.zig");

//
//

export fn u_hasBinaryProperty(cp: u32, prop: t.UProperty) bool {
    return switch (prop) {
        .UCHAR_ALPHABETIC => icu.hasDerivedCoreProperty(cp, .Alphabetic),
        .UCHAR_ASCII_HEX_DIGIT => icu.hasProperty(cp, .ASCII_Hex_Digit),
        .UCHAR_BIDI_CONTROL => icu.hasProperty(cp, .Bidi_Control),
        .UCHAR_BIDI_MIRRORED => false, // TODO:
        .UCHAR_DASH => icu.hasProperty(cp, .Dash),
        .UCHAR_DEFAULT_IGNORABLE_CODE_POINT => icu.hasDerivedCoreProperty(cp, .Default_Ignorable_Code_Point),
        .UCHAR_DEPRECATED => icu.hasProperty(cp, .Deprecated),
        .UCHAR_DIACRITIC => icu.hasProperty(cp, .Diacritic),
        .UCHAR_EXTENDER => icu.hasProperty(cp, .Extender),
        .UCHAR_FULL_COMPOSITION_EXCLUSION => false, // TODO:
        .UCHAR_GRAPHEME_BASE => icu.hasDerivedCoreProperty(cp, .Grapheme_Base),
        .UCHAR_GRAPHEME_EXTEND => icu.hasDerivedCoreProperty(cp, .Grapheme_Extend),
        .UCHAR_GRAPHEME_LINK => icu.hasDerivedCoreProperty(cp, .Grapheme_Link),
        .UCHAR_HEX_DIGIT => icu.hasProperty(cp, .Hex_Digit),
        .UCHAR_HYPHEN => icu.hasProperty(cp, .Hyphen),
        .UCHAR_ID_CONTINUE => icu.hasDerivedCoreProperty(cp, .ID_Continue),
        .UCHAR_ID_START => icu.hasDerivedCoreProperty(cp, .ID_Start),
        .UCHAR_IDEOGRAPHIC => icu.hasProperty(cp, .Ideographic),
        .UCHAR_IDS_BINARY_OPERATOR => icu.hasProperty(cp, .IDS_Binary_Operator),
        .UCHAR_IDS_TRINARY_OPERATOR => icu.hasProperty(cp, .IDS_Trinary_Operator),
        .UCHAR_JOIN_CONTROL => icu.hasProperty(cp, .Join_Control),
        .UCHAR_LOGICAL_ORDER_EXCEPTION => icu.hasProperty(cp, .Logical_Order_Exception),
        .UCHAR_LOWERCASE => icu.hasDerivedCoreProperty(cp, .Lowercase),
        .UCHAR_MATH => icu.hasDerivedCoreProperty(cp, .Math),
        .UCHAR_NONCHARACTER_CODE_POINT => icu.hasProperty(cp, .Noncharacter_Code_Point),
        .UCHAR_QUOTATION_MARK => icu.hasProperty(cp, .Quotation_Mark),
        .UCHAR_RADICAL => icu.hasProperty(cp, .Radical),
        .UCHAR_SOFT_DOTTED => icu.hasProperty(cp, .Soft_Dotted),
        .UCHAR_TERMINAL_PUNCTUATION => icu.hasProperty(cp, .Terminal_Punctuation),
        .UCHAR_UNIFIED_IDEOGRAPH => icu.hasProperty(cp, .Unified_Ideograph),
        .UCHAR_UPPERCASE => icu.hasDerivedCoreProperty(cp, .Uppercase),
        .UCHAR_WHITE_SPACE => icu.hasProperty(cp, .White_Space),
        .UCHAR_XID_CONTINUE => icu.hasDerivedCoreProperty(cp, .XID_Continue),
        .UCHAR_XID_START => icu.hasDerivedCoreProperty(cp, .XID_Start),
        .UCHAR_CASE_SENSITIVE => false, // TODO:
        .UCHAR_S_TERM => false, // TODO:
        .UCHAR_VARIATION_SELECTOR => false, // TODO:
        .UCHAR_NFD_INERT => false, // TODO:
        .UCHAR_NFKD_INERT => false, // TODO:
        .UCHAR_NFC_INERT => false, // TODO:
        .UCHAR_NFKC_INERT => false, // TODO:
        .UCHAR_SEGMENT_STARTER => false, // TODO:
        .UCHAR_PATTERN_SYNTAX => false, // TODO:
        .UCHAR_PATTERN_WHITE_SPACE => false, // TODO:
        .UCHAR_POSIX_ALNUM => false, // TODO:
        .UCHAR_POSIX_BLANK => false, // TODO:
        .UCHAR_POSIX_GRAPH => false, // TODO:
        .UCHAR_POSIX_PRINT => false, // TODO:
        .UCHAR_POSIX_XDIGIT => false, // TODO:
        .UCHAR_CASED => icu.hasDerivedCoreProperty(cp, .Cased),
        .UCHAR_CASE_IGNORABLE => icu.hasDerivedCoreProperty(cp, .Case_Ignorable),
        .UCHAR_CHANGES_WHEN_LOWERCASED => icu.hasDerivedCoreProperty(cp, .Changes_When_Lowercased),
        .UCHAR_CHANGES_WHEN_UPPERCASED => icu.hasDerivedCoreProperty(cp, .Changes_When_Uppercased),
        .UCHAR_CHANGES_WHEN_TITLECASED => icu.hasDerivedCoreProperty(cp, .Changes_When_Titlecased),
        .UCHAR_CHANGES_WHEN_CASEFOLDED => icu.hasDerivedCoreProperty(cp, .Changes_When_Casefolded),
        .UCHAR_CHANGES_WHEN_CASEMAPPED => icu.hasDerivedCoreProperty(cp, .Changes_When_Casemapped),
        .UCHAR_CHANGES_WHEN_NFKC_CASEFOLDED => false, // TODO:
        .UCHAR_EMOJI => icu.hasEmojiCategory(cp, .Emoji),
        .UCHAR_EMOJI_PRESENTATION => icu.hasEmojiCategory(cp, .Emoji_Presentation),
        .UCHAR_EMOJI_MODIFIER => icu.hasEmojiCategory(cp, .Emoji_Modifier),
        .UCHAR_EMOJI_MODIFIER_BASE => icu.hasEmojiCategory(cp, .Emoji_Modifier_Base),
        .UCHAR_EMOJI_COMPONENT => icu.hasEmojiCategory(cp, .Emoji_Component),
        .UCHAR_REGIONAL_INDICATOR => icu.hasProperty(cp, .Regional_Indicator),
        .UCHAR_PREPENDED_CONCATENATION_MARK => false, // TODO:
        .UCHAR_EXTENDED_PICTOGRAPHIC => icu.hasEmojiCategory(cp, .Extended_Pictographic),
        .UCHAR_BASIC_EMOJI => false, // TODO:
        .UCHAR_EMOJI_KEYCAP_SEQUENCE => false, // TODO:
        .UCHAR_RGI_EMOJI_MODIFIER_SEQUENCE => false, // TODO:
        .UCHAR_RGI_EMOJI_FLAG_SEQUENCE => false, // TODO:
        .UCHAR_RGI_EMOJI_TAG_SEQUENCE => false, // TODO:
        .UCHAR_RGI_EMOJI_ZWJ_SEQUENCE => false, // TODO:
        .UCHAR_RGI_EMOJI => false, // TODO:
        .UCHAR_IDS_UNARY_OPERATOR => false, // TODO:
        .UCHAR_ID_COMPAT_MATH_START => icu.hasProperty(cp, .ID_Compat_Math_Start),
        .UCHAR_ID_COMPAT_MATH_CONTINUE => icu.hasProperty(cp, .ID_Compat_Math_Continue),
        .UCHAR_BIDI_CLASS => false, // TODO:
        .UCHAR_BLOCK => false, // TODO:
        .UCHAR_CANONICAL_COMBINING_CLASS => false, // TODO:
        .UCHAR_DECOMPOSITION_TYPE => false, // TODO:
        .UCHAR_EAST_ASIAN_WIDTH => icu.eastAsianWidth(cp) != null,
        .UCHAR_GENERAL_CATEGORY => false, // TODO:
        .UCHAR_JOINING_GROUP => false, // TODO:
        .UCHAR_JOINING_TYPE => false, // TODO:
        .UCHAR_LINE_BREAK => false, // TODO:
        .UCHAR_NUMERIC_TYPE => false, // TODO:
        .UCHAR_SCRIPT => false, // TODO:
        .UCHAR_HANGUL_SYLLABLE_TYPE => false, // TODO:
        .UCHAR_NFD_QUICK_CHECK => false, // TODO:
        .UCHAR_NFKD_QUICK_CHECK => false, // TODO:
        .UCHAR_NFC_QUICK_CHECK => false, // TODO:
        .UCHAR_NFKC_QUICK_CHECK => false, // TODO:
        .UCHAR_LEAD_CANONICAL_COMBINING_CLASS => false, // TODO:
        .UCHAR_TRAIL_CANONICAL_COMBINING_CLASS => false, // TODO:
        .UCHAR_GRAPHEME_CLUSTER_BREAK => false, // TODO:
        .UCHAR_SENTENCE_BREAK => false, // TODO:
        .UCHAR_WORD_BREAK => false, // TODO:
        .UCHAR_BIDI_PAIRED_BRACKET_TYPE => icu.bidiPairedBracketType(cp) != null,
        .UCHAR_INDIC_POSITIONAL_CATEGORY => false, // TODO:
        .UCHAR_INDIC_SYLLABIC_CATEGORY => false, // TODO:
        .UCHAR_VERTICAL_ORIENTATION => false, // TODO:
        .UCHAR_GENERAL_CATEGORY_MASK => false, // TODO:
        .UCHAR_NUMERIC_VALUE => false, // TODO:
        .UCHAR_AGE => @as(u16, @bitCast(icu.age(cp))) > 0,
        .UCHAR_BIDI_MIRRORING_GLYPH => false, // TODO:
        .UCHAR_CASE_FOLDING => false, // TODO:
        .UCHAR_LOWERCASE_MAPPING => false, // TODO:
        .UCHAR_NAME => false, // TODO:
        .UCHAR_SIMPLE_CASE_FOLDING => false, // TODO:
        .UCHAR_SIMPLE_LOWERCASE_MAPPING => false, // TODO:
        .UCHAR_SIMPLE_TITLECASE_MAPPING => false, // TODO:
        .UCHAR_SIMPLE_UPPERCASE_MAPPING => false, // TODO:
        .UCHAR_TITLECASE_MAPPING => false, // TODO:
        .UCHAR_UPPERCASE_MAPPING => false, // TODO:
        .UCHAR_BIDI_PAIRED_BRACKET => false, // TODO:
        .UCHAR_SCRIPT_EXTENSIONS => false, // TODO:
        _ => false,

        // InCB,

        // Other_Math,
        // Other_Alphabetic,
        // Other_Lowercase,
        // Other_Uppercase,
        // Other_Grapheme_Extend,
        // Other_Default_Ignorable_Code_Point,
        // Other_ID_Start,
        // Other_ID_Continue,
        // Sentence_Terminal,
        // Variation_Selector,
        // Pattern_White_Space,
        // Pattern_Syntax,
        // Prepended_Concatenation_Mark,
        // IDS_Unary_Operator,
        // Modifier_Combining_Mark,
    };
}

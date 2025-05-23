pub const UProperty = enum(c_uint) {
    UCHAR_ALPHABETIC = 0,
    UCHAR_ASCII_HEX_DIGIT = 1,
    UCHAR_BIDI_CONTROL = 2,
    UCHAR_BIDI_MIRRORED = 3,
    UCHAR_DASH = 4,
    UCHAR_DEFAULT_IGNORABLE_CODE_POINT = 5,
    UCHAR_DEPRECATED = 6,
    UCHAR_DIACRITIC = 7,
    UCHAR_EXTENDER = 8,
    UCHAR_FULL_COMPOSITION_EXCLUSION = 9,
    UCHAR_GRAPHEME_BASE = 10,
    UCHAR_GRAPHEME_EXTEND = 11,
    UCHAR_GRAPHEME_LINK = 12,
    UCHAR_HEX_DIGIT = 13,
    UCHAR_HYPHEN = 14,
    UCHAR_ID_CONTINUE = 15,
    UCHAR_ID_START = 16,
    UCHAR_IDEOGRAPHIC = 17,
    UCHAR_IDS_BINARY_OPERATOR = 18,
    UCHAR_IDS_TRINARY_OPERATOR = 19,
    UCHAR_JOIN_CONTROL = 20,
    UCHAR_LOGICAL_ORDER_EXCEPTION = 21,
    UCHAR_LOWERCASE = 22,
    UCHAR_MATH = 23,
    UCHAR_NONCHARACTER_CODE_POINT = 24,
    UCHAR_QUOTATION_MARK = 25,
    UCHAR_RADICAL = 26,
    UCHAR_SOFT_DOTTED = 27,
    UCHAR_TERMINAL_PUNCTUATION = 28,
    UCHAR_UNIFIED_IDEOGRAPH = 29,
    UCHAR_UPPERCASE = 30,
    UCHAR_WHITE_SPACE = 31,
    UCHAR_XID_CONTINUE = 32,
    UCHAR_XID_START = 33,
    UCHAR_CASE_SENSITIVE = 34,
    UCHAR_S_TERM = 35,
    UCHAR_VARIATION_SELECTOR = 36,
    UCHAR_NFD_INERT = 37,
    UCHAR_NFKD_INERT = 38,
    UCHAR_NFC_INERT = 39,
    UCHAR_NFKC_INERT = 40,
    UCHAR_SEGMENT_STARTER = 41,
    UCHAR_PATTERN_SYNTAX = 42,
    UCHAR_PATTERN_WHITE_SPACE = 43,
    UCHAR_POSIX_ALNUM = 44,
    UCHAR_POSIX_BLANK = 45,
    UCHAR_POSIX_GRAPH = 46,
    UCHAR_POSIX_PRINT = 47,
    UCHAR_POSIX_XDIGIT = 48,
    UCHAR_CASED = 49,
    UCHAR_CASE_IGNORABLE = 50,
    UCHAR_CHANGES_WHEN_LOWERCASED = 51,
    UCHAR_CHANGES_WHEN_UPPERCASED = 52,
    UCHAR_CHANGES_WHEN_TITLECASED = 53,
    UCHAR_CHANGES_WHEN_CASEFOLDED = 54,
    UCHAR_CHANGES_WHEN_CASEMAPPED = 55,
    UCHAR_CHANGES_WHEN_NFKC_CASEFOLDED = 56,
    UCHAR_EMOJI = 57,
    UCHAR_EMOJI_PRESENTATION = 58,
    UCHAR_EMOJI_MODIFIER = 59,
    UCHAR_EMOJI_MODIFIER_BASE = 60,
    UCHAR_EMOJI_COMPONENT = 61,
    UCHAR_REGIONAL_INDICATOR = 62,
    UCHAR_PREPENDED_CONCATENATION_MARK = 63,
    UCHAR_EXTENDED_PICTOGRAPHIC = 64,
    UCHAR_BASIC_EMOJI = 65,
    UCHAR_EMOJI_KEYCAP_SEQUENCE = 66,
    UCHAR_RGI_EMOJI_MODIFIER_SEQUENCE = 67,
    UCHAR_RGI_EMOJI_FLAG_SEQUENCE = 68,
    UCHAR_RGI_EMOJI_TAG_SEQUENCE = 69,
    UCHAR_RGI_EMOJI_ZWJ_SEQUENCE = 70,
    UCHAR_RGI_EMOJI = 71,
    UCHAR_IDS_UNARY_OPERATOR = 72,
    UCHAR_ID_COMPAT_MATH_START = 73,
    UCHAR_ID_COMPAT_MATH_CONTINUE = 74,

    UCHAR_BIDI_CLASS = 0x1000,
    UCHAR_BLOCK = 0x1001,
    UCHAR_CANONICAL_COMBINING_CLASS = 0x1002,
    UCHAR_DECOMPOSITION_TYPE = 0x1003,
    UCHAR_EAST_ASIAN_WIDTH = 0x1004,
    UCHAR_GENERAL_CATEGORY = 0x1005,
    UCHAR_JOINING_GROUP = 0x1006,
    UCHAR_JOINING_TYPE = 0x1007,
    UCHAR_LINE_BREAK = 0x1008,
    UCHAR_NUMERIC_TYPE = 0x1009,
    UCHAR_SCRIPT = 0x100A,
    UCHAR_HANGUL_SYLLABLE_TYPE = 0x100B,
    UCHAR_NFD_QUICK_CHECK = 0x100C,
    UCHAR_NFKD_QUICK_CHECK = 0x100D,
    UCHAR_NFC_QUICK_CHECK = 0x100E,
    UCHAR_NFKC_QUICK_CHECK = 0x100F,
    UCHAR_LEAD_CANONICAL_COMBINING_CLASS = 0x1010,
    UCHAR_TRAIL_CANONICAL_COMBINING_CLASS = 0x1011,
    UCHAR_GRAPHEME_CLUSTER_BREAK = 0x1012,
    UCHAR_SENTENCE_BREAK = 0x1013,
    UCHAR_WORD_BREAK = 0x1014,
    UCHAR_BIDI_PAIRED_BRACKET_TYPE = 0x1015,
    UCHAR_INDIC_POSITIONAL_CATEGORY = 0x1016,
    UCHAR_INDIC_SYLLABIC_CATEGORY = 0x1017,
    UCHAR_VERTICAL_ORIENTATION = 0x1018,

    UCHAR_GENERAL_CATEGORY_MASK = 0x2000,

    UCHAR_NUMERIC_VALUE = 0x3000,

    UCHAR_AGE = 0x4000,
    UCHAR_BIDI_MIRRORING_GLYPH = 0x4001,
    UCHAR_CASE_FOLDING = 0x4002,
    UCHAR_LOWERCASE_MAPPING = 0x4004,
    UCHAR_NAME = 0x4005,
    UCHAR_SIMPLE_CASE_FOLDING = 0x4006,
    UCHAR_SIMPLE_LOWERCASE_MAPPING = 0x4007,
    UCHAR_SIMPLE_TITLECASE_MAPPING = 0x4008,
    UCHAR_SIMPLE_UPPERCASE_MAPPING = 0x4009,
    UCHAR_TITLECASE_MAPPING = 0x400A,
    UCHAR_UPPERCASE_MAPPING = 0x400C,
    UCHAR_BIDI_PAIRED_BRACKET = 0x400D,

    UCHAR_SCRIPT_EXTENSIONS = 0x7000,

    _,

    const UCHAR_BINARY_START: UProperty = .UCHAR_ALPHABETIC;
    const UCHAR_INT_START: UProperty = .UCHAR_BIDI_CLASS;
    const UCHAR_MASK_START: UProperty = .UCHAR_GENERAL_CATEGORY_MASK;
    const UCHAR_DOUBLE_START: UProperty = .UCHAR_NUMERIC_VALUE;
    const UCHAR_STRING_START: UProperty = .UCHAR_AGE;
    const UCHAR_OTHER_PROPERTY_START: UProperty = .UCHAR_SCRIPT_EXTENSIONS;
};

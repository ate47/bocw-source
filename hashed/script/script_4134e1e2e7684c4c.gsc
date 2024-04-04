// Atian COD Tools GSC CW decompiler test
#using script_35ae72be7b4fec10;
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;

#namespace namespace_6f1d35e1;

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x2 linked
// Checksum 0x8a72aada, Offset: 0x288
// Size: 0x14c
function function_eea42dd9(var_f873ed0b, var_e3ec46f0) {
    level.var_deff0f73 = [];
    if (namespace_61e6d095::exists(#"hash_15363747d8cbf71f")) {
        namespace_61e6d095::remove(#"hash_15363747d8cbf71f");
        waitframe(1);
    }
    namespace_61e6d095::create(#"hash_15363747d8cbf71f", var_f873ed0b);
    namespace_61e6d095::function_b1e6d7a8(#"hash_15363747d8cbf71f", 0, 1);
    namespace_61e6d095::function_d3c3e5c3(#"hash_15363747d8cbf71f", [#"dialog_tree", #"interactive_map"]);
    if (is_true(var_e3ec46f0)) {
        namespace_61e6d095::function_28027c42(#"computer", #"hash_15363747d8cbf71f");
    }
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 3, eflags: 0x2 linked
// Checksum 0xc313c9e3, Offset: 0x3e0
// Size: 0x1b4
function function_487b4340(var_e1ab1198, var_5130c92a = 1, var_907c1dab) {
    var_deff0f73 = getscriptbundle(var_e1ab1198);
    assert(isdefined(var_deff0f73), "<unknown string>" + var_e1ab1198);
    if (!isdefined(var_907c1dab)) {
        var_907c1dab = 0;
    }
    if (var_5130c92a) {
        function_f99d2e8a();
        level.var_deff0f73 = var_deff0f73.var_df2d0a90;
        len = level.var_deff0f73.size;
        for (i = 0; i < len; i++) {
            linenum = i + 1;
            var_c1deb575 = level.var_deff0f73[i];
            function_66b8c40f(var_c1deb575, linenum);
        }
        namespace_61e6d095::set_count(#"hash_15363747d8cbf71f", -1, 1);
        namespace_61e6d095::set_state(#"hash_15363747d8cbf71f", var_907c1dab);
        return;
    }
    level.var_deff0f73 = var_deff0f73.var_df2d0a90;
    namespace_61e6d095::function_330981ed(#"hash_15363747d8cbf71f");
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x2 linked
// Checksum 0xe7e90577, Offset: 0x5a0
// Size: 0x7c
function function_93dd719c(var_9d391884, var_80d5359e = 0) {
    assert(ishash(var_9d391884), "<unknown string>");
    namespace_61e6d095::function_bfdab223(#"hash_15363747d8cbf71f", var_9d391884, var_80d5359e);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 1, eflags: 0x2 linked
// Checksum 0xe5e477ae, Offset: 0x628
// Size: 0x5c
function function_14291ddf(var_c51f6b35) {
    assert(ishash(var_c51f6b35), "<unknown string>");
    namespace_61e6d095::function_309bf7c2(#"hash_15363747d8cbf71f", var_c51f6b35);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x2 linked
// Checksum 0x59e08845, Offset: 0x690
// Size: 0x3c
function function_ca5c7f26(var_b8f68f4, value) {
    namespace_61e6d095::function_9ade1d9b(#"hash_15363747d8cbf71f", var_b8f68f4, value);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 1, eflags: 0x2 linked
// Checksum 0x589f8149, Offset: 0x6d8
// Size: 0x8c
function function_314087bb(line) {
    assert(isdefined(level.var_deff0f73) && line > 0 && line <= level.var_deff0f73.size);
    var_307d638e = level.var_deff0f73[line - 1];
    function_66b8c40f(var_307d638e, line);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 1, eflags: 0x2 linked
// Checksum 0x7f1ae9fe, Offset: 0x770
// Size: 0x54
function function_d599de13(var_e0e4e6f6) {
    if (namespace_61e6d095::exists(#"hash_15363747d8cbf71f")) {
        namespace_61e6d095::set_state(#"hash_15363747d8cbf71f", var_e0e4e6f6);
    }
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 1, eflags: 0x2 linked
// Checksum 0xac6e6b41, Offset: 0x7d0
// Size: 0x54
function function_5d2e6f6a(var_eac515a1) {
    if (namespace_61e6d095::exists(#"hash_15363747d8cbf71f")) {
        namespace_61e6d095::set_count(#"hash_15363747d8cbf71f", var_eac515a1, 1);
    }
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 3, eflags: 0x2 linked
// Checksum 0x228d6fdd, Offset: 0x830
// Size: 0xf4
function function_4951a2c8(line, var_1eb4675d = 120, var_80d5359e = 0) {
    if (namespace_61e6d095::exists(#"hash_15363747d8cbf71f")) {
        dataindex = line - 1;
        var_c1deb575 = level.var_deff0f73[dataindex];
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "ActiveIndex", line);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "TypeSpeed", var_1eb4675d, undefined, var_80d5359e);
    }
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 1, eflags: 0x0
// Checksum 0x45914aa2, Offset: 0x930
// Size: 0x54
function function_6f3be7df(value) {
    if (namespace_61e6d095::exists(#"hash_15363747d8cbf71f")) {
        namespace_61e6d095::function_b1e6d7a8(#"hash_15363747d8cbf71f", value, 1);
    }
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 1, eflags: 0x0
// Checksum 0x5d1db73e, Offset: 0x990
// Size: 0x7c
function function_61f5c9b7(line) {
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "ContentLine", #"");
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "CustomText", #"");
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x0
// Checksum 0xeb7e8059, Offset: 0xa18
// Size: 0x44
function function_5109bc1e(line, colorindex) {
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "ColorIndex", colorindex);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 5, eflags: 0x0
// Checksum 0xb9746592, Offset: 0xa68
// Size: 0x17c
function function_5cffb9f2(var_a9e138ad, line, var_a19ff8a1 = 0, var_5964aaa = 0, var_1eb4675d = 120) {
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "ActiveIndex", line);
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "MaskText", var_a19ff8a1);
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "TypeSpeed", var_1eb4675d);
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "TypingSFXAlias", "uin_cp_typing_keyboard");
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "CustomText", var_a9e138ad);
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "RemoveCursorOnComplete", var_5964aaa);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x2 linked
// Checksum 0xb8760f19, Offset: 0xbf0
// Size: 0x44
function function_6f9dba44(line, content) {
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "ContentLine", content);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x2 linked
// Checksum 0xb3ac705, Offset: 0xc40
// Size: 0x44
function function_7bc9391e(line, show) {
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "ShowNewLineMarker", show);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x2 linked
// Checksum 0x959d0e11, Offset: 0xc90
// Size: 0x44
function function_635c370c(line, var_75ce85d2) {
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "HideCursor", var_75ce85d2);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x2 linked
// Checksum 0xb27ad24e, Offset: 0xce0
// Size: 0x44
function function_8a58b10c(line, type) {
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "EditBox.Type", type);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x2 linked
// Checksum 0xe29af945, Offset: 0xd30
// Size: 0x44
function function_29438cc(line, var_543e850f) {
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "EditBox.MaxChars", var_543e850f);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x2 linked
// Checksum 0x5080e76, Offset: 0xd80
// Size: 0x44
function function_28321961(line, var_95779987) {
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "EditBox.NumericalInteger", var_95779987);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x2 linked
// Checksum 0xfd9e33e, Offset: 0xdd0
// Size: 0x44
function function_7bfd800c(line, var_55cd035) {
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "EditBox.NumericalMin", var_55cd035);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x2 linked
// Checksum 0x4aef8129, Offset: 0xe20
// Size: 0x44
function function_be760dc8(line, var_c4919c78) {
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "EditBox.NumericalMax", var_c4919c78);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 3, eflags: 0x2 linked
// Checksum 0x41eead9e, Offset: 0xe70
// Size: 0x54
function function_6ed8776d(line, focus, force) {
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "EditBox.Focus", focus, undefined, force);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 1, eflags: 0x2 linked
// Checksum 0xad137233, Offset: 0xed0
// Size: 0x3a
function function_f887fdff(line) {
    return namespace_61e6d095::function_ce8141d4(#"hash_15363747d8cbf71f", line, "EditBox.Entry");
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x2 linked
// Checksum 0xc476be5e, Offset: 0xf18
// Size: 0x44
function function_9806766(line, entry) {
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "EditBox.Entry", entry);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x2 linked
// Checksum 0xf20d77e, Offset: 0xf68
// Size: 0x44
function function_f6fbe41(line, entry) {
    namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", line, "EditBox.LocalizedEntry", entry);
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 1, eflags: 0x2 linked
// Checksum 0x5c569a47, Offset: 0xfb8
// Size: 0xbc
function function_b2911127(delay = 2) {
    if (namespace_61e6d095::exists(#"hash_15363747d8cbf71f")) {
        namespace_61e6d095::set_count(#"hash_15363747d8cbf71f", 0);
        if (delay > 0) {
            wait(delay);
        }
        namespace_61e6d095::remove(#"hash_15363747d8cbf71f");
        namespace_61e6d095::function_4279fd02(#"computer");
    }
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 0, eflags: 0x2 linked
// Checksum 0xf985d6ca, Offset: 0x1080
// Size: 0x3c6
function function_f99d2e8a() {
    if (namespace_61e6d095::exists(#"hash_15363747d8cbf71f") && isdefined(level.var_deff0f73) && level.var_deff0f73.size > 0) {
        for (linenum = 1; linenum <= level.var_deff0f73.size; linenum++) {
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "ContentLine", #"");
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "RussianToLoc", #"");
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "ActiveIndex", -1);
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "MaskText", #"");
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "AutoType", 0);
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "RemoveCursorOnComplete", 0);
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "HideCursor", 0);
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "DrawByLine", 0);
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "ShowNewLineMarker", 0);
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "DrawByLineScreenMax", 0);
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "TypeSpeed", 0);
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "TypingSFXAlias", "");
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "CustomText", #"");
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "AlignTextRight", 0);
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "ClearInlineListOnComplete", 0);
            namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "FlashHighlight", 0);
            namespace_61e6d095::function_7239e030(#"hash_15363747d8cbf71f", linenum);
        }
        level.var_deff0f73 = undefined;
    }
}

// Namespace namespace_6f1d35e1/namespace_6f1d35e1
// Params 2, eflags: 0x6 linked
// Checksum 0x8e64410b, Offset: 0x1450
// Size: 0x4f4
function private function_66b8c40f(var_c1deb575, linenum) {
    if (namespace_61e6d095::exists(#"hash_15363747d8cbf71f")) {
        var_6b14e8ab = var_c1deb575.var_f49bdf40;
        var_3bf43333 = var_c1deb575.var_c9d25687;
        var_72c72e07 = var_c1deb575.var_72c72e07 === 1;
        var_e2b21dfe = var_c1deb575.var_e2b21dfe === 1;
        var_a6b3cacc = var_c1deb575.var_a6b3cacc === 1;
        var_75ce85d2 = var_c1deb575.var_75ce85d2 === 1;
        var_5ec34e46 = var_c1deb575.var_5ec34e46 === 1;
        var_570b2c06 = var_c1deb575.var_4cae1b36 === 1;
        var_7bc9391e = var_c1deb575.var_7bc9391e === 1;
        var_e36e3d7b = var_c1deb575.var_e36e3d7b;
        var_fce3a1c3 = var_c1deb575.var_fce3a1c3 === 1;
        var_5793627c = var_c1deb575.var_5793627c === 1;
        if (!isdefined(var_e36e3d7b)) {
            var_e36e3d7b = 0;
        }
        var_3decbda2 = var_c1deb575.var_dabbb2e7;
        if (!isdefined(var_3decbda2)) {
            var_3decbda2 = "";
        }
        if (!isdefined(var_3bf43333)) {
            var_3bf43333 = #"";
        }
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "ContentLine", var_6b14e8ab);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "RussianToLoc", var_3bf43333);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "ActiveIndex", linenum);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "MaskText", var_72c72e07);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "AutoType", var_e2b21dfe);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "RemoveCursorOnComplete", var_a6b3cacc);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "HideCursor", var_75ce85d2);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "DrawByLine", var_5ec34e46);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "ShowNewLineMarker", var_7bc9391e);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "DrawByLineScreenMax", var_e36e3d7b);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "TypeSpeed", 0);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "ColorIndex", 0);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "TypingSFXAlias", var_3decbda2);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "CustomText", #"");
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "AlignTextRight", var_570b2c06);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "ClearInlineListOnComplete", var_fce3a1c3);
        namespace_61e6d095::function_f2a9266(#"hash_15363747d8cbf71f", linenum, "FlashHighlight", var_5793627c);
    }
}


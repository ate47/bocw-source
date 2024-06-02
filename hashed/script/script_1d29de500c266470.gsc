// Atian COD Tools GSC CW decompiler test
#namespace namespace_eb06e24d;

// Namespace namespace_eb06e24d/namespace_eb06e24d
// Params 0, eflags: 0x2 linked
// Checksum 0x7ee10776, Offset: 0x80
// Size: 0x86
function get_jumpkits() {
    if (!isdefined(level.var_aadba305)) {
        level.var_aadba305 = isdefined(getscriptbundlelist(#"jumpkits")) ? getscriptbundlelist(#"jumpkits") : array();
    }
    return level.var_aadba305;
}

// Namespace namespace_eb06e24d/namespace_eb06e24d
// Params 0, eflags: 0x2 linked
// Checksum 0xb3a13dbd, Offset: 0x110
// Size: 0x14
function function_3045dd71() {
    return get_jumpkits().size;
}

// Namespace namespace_eb06e24d/namespace_eb06e24d
// Params 1, eflags: 0x2 linked
// Checksum 0x4450308e, Offset: 0x130
// Size: 0xaa
function function_550c6257(var_ff60755f) {
    jumpkits = get_jumpkits();
    assert(jumpkits.size > 0);
    assert(isdefined(jumpkits[0]));
    if (var_ff60755f < 0 || var_ff60755f >= jumpkits.size || !isdefined(jumpkits[var_ff60755f])) {
        var_ff60755f = 0;
    }
    return getscriptbundle(jumpkits[var_ff60755f]);
}

// Namespace namespace_eb06e24d/namespace_eb06e24d
// Params 1, eflags: 0x2 linked
// Checksum 0x7be40b4, Offset: 0x1e8
// Size: 0x4a
function function_83a2cad4(index) {
    kit = function_550c6257(index);
    return getscriptbundle(kit.parachute);
}

// Namespace namespace_eb06e24d/namespace_eb06e24d
// Params 1, eflags: 0x2 linked
// Checksum 0x1c555be4, Offset: 0x240
// Size: 0x4a
function function_aa3a05b1(index) {
    kit = function_550c6257(index);
    return getscriptbundle(kit.wingsuit);
}

// Namespace namespace_eb06e24d/namespace_eb06e24d
// Params 1, eflags: 0x2 linked
// Checksum 0xa2eb71f3, Offset: 0x298
// Size: 0x4a
function function_6452f9c5(index) {
    kit = function_550c6257(index);
    return getscriptbundle(kit.var_4fa85a25);
}

// Namespace namespace_eb06e24d/namespace_eb06e24d
// Params 0, eflags: 0x6 linked
// Checksum 0xc17ef9f3, Offset: 0x2f0
// Size: 0x7a
function private function_c72eb508() {
    if (isdefined(self.var_9f20891)) {
        return self.var_9f20891;
    }
    count = function_3045dd71();
    self.var_9f20891 = function_d59c2d03(count, level.item_spawn_seed + self getentitynumber());
    return self.var_9f20891;
}

// Namespace namespace_eb06e24d/namespace_eb06e24d
// Params 1, eflags: 0x6 linked
// Checksum 0x2587061b, Offset: 0x378
// Size: 0x152
function private function_37ae175b(type) {
    /#
        if (getdvarint(#"hash_9003cbb3abd93b7", 0) != 0) {
            count = function_3045dd71();
            return int(max(0, min(count, getdvarint(#"hash_9003cbb3abd93b7", 0) - 1)));
        }
        if (getdvarint(#"hash_6c79f9280f28fabe", 0) != 0) {
            return self function_c72eb508();
        }
    #/
    if (isbot(self)) {
        return self function_c72eb508();
    }
    var_5c27e968 = self function_7d5a3c48(currentsessionmode(), type);
    return var_5c27e968;
}

// Namespace namespace_eb06e24d/namespace_eb06e24d
// Params 0, eflags: 0x2 linked
// Checksum 0x35f78c05, Offset: 0x4d8
// Size: 0x2a
function get_parachute() {
    return function_83a2cad4(self function_37ae175b(0));
}

// Namespace namespace_eb06e24d/namespace_eb06e24d
// Params 0, eflags: 0x2 linked
// Checksum 0xf8c11f27, Offset: 0x510
// Size: 0x2a
function get_parachute_kit() {
    return function_550c6257(self function_37ae175b(0));
}

// Namespace namespace_eb06e24d/namespace_eb06e24d
// Params 0, eflags: 0x2 linked
// Checksum 0xba7f209a, Offset: 0x548
// Size: 0x2a
function get_wingsuit() {
    return function_aa3a05b1(self function_37ae175b(2));
}

// Namespace namespace_eb06e24d/namespace_eb06e24d
// Params 0, eflags: 0x2 linked
// Checksum 0xcee3a2ab, Offset: 0x580
// Size: 0x2a
function get_wingsuit_kit() {
    return function_550c6257(self function_37ae175b(2));
}

// Namespace namespace_eb06e24d/namespace_eb06e24d
// Params 0, eflags: 0x0
// Checksum 0x7f416c2, Offset: 0x5b8
// Size: 0x2a
function get_trailfx() {
    return function_6452f9c5(self function_37ae175b(1));
}

// Namespace namespace_eb06e24d/namespace_eb06e24d
// Params 0, eflags: 0x2 linked
// Checksum 0xaab928e7, Offset: 0x5f0
// Size: 0x2a
function function_4a39b434() {
    return function_550c6257(self function_37ae175b(1));
}


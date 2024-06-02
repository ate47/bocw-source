// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flag_shared.csc;

#namespace item_world_fixup;

// Namespace item_world_fixup/item_world_fixup
// Params 0, eflags: 0x1
// Checksum 0xaec9e306, Offset: 0x90
// Size: 0x4c
function autoexec __init__() {
    level.itemreplacement = [];
    level.var_ee110db8 = [];
    level.var_93c59949 = [];
    level.var_1d777960 = [];
    level.var_bf9b06d3 = [];
    level.var_8d50adaa = [];
}

// Namespace item_world_fixup/item_world_fixup
// Params 3, eflags: 0x6 linked
// Checksum 0x71971c09, Offset: 0xe8
// Size: 0xbe
function private function_59c1a869(&replacementarray, var_d1c21f6f, var_b06dd57e) {
    if (!ishash(var_d1c21f6f) || !ishash(var_b06dd57e)) {
        assert(0);
        return;
    }
    assert(!isdefined(replacementarray[var_d1c21f6f]));
    if (isdefined(replacementarray[var_d1c21f6f])) {
        return;
    }
    /#
        function_d50342ad(var_b06dd57e);
    #/
    replacementarray[var_d1c21f6f] = var_b06dd57e;
}

// Namespace item_world_fixup/item_world_fixup
// Params 3, eflags: 0x6 linked
// Checksum 0xff6ba27a, Offset: 0x1b0
// Size: 0xde
function private function_41015db1(&replacementarray, itemname, replacementitemname) {
    if (!ishash(itemname) || !ishash(replacementitemname)) {
        assert(0);
        return;
    }
    assert(!isdefined(replacementarray[itemname]));
    if (isdefined(replacementarray[itemname])) {
        return;
    }
    if (replacementitemname == #"") {
        replacementitemname = "";
    }
    /#
        function_cd5f2152(replacementitemname);
    #/
    replacementarray[itemname] = replacementitemname;
}

// Namespace item_world_fixup/item_world_fixup
// Params 0, eflags: 0x4
// Checksum 0x48dbad24, Offset: 0x298
// Size: 0x5c
function private function_bbc0b67f() {
    flag = #"hash_67b445a4b1d59922";
    if (level flag::get(flag)) {
        assert(0, "<unknown string>");
        return false;
    }
    return true;
}

/#

    // Namespace item_world_fixup/item_world_fixup
    // Params 1, eflags: 0x4
    // Checksum 0x582f75a7, Offset: 0x300
    // Size: 0x22
    function private function_cd5f2152(itemname) {
        if (itemname == "<unknown string>") {
            return;
        }
    }

    // Namespace item_world_fixup/item_world_fixup
    // Params 1, eflags: 0x4
    // Checksum 0x1fae110f, Offset: 0x330
    // Size: 0x22
    function private function_d50342ad(var_d1c21f6f) {
        if (var_d1c21f6f == "<unknown string>") {
            return;
        }
    }

#/

// Namespace item_world_fixup/item_world_fixup
// Params 2, eflags: 0x2 linked
// Checksum 0x16c0a045, Offset: 0x360
// Size: 0x34
function function_6991057(var_d1c21f6f, var_b06dd57e) {
    function_59c1a869(level.var_ee110db8, var_d1c21f6f, var_b06dd57e);
}

// Namespace item_world_fixup/item_world_fixup
// Params 2, eflags: 0x2 linked
// Checksum 0x1af9a941, Offset: 0x3a0
// Size: 0x34
function add_item_replacement(itemname, replacementitemname) {
    function_41015db1(level.itemreplacement, itemname, replacementitemname);
}

// Namespace item_world_fixup/item_world_fixup
// Params 3, eflags: 0x2 linked
// Checksum 0xff1f5341, Offset: 0x3e0
// Size: 0x20e
function add_spawn_point(origin, targetname, angles = (0, 0, 0)) {
    if (!isvec(origin) || !isvec(angles) || !ishash(targetname)) {
        assert(0);
        return;
    }
    if (!isdefined(level.var_1d777960[targetname])) {
        level.var_1d777960[targetname] = array();
    }
    foreach (var_1d777960 in level.var_1d777960) {
        foreach (spawnpoint in var_1d777960) {
            if (spawnpoint.origin == origin) {
                return;
            }
        }
    }
    var_3cc38ddd = level.var_1d777960[targetname].size;
    level.var_1d777960[targetname][var_3cc38ddd] = {#origin:origin, #angles:angles};
}

// Namespace item_world_fixup/item_world_fixup
// Params 3, eflags: 0x2 linked
// Checksum 0x39211ad8, Offset: 0x5f8
// Size: 0x10e
function function_e70fa91c(var_cf456610, var_2ab9d3bd, var_6647c284 = -1) {
    if (!ishash(var_cf456610) || !ishash(var_2ab9d3bd) || !isint(var_6647c284)) {
        assert(0);
        return;
    }
    if (!isdefined(level.var_93c59949[var_cf456610])) {
        level.var_93c59949[var_cf456610] = [];
    }
    replacementcount = level.var_93c59949[var_cf456610].size;
    level.var_93c59949[var_cf456610][replacementcount] = {#replacement:var_2ab9d3bd, #count:var_6647c284};
}

// Namespace item_world_fixup/item_world_fixup
// Params 4, eflags: 0x0
// Checksum 0xffcd5123, Offset: 0x710
// Size: 0x126
function function_2749fcc3(var_89b7987e, var_cf456610, var_2ab9d3bd, var_6647c284 = 1) {
    if (!ishash(var_cf456610) || !ishash(var_2ab9d3bd) || !isint(var_6647c284)) {
        assert(0);
        return;
    }
    if (!isdefined(level.var_93c59949[var_cf456610])) {
        level.var_93c59949[var_cf456610] = [];
    }
    replacementcount = level.var_93c59949[var_cf456610].size;
    level.var_93c59949[var_cf456610][replacementcount] = {#replacement:var_2ab9d3bd, #count:var_6647c284, #var_52a66db0:var_89b7987e};
}

// Namespace item_world_fixup/item_world_fixup
// Params 1, eflags: 0x2 linked
// Checksum 0x6883614e, Offset: 0x840
// Size: 0x54
function remove_item(itemname) {
    if (!ishash(itemname)) {
        assert(0);
        return;
    }
    level.itemreplacement[itemname] = "";
}

// Namespace item_world_fixup/item_world_fixup
// Params 2, eflags: 0x2 linked
// Checksum 0x16715412, Offset: 0x8a0
// Size: 0xe4
function function_a997e342(origin, radius) {
    if (!isvec(origin) || !isfloat(radius) && !isint(radius)) {
        assert(0);
        return;
    }
    level.var_bf9b06d3[level.var_bf9b06d3.size] = origin;
    level.var_8d50adaa[level.var_8d50adaa.size] = radius;
    assert(level.var_bf9b06d3.size == level.var_8d50adaa.size);
}


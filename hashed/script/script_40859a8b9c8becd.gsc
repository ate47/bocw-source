// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\array_shared.gsc;

#namespace namespace_1125e192;

// Namespace namespace_1125e192/namespace_d5ac265e
// Params 0, eflags: 0x2 linked
// Checksum 0xd74c6d3b, Offset: 0x88
// Size: 0xf4
function function_93c5a24() {
    if (!isdefined(level.hotzones)) {
        return;
    }
    if (!getdvarint(#"hash_1429e62553e102ab", 0)) {
        if (!is_true(getgametypesetting(#"hash_34c2c463f81af043"))) {
            return;
        }
        if (randomintrangeinclusive(1, 100) > level.realm * 3) {
            return;
        }
    }
    level.var_2c56b3ec = array::random(level.hotzones);
    /#
        level thread function_ace23f69(level.var_2c56b3ec.origin);
    #/
}

/#

    // Namespace namespace_1125e192/namespace_d5ac265e
    // Params 1, eflags: 0x0
    // Checksum 0x50da46db, Offset: 0x188
    // Size: 0x6e
    function function_ace23f69(v_loc) {
        self notify("<unknown string>");
        self endon("<unknown string>");
        while (isdefined(v_loc)) {
            sphere(v_loc, 32, (1, 0, 0), undefined, undefined, undefined, 10);
            waitframe(10);
        }
    }

#/

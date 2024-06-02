// Atian COD Tools GSC CW decompiler test
#using scripts\wz_common\util.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace death_circle;

// Namespace death_circle/death_circle
// Params 0, eflags: 0x2 linked
// Checksum 0xa7340bcd, Offset: 0x118
// Size: 0xf4
function init_vo() {
    callback::add_callback(#"hash_7ec09c8f8151205c", &function_e8c1f9d2);
    callback::add_callback(#"hash_3ab90c4405f67276", &function_a0fd3c83);
    callback::add_callback(#"hash_77fdc4459f2f1e35", &function_465ef407);
    callback::add_callback(#"hash_3cadee0b88ef66a2", &function_1bbc8595);
    callback::add_callback(#"hash_166e273d927bf6a3", &function_dce81333);
}

// Namespace death_circle/death_circle
// Params 0, eflags: 0x2 linked
// Checksum 0x63c3bf0b, Offset: 0x218
// Size: 0x4c
function function_e8c1f9d2() {
    if (!is_true(getgametypesetting(#"hash_6873fc00b59bcd39"))) {
        util::function_8076d591("warCircleDetectedFirst");
    }
}

// Namespace death_circle/death_circle
// Params 0, eflags: 0x2 linked
// Checksum 0x1ebd2cff, Offset: 0x270
// Size: 0x1c
function function_a0fd3c83() {
    util::function_8076d591("warCircleDetectedLast");
}

// Namespace death_circle/death_circle
// Params 0, eflags: 0x2 linked
// Checksum 0x9886a10e, Offset: 0x298
// Size: 0x1c
function function_465ef407() {
    util::function_8076d591("warCircleDetected");
}

// Namespace death_circle/death_circle
// Params 0, eflags: 0x2 linked
// Checksum 0xf1218ee1, Offset: 0x2c0
// Size: 0x1c
function function_1bbc8595() {
    util::function_8076d591("warCircleCollapseImminent");
}

// Namespace death_circle/death_circle
// Params 0, eflags: 0x2 linked
// Checksum 0x93ce195f, Offset: 0x2e8
// Size: 0x1c
function function_dce81333() {
    util::function_8076d591("warCircleCollapseOccurring");
}


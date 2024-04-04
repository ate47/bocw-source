// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_c8d806d2487b617;
#using script_152c3f4ffef9e588;

#namespace namespace_2b1568cc;

// Namespace namespace_2b1568cc/namespace_2b1568cc
// Params 0, eflags: 0x5
// Checksum 0xa1fdab78, Offset: 0xe0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_380b7703a79220e8", &preinit, undefined, undefined, #"radiation");
}

// Namespace namespace_2b1568cc/namespace_2b1568cc
// Params 0, eflags: 0x4
// Checksum 0xb6efd6e9, Offset: 0x130
// Size: 0x2c
function private preinit() {
    if (!namespace_956bd4dd::function_ab99e60c()) {
        return;
    }
    function_d90ea0e7();
}

// Namespace namespace_2b1568cc/namespace_2b1568cc
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x168
// Size: 0x4
function function_d90ea0e7() {
    
}

// Namespace namespace_2b1568cc/namespace_2b1568cc
// Params 0, eflags: 0x4
// Checksum 0x7dc831a7, Offset: 0x178
// Size: 0x2c
function private function_41d40455() {
    self val::set(#"hash_668c27c4f08f8d26", "allow_ads", 0);
}

// Namespace namespace_2b1568cc/namespace_2b1568cc
// Params 0, eflags: 0x4
// Checksum 0xf1baabc5, Offset: 0x1b0
// Size: 0x34
function private function_c11b3d17() {
    self val::set(#"hash_668c27c4f08f8d26", "allow_ads", 1);
}

// Namespace namespace_2b1568cc/namespace_2b1568cc
// Params 0, eflags: 0x4
// Checksum 0xb1fba5db, Offset: 0x1f0
// Size: 0x2c
function private function_b3c2eb77() {
    self val::set(#"hash_668c27c4f08f8d26", "health_regen", 0);
}

// Namespace namespace_2b1568cc/namespace_2b1568cc
// Params 0, eflags: 0x4
// Checksum 0x570f750c, Offset: 0x228
// Size: 0x34
function private function_b375f04e() {
    self val::set(#"hash_668c27c4f08f8d26", "health_regen", 1);
}

// Namespace namespace_2b1568cc/namespace_2b1568cc
// Params 0, eflags: 0x4
// Checksum 0x55400a8c, Offset: 0x268
// Size: 0x2c
function private function_3df85b7() {
    self val::set(#"hash_668c27c4f08f8d26", "allow_melee", 0);
}

// Namespace namespace_2b1568cc/namespace_2b1568cc
// Params 0, eflags: 0x4
// Checksum 0x6582a310, Offset: 0x2a0
// Size: 0x34
function private function_3213dd79() {
    self val::set(#"hash_668c27c4f08f8d26", "allow_melee", 1);
}

// Namespace namespace_2b1568cc/namespace_2b1568cc
// Params 0, eflags: 0x4
// Checksum 0x8562db82, Offset: 0x2e0
// Size: 0x2c
function private function_e1e646f0() {
    self val::set(#"hash_668c27c4f08f8d26", "allow_sprint", 0);
}

// Namespace namespace_2b1568cc/namespace_2b1568cc
// Params 0, eflags: 0x4
// Checksum 0x147c4127, Offset: 0x318
// Size: 0x34
function private function_a6beb2ea() {
    self val::set(#"hash_668c27c4f08f8d26", "allow_sprint", 1);
}


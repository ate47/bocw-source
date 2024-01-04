// Atian COD Tools GSC CW decompiler test
#using script_1883fa4e60abbf9f;
#using script_912160eeb6a2d51;
#using script_21cbc79d1d70402;
#using script_6c5ee33879e077f8;

#namespace namespace_a8f68e3c;

// Namespace namespace_a8f68e3c/init
// Params 0, eflags: 0x0
// Checksum 0xba62617e, Offset: 0xa0
// Size: 0x14
function main() {
    namespace_393f6012::function_f9682fd();
}

// Namespace namespace_a8f68e3c/init
// Params 3, eflags: 0x2 linked
// Checksum 0x6c0d9d4d, Offset: 0xc0
// Size: 0x1b0
function function_f69dc195(enabled, var_901d9fb2, var_4a9f6f96) {
    if (enabled) {
        if (isdefined(var_901d9fb2) && isdefined(var_4a9f6f96)) {
            level thread namespace_979752dc::function_18a4932b(var_901d9fb2, var_4a9f6f96);
        }
        level thread namespace_6c0cd084::function_bcf622ce(1);
        foreach (player in getplayers()) {
            player thread namespace_7a865494::main();
        }
        setsaveddvar(#"hash_3e8c4724c1db5fe7", 0);
    } else {
        level thread namespace_979752dc::function_755ee59f();
        level thread namespace_6c0cd084::function_bcf622ce(0);
        setsaveddvar(#"hash_3e8c4724c1db5fe7", 1);
    }
    if (isdefined(level.stealth.var_c080ba35)) {
        level thread [[ level.stealth.var_c080ba35 ]](enabled, var_901d9fb2, var_4a9f6f96);
    }
}


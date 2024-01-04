// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace namespace_6df5a8d8;

// Namespace namespace_6df5a8d8
// Method(s) 6 Total 13
class class_a19c3039 : cluielem {

    // Namespace class_a19c3039/namespace_6df5a8d8
    // Params 0, eflags: 0x8
    // Checksum 0x6847223e, Offset: 0x300
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_a19c3039/namespace_6df5a8d8
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0xd1288e34, Offset: 0x3d0
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_a19c3039/namespace_6df5a8d8
    // Params 1, eflags: 0x0
    // Checksum 0x6f7d0d69, Offset: 0x3a0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_a19c3039/namespace_6df5a8d8
    // Params 0, eflags: 0x0
    // Checksum 0xf9c8f613, Offset: 0x348
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("sr_perk_machine_choice");
    }

    // Namespace namespace_a19c3039/namespace_6df5a8d8
    // Params 0, eflags: 0x0
    // Checksum 0x23de0498, Offset: 0x320
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("sr_perk_machine_choice");
    }

    // Namespace namespace_a19c3039/namespace_6df5a8d8
    // Params 1, eflags: 0x0
    // Checksum 0xbf81c59, Offset: 0x370
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace namespace_6df5a8d8/namespace_6df5a8d8
// Params 0, eflags: 0x0
// Checksum 0x770955a1, Offset: 0xd0
// Size: 0x16e
function register() {
    elem = new class_a19c3039();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"hash_2b785c016a6553c3"])) {
        level.var_ae746e8f[#"hash_2b785c016a6553c3"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"hash_2b785c016a6553c3"])) {
        level.var_ae746e8f[#"hash_2b785c016a6553c3"] = [];
    } else if (!isarray(level.var_ae746e8f[#"hash_2b785c016a6553c3"])) {
        level.var_ae746e8f[#"hash_2b785c016a6553c3"] = array(level.var_ae746e8f[#"hash_2b785c016a6553c3"]);
    }
    level.var_ae746e8f[#"hash_2b785c016a6553c3"][level.var_ae746e8f[#"hash_2b785c016a6553c3"].size] = elem;
}

// Namespace namespace_6df5a8d8/namespace_6df5a8d8
// Params 0, eflags: 0x0
// Checksum 0x5257ba30, Offset: 0x248
// Size: 0x34
function register_clientside() {
    elem = new class_a19c3039();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace namespace_6df5a8d8/namespace_6df5a8d8
// Params 1, eflags: 0x0
// Checksum 0x4c92b014, Offset: 0x288
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace namespace_6df5a8d8/namespace_6df5a8d8
// Params 1, eflags: 0x0
// Checksum 0x9de286f, Offset: 0x2b0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_6df5a8d8/namespace_6df5a8d8
// Params 1, eflags: 0x0
// Checksum 0xc32f1927, Offset: 0x2d8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}


// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace namespace_d8718530;

// Namespace namespace_d8718530
// Method(s) 6 Total 13
class class_1762fc34 : cluielem {

    // Namespace class_1762fc34/namespace_d8718530
    // Params 0, eflags: 0x8
    // Checksum 0x3bcec622, Offset: 0x300
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_1762fc34/namespace_d8718530
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0x6256c5c1, Offset: 0x3d0
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_1762fc34/namespace_d8718530
    // Params 1, eflags: 0x0
    // Checksum 0x4545cb00, Offset: 0x3a0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_1762fc34/namespace_d8718530
    // Params 0, eflags: 0x0
    // Checksum 0x3f64661c, Offset: 0x348
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("lui_napalm_strike");
    }

    // Namespace namespace_1762fc34/namespace_d8718530
    // Params 0, eflags: 0x0
    // Checksum 0xa644f64e, Offset: 0x320
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("lui_napalm_strike");
    }

    // Namespace namespace_1762fc34/namespace_d8718530
    // Params 1, eflags: 0x0
    // Checksum 0x1bd22c71, Offset: 0x370
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace namespace_d8718530/namespace_d8718530
// Params 0, eflags: 0x0
// Checksum 0x6232c095, Offset: 0xd0
// Size: 0x16e
function register() {
    elem = new class_1762fc34();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"hash_12ad55b2700f7a5a"])) {
        level.var_ae746e8f[#"hash_12ad55b2700f7a5a"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"hash_12ad55b2700f7a5a"])) {
        level.var_ae746e8f[#"hash_12ad55b2700f7a5a"] = [];
    } else if (!isarray(level.var_ae746e8f[#"hash_12ad55b2700f7a5a"])) {
        level.var_ae746e8f[#"hash_12ad55b2700f7a5a"] = array(level.var_ae746e8f[#"hash_12ad55b2700f7a5a"]);
    }
    level.var_ae746e8f[#"hash_12ad55b2700f7a5a"][level.var_ae746e8f[#"hash_12ad55b2700f7a5a"].size] = elem;
}

// Namespace namespace_d8718530/namespace_d8718530
// Params 0, eflags: 0x0
// Checksum 0xfad38267, Offset: 0x248
// Size: 0x34
function register_clientside() {
    elem = new class_1762fc34();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace namespace_d8718530/namespace_d8718530
// Params 1, eflags: 0x0
// Checksum 0xaa4c3d4a, Offset: 0x288
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace namespace_d8718530/namespace_d8718530
// Params 1, eflags: 0x0
// Checksum 0xce0c5bf0, Offset: 0x2b0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_d8718530/namespace_d8718530
// Params 1, eflags: 0x0
// Checksum 0x54c22dd7, Offset: 0x2d8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}


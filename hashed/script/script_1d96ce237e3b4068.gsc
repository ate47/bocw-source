// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace namespace_58eb7697;

// Namespace namespace_58eb7697
// Method(s) 8 Total 15
class class_37d61ee3 : cluielem {

    // Namespace class_37d61ee3/namespace_58eb7697
    // Params 0, eflags: 0x8
    // Checksum 0x3716bc0, Offset: 0x390
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_37d61ee3/namespace_58eb7697
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0x22e037c6, Offset: 0x518
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_37d61ee3/namespace_58eb7697
    // Params 1, eflags: 0x0
    // Checksum 0xd93a7117, Offset: 0x478
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_37d61ee3/namespace_58eb7697
    // Params 0, eflags: 0x0
    // Checksum 0xe58c6a23, Offset: 0x3e8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("lui_plane_mortar");
    }

    // Namespace namespace_37d61ee3/namespace_58eb7697
    // Params 2, eflags: 0x0
    // Checksum 0x23bdd50d, Offset: 0x4a8
    // Size: 0x30
    function function_6c69ff4b(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "selectorIndex", value);
    }

    // Namespace namespace_37d61ee3/namespace_58eb7697
    // Params 2, eflags: 0x0
    // Checksum 0xc0b27c64, Offset: 0x3b0
    // Size: 0x2c
    function setup_clientfields(*var_828e1f01, *var_a9fceeac) {
        cluielem::setup_clientfields("lui_plane_mortar");
    }

    // Namespace namespace_37d61ee3/namespace_58eb7697
    // Params 2, eflags: 0x0
    // Checksum 0xea2a0881, Offset: 0x4e0
    // Size: 0x30
    function function_b172c58e(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "selectorsAvailable", value);
    }

    // Namespace namespace_37d61ee3/namespace_58eb7697
    // Params 1, eflags: 0x0
    // Checksum 0x56f21b89, Offset: 0x410
    // Size: 0x5c
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        [[ self ]]->set_data(localclientnum, "selectorIndex", 0);
        [[ self ]]->set_data(localclientnum, "selectorsAvailable", 0);
    }

}

// Namespace namespace_58eb7697/namespace_58eb7697
// Params 2, eflags: 0x0
// Checksum 0x6715972f, Offset: 0xf0
// Size: 0x17e
function register(var_828e1f01, var_a9fceeac) {
    elem = new class_37d61ee3();
    [[ elem ]]->setup_clientfields(var_828e1f01, var_a9fceeac);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"hash_5304994f5e72bef0"])) {
        level.var_ae746e8f[#"hash_5304994f5e72bef0"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"hash_5304994f5e72bef0"])) {
        level.var_ae746e8f[#"hash_5304994f5e72bef0"] = [];
    } else if (!isarray(level.var_ae746e8f[#"hash_5304994f5e72bef0"])) {
        level.var_ae746e8f[#"hash_5304994f5e72bef0"] = array(level.var_ae746e8f[#"hash_5304994f5e72bef0"]);
    }
    level.var_ae746e8f[#"hash_5304994f5e72bef0"][level.var_ae746e8f[#"hash_5304994f5e72bef0"].size] = elem;
}

// Namespace namespace_58eb7697/namespace_58eb7697
// Params 0, eflags: 0x0
// Checksum 0x18128a15, Offset: 0x278
// Size: 0x34
function register_clientside() {
    elem = new class_37d61ee3();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace namespace_58eb7697/namespace_58eb7697
// Params 1, eflags: 0x0
// Checksum 0x6b8f324b, Offset: 0x2b8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace namespace_58eb7697/namespace_58eb7697
// Params 1, eflags: 0x0
// Checksum 0xb381fe23, Offset: 0x2e0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_58eb7697/namespace_58eb7697
// Params 1, eflags: 0x0
// Checksum 0xa3ffb018, Offset: 0x308
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace namespace_58eb7697/namespace_58eb7697
// Params 2, eflags: 0x0
// Checksum 0x99aecbc7, Offset: 0x330
// Size: 0x28
function function_6c69ff4b(localclientnum, value) {
    [[ self ]]->function_6c69ff4b(localclientnum, value);
}

// Namespace namespace_58eb7697/namespace_58eb7697
// Params 2, eflags: 0x0
// Checksum 0xf5662dd0, Offset: 0x360
// Size: 0x28
function function_b172c58e(localclientnum, value) {
    [[ self ]]->function_b172c58e(localclientnum, value);
}

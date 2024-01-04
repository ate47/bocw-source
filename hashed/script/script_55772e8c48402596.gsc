// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace namespace_43d87eee;

// Namespace namespace_43d87eee
// Method(s) 7 Total 14
class class_51e5626e : cluielem {

    // Namespace class_51e5626e/namespace_43d87eee
    // Params 0, eflags: 0x8
    // Checksum 0x4d8cce20, Offset: 0x348
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_51e5626e/namespace_43d87eee
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0x8e54a456, Offset: 0x4a8
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_51e5626e/namespace_43d87eee
    // Params 1, eflags: 0x0
    // Checksum 0xfa7dd94a, Offset: 0x440
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_51e5626e/namespace_43d87eee
    // Params 0, eflags: 0x0
    // Checksum 0x5d2d3ed5, Offset: 0x3c0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("sr_message_box");
    }

    // Namespace namespace_51e5626e/namespace_43d87eee
    // Params 2, eflags: 0x0
    // Checksum 0xc655dbc9, Offset: 0x470
    // Size: 0x30
    function function_7a690474(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "messagebox", value);
    }

    // Namespace namespace_51e5626e/namespace_43d87eee
    // Params 1, eflags: 0x0
    // Checksum 0x287ae7d7, Offset: 0x368
    // Size: 0x4c
    function setup_clientfields(*var_50fe5991) {
        cluielem::setup_clientfields("sr_message_box");
        cluielem::function_dcb34c80("string", "messagebox", 1);
    }

    // Namespace namespace_51e5626e/namespace_43d87eee
    // Params 1, eflags: 0x0
    // Checksum 0xb2e61558, Offset: 0x3e8
    // Size: 0x4c
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        [[ self ]]->set_data(localclientnum, "messagebox", #"");
    }

}

// Namespace namespace_43d87eee/namespace_43d87eee
// Params 1, eflags: 0x0
// Checksum 0x81f7165e, Offset: 0xe0
// Size: 0x176
function register(var_50fe5991) {
    elem = new class_51e5626e();
    [[ elem ]]->setup_clientfields(var_50fe5991);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"hash_1dd0a92c1e78c56"])) {
        level.var_ae746e8f[#"hash_1dd0a92c1e78c56"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"hash_1dd0a92c1e78c56"])) {
        level.var_ae746e8f[#"hash_1dd0a92c1e78c56"] = [];
    } else if (!isarray(level.var_ae746e8f[#"hash_1dd0a92c1e78c56"])) {
        level.var_ae746e8f[#"hash_1dd0a92c1e78c56"] = array(level.var_ae746e8f[#"hash_1dd0a92c1e78c56"]);
    }
    level.var_ae746e8f[#"hash_1dd0a92c1e78c56"][level.var_ae746e8f[#"hash_1dd0a92c1e78c56"].size] = elem;
}

// Namespace namespace_43d87eee/namespace_43d87eee
// Params 0, eflags: 0x0
// Checksum 0x4d077c00, Offset: 0x260
// Size: 0x34
function register_clientside() {
    elem = new class_51e5626e();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace namespace_43d87eee/namespace_43d87eee
// Params 1, eflags: 0x0
// Checksum 0xab7c1abf, Offset: 0x2a0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace namespace_43d87eee/namespace_43d87eee
// Params 1, eflags: 0x0
// Checksum 0x2c2bb37, Offset: 0x2c8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_43d87eee/namespace_43d87eee
// Params 1, eflags: 0x0
// Checksum 0x71b19878, Offset: 0x2f0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace namespace_43d87eee/namespace_43d87eee
// Params 2, eflags: 0x0
// Checksum 0x4a457b7a, Offset: 0x318
// Size: 0x28
function function_7a690474(localclientnum, value) {
    [[ self ]]->function_7a690474(localclientnum, value);
}


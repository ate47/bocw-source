// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace namespace_54dcccfc;

// Namespace namespace_54dcccfc
// Method(s) 12 Total 19
class class_51a06b68 : cluielem {

    // Namespace class_51a06b68/namespace_54dcccfc
    // Params 0, eflags: 0x8
    // Checksum 0xaba64e4c, Offset: 0x4b0
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_51a06b68/namespace_54dcccfc
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0x1be81c92, Offset: 0x988
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_51a06b68/namespace_54dcccfc
    // Params 1, eflags: 0x0
    // Checksum 0xf7dd9dc8, Offset: 0x718
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_51a06b68/namespace_54dcccfc
    // Params 2, eflags: 0x0
    // Checksum 0xd7220277, Offset: 0x8e0
    // Size: 0x30
    function function_2d7f3298(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "gunindex2", value);
    }

    // Namespace namespace_51a06b68/namespace_54dcccfc
    // Params 2, eflags: 0x0
    // Checksum 0xad50e81a, Offset: 0x8a8
    // Size: 0x30
    function function_43ba5f0e(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "gunIndex1", value);
    }

    // Namespace namespace_51a06b68/namespace_54dcccfc
    // Params 0, eflags: 0x0
    // Checksum 0xe4bafba, Offset: 0x610
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("sr_objective_reward_menu");
    }

    // Namespace namespace_51a06b68/namespace_54dcccfc
    // Params 5, eflags: 0x0
    // Checksum 0x8419e25f, Offset: 0x4d0
    // Size: 0x134
    function setup_clientfields(var_e4dedc0e, var_c8914fcf, var_2f1b82f5, var_bf555938, var_18d66c99) {
        cluielem::setup_clientfields("sr_objective_reward_menu");
        cluielem::add_clientfield("_state", 1, 2, "int");
        cluielem::add_clientfield("promptProgress", 1, 7, "float", var_e4dedc0e);
        cluielem::add_clientfield("gunIndex1", 1, 4, "int", var_c8914fcf);
        cluielem::add_clientfield("gunindex2", 1, 4, "int", var_2f1b82f5);
        cluielem::add_clientfield("gunindex3", 1, 4, "int", var_bf555938);
        cluielem::add_clientfield("color", 1, 2, "int", var_18d66c99);
    }

    // Namespace namespace_51a06b68/namespace_54dcccfc
    // Params 2, eflags: 0x0
    // Checksum 0xd7eea3a5, Offset: 0x950
    // Size: 0x30
    function set_color(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "color", value);
    }

    // Namespace namespace_51a06b68/namespace_54dcccfc
    // Params 2, eflags: 0x0
    // Checksum 0x89512ffb, Offset: 0x918
    // Size: 0x30
    function function_ada8b2f1(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "gunindex3", value);
    }

    // Namespace namespace_51a06b68/namespace_54dcccfc
    // Params 2, eflags: 0x0
    // Checksum 0x19a0d88, Offset: 0x870
    // Size: 0x30
    function function_b94196b8(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "promptProgress", value);
    }

    // Namespace namespace_51a06b68/namespace_54dcccfc
    // Params 2, eflags: 0x0
    // Checksum 0x59b8f7fd, Offset: 0x748
    // Size: 0x11c
    function set_state(localclientnum, state_name) {
        if (#"defaultstate" == state_name) {
            [[ self ]]->set_data(localclientnum, "_state", 0);
        } else if (#"hash_aae094fcdbbfdf5" == state_name) {
            [[ self ]]->set_data(localclientnum, "_state", 1);
        } else if (#"hash_6e088fcf60bf0124" == state_name) {
            [[ self ]]->set_data(localclientnum, "_state", 2);
        } else if (#"hash_7ca278cf4669f74b" == state_name) {
            [[ self ]]->set_data(localclientnum, "_state", 3);
        } else {
            /#
                /#
                    assertmsg("<unknown string>");
                #/
            #/
        }
    }

    // Namespace namespace_51a06b68/namespace_54dcccfc
    // Params 1, eflags: 0x0
    // Checksum 0x5739ac69, Offset: 0x638
    // Size: 0xd8
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        [[ self ]]->set_state(localclientnum, #"defaultstate");
        [[ self ]]->set_data(localclientnum, "promptProgress", 0);
        [[ self ]]->set_data(localclientnum, "gunIndex1", 0);
        [[ self ]]->set_data(localclientnum, "gunindex2", 0);
        [[ self ]]->set_data(localclientnum, "gunindex3", 0);
        [[ self ]]->set_data(localclientnum, "color", 0);
    }

}

// Namespace namespace_54dcccfc/namespace_54dcccfc
// Params 5, eflags: 0x0
// Checksum 0x7ae663e1, Offset: 0x130
// Size: 0x19e
function register(var_e4dedc0e, var_c8914fcf, var_2f1b82f5, var_bf555938, var_18d66c99) {
    elem = new class_51a06b68();
    [[ elem ]]->setup_clientfields(var_e4dedc0e, var_c8914fcf, var_2f1b82f5, var_bf555938, var_18d66c99);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"hash_10092fdae7da5a8"])) {
        level.var_ae746e8f[#"hash_10092fdae7da5a8"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"hash_10092fdae7da5a8"])) {
        level.var_ae746e8f[#"hash_10092fdae7da5a8"] = [];
    } else if (!isarray(level.var_ae746e8f[#"hash_10092fdae7da5a8"])) {
        level.var_ae746e8f[#"hash_10092fdae7da5a8"] = array(level.var_ae746e8f[#"hash_10092fdae7da5a8"]);
    }
    level.var_ae746e8f[#"hash_10092fdae7da5a8"][level.var_ae746e8f[#"hash_10092fdae7da5a8"].size] = elem;
}

// Namespace namespace_54dcccfc/namespace_54dcccfc
// Params 0, eflags: 0x0
// Checksum 0x8f6014ae, Offset: 0x2d8
// Size: 0x34
function register_clientside() {
    elem = new class_51a06b68();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace namespace_54dcccfc/namespace_54dcccfc
// Params 1, eflags: 0x0
// Checksum 0x7c02ea4c, Offset: 0x318
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace namespace_54dcccfc/namespace_54dcccfc
// Params 1, eflags: 0x0
// Checksum 0x2bd94604, Offset: 0x340
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_54dcccfc/namespace_54dcccfc
// Params 1, eflags: 0x0
// Checksum 0x5b9ffe9a, Offset: 0x368
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace namespace_54dcccfc/namespace_54dcccfc
// Params 2, eflags: 0x0
// Checksum 0x4a56f7ac, Offset: 0x390
// Size: 0x28
function set_state(localclientnum, state_name) {
    [[ self ]]->set_state(localclientnum, state_name);
}

// Namespace namespace_54dcccfc/namespace_54dcccfc
// Params 2, eflags: 0x0
// Checksum 0x3320ef14, Offset: 0x3c0
// Size: 0x28
function function_b94196b8(localclientnum, value) {
    [[ self ]]->function_b94196b8(localclientnum, value);
}

// Namespace namespace_54dcccfc/namespace_54dcccfc
// Params 2, eflags: 0x0
// Checksum 0xe5cebb09, Offset: 0x3f0
// Size: 0x28
function function_43ba5f0e(localclientnum, value) {
    [[ self ]]->function_43ba5f0e(localclientnum, value);
}

// Namespace namespace_54dcccfc/namespace_54dcccfc
// Params 2, eflags: 0x0
// Checksum 0xc417d66e, Offset: 0x420
// Size: 0x28
function function_2d7f3298(localclientnum, value) {
    [[ self ]]->function_2d7f3298(localclientnum, value);
}

// Namespace namespace_54dcccfc/namespace_54dcccfc
// Params 2, eflags: 0x0
// Checksum 0xf50057a0, Offset: 0x450
// Size: 0x28
function function_ada8b2f1(localclientnum, value) {
    [[ self ]]->function_ada8b2f1(localclientnum, value);
}

// Namespace namespace_54dcccfc/namespace_54dcccfc
// Params 2, eflags: 0x0
// Checksum 0x47dfa079, Offset: 0x480
// Size: 0x28
function set_color(localclientnum, value) {
    [[ self ]]->set_color(localclientnum, value);
}

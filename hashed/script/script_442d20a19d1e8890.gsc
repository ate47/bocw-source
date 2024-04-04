// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace incursion_infiltrationtitlecards;

// Namespace incursion_infiltrationtitlecards
// Method(s) 8 Total 15
class class_7c3faeda : cluielem {

    // Namespace namespace_7c3faeda/incursion_infiltrationtitlecards
    // Params 1, eflags: 0x0
    // Checksum 0x444082bb, Offset: 0x4d0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_7c3faeda/incursion_infiltrationtitlecards
    // Params 0, eflags: 0x0
    // Checksum 0x8e16e15a, Offset: 0x440
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("Incursion_InfiltrationTitleCards");
    }

    // Namespace namespace_7c3faeda/incursion_infiltrationtitlecards
    // Params 1, eflags: 0x0
    // Checksum 0xbed1e8de, Offset: 0x3c0
    // Size: 0x74
    function setup_clientfields(var_f1385203) {
        cluielem::setup_clientfields("Incursion_InfiltrationTitleCards");
        cluielem::add_clientfield("_state", 1, 4, "int");
        cluielem::add_clientfield("SelectedInfiltration", 1, 3, "int", var_f1385203);
    }

    // Namespace namespace_7c3faeda/incursion_infiltrationtitlecards
    // Params 2, eflags: 0x0
    // Checksum 0x3dbb2774, Offset: 0x500
    // Size: 0x34c
    function set_state(localclientnum, state_name) {
        if (#"defaultstate" == state_name) {
            set_data(localclientnum, "_state", 0);
            return;
        }
        if (#"hash_1c7fa28cf1485078" == state_name) {
            set_data(localclientnum, "_state", 1);
            return;
        }
        if (#"hash_41af72ac3698f06f" == state_name) {
            set_data(localclientnum, "_state", 2);
            return;
        }
        if (#"hash_5b1f56f3d27d25f0" == state_name) {
            set_data(localclientnum, "_state", 3);
            return;
        }
        if (#"hash_249ee0339eddec66" == state_name) {
            set_data(localclientnum, "_state", 4);
            return;
        }
        if (#"hash_55a524ad199904e9" == state_name) {
            set_data(localclientnum, "_state", 5);
            return;
        }
        if (#"hash_37b2af92df0bfd42" == state_name) {
            set_data(localclientnum, "_state", 6);
            return;
        }
        if (#"hash_30029804cf01e828" == state_name) {
            set_data(localclientnum, "_state", 7);
            return;
        }
        if (#"hash_386af01523f194e5" == state_name) {
            set_data(localclientnum, "_state", 8);
            return;
        }
        if (#"hash_c5a40437efffe76" == state_name) {
            set_data(localclientnum, "_state", 9);
            return;
        }
        if (#"hash_88bd3835c23cdbc" == state_name) {
            set_data(localclientnum, "_state", 10);
            return;
        }
        if (#"hash_55e75da288d110d4" == state_name) {
            set_data(localclientnum, "_state", 11);
            return;
        }
        if (#"hash_3eb38ea38a92fe35" == state_name) {
            set_data(localclientnum, "_state", 12);
            return;
        }
        if (#"hash_79efd6a9d00cac13" == state_name) {
            set_data(localclientnum, "_state", 13);
            return;
        }
        assertmsg("<unknown string>");
    }

    // Namespace namespace_7c3faeda/incursion_infiltrationtitlecards
    // Params 2, eflags: 0x0
    // Checksum 0x1afcbb04, Offset: 0x858
    // Size: 0x30
    function function_ee0c7ef6(localclientnum, value) {
        set_data(localclientnum, "SelectedInfiltration", value);
    }

    // Namespace namespace_7c3faeda/incursion_infiltrationtitlecards
    // Params 1, eflags: 0x0
    // Checksum 0xe3958547, Offset: 0x468
    // Size: 0x60
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_state(localclientnum, #"defaultstate");
        set_data(localclientnum, "SelectedInfiltration", 0);
    }

}

// Namespace incursion_infiltrationtitlecards/incursion_infiltrationtitlecards
// Params 1, eflags: 0x0
// Checksum 0xccfce999, Offset: 0x108
// Size: 0x176
function register(var_f1385203) {
    elem = new class_7c3faeda();
    [[ elem ]]->setup_clientfields(var_f1385203);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"incursion_infiltrationtitlecards"])) {
        level.var_ae746e8f[#"incursion_infiltrationtitlecards"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"incursion_infiltrationtitlecards"])) {
        level.var_ae746e8f[#"incursion_infiltrationtitlecards"] = [];
    } else if (!isarray(level.var_ae746e8f[#"incursion_infiltrationtitlecards"])) {
        level.var_ae746e8f[#"incursion_infiltrationtitlecards"] = array(level.var_ae746e8f[#"incursion_infiltrationtitlecards"]);
    }
    level.var_ae746e8f[#"incursion_infiltrationtitlecards"][level.var_ae746e8f[#"incursion_infiltrationtitlecards"].size] = elem;
}

// Namespace incursion_infiltrationtitlecards/incursion_infiltrationtitlecards
// Params 0, eflags: 0x0
// Checksum 0x944f6941, Offset: 0x288
// Size: 0x34
function register_clientside() {
    elem = new class_7c3faeda();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace incursion_infiltrationtitlecards/incursion_infiltrationtitlecards
// Params 1, eflags: 0x0
// Checksum 0x4da297e1, Offset: 0x2c8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace incursion_infiltrationtitlecards/incursion_infiltrationtitlecards
// Params 1, eflags: 0x0
// Checksum 0xc510c8a8, Offset: 0x2f0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace incursion_infiltrationtitlecards/incursion_infiltrationtitlecards
// Params 1, eflags: 0x0
// Checksum 0xe65cac88, Offset: 0x318
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace incursion_infiltrationtitlecards/incursion_infiltrationtitlecards
// Params 2, eflags: 0x0
// Checksum 0x4cd5a38b, Offset: 0x340
// Size: 0x28
function set_state(localclientnum, state_name) {
    [[ self ]]->set_state(localclientnum, state_name);
}

// Namespace incursion_infiltrationtitlecards/incursion_infiltrationtitlecards
// Params 2, eflags: 0x0
// Checksum 0x13785c9f, Offset: 0x370
// Size: 0x28
function function_ee0c7ef6(localclientnum, value) {
    [[ self ]]->function_ee0c7ef6(localclientnum, value);
}


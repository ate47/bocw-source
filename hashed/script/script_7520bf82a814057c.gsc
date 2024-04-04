// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_game_over;

// Namespace zm_game_over
// Method(s) 8 Total 15
class czm_game_over : cluielem {

    // Namespace czm_game_over/zm_game_over
    // Params 1, eflags: 0x2 linked
    // Checksum 0x7bee4324, Offset: 0x4a8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace czm_game_over/zm_game_over
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6e723feb, Offset: 0x418
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_game_over");
    }

    // Namespace czm_game_over/zm_game_over
    // Params 1, eflags: 0x2 linked
    // Checksum 0x681a143c, Offset: 0x398
    // Size: 0x74
    function setup_clientfields(var_ddbc37b7) {
        cluielem::setup_clientfields("zm_game_over");
        cluielem::add_clientfield("_state", 1, 2, "int");
        cluielem::add_clientfield("rounds", 1, 8, "int", var_ddbc37b7);
    }

    // Namespace czm_game_over/zm_game_over
    // Params 2, eflags: 0x2 linked
    // Checksum 0xfc01890b, Offset: 0x600
    // Size: 0x30
    function set_rounds(localclientnum, value) {
        set_data(localclientnum, "rounds", value);
    }

    // Namespace czm_game_over/zm_game_over
    // Params 2, eflags: 0x2 linked
    // Checksum 0xe35c8558, Offset: 0x4d8
    // Size: 0x11c
    function set_state(localclientnum, state_name) {
        if (#"defaultstate" == state_name) {
            set_data(localclientnum, "_state", 0);
            return;
        }
        if (#"hash_4677c7e6d02d1a65" == state_name) {
            set_data(localclientnum, "_state", 1);
            return;
        }
        if (#"hash_5f1b73095bbb3a7a" == state_name) {
            set_data(localclientnum, "_state", 2);
            return;
        }
        if (#"hash_6893db9b6c7b5a58" == state_name) {
            set_data(localclientnum, "_state", 3);
            return;
        }
        assertmsg("<unknown string>");
    }

    // Namespace czm_game_over/zm_game_over
    // Params 1, eflags: 0x2 linked
    // Checksum 0x56167db5, Offset: 0x440
    // Size: 0x60
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_state(localclientnum, #"defaultstate");
        set_data(localclientnum, "rounds", 0);
    }

}

// Namespace zm_game_over/zm_game_over
// Params 1, eflags: 0x2 linked
// Checksum 0x541e6720, Offset: 0xe0
// Size: 0x176
function register(var_ddbc37b7) {
    elem = new czm_game_over();
    [[ elem ]]->setup_clientfields(var_ddbc37b7);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_game_over"])) {
        level.var_ae746e8f[#"zm_game_over"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_game_over"])) {
        level.var_ae746e8f[#"zm_game_over"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_game_over"])) {
        level.var_ae746e8f[#"zm_game_over"] = array(level.var_ae746e8f[#"zm_game_over"]);
    }
    level.var_ae746e8f[#"zm_game_over"][level.var_ae746e8f[#"zm_game_over"].size] = elem;
}

// Namespace zm_game_over/zm_game_over
// Params 0, eflags: 0x0
// Checksum 0x26e3bf58, Offset: 0x260
// Size: 0x34
function register_clientside() {
    elem = new czm_game_over();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_game_over/zm_game_over
// Params 1, eflags: 0x0
// Checksum 0x50c9b987, Offset: 0x2a0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_game_over/zm_game_over
// Params 1, eflags: 0x0
// Checksum 0x1f42e9d6, Offset: 0x2c8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_game_over/zm_game_over
// Params 1, eflags: 0x0
// Checksum 0x715ed0c4, Offset: 0x2f0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace zm_game_over/zm_game_over
// Params 2, eflags: 0x0
// Checksum 0x1bf8e9ff, Offset: 0x318
// Size: 0x28
function set_state(localclientnum, state_name) {
    [[ self ]]->set_state(localclientnum, state_name);
}

// Namespace zm_game_over/zm_game_over
// Params 2, eflags: 0x0
// Checksum 0xc14e42be, Offset: 0x348
// Size: 0x28
function set_rounds(localclientnum, value) {
    [[ self ]]->set_rounds(localclientnum, value);
}


// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_game_timer;

// Namespace zm_game_timer
// Method(s) 9 Total 16
class czm_game_timer : cluielem {

    // Namespace czm_game_timer/zm_game_timer
    // Params 1, eflags: 0x0
    // Checksum 0x30830059, Offset: 0x550
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace czm_game_timer/zm_game_timer
    // Params 2, eflags: 0x0
    // Checksum 0xf81c9536, Offset: 0x5b8
    // Size: 0x30
    function set_minutes(localclientnum, value) {
        set_data(localclientnum, "minutes", value);
    }

    // Namespace czm_game_timer/zm_game_timer
    // Params 0, eflags: 0x0
    // Checksum 0xbde8dd87, Offset: 0x4a8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_game_timer");
    }

    // Namespace czm_game_timer/zm_game_timer
    // Params 2, eflags: 0x0
    // Checksum 0x6d5e63b5, Offset: 0x5f0
    // Size: 0x30
    function set_showzero(localclientnum, value) {
        set_data(localclientnum, "showzero", value);
    }

    // Namespace czm_game_timer/zm_game_timer
    // Params 3, eflags: 0x0
    // Checksum 0x7ac008cf, Offset: 0x3f0
    // Size: 0xac
    function setup_clientfields(var_b1de907e, var_359a4d9a, var_8fd8bfaa) {
        cluielem::setup_clientfields("zm_game_timer");
        cluielem::add_clientfield("seconds", 1, 6, "int", var_b1de907e);
        cluielem::add_clientfield("minutes", 1, 9, "int", var_359a4d9a);
        cluielem::add_clientfield("showzero", 1, 1, "int", var_8fd8bfaa);
    }

    // Namespace czm_game_timer/zm_game_timer
    // Params 2, eflags: 0x0
    // Checksum 0xdea4aee9, Offset: 0x580
    // Size: 0x30
    function set_seconds(localclientnum, value) {
        set_data(localclientnum, "seconds", value);
    }

    // Namespace czm_game_timer/zm_game_timer
    // Params 1, eflags: 0x0
    // Checksum 0x472634b8, Offset: 0x4d0
    // Size: 0x78
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "seconds", 0);
        set_data(localclientnum, "minutes", 0);
        set_data(localclientnum, "showzero", 0);
    }

}

// Namespace zm_game_timer/zm_game_timer
// Params 3, eflags: 0x0
// Checksum 0xf5828cca, Offset: 0xf0
// Size: 0x18e
function register(var_b1de907e, var_359a4d9a, var_8fd8bfaa) {
    elem = new czm_game_timer();
    [[ elem ]]->setup_clientfields(var_b1de907e, var_359a4d9a, var_8fd8bfaa);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_game_timer"])) {
        level.var_ae746e8f[#"zm_game_timer"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_game_timer"])) {
        level.var_ae746e8f[#"zm_game_timer"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_game_timer"])) {
        level.var_ae746e8f[#"zm_game_timer"] = array(level.var_ae746e8f[#"zm_game_timer"]);
    }
    level.var_ae746e8f[#"zm_game_timer"][level.var_ae746e8f[#"zm_game_timer"].size] = elem;
}

// Namespace zm_game_timer/zm_game_timer
// Params 0, eflags: 0x0
// Checksum 0x9ee0298d, Offset: 0x288
// Size: 0x34
function register_clientside() {
    elem = new czm_game_timer();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_game_timer/zm_game_timer
// Params 1, eflags: 0x0
// Checksum 0x29a01f8, Offset: 0x2c8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_game_timer/zm_game_timer
// Params 1, eflags: 0x0
// Checksum 0x133f04aa, Offset: 0x2f0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_game_timer/zm_game_timer
// Params 1, eflags: 0x0
// Checksum 0xba805ee5, Offset: 0x318
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace zm_game_timer/zm_game_timer
// Params 2, eflags: 0x0
// Checksum 0x492561fa, Offset: 0x340
// Size: 0x28
function set_seconds(localclientnum, value) {
    [[ self ]]->set_seconds(localclientnum, value);
}

// Namespace zm_game_timer/zm_game_timer
// Params 2, eflags: 0x0
// Checksum 0x4688fc03, Offset: 0x370
// Size: 0x28
function set_minutes(localclientnum, value) {
    [[ self ]]->set_minutes(localclientnum, value);
}

// Namespace zm_game_timer/zm_game_timer
// Params 2, eflags: 0x0
// Checksum 0x6f1f718f, Offset: 0x3a0
// Size: 0x28
function set_showzero(localclientnum, value) {
    [[ self ]]->set_showzero(localclientnum, value);
}


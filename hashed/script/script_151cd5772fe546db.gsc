// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_arcade_timer;

// Namespace zm_arcade_timer
// Method(s) 10 Total 17
class czm_arcade_timer : cluielem {

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 1, eflags: 0x0
    // Checksum 0x4f3abc8e, Offset: 0x600
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 2, eflags: 0x0
    // Checksum 0xbee36a78, Offset: 0x6a0
    // Size: 0x30
    function set_minutes(localclientnum, value) {
        set_data(localclientnum, "minutes", value);
    }

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 2, eflags: 0x0
    // Checksum 0x4a3464a4, Offset: 0x6d8
    // Size: 0x30
    function set_title(localclientnum, value) {
        set_data(localclientnum, "title", value);
    }

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 0, eflags: 0x0
    // Checksum 0x811c8e2a, Offset: 0x528
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_arcade_timer");
    }

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 2, eflags: 0x0
    // Checksum 0x9997bc27, Offset: 0x630
    // Size: 0x30
    function set_showzero(localclientnum, value) {
        set_data(localclientnum, "showzero", value);
    }

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 4, eflags: 0x0
    // Checksum 0x68ef222f, Offset: 0x440
    // Size: 0xdc
    function setup_clientfields(var_8fd8bfaa, var_b1de907e, var_359a4d9a, *var_395b3059) {
        cluielem::setup_clientfields("zm_arcade_timer");
        cluielem::add_clientfield("showzero", 1, 1, "int", var_b1de907e);
        cluielem::add_clientfield("seconds", 1, 6, "int", var_359a4d9a);
        cluielem::add_clientfield("minutes", 1, 4, "int", var_395b3059);
        cluielem::function_dcb34c80("string", "title", 1);
    }

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 2, eflags: 0x0
    // Checksum 0x512bdfed, Offset: 0x668
    // Size: 0x30
    function set_seconds(localclientnum, value) {
        set_data(localclientnum, "seconds", value);
    }

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 1, eflags: 0x0
    // Checksum 0xc0c55129, Offset: 0x550
    // Size: 0xa4
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "showzero", 0);
        set_data(localclientnum, "seconds", 0);
        set_data(localclientnum, "minutes", 0);
        set_data(localclientnum, "title", #"");
    }

}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 4, eflags: 0x0
// Checksum 0xd82a9ea8, Offset: 0x108
// Size: 0x196
function register(var_8fd8bfaa, var_b1de907e, var_359a4d9a, var_395b3059) {
    elem = new czm_arcade_timer();
    [[ elem ]]->setup_clientfields(var_8fd8bfaa, var_b1de907e, var_359a4d9a, var_395b3059);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_arcade_timer"])) {
        level.var_ae746e8f[#"zm_arcade_timer"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_arcade_timer"])) {
        level.var_ae746e8f[#"zm_arcade_timer"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_arcade_timer"])) {
        level.var_ae746e8f[#"zm_arcade_timer"] = array(level.var_ae746e8f[#"zm_arcade_timer"]);
    }
    level.var_ae746e8f[#"zm_arcade_timer"][level.var_ae746e8f[#"zm_arcade_timer"].size] = elem;
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 0, eflags: 0x0
// Checksum 0x38043210, Offset: 0x2a8
// Size: 0x34
function register_clientside() {
    elem = new czm_arcade_timer();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 1, eflags: 0x0
// Checksum 0x2e334af, Offset: 0x2e8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 1, eflags: 0x0
// Checksum 0x571d34bf, Offset: 0x310
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 1, eflags: 0x0
// Checksum 0xd4d680bc, Offset: 0x338
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 2, eflags: 0x0
// Checksum 0xcd74fc5a, Offset: 0x360
// Size: 0x28
function set_showzero(localclientnum, value) {
    [[ self ]]->set_showzero(localclientnum, value);
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 2, eflags: 0x0
// Checksum 0x32a1c5a1, Offset: 0x390
// Size: 0x28
function set_seconds(localclientnum, value) {
    [[ self ]]->set_seconds(localclientnum, value);
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 2, eflags: 0x0
// Checksum 0x2bccabd5, Offset: 0x3c0
// Size: 0x28
function set_minutes(localclientnum, value) {
    [[ self ]]->set_minutes(localclientnum, value);
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 2, eflags: 0x0
// Checksum 0x1251db7b, Offset: 0x3f0
// Size: 0x28
function set_title(localclientnum, value) {
    [[ self ]]->set_title(localclientnum, value);
}


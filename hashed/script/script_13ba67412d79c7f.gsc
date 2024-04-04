// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_trial_timer;

// Namespace zm_trial_timer
// Method(s) 8 Total 15
class czm_trial_timer : cluielem {

    // Namespace czm_trial_timer/zm_trial_timer
    // Params 1, eflags: 0x2 linked
    // Checksum 0xa9294514, Offset: 0x4e0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace czm_trial_timer/zm_trial_timer
    // Params 0, eflags: 0x2 linked
    // Checksum 0xe4905a51, Offset: 0x448
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_trial_timer");
    }

    // Namespace czm_trial_timer/zm_trial_timer
    // Params 2, eflags: 0x2 linked
    // Checksum 0xec3d7553, Offset: 0x548
    // Size: 0x30
    function set_under_round_rules(localclientnum, value) {
        set_data(localclientnum, "under_round_rules", value);
    }

    // Namespace czm_trial_timer/zm_trial_timer
    // Params 2, eflags: 0x2 linked
    // Checksum 0x6a56d6d5, Offset: 0x510
    // Size: 0x30
    function set_timer_text(localclientnum, value) {
        set_data(localclientnum, "timer_text", value);
    }

    // Namespace czm_trial_timer/zm_trial_timer
    // Params 2, eflags: 0x2 linked
    // Checksum 0xb78a7ffd, Offset: 0x3c0
    // Size: 0x7c
    function setup_clientfields(*var_96b8e5ea, var_33be6591) {
        cluielem::setup_clientfields("zm_trial_timer");
        cluielem::function_dcb34c80("string", "timer_text", 1);
        cluielem::add_clientfield("under_round_rules", 1, 1, "int", var_33be6591);
    }

    // Namespace czm_trial_timer/zm_trial_timer
    // Params 1, eflags: 0x2 linked
    // Checksum 0x46309204, Offset: 0x470
    // Size: 0x68
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "timer_text", #"");
        set_data(localclientnum, "under_round_rules", 0);
    }

}

// Namespace zm_trial_timer/zm_trial_timer
// Params 2, eflags: 0x2 linked
// Checksum 0x1a09c66c, Offset: 0x100
// Size: 0x17e
function register(var_96b8e5ea, var_33be6591) {
    elem = new czm_trial_timer();
    [[ elem ]]->setup_clientfields(var_96b8e5ea, var_33be6591);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_trial_timer"])) {
        level.var_ae746e8f[#"zm_trial_timer"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_trial_timer"])) {
        level.var_ae746e8f[#"zm_trial_timer"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_trial_timer"])) {
        level.var_ae746e8f[#"zm_trial_timer"] = array(level.var_ae746e8f[#"zm_trial_timer"]);
    }
    level.var_ae746e8f[#"zm_trial_timer"][level.var_ae746e8f[#"zm_trial_timer"].size] = elem;
}

// Namespace zm_trial_timer/zm_trial_timer
// Params 0, eflags: 0x0
// Checksum 0xa0fb9d13, Offset: 0x288
// Size: 0x34
function register_clientside() {
    elem = new czm_trial_timer();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_trial_timer/zm_trial_timer
// Params 1, eflags: 0x0
// Checksum 0xebc29bf4, Offset: 0x2c8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_trial_timer/zm_trial_timer
// Params 1, eflags: 0x0
// Checksum 0xfe874146, Offset: 0x2f0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_trial_timer/zm_trial_timer
// Params 1, eflags: 0x0
// Checksum 0x62973a6a, Offset: 0x318
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace zm_trial_timer/zm_trial_timer
// Params 2, eflags: 0x0
// Checksum 0xad4a2609, Offset: 0x340
// Size: 0x28
function set_timer_text(localclientnum, value) {
    [[ self ]]->set_timer_text(localclientnum, value);
}

// Namespace zm_trial_timer/zm_trial_timer
// Params 2, eflags: 0x0
// Checksum 0x118895aa, Offset: 0x370
// Size: 0x28
function set_under_round_rules(localclientnum, value) {
    [[ self ]]->set_under_round_rules(localclientnum, value);
}


// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_trial_weapon_locked;

// Namespace zm_trial_weapon_locked
// Method(s) 7 Total 14
class czm_trial_weapon_locked : cluielem {

    // Namespace czm_trial_weapon_locked/zm_trial_weapon_locked
    // Params 1, eflags: 0x2 linked
    // Checksum 0x73c8bdb9, Offset: 0x460
    // Size: 0x6c
    function function_1e74977(localclientnum) {
        current_val = get_data(localclientnum, "show_icon");
        new_val = (current_val + 1) % 2;
        set_data(localclientnum, "show_icon", new_val);
    }

    // Namespace czm_trial_weapon_locked/zm_trial_weapon_locked
    // Params 1, eflags: 0x2 linked
    // Checksum 0xab2f901b, Offset: 0x430
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace czm_trial_weapon_locked/zm_trial_weapon_locked
    // Params 0, eflags: 0x2 linked
    // Checksum 0x231aa368, Offset: 0x3c0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_trial_weapon_locked");
    }

    // Namespace czm_trial_weapon_locked/zm_trial_weapon_locked
    // Params 1, eflags: 0x2 linked
    // Checksum 0xb753c22d, Offset: 0x368
    // Size: 0x4c
    function setup_clientfields(var_18c795d0) {
        cluielem::setup_clientfields("zm_trial_weapon_locked");
        cluielem::add_clientfield("show_icon", 1, 1, "counter", var_18c795d0);
    }

    // Namespace czm_trial_weapon_locked/zm_trial_weapon_locked
    // Params 1, eflags: 0x2 linked
    // Checksum 0xb983646f, Offset: 0x3e8
    // Size: 0x40
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "show_icon", 0);
    }

}

// Namespace zm_trial_weapon_locked/zm_trial_weapon_locked
// Params 1, eflags: 0x0
// Checksum 0xed2a2cb1, Offset: 0xe8
// Size: 0x176
function register(var_18c795d0) {
    elem = new czm_trial_weapon_locked();
    [[ elem ]]->setup_clientfields(var_18c795d0);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_trial_weapon_locked"])) {
        level.var_ae746e8f[#"zm_trial_weapon_locked"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_trial_weapon_locked"])) {
        level.var_ae746e8f[#"zm_trial_weapon_locked"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_trial_weapon_locked"])) {
        level.var_ae746e8f[#"zm_trial_weapon_locked"] = array(level.var_ae746e8f[#"zm_trial_weapon_locked"]);
    }
    level.var_ae746e8f[#"zm_trial_weapon_locked"][level.var_ae746e8f[#"zm_trial_weapon_locked"].size] = elem;
}

// Namespace zm_trial_weapon_locked/zm_trial_weapon_locked
// Params 0, eflags: 0x2 linked
// Checksum 0xf312c59b, Offset: 0x268
// Size: 0x34
function register_clientside() {
    elem = new czm_trial_weapon_locked();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_trial_weapon_locked/zm_trial_weapon_locked
// Params 1, eflags: 0x2 linked
// Checksum 0xab7c1abf, Offset: 0x2a8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_trial_weapon_locked/zm_trial_weapon_locked
// Params 1, eflags: 0x0
// Checksum 0x2c2bb37, Offset: 0x2d0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_trial_weapon_locked/zm_trial_weapon_locked
// Params 1, eflags: 0x2 linked
// Checksum 0x71b19878, Offset: 0x2f8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace zm_trial_weapon_locked/zm_trial_weapon_locked
// Params 1, eflags: 0x2 linked
// Checksum 0xcb27c72a, Offset: 0x320
// Size: 0x1c
function function_1e74977(localclientnum) {
    [[ self ]]->function_1e74977(localclientnum);
}


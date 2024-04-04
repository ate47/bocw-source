// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_trial_timer;

// Namespace zm_trial_timer
// Method(s) 7 Total 14
class czm_trial_timer : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace czm_trial_timer/zm_trial_timer
    // Params 2, eflags: 0x2 linked
    // Checksum 0x630e84ec, Offset: 0x2d0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace czm_trial_timer/zm_trial_timer
    // Params 1, eflags: 0x2 linked
    // Checksum 0xb64d9de9, Offset: 0x318
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace czm_trial_timer/zm_trial_timer
    // Params 2, eflags: 0x2 linked
    // Checksum 0x650b3e34, Offset: 0x398
    // Size: 0x44
    function set_under_round_rules(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "under_round_rules", value);
    }

    // Namespace czm_trial_timer/zm_trial_timer
    // Params 2, eflags: 0x2 linked
    // Checksum 0x1d5c70f3, Offset: 0x348
    // Size: 0x44
    function set_timer_text(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "timer_text", value);
    }

    // Namespace czm_trial_timer/zm_trial_timer
    // Params 0, eflags: 0x2 linked
    // Checksum 0x7a215df3, Offset: 0x258
    // Size: 0x6c
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_trial_timer");
        cluielem::function_dcb34c80("string", "timer_text", 1);
        cluielem::add_clientfield("under_round_rules", 1, 1, "int");
    }

}

// Namespace zm_trial_timer/zm_trial_timer
// Params 0, eflags: 0x2 linked
// Checksum 0x3d926e4b, Offset: 0x108
// Size: 0x34
function register() {
    elem = new czm_trial_timer();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_trial_timer/zm_trial_timer
// Params 2, eflags: 0x2 linked
// Checksum 0xaa4b8eb3, Offset: 0x148
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_trial_timer/zm_trial_timer
// Params 1, eflags: 0x2 linked
// Checksum 0xf8a9ca82, Offset: 0x188
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_trial_timer/zm_trial_timer
// Params 1, eflags: 0x2 linked
// Checksum 0xa2c3bd60, Offset: 0x1b0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace zm_trial_timer/zm_trial_timer
// Params 2, eflags: 0x2 linked
// Checksum 0x64d923cf, Offset: 0x1d8
// Size: 0x28
function set_timer_text(player, value) {
    [[ self ]]->set_timer_text(player, value);
}

// Namespace zm_trial_timer/zm_trial_timer
// Params 2, eflags: 0x2 linked
// Checksum 0xd5366668, Offset: 0x208
// Size: 0x28
function set_under_round_rules(player, value) {
    [[ self ]]->set_under_round_rules(player, value);
}


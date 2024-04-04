// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_trial_weapon_locked;

// Namespace zm_trial_weapon_locked
// Method(s) 6 Total 13
class czm_trial_weapon_locked : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace czm_trial_weapon_locked/zm_trial_weapon_locked
    // Params 1, eflags: 0x0
    // Checksum 0x313e08fb, Offset: 0x2d0
    // Size: 0x3c
    function function_1e74977(player) {
        player clientfield::function_bb878fc3(var_d5213cbb, var_bf9c8c95, "show_icon");
    }

    // Namespace czm_trial_weapon_locked/zm_trial_weapon_locked
    // Params 2, eflags: 0x0
    // Checksum 0x2da7b9c0, Offset: 0x258
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace czm_trial_weapon_locked/zm_trial_weapon_locked
    // Params 1, eflags: 0x0
    // Checksum 0x8d461974, Offset: 0x2a0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace czm_trial_weapon_locked/zm_trial_weapon_locked
    // Params 0, eflags: 0x0
    // Checksum 0x10a73fc7, Offset: 0x208
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_trial_weapon_locked");
        cluielem::add_clientfield("show_icon", 1, 1, "counter");
    }

}

// Namespace zm_trial_weapon_locked/zm_trial_weapon_locked
// Params 0, eflags: 0x0
// Checksum 0x95fe109c, Offset: 0xf0
// Size: 0x34
function register() {
    elem = new czm_trial_weapon_locked();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_trial_weapon_locked/zm_trial_weapon_locked
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x130
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_trial_weapon_locked/zm_trial_weapon_locked
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x170
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_trial_weapon_locked/zm_trial_weapon_locked
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x198
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace zm_trial_weapon_locked/zm_trial_weapon_locked
// Params 1, eflags: 0x0
// Checksum 0x5f4de20, Offset: 0x1c0
// Size: 0x1c
function function_1e74977(player) {
    [[ self ]]->function_1e74977(player);
}


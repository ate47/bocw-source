// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace remote_missile_targets;

// Namespace remote_missile_targets
// Method(s) 9 Total 16
class cremote_missile_targets : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 2, eflags: 0x2 linked
    // Checksum 0xc30eb4f2, Offset: 0x3a8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 2, eflags: 0x2 linked
    // Checksum 0x2995c3d, Offset: 0x420
    // Size: 0x44
    function set_player_target_active(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "player_target_active", value);
    }

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 1, eflags: 0x2 linked
    // Checksum 0xdf3034c5, Offset: 0x3f0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 2, eflags: 0x2 linked
    // Checksum 0x47a254b6, Offset: 0x4c0
    // Size: 0x44
    function set_extra_target_2(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "extra_target_2", value);
    }

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa55d6883, Offset: 0x2e0
    // Size: 0xbc
    function setup_clientfields() {
        cluielem::setup_clientfields("remote_missile_targets");
        cluielem::add_clientfield("player_target_active", 1, 16, "int");
        cluielem::add_clientfield("extra_target_1", 1, 10, "int");
        cluielem::add_clientfield("extra_target_2", 1, 10, "int");
        cluielem::add_clientfield("extra_target_3", 1, 10, "int");
    }

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 2, eflags: 0x2 linked
    // Checksum 0x4ce7ea6b, Offset: 0x470
    // Size: 0x44
    function set_extra_target_1(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "extra_target_1", value);
    }

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 2, eflags: 0x2 linked
    // Checksum 0xde6665e7, Offset: 0x510
    // Size: 0x44
    function set_extra_target_3(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "extra_target_3", value);
    }

}

// Namespace remote_missile_targets/remote_missile_targets
// Params 0, eflags: 0x2 linked
// Checksum 0x826ff7f, Offset: 0x130
// Size: 0x34
function register() {
    elem = new cremote_missile_targets();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 2, eflags: 0x2 linked
// Checksum 0xf79ebb64, Offset: 0x170
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 1, eflags: 0x2 linked
// Checksum 0x8223fa61, Offset: 0x1b0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 1, eflags: 0x2 linked
// Checksum 0xc4970c2c, Offset: 0x1d8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 2, eflags: 0x0
// Checksum 0xa8843c7e, Offset: 0x200
// Size: 0x28
function set_player_target_active(player, value) {
    [[ self ]]->set_player_target_active(player, value);
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 2, eflags: 0x2 linked
// Checksum 0xdfa4fe0b, Offset: 0x230
// Size: 0x28
function set_extra_target_1(player, value) {
    [[ self ]]->set_extra_target_1(player, value);
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 2, eflags: 0x2 linked
// Checksum 0xa5a999bb, Offset: 0x260
// Size: 0x28
function set_extra_target_2(player, value) {
    [[ self ]]->set_extra_target_2(player, value);
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 2, eflags: 0x0
// Checksum 0x8a9a4365, Offset: 0x290
// Size: 0x28
function set_extra_target_3(player, value) {
    [[ self ]]->set_extra_target_3(player, value);
}


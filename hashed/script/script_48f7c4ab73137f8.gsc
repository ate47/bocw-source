// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_laststand_client;

// Namespace zm_laststand_client
// Method(s) 8 Total 15
class czm_laststand_client : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace czm_laststand_client/zm_laststand_client
    // Params 2, eflags: 0x0
    // Checksum 0x50ed0d85, Offset: 0x340
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace czm_laststand_client/zm_laststand_client
    // Params 1, eflags: 0x0
    // Checksum 0xdb92b460, Offset: 0x388
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace czm_laststand_client/zm_laststand_client
    // Params 2, eflags: 0x0
    // Checksum 0x7f6c7503, Offset: 0x458
    // Size: 0x44
    function set_num_downs(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "num_downs", value);
    }

    // Namespace czm_laststand_client/zm_laststand_client
    // Params 2, eflags: 0x0
    // Checksum 0x7c3d1289, Offset: 0x3b8
    // Size: 0x44
    function set_bleedout_progress(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "bleedout_progress", value);
    }

    // Namespace czm_laststand_client/zm_laststand_client
    // Params 0, eflags: 0x0
    // Checksum 0xffaa57cc, Offset: 0x2a0
    // Size: 0x94
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_laststand_client");
        cluielem::add_clientfield("bleedout_progress", 1, 8, "float", 0);
        cluielem::add_clientfield("revive_progress", 1, 8, "float");
        cluielem::add_clientfield("num_downs", 1, 8, "int");
    }

    // Namespace czm_laststand_client/zm_laststand_client
    // Params 2, eflags: 0x0
    // Checksum 0xd4222dc5, Offset: 0x408
    // Size: 0x44
    function set_revive_progress(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "revive_progress", value);
    }

}

// Namespace zm_laststand_client/zm_laststand_client
// Params 0, eflags: 0x0
// Checksum 0x511d09ce, Offset: 0x120
// Size: 0x34
function register() {
    elem = new czm_laststand_client();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_laststand_client/zm_laststand_client
// Params 2, eflags: 0x0
// Checksum 0x22b7d0a0, Offset: 0x160
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_laststand_client/zm_laststand_client
// Params 1, eflags: 0x0
// Checksum 0xbeec1ac2, Offset: 0x1a0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_laststand_client/zm_laststand_client
// Params 1, eflags: 0x0
// Checksum 0xd0ca6291, Offset: 0x1c8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace zm_laststand_client/zm_laststand_client
// Params 2, eflags: 0x0
// Checksum 0x672c06a3, Offset: 0x1f0
// Size: 0x28
function set_bleedout_progress(player, value) {
    [[ self ]]->set_bleedout_progress(player, value);
}

// Namespace zm_laststand_client/zm_laststand_client
// Params 2, eflags: 0x0
// Checksum 0xf84c0d7f, Offset: 0x220
// Size: 0x28
function set_revive_progress(player, value) {
    [[ self ]]->set_revive_progress(player, value);
}

// Namespace zm_laststand_client/zm_laststand_client
// Params 2, eflags: 0x0
// Checksum 0x49ddf8f5, Offset: 0x250
// Size: 0x28
function set_num_downs(player, value) {
    [[ self ]]->set_num_downs(player, value);
}


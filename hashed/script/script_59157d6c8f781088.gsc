// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace mp_laststand_client;

// Namespace mp_laststand_client
// Method(s) 7 Total 14
class cmp_laststand_client : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cmp_laststand_client/mp_laststand_client
    // Params 2, eflags: 0x0
    // Checksum 0x6441d80c, Offset: 0x2d0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cmp_laststand_client/mp_laststand_client
    // Params 1, eflags: 0x0
    // Checksum 0x62042216, Offset: 0x318
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cmp_laststand_client/mp_laststand_client
    // Params 2, eflags: 0x0
    // Checksum 0xae72ff58, Offset: 0x348
    // Size: 0x44
    function set_bleedout_progress(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "bleedout_progress", value);
    }

    // Namespace cmp_laststand_client/mp_laststand_client
    // Params 0, eflags: 0x0
    // Checksum 0xa690c167, Offset: 0x258
    // Size: 0x6c
    function setup_clientfields() {
        cluielem::setup_clientfields("mp_laststand_client");
        cluielem::add_clientfield("bleedout_progress", 1, 6, "float");
        cluielem::add_clientfield("revive_progress", 1, 5, "float");
    }

    // Namespace cmp_laststand_client/mp_laststand_client
    // Params 2, eflags: 0x0
    // Checksum 0xa0a21628, Offset: 0x398
    // Size: 0x44
    function set_revive_progress(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "revive_progress", value);
    }

}

// Namespace mp_laststand_client/mp_laststand_client
// Params 0, eflags: 0x0
// Checksum 0xa5aeb76c, Offset: 0x108
// Size: 0x34
function register() {
    elem = new cmp_laststand_client();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace mp_laststand_client/mp_laststand_client
// Params 2, eflags: 0x0
// Checksum 0x3a6790e3, Offset: 0x148
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace mp_laststand_client/mp_laststand_client
// Params 1, eflags: 0x0
// Checksum 0x2ad0b106, Offset: 0x188
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace mp_laststand_client/mp_laststand_client
// Params 1, eflags: 0x0
// Checksum 0x1e0592ea, Offset: 0x1b0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace mp_laststand_client/mp_laststand_client
// Params 2, eflags: 0x0
// Checksum 0xf72e5ad3, Offset: 0x1d8
// Size: 0x28
function set_bleedout_progress(player, value) {
    [[ self ]]->set_bleedout_progress(player, value);
}

// Namespace mp_laststand_client/mp_laststand_client
// Params 2, eflags: 0x0
// Checksum 0x9145e374, Offset: 0x208
// Size: 0x28
function set_revive_progress(player, value) {
    [[ self ]]->set_revive_progress(player, value);
}


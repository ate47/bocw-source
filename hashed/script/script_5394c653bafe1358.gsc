// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace mp_revive_prompt;

// Namespace mp_revive_prompt
// Method(s) 8 Total 15
class cmp_revive_prompt : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cmp_revive_prompt/mp_revive_prompt
    // Params 2, eflags: 0x2 linked
    // Checksum 0x61e600a3, Offset: 0x330
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cmp_revive_prompt/mp_revive_prompt
    // Params 2, eflags: 0x2 linked
    // Checksum 0x3cdf2f07, Offset: 0x3a8
    // Size: 0x44
    function set_clientnum(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "clientnum", value);
    }

    // Namespace cmp_revive_prompt/mp_revive_prompt
    // Params 2, eflags: 0x2 linked
    // Checksum 0xc7188580, Offset: 0x448
    // Size: 0x44
    function set_reviveprogress(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "reviveProgress", value);
    }

    // Namespace cmp_revive_prompt/mp_revive_prompt
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2c33e9c5, Offset: 0x378
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cmp_revive_prompt/mp_revive_prompt
    // Params 0, eflags: 0x2 linked
    // Checksum 0x96f7a8de, Offset: 0x290
    // Size: 0x94
    function setup_clientfields() {
        cluielem::setup_clientfields("mp_revive_prompt");
        cluielem::add_clientfield("clientnum", 1, 7, "int", 0);
        cluielem::add_clientfield("progress", 1, 5, "float", 0);
        cluielem::add_clientfield("reviveProgress", 1, 5, "float", 0);
    }

    // Namespace cmp_revive_prompt/mp_revive_prompt
    // Params 2, eflags: 0x2 linked
    // Checksum 0xb1020090, Offset: 0x3f8
    // Size: 0x44
    function set_progress(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "progress", value);
    }

}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 0, eflags: 0x2 linked
// Checksum 0xf44ae389, Offset: 0x110
// Size: 0x34
function register() {
    elem = new cmp_revive_prompt();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0xf79ebb64, Offset: 0x150
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 1, eflags: 0x0
// Checksum 0x8223fa61, Offset: 0x190
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 1, eflags: 0x0
// Checksum 0xc4970c2c, Offset: 0x1b8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0xcd5defaf, Offset: 0x1e0
// Size: 0x28
function set_clientnum(player, value) {
    [[ self ]]->set_clientnum(player, value);
}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0xf906f842, Offset: 0x210
// Size: 0x28
function set_progress(player, value) {
    [[ self ]]->set_progress(player, value);
}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0x68a04440, Offset: 0x240
// Size: 0x28
function set_reviveprogress(player, value) {
    [[ self ]]->set_reviveprogress(player, value);
}


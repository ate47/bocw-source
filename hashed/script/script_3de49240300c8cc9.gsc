// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace wz_revive_prompt;

// Namespace wz_revive_prompt
// Method(s) 9 Total 16
class cwz_revive_prompt : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 2, eflags: 0x0
    // Checksum 0x699064bf, Offset: 0x398
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 2, eflags: 0x0
    // Checksum 0x344f412b, Offset: 0x410
    // Size: 0x44
    function set_clientnum(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "clientnum", value);
    }

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 2, eflags: 0x0
    // Checksum 0xb0ec630e, Offset: 0x4b0
    // Size: 0x44
    function set_reviveprogress(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "reviveProgress", value);
    }

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 1, eflags: 0x0
    // Checksum 0x68fe9d0e, Offset: 0x3e0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 0, eflags: 0x0
    // Checksum 0xdb4813d9, Offset: 0x2d0
    // Size: 0xbc
    function setup_clientfields() {
        cluielem::setup_clientfields("wz_revive_prompt");
        cluielem::add_clientfield("clientnum", 1, 7, "int");
        cluielem::add_clientfield("progress", 1, 5, "float");
        cluielem::add_clientfield("reviveProgress", 1, 5, "float");
        cluielem::add_clientfield("cowardsWay", 1, 1, "int");
    }

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 2, eflags: 0x0
    // Checksum 0xd20548c6, Offset: 0x460
    // Size: 0x44
    function set_progress(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "progress", value);
    }

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 2, eflags: 0x0
    // Checksum 0x6116bebc, Offset: 0x500
    // Size: 0x44
    function set_cowardsway(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "cowardsWay", value);
    }

}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 0, eflags: 0x0
// Checksum 0x78303ad3, Offset: 0x120
// Size: 0x34
function register() {
    elem = new cwz_revive_prompt();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0xa4df70d2, Offset: 0x160
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 1, eflags: 0x0
// Checksum 0x2fdf789, Offset: 0x1a0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 1, eflags: 0x0
// Checksum 0xe6010a6a, Offset: 0x1c8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0xb7ece126, Offset: 0x1f0
// Size: 0x28
function set_clientnum(player, value) {
    [[ self ]]->set_clientnum(player, value);
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0x5d3e40c5, Offset: 0x220
// Size: 0x28
function set_progress(player, value) {
    [[ self ]]->set_progress(player, value);
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0xe488204d, Offset: 0x250
// Size: 0x28
function set_reviveprogress(player, value) {
    [[ self ]]->set_reviveprogress(player, value);
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0x4b070cca, Offset: 0x280
// Size: 0x28
function set_cowardsway(player, value) {
    [[ self ]]->set_cowardsway(player, value);
}


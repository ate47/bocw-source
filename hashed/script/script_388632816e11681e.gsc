// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace mp_infect_timer;

// Namespace mp_infect_timer
// Method(s) 6 Total 13
class cmp_infect_timer : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cmp_infect_timer/mp_infect_timer
    // Params 2, eflags: 0x0
    // Checksum 0xd022d25a, Offset: 0x268
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cmp_infect_timer/mp_infect_timer
    // Params 1, eflags: 0x0
    // Checksum 0xb728ac2b, Offset: 0x2b0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cmp_infect_timer/mp_infect_timer
    // Params 2, eflags: 0x0
    // Checksum 0x1312b564, Offset: 0x2e0
    // Size: 0x44
    function function_8c8674a4(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "infectionTimeRemaining", value);
    }

    // Namespace cmp_infect_timer/mp_infect_timer
    // Params 0, eflags: 0x0
    // Checksum 0x2d502691, Offset: 0x218
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("mp_infect_timer");
        cluielem::add_clientfield("infectionTimeRemaining", 1, 4, "int", 0);
    }

}

// Namespace mp_infect_timer/mp_infect_timer
// Params 0, eflags: 0x0
// Checksum 0x2dd51cb, Offset: 0xf8
// Size: 0x34
function register() {
    elem = new cmp_infect_timer();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace mp_infect_timer/mp_infect_timer
// Params 2, eflags: 0x0
// Checksum 0x22b7d0a0, Offset: 0x138
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace mp_infect_timer/mp_infect_timer
// Params 1, eflags: 0x0
// Checksum 0xbeec1ac2, Offset: 0x178
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace mp_infect_timer/mp_infect_timer
// Params 1, eflags: 0x0
// Checksum 0xd0ca6291, Offset: 0x1a0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace mp_infect_timer/mp_infect_timer
// Params 2, eflags: 0x0
// Checksum 0x7d699924, Offset: 0x1c8
// Size: 0x28
function function_8c8674a4(player, value) {
    [[ self ]]->function_8c8674a4(player, value);
}


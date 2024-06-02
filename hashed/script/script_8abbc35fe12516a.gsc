// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace mp_prop_timer;

// Namespace mp_prop_timer
// Method(s) 7 Total 14
class cmp_prop_timer : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cmp_prop_timer/mp_prop_timer
    // Params 2, eflags: 0x0
    // Checksum 0xc3ba9771, Offset: 0x2b8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cmp_prop_timer/mp_prop_timer
    // Params 2, eflags: 0x0
    // Checksum 0x384d6b8, Offset: 0x380
    // Size: 0x44
    function set_isprop(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "isProp", value);
    }

    // Namespace cmp_prop_timer/mp_prop_timer
    // Params 1, eflags: 0x0
    // Checksum 0x3f6ba199, Offset: 0x300
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cmp_prop_timer/mp_prop_timer
    // Params 0, eflags: 0x0
    // Checksum 0xd562f828, Offset: 0x240
    // Size: 0x6c
    function setup_clientfields() {
        cluielem::setup_clientfields("mp_prop_timer");
        cluielem::add_clientfield("timeRemaining", 1, 5, "int", 0);
        cluielem::add_clientfield("isProp", 1, 1, "int");
    }

    // Namespace cmp_prop_timer/mp_prop_timer
    // Params 2, eflags: 0x0
    // Checksum 0xe47b2640, Offset: 0x330
    // Size: 0x44
    function set_timeremaining(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "timeRemaining", value);
    }

}

// Namespace mp_prop_timer/mp_prop_timer
// Params 0, eflags: 0x0
// Checksum 0xa29bd987, Offset: 0xf0
// Size: 0x34
function register() {
    elem = new cmp_prop_timer();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace mp_prop_timer/mp_prop_timer
// Params 2, eflags: 0x0
// Checksum 0x584b4b43, Offset: 0x130
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace mp_prop_timer/mp_prop_timer
// Params 1, eflags: 0x0
// Checksum 0x5189623b, Offset: 0x170
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace mp_prop_timer/mp_prop_timer
// Params 1, eflags: 0x0
// Checksum 0xc3d6ea8d, Offset: 0x198
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace mp_prop_timer/mp_prop_timer
// Params 2, eflags: 0x0
// Checksum 0x9b913b37, Offset: 0x1c0
// Size: 0x28
function set_timeremaining(player, value) {
    [[ self ]]->set_timeremaining(player, value);
}

// Namespace mp_prop_timer/mp_prop_timer
// Params 2, eflags: 0x0
// Checksum 0x6524f8b4, Offset: 0x1f0
// Size: 0x28
function set_isprop(player, value) {
    [[ self ]]->set_isprop(player, value);
}


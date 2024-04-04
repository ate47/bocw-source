// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace death_zone;

// Namespace death_zone
// Method(s) 6 Total 13
class cdeath_zone : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cdeath_zone/death_zone
    // Params 2, eflags: 0x0
    // Checksum 0xd1acef65, Offset: 0x258
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cdeath_zone/death_zone
    // Params 2, eflags: 0x0
    // Checksum 0xaeb05a44, Offset: 0x2d0
    // Size: 0x44
    function set_shutdown_sec(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "shutdown_sec", value);
    }

    // Namespace cdeath_zone/death_zone
    // Params 1, eflags: 0x0
    // Checksum 0x5770f9dd, Offset: 0x2a0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cdeath_zone/death_zone
    // Params 0, eflags: 0x0
    // Checksum 0xf0d89840, Offset: 0x208
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("death_zone");
        cluielem::add_clientfield("shutdown_sec", 1, 9, "int");
    }

}

// Namespace death_zone/death_zone
// Params 0, eflags: 0x0
// Checksum 0xddc7ec02, Offset: 0xe8
// Size: 0x34
function register() {
    elem = new cdeath_zone();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace death_zone/death_zone
// Params 2, eflags: 0x0
// Checksum 0xa4df70d2, Offset: 0x128
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace death_zone/death_zone
// Params 1, eflags: 0x0
// Checksum 0x2fdf789, Offset: 0x168
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace death_zone/death_zone
// Params 1, eflags: 0x0
// Checksum 0xe6010a6a, Offset: 0x190
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace death_zone/death_zone
// Params 2, eflags: 0x0
// Checksum 0xafbbe804, Offset: 0x1b8
// Size: 0x28
function set_shutdown_sec(player, value) {
    [[ self ]]->set_shutdown_sec(player, value);
}


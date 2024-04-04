// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace fail_screen;

// Namespace fail_screen
// Method(s) 5 Total 12
class cfail_screen : cluielem {

    // Namespace cfail_screen/fail_screen
    // Params 2, eflags: 0x0
    // Checksum 0x514b7cae, Offset: 0x1e0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cfail_screen/fail_screen
    // Params 1, eflags: 0x0
    // Checksum 0x2744138d, Offset: 0x228
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cfail_screen/fail_screen
    // Params 0, eflags: 0x0
    // Checksum 0xdefaefe5, Offset: 0x1b8
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("fail_screen");
    }

}

// Namespace fail_screen/fail_screen
// Params 0, eflags: 0x0
// Checksum 0x554d4038, Offset: 0xc8
// Size: 0x34
function register() {
    elem = new cfail_screen();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace fail_screen/fail_screen
// Params 2, eflags: 0x0
// Checksum 0xf79ebb64, Offset: 0x108
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace fail_screen/fail_screen
// Params 1, eflags: 0x0
// Checksum 0x8223fa61, Offset: 0x148
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace fail_screen/fail_screen
// Params 1, eflags: 0x0
// Checksum 0xc4970c2c, Offset: 0x170
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}


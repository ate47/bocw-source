// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace debug_center_screen;

// Namespace debug_center_screen
// Method(s) 5 Total 12
class cdebug_center_screen : cluielem {

    // Namespace cdebug_center_screen/debug_center_screen
    // Params 2, eflags: 0x2 linked
    // Checksum 0x514b7cae, Offset: 0x1e8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cdebug_center_screen/debug_center_screen
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2744138d, Offset: 0x230
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cdebug_center_screen/debug_center_screen
    // Params 0, eflags: 0x2 linked
    // Checksum 0xdefaefe5, Offset: 0x1c0
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("debug_center_screen");
    }

}

// Namespace debug_center_screen/debug_center_screen
// Params 0, eflags: 0x0
// Checksum 0xe0b719df, Offset: 0xd0
// Size: 0x34
function register() {
    elem = new cdebug_center_screen();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace debug_center_screen/debug_center_screen
// Params 2, eflags: 0x0
// Checksum 0xf79ebb64, Offset: 0x110
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace debug_center_screen/debug_center_screen
// Params 1, eflags: 0x0
// Checksum 0x8223fa61, Offset: 0x150
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace debug_center_screen/debug_center_screen
// Params 1, eflags: 0x0
// Checksum 0xc4970c2c, Offset: 0x178
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}


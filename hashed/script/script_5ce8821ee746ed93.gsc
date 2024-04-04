// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace success_screen;

// Namespace success_screen
// Method(s) 5 Total 12
class csuccess_screen : cluielem {

    // Namespace csuccess_screen/success_screen
    // Params 2, eflags: 0x0
    // Checksum 0x55526f87, Offset: 0x1e0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace csuccess_screen/success_screen
    // Params 1, eflags: 0x0
    // Checksum 0xb2d9649, Offset: 0x228
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace csuccess_screen/success_screen
    // Params 0, eflags: 0x0
    // Checksum 0xb439a2bf, Offset: 0x1b8
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("success_screen");
    }

}

// Namespace success_screen/success_screen
// Params 0, eflags: 0x0
// Checksum 0xc3779865, Offset: 0xc8
// Size: 0x34
function register() {
    elem = new csuccess_screen();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace success_screen/success_screen
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x108
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace success_screen/success_screen
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x148
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace success_screen/success_screen
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x170
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}


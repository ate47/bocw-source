// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace namespace_d8718530;

// Namespace namespace_d8718530
// Method(s) 5 Total 12
class class_1762fc34 : cluielem {

    // Namespace class_1762fc34/namespace_d8718530
    // Params 0, eflags: 0x8
    // Checksum 0x88fc4b08, Offset: 0x1a0
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_1762fc34/namespace_d8718530
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0x61ae0512, Offset: 0x260
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_1762fc34/namespace_d8718530
    // Params 2, eflags: 0x0
    // Checksum 0x3aed3c6b, Offset: 0x1e8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_1762fc34/namespace_d8718530
    // Params 1, eflags: 0x0
    // Checksum 0x56ca8646, Offset: 0x230
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_1762fc34/namespace_d8718530
    // Params 0, eflags: 0x0
    // Checksum 0xa0495291, Offset: 0x1c0
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("lui_napalm_strike");
    }

}

// Namespace namespace_d8718530/namespace_d8718530
// Params 0, eflags: 0x0
// Checksum 0x5c9b3ce2, Offset: 0xd0
// Size: 0x34
function register() {
    elem = new class_1762fc34();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_d8718530/namespace_d8718530
// Params 2, eflags: 0x0
// Checksum 0xa4df70d2, Offset: 0x110
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_d8718530/namespace_d8718530
// Params 1, eflags: 0x0
// Checksum 0x2fdf789, Offset: 0x150
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_d8718530/namespace_d8718530
// Params 1, eflags: 0x0
// Checksum 0xe6010a6a, Offset: 0x178
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}


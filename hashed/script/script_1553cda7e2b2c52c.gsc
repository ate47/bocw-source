// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace namespace_ff676d71;

// Namespace namespace_ff676d71
// Method(s) 5 Total 12
class class_98cc868d : cluielem {

    // Namespace class_98cc868d/namespace_ff676d71
    // Params 0, eflags: 0x8
    // Checksum 0x1578e2b9, Offset: 0x1a0
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_98cc868d/namespace_ff676d71
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0x862047d4, Offset: 0x260
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_98cc868d/namespace_ff676d71
    // Params 2, eflags: 0x0
    // Checksum 0x245ee05c, Offset: 0x1e8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_98cc868d/namespace_ff676d71
    // Params 1, eflags: 0x0
    // Checksum 0xb48039d9, Offset: 0x230
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_98cc868d/namespace_ff676d71
    // Params 0, eflags: 0x0
    // Checksum 0xb45e01a6, Offset: 0x1c0
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("pitch_and_yaw_meters");
    }

}

// Namespace namespace_ff676d71/namespace_ff676d71
// Params 0, eflags: 0x0
// Checksum 0xb1e1a349, Offset: 0xd0
// Size: 0x34
function register() {
    elem = new class_98cc868d();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_ff676d71/namespace_ff676d71
// Params 2, eflags: 0x0
// Checksum 0x3a6790e3, Offset: 0x110
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_ff676d71/namespace_ff676d71
// Params 1, eflags: 0x0
// Checksum 0x2ad0b106, Offset: 0x150
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_ff676d71/namespace_ff676d71
// Params 1, eflags: 0x0
// Checksum 0x1e0592ea, Offset: 0x178
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}


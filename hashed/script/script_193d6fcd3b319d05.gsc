// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace namespace_d1cd89d6;

// Namespace namespace_d1cd89d6
// Method(s) 5 Total 12
class class_b5586f52 : cluielem {

    // Namespace class_b5586f52/namespace_d1cd89d6
    // Params 0, eflags: 0x8
    // Checksum 0xfb3b6a6b, Offset: 0x1a0
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_b5586f52/namespace_d1cd89d6
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0x41e0c06d, Offset: 0x260
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_b5586f52/namespace_d1cd89d6
    // Params 2, eflags: 0x0
    // Checksum 0xae0f72a2, Offset: 0x1e8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_b5586f52/namespace_d1cd89d6
    // Params 1, eflags: 0x0
    // Checksum 0xb3ce6d90, Offset: 0x230
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_b5586f52/namespace_d1cd89d6
    // Params 0, eflags: 0x0
    // Checksum 0x7681aa50, Offset: 0x1c0
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("sr_objective_timer");
    }

}

// Namespace namespace_d1cd89d6/namespace_d1cd89d6
// Params 0, eflags: 0x0
// Checksum 0xd9cbb74c, Offset: 0xd0
// Size: 0x34
function register() {
    elem = new class_b5586f52();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_d1cd89d6/namespace_d1cd89d6
// Params 2, eflags: 0x0
// Checksum 0xaa4b8eb3, Offset: 0x110
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_d1cd89d6/namespace_d1cd89d6
// Params 1, eflags: 0x0
// Checksum 0xf8a9ca82, Offset: 0x150
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_d1cd89d6/namespace_d1cd89d6
// Params 1, eflags: 0x0
// Checksum 0xa2c3bd60, Offset: 0x178
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}


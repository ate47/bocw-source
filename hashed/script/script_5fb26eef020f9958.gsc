// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace namespace_eb35e6da;

// Namespace namespace_eb35e6da
// Method(s) 5 Total 12
class class_8ebbf51b : cluielem {

    // Namespace class_8ebbf51b/namespace_eb35e6da
    // Params 0, eflags: 0x8
    // Checksum 0x26ea4e8b, Offset: 0x198
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_8ebbf51b/namespace_eb35e6da
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0x95bbd3fc, Offset: 0x258
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_8ebbf51b/namespace_eb35e6da
    // Params 2, eflags: 0x0
    // Checksum 0x8efc0dc, Offset: 0x1e0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_8ebbf51b/namespace_eb35e6da
    // Params 1, eflags: 0x0
    // Checksum 0x335296bf, Offset: 0x228
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_8ebbf51b/namespace_eb35e6da
    // Params 0, eflags: 0x0
    // Checksum 0xc3c53a14, Offset: 0x1b8
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("sr_armor_menu");
    }

}

// Namespace namespace_eb35e6da/namespace_eb35e6da
// Params 0, eflags: 0x0
// Checksum 0xc8eb88c0, Offset: 0xc8
// Size: 0x34
function register() {
    elem = new class_8ebbf51b();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_eb35e6da/namespace_eb35e6da
// Params 2, eflags: 0x0
// Checksum 0x83b95f3f, Offset: 0x108
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_eb35e6da/namespace_eb35e6da
// Params 1, eflags: 0x0
// Checksum 0xde74b2a0, Offset: 0x148
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_eb35e6da/namespace_eb35e6da
// Params 1, eflags: 0x0
// Checksum 0x686d9d85, Offset: 0x170
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

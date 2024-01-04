// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace namespace_58eb7697;

// Namespace namespace_58eb7697
// Method(s) 7 Total 14
class class_37d61ee3 : cluielem {

    // Namespace class_37d61ee3/namespace_58eb7697
    // Params 0, eflags: 0x8
    // Checksum 0x65b0f98c, Offset: 0x200
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_37d61ee3/namespace_58eb7697
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0xbdba8668, Offset: 0x380
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_37d61ee3/namespace_58eb7697
    // Params 2, eflags: 0x0
    // Checksum 0x40042098, Offset: 0x248
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_37d61ee3/namespace_58eb7697
    // Params 1, eflags: 0x0
    // Checksum 0x2d13fb52, Offset: 0x290
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_37d61ee3/namespace_58eb7697
    // Params 2, eflags: 0x0
    // Checksum 0x6e06e9b8, Offset: 0x2c0
    // Size: 0x54
    function function_6c69ff4b(player, value) {
        player lui::function_bb6bcb89(hash(self.var_d5213cbb), self.var_bf9c8c95, 1, value, 1);
    }

    // Namespace namespace_37d61ee3/namespace_58eb7697
    // Params 0, eflags: 0x0
    // Checksum 0xe493bbcf, Offset: 0x220
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("lui_plane_mortar");
    }

    // Namespace namespace_37d61ee3/namespace_58eb7697
    // Params 2, eflags: 0x0
    // Checksum 0x5fa88031, Offset: 0x320
    // Size: 0x54
    function function_b172c58e(player, value) {
        player lui::function_bb6bcb89(hash(self.var_d5213cbb), self.var_bf9c8c95, 2, value, 1);
    }

}

// Namespace namespace_58eb7697/namespace_58eb7697
// Params 0, eflags: 0x0
// Checksum 0xa7b2118b, Offset: 0xd0
// Size: 0x34
function register() {
    elem = new class_37d61ee3();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_58eb7697/namespace_58eb7697
// Params 2, eflags: 0x0
// Checksum 0x22b7d0a0, Offset: 0x110
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_58eb7697/namespace_58eb7697
// Params 1, eflags: 0x0
// Checksum 0xbeec1ac2, Offset: 0x150
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_58eb7697/namespace_58eb7697
// Params 1, eflags: 0x0
// Checksum 0xd0ca6291, Offset: 0x178
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace namespace_58eb7697/namespace_58eb7697
// Params 2, eflags: 0x0
// Checksum 0x624e7e69, Offset: 0x1a0
// Size: 0x28
function function_6c69ff4b(player, value) {
    [[ self ]]->function_6c69ff4b(player, value);
}

// Namespace namespace_58eb7697/namespace_58eb7697
// Params 2, eflags: 0x0
// Checksum 0xad5db9e6, Offset: 0x1d0
// Size: 0x28
function function_b172c58e(player, value) {
    [[ self ]]->function_b172c58e(player, value);
}


// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_907d9fc;

// Namespace namespace_907d9fc
// Method(s) 6 Total 13
class class_44eccfcc : cluielem {

    // Namespace class_44eccfcc/namespace_907d9fc
    // Params 0, eflags: 0xa linked
    // Checksum 0x94c99e74, Offset: 0x1d8
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_44eccfcc/namespace_907d9fc
    // Params 0, eflags: 0x92 linked class_linked
    // Checksum 0x7824daa3, Offset: 0x310
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_44eccfcc/namespace_907d9fc
    // Params 2, eflags: 0x2 linked
    // Checksum 0xf05f24af, Offset: 0x248
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_44eccfcc/namespace_907d9fc
    // Params 1, eflags: 0x2 linked
    // Checksum 0x91e89886, Offset: 0x290
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_44eccfcc/namespace_907d9fc
    // Params 2, eflags: 0x2 linked
    // Checksum 0x45fb2823, Offset: 0x2c0
    // Size: 0x44
    function function_6eef7f4f(player, value) {
        player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "stim_count", value);
    }

    // Namespace namespace_44eccfcc/namespace_907d9fc
    // Params 0, eflags: 0x2 linked
    // Checksum 0x584bd58, Offset: 0x1f8
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("stim_count");
        cluielem::add_clientfield("stim_count", 1, 4, "int", 0);
    }

}

// Namespace namespace_907d9fc/namespace_907d9fc
// Params 0, eflags: 0x0
// Checksum 0x22de328e, Offset: 0xd8
// Size: 0x34
function register() {
    elem = new class_44eccfcc();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_907d9fc/namespace_907d9fc
// Params 2, eflags: 0x2 linked
// Checksum 0xa4df70d2, Offset: 0x118
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_907d9fc/namespace_907d9fc
// Params 1, eflags: 0x0
// Checksum 0x2fdf789, Offset: 0x158
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_907d9fc/namespace_907d9fc
// Params 1, eflags: 0x2 linked
// Checksum 0xe6010a6a, Offset: 0x180
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace namespace_907d9fc/namespace_907d9fc
// Params 2, eflags: 0x2 linked
// Checksum 0xf1d2d20d, Offset: 0x1a8
// Size: 0x28
function function_6eef7f4f(player, value) {
    [[ self ]]->function_6eef7f4f(player, value);
}


// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_6595c419;

// Namespace namespace_6595c419
// Method(s) 6 Total 13
class class_6b831806 : cluielem {

    // Namespace class_6b831806/namespace_6595c419
    // Params 0, eflags: 0x8
    // Checksum 0xdd162454, Offset: 0x1f8
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_6b831806/namespace_6595c419
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0x5dca77cc, Offset: 0x330
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_6b831806/namespace_6595c419
    // Params 2, eflags: 0x0
    // Checksum 0x9806ae76, Offset: 0x268
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_6b831806/namespace_6595c419
    // Params 2, eflags: 0x0
    // Checksum 0x8dbab234, Offset: 0x2e0
    // Size: 0x44
    function function_26d9350e(player, value) {
        player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "deployProgress", value);
    }

    // Namespace namespace_6b831806/namespace_6595c419
    // Params 1, eflags: 0x0
    // Checksum 0xf4792e4e, Offset: 0x2b0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_6b831806/namespace_6595c419
    // Params 0, eflags: 0x0
    // Checksum 0x5ddfb015, Offset: 0x218
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("BlackSeaJetskiDeployPrompt");
        cluielem::add_clientfield("deployProgress", 1, 5, "float");
    }

}

// Namespace namespace_6595c419/namespace_6595c419
// Params 0, eflags: 0x0
// Checksum 0xc52bf7e, Offset: 0xf8
// Size: 0x34
function register() {
    elem = new class_6b831806();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_6595c419/namespace_6595c419
// Params 2, eflags: 0x0
// Checksum 0x83b95f3f, Offset: 0x138
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_6595c419/namespace_6595c419
// Params 1, eflags: 0x0
// Checksum 0xde74b2a0, Offset: 0x178
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_6595c419/namespace_6595c419
// Params 1, eflags: 0x0
// Checksum 0x686d9d85, Offset: 0x1a0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace namespace_6595c419/namespace_6595c419
// Params 2, eflags: 0x0
// Checksum 0xcc4922bf, Offset: 0x1c8
// Size: 0x28
function function_26d9350e(player, value) {
    [[ self ]]->function_26d9350e(player, value);
}


// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_1deb6a23;

// Namespace namespace_1deb6a23
// Method(s) 6 Total 13
class class_d49eac9b : cluielem {

    // Namespace class_d49eac9b/namespace_1deb6a23
    // Params 0, eflags: 0x8
    // Checksum 0x7db406ec, Offset: 0x1f8
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_d49eac9b/namespace_1deb6a23
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0x1f0182c7, Offset: 0x330
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_d49eac9b/namespace_1deb6a23
    // Params 2, eflags: 0x0
    // Checksum 0x1fc523a, Offset: 0x268
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_d49eac9b/namespace_1deb6a23
    // Params 2, eflags: 0x0
    // Checksum 0xb73c1a9d, Offset: 0x2e0
    // Size: 0x44
    function function_302c4b81(player, value) {
        player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "slasherCountDownTime", value);
    }

    // Namespace namespace_d49eac9b/namespace_1deb6a23
    // Params 1, eflags: 0x0
    // Checksum 0xd5a16f45, Offset: 0x2b0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_d49eac9b/namespace_1deb6a23
    // Params 0, eflags: 0x0
    // Checksum 0x241c478, Offset: 0x218
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("scream_deathmatch_timer");
        cluielem::add_clientfield("slasherCountDownTime", 1, 4, "int", 0);
    }

}

// Namespace namespace_1deb6a23/namespace_1deb6a23
// Params 0, eflags: 0x0
// Checksum 0xdda2537d, Offset: 0xf8
// Size: 0x34
function register() {
    elem = new class_d49eac9b();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_1deb6a23/namespace_1deb6a23
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x138
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_1deb6a23/namespace_1deb6a23
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x178
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_1deb6a23/namespace_1deb6a23
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x1a0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace namespace_1deb6a23/namespace_1deb6a23
// Params 2, eflags: 0x0
// Checksum 0x742610b3, Offset: 0x1c8
// Size: 0x28
function function_302c4b81(player, value) {
    [[ self ]]->function_302c4b81(player, value);
}


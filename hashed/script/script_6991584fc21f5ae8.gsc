// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_1339a57c;

// Namespace namespace_1339a57c
// Method(s) 7 Total 14
class class_fd95a9c : cluielem {

    // Namespace class_fd95a9c/namespace_1339a57c
    // Params 0, eflags: 0x8
    // Checksum 0xa2707e35, Offset: 0x228
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_fd95a9c/namespace_1339a57c
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0x8aa1ec29, Offset: 0x3d8
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_fd95a9c/namespace_1339a57c
    // Params 2, eflags: 0x0
    // Checksum 0x106b989, Offset: 0x2c0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_fd95a9c/namespace_1339a57c
    // Params 2, eflags: 0x0
    // Checksum 0xb4524f31, Offset: 0x388
    // Size: 0x44
    function function_3ae8b40f(player, value) {
        player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "confirmBtn", value);
    }

    // Namespace namespace_fd95a9c/namespace_1339a57c
    // Params 1, eflags: 0x0
    // Checksum 0xf76ccca6, Offset: 0x308
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_fd95a9c/namespace_1339a57c
    // Params 2, eflags: 0x0
    // Checksum 0x4ad3123b, Offset: 0x338
    // Size: 0x44
    function function_8a6595db(player, value) {
        player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "textBoxHint", value);
    }

    // Namespace namespace_fd95a9c/namespace_1339a57c
    // Params 0, eflags: 0x0
    // Checksum 0xfb32a0aa, Offset: 0x248
    // Size: 0x6c
    function setup_clientfields() {
        cluielem::setup_clientfields("DOA_KeyTrade");
        cluielem::function_dcb34c80("string", "textBoxHint", 1);
        cluielem::function_dcb34c80("string", "confirmBtn", 1);
    }

}

// Namespace namespace_1339a57c/namespace_1339a57c
// Params 0, eflags: 0x0
// Checksum 0xbb17d687, Offset: 0xf8
// Size: 0x34
function register() {
    elem = new class_fd95a9c();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_1339a57c/namespace_1339a57c
// Params 2, eflags: 0x0
// Checksum 0xf79ebb64, Offset: 0x138
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_1339a57c/namespace_1339a57c
// Params 1, eflags: 0x0
// Checksum 0x8223fa61, Offset: 0x178
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_1339a57c/namespace_1339a57c
// Params 1, eflags: 0x0
// Checksum 0xc4970c2c, Offset: 0x1a0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace namespace_1339a57c/namespace_1339a57c
// Params 2, eflags: 0x0
// Checksum 0xe506c977, Offset: 0x1c8
// Size: 0x28
function function_8a6595db(player, value) {
    [[ self ]]->function_8a6595db(player, value);
}

// Namespace namespace_1339a57c/namespace_1339a57c
// Params 2, eflags: 0x0
// Checksum 0x5a6af285, Offset: 0x1f8
// Size: 0x28
function function_3ae8b40f(player, value) {
    [[ self ]]->function_3ae8b40f(player, value);
}

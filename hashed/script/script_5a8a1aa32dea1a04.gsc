// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_d21eb1ac;

// Namespace namespace_d21eb1ac
// Method(s) 6 Total 13
class class_ec90ce81 : cluielem {

    // Namespace class_ec90ce81/namespace_d21eb1ac
    // Params 0, eflags: 0x8
    // Checksum 0x7db406ec, Offset: 0x1f0
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_ec90ce81/namespace_d21eb1ac
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0xfd685574, Offset: 0x328
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_ec90ce81/namespace_d21eb1ac
    // Params 2, eflags: 0x0
    // Checksum 0xb22913ec, Offset: 0x260
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_ec90ce81/namespace_d21eb1ac
    // Params 1, eflags: 0x0
    // Checksum 0x40cec21a, Offset: 0x2a8
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_ec90ce81/namespace_d21eb1ac
    // Params 2, eflags: 0x0
    // Checksum 0x8a14e737, Offset: 0x2d8
    // Size: 0x44
    function function_83d182e9(player, value) {
        player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "cannotAmmoMod", value);
    }

    // Namespace namespace_ec90ce81/namespace_d21eb1ac
    // Params 0, eflags: 0x0
    // Checksum 0x1e00a198, Offset: 0x210
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("sr_weapon_upgrade_menu");
        cluielem::add_clientfield("cannotAmmoMod", 16000, 1, "int");
    }

}

// Namespace namespace_d21eb1ac/namespace_d21eb1ac
// Params 0, eflags: 0x0
// Checksum 0xb438b474, Offset: 0xf0
// Size: 0x34
function register() {
    elem = new class_ec90ce81();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_d21eb1ac/namespace_d21eb1ac
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x130
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_d21eb1ac/namespace_d21eb1ac
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x170
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_d21eb1ac/namespace_d21eb1ac
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x198
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace namespace_d21eb1ac/namespace_d21eb1ac
// Params 2, eflags: 0x0
// Checksum 0xd0c609e6, Offset: 0x1c0
// Size: 0x28
function function_83d182e9(player, value) {
    [[ self ]]->function_83d182e9(player, value);
}

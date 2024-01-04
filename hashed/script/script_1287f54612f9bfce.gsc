// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace namespace_63c13948;

// Namespace namespace_63c13948
// Method(s) 6 Total 13
class class_e1dc992f : cluielem {

    // Namespace class_e1dc992f/namespace_63c13948
    // Params 0, eflags: 0x8
    // Checksum 0x7db406ec, Offset: 0x1d0
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_e1dc992f/namespace_63c13948
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0xa04904e3, Offset: 0x2e8
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_e1dc992f/namespace_63c13948
    // Params 2, eflags: 0x0
    // Checksum 0x3256ee, Offset: 0x218
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_e1dc992f/namespace_63c13948
    // Params 1, eflags: 0x0
    // Checksum 0x688327ce, Offset: 0x260
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_e1dc992f/namespace_63c13948
    // Params 2, eflags: 0x0
    // Checksum 0xd8246ab, Offset: 0x290
    // Size: 0x4c
    function function_8ec20f82(player, value) {
        player lui::function_bb6bcb89(hash(self.var_d5213cbb), self.var_bf9c8c95, 1, value, 0);
    }

    // Namespace namespace_e1dc992f/namespace_63c13948
    // Params 0, eflags: 0x0
    // Checksum 0x47a6c05f, Offset: 0x1f0
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("sr_crafting_table_menu");
    }

}

// Namespace namespace_63c13948/namespace_63c13948
// Params 0, eflags: 0x0
// Checksum 0xc95f58f6, Offset: 0xd0
// Size: 0x34
function register() {
    elem = new class_e1dc992f();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_63c13948/namespace_63c13948
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x110
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_63c13948/namespace_63c13948
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x150
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_63c13948/namespace_63c13948
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x178
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace namespace_63c13948/namespace_63c13948
// Params 2, eflags: 0x0
// Checksum 0xc9548abd, Offset: 0x1a0
// Size: 0x28
function function_8ec20f82(player, value) {
    [[ self ]]->function_8ec20f82(player, value);
}


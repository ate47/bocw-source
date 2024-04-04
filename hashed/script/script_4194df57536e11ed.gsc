// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace initial_black;

// Namespace initial_black
// Method(s) 6 Total 13
class cinitial_black : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cinitial_black/initial_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0xfc149b61, Offset: 0x258
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cinitial_black/initial_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0x898bc677, Offset: 0x2d0
    // Size: 0x44
    function function_2eb3f6e8(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "developer_mode", value);
    }

    // Namespace cinitial_black/initial_black
    // Params 1, eflags: 0x2 linked
    // Checksum 0x613304b5, Offset: 0x2a0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cinitial_black/initial_black
    // Params 0, eflags: 0x2 linked
    // Checksum 0x222e88b3, Offset: 0x208
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("initial_black");
        cluielem::add_clientfield("developer_mode", 1, 1, "int");
    }

}

// Namespace initial_black/initial_black
// Params 0, eflags: 0x2 linked
// Checksum 0xc02a33f3, Offset: 0xe8
// Size: 0x34
function register() {
    elem = new cinitial_black();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace initial_black/initial_black
// Params 2, eflags: 0x2 linked
// Checksum 0x40d59cb0, Offset: 0x128
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace initial_black/initial_black
// Params 1, eflags: 0x2 linked
// Checksum 0x6221b1b7, Offset: 0x168
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace initial_black/initial_black
// Params 1, eflags: 0x2 linked
// Checksum 0xd7920db2, Offset: 0x190
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace initial_black/initial_black
// Params 2, eflags: 0x0
// Checksum 0xc9c00836, Offset: 0x1b8
// Size: 0x28
function function_2eb3f6e8(player, value) {
    [[ self ]]->function_2eb3f6e8(player, value);
}


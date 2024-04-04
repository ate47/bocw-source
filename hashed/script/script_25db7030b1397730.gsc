// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace cp_chyron;

// Namespace cp_chyron
// Method(s) 11 Total 18
class ccp_chyron : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace ccp_chyron/cp_chyron
    // Params 2, eflags: 0x2 linked
    // Checksum 0xdd08d88d, Offset: 0x558
    // Size: 0x44
    function function_6b7b6e4(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "line3", value);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 2, eflags: 0x2 linked
    // Checksum 0x18ee378, Offset: 0x440
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 2, eflags: 0x2 linked
    // Checksum 0x48aaae22, Offset: 0x508
    // Size: 0x44
    function function_147e5271(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "line2", value);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 2, eflags: 0x2 linked
    // Checksum 0x75036974, Offset: 0x5f8
    // Size: 0x44
    function function_2a377de3(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "line5", value);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 2, eflags: 0x2 linked
    // Checksum 0xd3cd3b16, Offset: 0x4b8
    // Size: 0x44
    function function_4b584028(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "line1", value);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 1, eflags: 0x2 linked
    // Checksum 0x569ab6a6, Offset: 0x488
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 2, eflags: 0x2 linked
    // Checksum 0x5065f1c0, Offset: 0x648
    // Size: 0x44
    function function_90bde5d3(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "index", value);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 0, eflags: 0x2 linked
    // Checksum 0xb5e615e1, Offset: 0x328
    // Size: 0x10c
    function setup_clientfields() {
        cluielem::setup_clientfields("cp_chyron");
        cluielem::function_dcb34c80("string", "line1", 1);
        cluielem::function_dcb34c80("string", "line2", 1);
        cluielem::function_dcb34c80("string", "line3", 1);
        cluielem::function_dcb34c80("string", "line4", 1);
        cluielem::function_dcb34c80("string", "line5", 1);
        cluielem::add_clientfield("index", 1, 4, "int");
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 2, eflags: 0x2 linked
    // Checksum 0x66caebfe, Offset: 0x5a8
    // Size: 0x44
    function function_b7f01956(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "line4", value);
    }

}

// Namespace cp_chyron/cp_chyron
// Params 0, eflags: 0x2 linked
// Checksum 0x32efb638, Offset: 0x118
// Size: 0x34
function register() {
    elem = new ccp_chyron();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace cp_chyron/cp_chyron
// Params 2, eflags: 0x2 linked
// Checksum 0x22b7d0a0, Offset: 0x158
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace cp_chyron/cp_chyron
// Params 1, eflags: 0x2 linked
// Checksum 0xbeec1ac2, Offset: 0x198
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace cp_chyron/cp_chyron
// Params 1, eflags: 0x0
// Checksum 0xd0ca6291, Offset: 0x1c0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace cp_chyron/cp_chyron
// Params 2, eflags: 0x0
// Checksum 0x56d0c164, Offset: 0x1e8
// Size: 0x28
function function_4b584028(player, value) {
    [[ self ]]->function_4b584028(player, value);
}

// Namespace cp_chyron/cp_chyron
// Params 2, eflags: 0x0
// Checksum 0x6e7c272f, Offset: 0x218
// Size: 0x28
function function_147e5271(player, value) {
    [[ self ]]->function_147e5271(player, value);
}

// Namespace cp_chyron/cp_chyron
// Params 2, eflags: 0x0
// Checksum 0x7b0f9619, Offset: 0x248
// Size: 0x28
function function_6b7b6e4(player, value) {
    [[ self ]]->function_6b7b6e4(player, value);
}

// Namespace cp_chyron/cp_chyron
// Params 2, eflags: 0x0
// Checksum 0x726d27f7, Offset: 0x278
// Size: 0x28
function function_b7f01956(player, value) {
    [[ self ]]->function_b7f01956(player, value);
}

// Namespace cp_chyron/cp_chyron
// Params 2, eflags: 0x0
// Checksum 0x12c3d66, Offset: 0x2a8
// Size: 0x28
function function_2a377de3(player, value) {
    [[ self ]]->function_2a377de3(player, value);
}

// Namespace cp_chyron/cp_chyron
// Params 2, eflags: 0x2 linked
// Checksum 0x2401a9ec, Offset: 0x2d8
// Size: 0x28
function function_90bde5d3(player, value) {
    [[ self ]]->function_90bde5d3(player, value);
}


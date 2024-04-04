// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace prototype_hud;

// Namespace prototype_hud
// Method(s) 11 Total 18
class cprototype_hud : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cprototype_hud/prototype_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x10707f75, Offset: 0x4b8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x472aa2ec, Offset: 0x6c0
    // Size: 0x44
    function function_1b05e380(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "active_obj_progress_visibility", value);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x6b32da0a, Offset: 0x670
    // Size: 0x44
    function function_1bd6077e(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "active_objective_progress", value);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x2bb8edeb, Offset: 0x620
    // Size: 0x44
    function function_4dfb5783(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "objective_retrieval", value);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 1, eflags: 0x2 linked
    // Checksum 0x29e2249f, Offset: 0x500
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x41795885, Offset: 0x580
    // Size: 0x44
    function function_7491d6c5(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "main_objective_string", value);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x5ed6d925, Offset: 0x5d0
    // Size: 0x44
    function function_817e4d10(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "active_obj_visibility", value);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 0, eflags: 0x2 linked
    // Checksum 0x1a58e19c, Offset: 0x3a0
    // Size: 0x10c
    function setup_clientfields() {
        cluielem::setup_clientfields("prototype_hud");
        cluielem::function_dcb34c80("string", "active_objective_string", 1);
        cluielem::function_dcb34c80("string", "main_objective_string", 1);
        cluielem::add_clientfield("active_obj_visibility", 1, 1, "int");
        cluielem::add_clientfield("objective_retrieval", 1, 1, "int");
        cluielem::add_clientfield("active_objective_progress", 1, 6, "float");
        cluielem::add_clientfield("active_obj_progress_visibility", 1, 1, "int");
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0xd124d097, Offset: 0x530
    // Size: 0x44
    function set_active_objective_string(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "active_objective_string", value);
    }

}

// Namespace prototype_hud/prototype_hud
// Params 0, eflags: 0x2 linked
// Checksum 0x1aa88e8d, Offset: 0x190
// Size: 0x34
function register() {
    elem = new cprototype_hud();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace prototype_hud/prototype_hud
// Params 2, eflags: 0x2 linked
// Checksum 0xaa4b8eb3, Offset: 0x1d0
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace prototype_hud/prototype_hud
// Params 1, eflags: 0x0
// Checksum 0xf8a9ca82, Offset: 0x210
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace prototype_hud/prototype_hud
// Params 1, eflags: 0x2 linked
// Checksum 0xa2c3bd60, Offset: 0x238
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace prototype_hud/prototype_hud
// Params 2, eflags: 0x2 linked
// Checksum 0x2d4bb61f, Offset: 0x260
// Size: 0x28
function set_active_objective_string(player, value) {
    [[ self ]]->set_active_objective_string(player, value);
}

// Namespace prototype_hud/prototype_hud
// Params 2, eflags: 0x2 linked
// Checksum 0x63d3575e, Offset: 0x290
// Size: 0x28
function function_7491d6c5(player, value) {
    [[ self ]]->function_7491d6c5(player, value);
}

// Namespace prototype_hud/prototype_hud
// Params 2, eflags: 0x2 linked
// Checksum 0x701d1174, Offset: 0x2c0
// Size: 0x28
function function_817e4d10(player, value) {
    [[ self ]]->function_817e4d10(player, value);
}

// Namespace prototype_hud/prototype_hud
// Params 2, eflags: 0x0
// Checksum 0xf9115d3d, Offset: 0x2f0
// Size: 0x28
function function_4dfb5783(player, value) {
    [[ self ]]->function_4dfb5783(player, value);
}

// Namespace prototype_hud/prototype_hud
// Params 2, eflags: 0x2 linked
// Checksum 0xe2c3e86, Offset: 0x320
// Size: 0x28
function function_1bd6077e(player, value) {
    [[ self ]]->function_1bd6077e(player, value);
}

// Namespace prototype_hud/prototype_hud
// Params 2, eflags: 0x2 linked
// Checksum 0x5fd9db0f, Offset: 0x350
// Size: 0x28
function function_1b05e380(player, value) {
    [[ self ]]->function_1b05e380(player, value);
}


// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace sr_objective_reward_menu;

// Namespace sr_objective_reward_menu
// Method(s) 11 Total 18
class class_51a06b68 : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_51a06b68/sr_objective_reward_menu
    // Params 2, eflags: 0x0
    // Checksum 0x1fd4a3c2, Offset: 0x460
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_51a06b68/sr_objective_reward_menu
    // Params 2, eflags: 0x0
    // Checksum 0xd0056079, Offset: 0x6e0
    // Size: 0x44
    function function_2d7f3298(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "gunindex2", value);
    }

    // Namespace namespace_51a06b68/sr_objective_reward_menu
    // Params 2, eflags: 0x0
    // Checksum 0x4127ac74, Offset: 0x690
    // Size: 0x44
    function function_43ba5f0e(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "gunIndex1", value);
    }

    // Namespace namespace_51a06b68/sr_objective_reward_menu
    // Params 1, eflags: 0x0
    // Checksum 0x51d810ae, Offset: 0x4a8
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_51a06b68/sr_objective_reward_menu
    // Params 0, eflags: 0x0
    // Checksum 0x8e07f8e8, Offset: 0x348
    // Size: 0x10c
    function setup_clientfields() {
        cluielem::setup_clientfields("sr_objective_reward_menu");
        cluielem::add_clientfield("_state", 1, 2, "int");
        cluielem::add_clientfield("promptProgress", 1, 7, "float");
        cluielem::add_clientfield("gunIndex1", 1, 4, "int");
        cluielem::add_clientfield("gunindex2", 1, 4, "int");
        cluielem::add_clientfield("gunindex3", 1, 4, "int");
        cluielem::add_clientfield("color", 1, 2, "int");
    }

    // Namespace namespace_51a06b68/sr_objective_reward_menu
    // Params 2, eflags: 0x0
    // Checksum 0x15a3303f, Offset: 0x780
    // Size: 0x44
    function set_color(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "color", value);
    }

    // Namespace namespace_51a06b68/sr_objective_reward_menu
    // Params 2, eflags: 0x0
    // Checksum 0xb6e5963f, Offset: 0x730
    // Size: 0x44
    function function_ada8b2f1(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "gunindex3", value);
    }

    // Namespace namespace_51a06b68/sr_objective_reward_menu
    // Params 2, eflags: 0x0
    // Checksum 0xdeb07104, Offset: 0x640
    // Size: 0x44
    function function_b94196b8(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "promptProgress", value);
    }

    // Namespace namespace_51a06b68/sr_objective_reward_menu
    // Params 2, eflags: 0x0
    // Checksum 0x1c8577b6, Offset: 0x4d8
    // Size: 0x15c
    function set_state(player, state_name) {
        if (#"defaultstate" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 0);
            return;
        }
        if (#"gun1selected" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 1);
            return;
        }
        if (#"gun2selected" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 2);
            return;
        }
        if (#"gun3selected" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 3);
            return;
        }
        assertmsg("<unknown string>");
    }

}

// Namespace sr_objective_reward_menu/sr_objective_reward_menu
// Params 0, eflags: 0x0
// Checksum 0x4526992f, Offset: 0x138
// Size: 0x34
function register() {
    elem = new class_51a06b68();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace sr_objective_reward_menu/sr_objective_reward_menu
// Params 2, eflags: 0x0
// Checksum 0x3a6790e3, Offset: 0x178
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace sr_objective_reward_menu/sr_objective_reward_menu
// Params 1, eflags: 0x0
// Checksum 0x2ad0b106, Offset: 0x1b8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace sr_objective_reward_menu/sr_objective_reward_menu
// Params 1, eflags: 0x0
// Checksum 0x1e0592ea, Offset: 0x1e0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace sr_objective_reward_menu/sr_objective_reward_menu
// Params 2, eflags: 0x0
// Checksum 0xca11b23c, Offset: 0x208
// Size: 0x28
function set_state(player, state_name) {
    [[ self ]]->set_state(player, state_name);
}

// Namespace sr_objective_reward_menu/sr_objective_reward_menu
// Params 2, eflags: 0x0
// Checksum 0x2755c0ff, Offset: 0x238
// Size: 0x28
function function_b94196b8(player, value) {
    [[ self ]]->function_b94196b8(player, value);
}

// Namespace sr_objective_reward_menu/sr_objective_reward_menu
// Params 2, eflags: 0x0
// Checksum 0xddea3d97, Offset: 0x268
// Size: 0x28
function function_43ba5f0e(player, value) {
    [[ self ]]->function_43ba5f0e(player, value);
}

// Namespace sr_objective_reward_menu/sr_objective_reward_menu
// Params 2, eflags: 0x0
// Checksum 0x6a852ae4, Offset: 0x298
// Size: 0x28
function function_2d7f3298(player, value) {
    [[ self ]]->function_2d7f3298(player, value);
}

// Namespace sr_objective_reward_menu/sr_objective_reward_menu
// Params 2, eflags: 0x0
// Checksum 0xe0109913, Offset: 0x2c8
// Size: 0x28
function function_ada8b2f1(player, value) {
    [[ self ]]->function_ada8b2f1(player, value);
}

// Namespace sr_objective_reward_menu/sr_objective_reward_menu
// Params 2, eflags: 0x0
// Checksum 0x995dbca2, Offset: 0x2f8
// Size: 0x28
function set_color(player, value) {
    [[ self ]]->set_color(player, value);
}


// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace luielem_entity_bar;

// Namespace luielem_entity_bar
// Method(s) 13 Total 20
class class_276088fe : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0xe963a6c9, Offset: 0x528
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0x7f66e25d, Offset: 0x840
    // Size: 0x44
    function function_4f6e830d(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "offset_y", value);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 1, eflags: 0x0
    // Checksum 0xb7292602, Offset: 0x570
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0xe56d87b3, Offset: 0x7f0
    // Size: 0x44
    function function_61312692(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "offset_x", value);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0x35a5b43e, Offset: 0x890
    // Size: 0x44
    function function_7ddfdfef(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "offset_z", value);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 0, eflags: 0x0
    // Checksum 0xae3678ba, Offset: 0x3c0
    // Size: 0x15c
    function setup_clientfields() {
        cluielem::setup_clientfields("LUIelem_entity_bar");
        cluielem::add_clientfield("_state", 1, 3, "int");
        cluielem::add_clientfield("progress_percent", 1, 7, "float");
        cluielem::add_clientfield("entnum", 1, 7, "int");
        cluielem::add_clientfield("offset_x", 1, 6, "int");
        cluielem::add_clientfield("offset_y", 1, 6, "int");
        cluielem::add_clientfield("offset_z", 1, 6, "int");
        cluielem::add_clientfield("entityClamp", 1, 1, "int");
        cluielem::add_clientfield("entityScale", 1, 1, "int");
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0x9f301ec0, Offset: 0x930
    // Size: 0x44
    function function_a9793a65(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "entityScale", value);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0x12dea6ee, Offset: 0x7a0
    // Size: 0x44
    function set_entnum(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "entnum", value);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0x7a48b576, Offset: 0x5a0
    // Size: 0x1a4
    function set_state(player, state_name) {
        if (#"defaultstate" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 0);
            return;
        }
        if (#"friendlyblue" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 1);
            return;
        }
        if (#"green" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 2);
            return;
        }
        if (#"yellow" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 3);
            return;
        }
        if (#"red" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 4);
            return;
        }
        assertmsg("<unknown string>");
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0x53ccca41, Offset: 0x8e0
    // Size: 0x44
    function function_dfed4b05(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "entityClamp", value);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0xd85dda57, Offset: 0x750
    // Size: 0x44
    function function_ecacbaa5(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "progress_percent", value);
    }

}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 0, eflags: 0x0
// Checksum 0x4532dd21, Offset: 0x150
// Size: 0x34
function register() {
    elem = new class_276088fe();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0x3a6790e3, Offset: 0x190
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 1, eflags: 0x0
// Checksum 0x2ad0b106, Offset: 0x1d0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 1, eflags: 0x0
// Checksum 0x1e0592ea, Offset: 0x1f8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0xca11b23c, Offset: 0x220
// Size: 0x28
function set_state(player, state_name) {
    [[ self ]]->set_state(player, state_name);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0x92dfff0a, Offset: 0x250
// Size: 0x28
function function_ecacbaa5(player, value) {
    [[ self ]]->function_ecacbaa5(player, value);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0x6f50beb6, Offset: 0x280
// Size: 0x28
function set_entnum(player, value) {
    [[ self ]]->set_entnum(player, value);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0xc08550a5, Offset: 0x2b0
// Size: 0x28
function function_61312692(player, value) {
    [[ self ]]->function_61312692(player, value);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0xd3655fe6, Offset: 0x2e0
// Size: 0x28
function function_4f6e830d(player, value) {
    [[ self ]]->function_4f6e830d(player, value);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0xa5242ffe, Offset: 0x310
// Size: 0x28
function function_7ddfdfef(player, value) {
    [[ self ]]->function_7ddfdfef(player, value);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0x83523f7a, Offset: 0x340
// Size: 0x28
function function_dfed4b05(player, value) {
    [[ self ]]->function_dfed4b05(player, value);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0x771a426c, Offset: 0x370
// Size: 0x28
function function_a9793a65(player, value) {
    [[ self ]]->function_a9793a65(player, value);
}


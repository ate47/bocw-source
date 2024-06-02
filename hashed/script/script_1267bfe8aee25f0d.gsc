// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace hud_spy;

// Namespace hud_spy
// Method(s) 30 Total 37
class class_f57714e4 : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xb08f65e4, Offset: 0x1328
    // Size: 0x44
    function function_ec7b95(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "body_killed_by_mod", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x6625391b, Offset: 0x1648
    // Size: 0x44
    function function_46c41f5(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "show_scoreboard_hint", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x700b7ada, Offset: 0x1058
    // Size: 0x44
    function function_c060174(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "alive_player_count", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x7a6b6849, Offset: 0xcb8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x5dc0c30c, Offset: 0x10a8
    // Size: 0x44
    function function_2b10da38(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "missing_player_count", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xef520c44, Offset: 0x1198
    // Size: 0x44
    function function_341ec963(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "double_agent_player_count", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x6d8a3641, Offset: 0x15a8
    // Size: 0x44
    function function_410e8b54(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "suspect_id_number", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x91d37c31, Offset: 0x15f8
    // Size: 0x44
    function function_47aa7bfd(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "radio_count_down_timer", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xda3b5e22, Offset: 0x1468
    // Size: 0x44
    function function_4e193ca3(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "current_selected_player", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 1, eflags: 0x0
    // Checksum 0x47f36758, Offset: 0xd00
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x7eafc63e, Offset: 0xfb8
    // Size: 0x44
    function function_5d23ae16(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "player_role", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x5ae214b7, Offset: 0x13c8
    // Size: 0x44
    function function_65a4dc3c(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "aux_notification_param", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x3517c279, Offset: 0x10f8
    // Size: 0x44
    function function_6d5882c8(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "operative_player_count", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xce89a283, Offset: 0x16e8
    // Size: 0x44
    function function_727bf185(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "update_spy_eliminations", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x221734bf, Offset: 0x1008
    // Size: 0x44
    function function_7350f1fd(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "player_id_number", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xef6d86e5, Offset: 0x1288
    // Size: 0x44
    function function_82bcc7df(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "body_identity", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x28845f3c, Offset: 0x11e8
    // Size: 0x44
    function function_8b74df97(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "body_player_clientnum", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 0, eflags: 0x0
    // Checksum 0xb9fa516b, Offset: 0x8a8
    // Size: 0x404
    function setup_clientfields() {
        cluielem::setup_clientfields("HUD_Spy");
        cluielem::add_clientfield("_state", 1, 3, "int");
        cluielem::add_clientfield("player_role", 28000, 2, "int");
        cluielem::add_clientfield("player_id_number", 28000, 5, "int");
        cluielem::add_clientfield("alive_player_count", 28000, 4, "int");
        cluielem::add_clientfield("missing_player_count", 28000, 4, "int");
        cluielem::add_clientfield("operative_player_count", 28000, 4, "int");
        cluielem::add_clientfield("investigator_player_count", 28000, 2, "int");
        cluielem::add_clientfield("double_agent_player_count", 28000, 3, "int");
        cluielem::add_clientfield("body_player_clientnum", 28000, 7, "int");
        cluielem::add_clientfield("body_agent_id", 28000, 4, "int");
        cluielem::add_clientfield("body_identity", 28000, 2, "int");
        cluielem::add_clientfield("timeSinceDeath", 28000, 16, "int");
        cluielem::add_clientfield("body_killed_by_mod", 28000, 5, "int");
        cluielem::add_clientfield("notification_id", 28000, 5, "int");
        cluielem::add_clientfield("aux_notification_param", 28000, 5, "int");
        cluielem::add_clientfield("dirty_bomb_id", 28000, 2, "int");
        cluielem::add_clientfield("current_selected_player", 28000, 5, "int");
        cluielem::add_clientfield("body_killed_by_weapon", 20000, 10, "int");
        cluielem::add_clientfield("reveal_encoded_msg", 28000, 4, "int");
        cluielem::add_clientfield("suspect_gender_type", 28000, 2, "int");
        cluielem::add_clientfield("suspect_id_number", 28000, 5, "int");
        cluielem::add_clientfield("radio_count_down_timer", 28000, 6, "int");
        cluielem::add_clientfield("show_scoreboard_hint", 28000, 1, "int");
        cluielem::add_clientfield("talk_in_double_agent_channel", 28000, 2, "int");
        cluielem::add_clientfield("update_spy_eliminations", 28000, 1, "int");
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xfdcf22a0, Offset: 0x1378
    // Size: 0x44
    function function_91a8637f(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "notification_id", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xcc5ccb66, Offset: 0x14b8
    // Size: 0x44
    function function_a2471efa(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "body_killed_by_weapon", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x4fabc4b5, Offset: 0x1508
    // Size: 0x44
    function function_adf24ba3(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "reveal_encoded_msg", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x5443ef6c, Offset: 0x12d8
    // Size: 0x44
    function function_b58e0471(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "timeSinceDeath", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xdef2ce08, Offset: 0x1418
    // Size: 0x44
    function function_ceb51392(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "dirty_bomb_id", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xc35eceb9, Offset: 0x1238
    // Size: 0x44
    function function_cf7a3ce6(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "body_agent_id", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x4bdc4ca4, Offset: 0xd30
    // Size: 0x27c
    function set_state(player, state_name) {
        if (#"defaultstate" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 0);
            return;
        }
        if (#"hash_7d11e1c1b565495" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 1);
            return;
        }
        if (#"combathud" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 2);
            return;
        }
        if (#"hash_6724d4bba3d5bf31" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 3);
            return;
        }
        if (#"hash_37663a3349e1e83c" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 4);
            return;
        }
        if (#"wantedordermenu" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 5);
            return;
        }
        if (#"hash_75ae26cee1b43762" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 6);
            return;
        }
        if (#"friendlyfire" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 7);
            return;
        }
        assertmsg("<unknown string>");
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x6025ad8e, Offset: 0x1558
    // Size: 0x44
    function function_ddf21dbe(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "suspect_gender_type", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x108426ca, Offset: 0x1148
    // Size: 0x44
    function function_de4daba8(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "investigator_player_count", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xd04eb2c9, Offset: 0x1698
    // Size: 0x44
    function function_f8d33ca8(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "talk_in_double_agent_channel", value);
    }

}

// Namespace hud_spy/hud_spy
// Params 0, eflags: 0x0
// Checksum 0x78b50e82, Offset: 0x308
// Size: 0x34
function register() {
    elem = new class_f57714e4();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xa4df70d2, Offset: 0x348
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace hud_spy/hud_spy
// Params 1, eflags: 0x0
// Checksum 0x2fdf789, Offset: 0x388
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace hud_spy/hud_spy
// Params 1, eflags: 0x0
// Checksum 0xe6010a6a, Offset: 0x3b0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x77fa0285, Offset: 0x3d8
// Size: 0x28
function set_state(player, state_name) {
    [[ self ]]->set_state(player, state_name);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xe35e6a8, Offset: 0x408
// Size: 0x28
function function_5d23ae16(player, value) {
    [[ self ]]->function_5d23ae16(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x3c9592a6, Offset: 0x438
// Size: 0x28
function function_7350f1fd(player, value) {
    [[ self ]]->function_7350f1fd(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x5892aa8a, Offset: 0x468
// Size: 0x28
function function_c060174(player, value) {
    [[ self ]]->function_c060174(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xc413e9bc, Offset: 0x498
// Size: 0x28
function function_2b10da38(player, value) {
    [[ self ]]->function_2b10da38(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xa5b545b8, Offset: 0x4c8
// Size: 0x28
function function_6d5882c8(player, value) {
    [[ self ]]->function_6d5882c8(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xabd6d64c, Offset: 0x4f8
// Size: 0x28
function function_de4daba8(player, value) {
    [[ self ]]->function_de4daba8(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x1923939, Offset: 0x528
// Size: 0x28
function function_341ec963(player, value) {
    [[ self ]]->function_341ec963(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xce1f9b98, Offset: 0x558
// Size: 0x28
function function_8b74df97(player, value) {
    [[ self ]]->function_8b74df97(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x6724d508, Offset: 0x588
// Size: 0x28
function function_cf7a3ce6(player, value) {
    [[ self ]]->function_cf7a3ce6(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x890fed7f, Offset: 0x5b8
// Size: 0x28
function function_82bcc7df(player, value) {
    [[ self ]]->function_82bcc7df(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xbc0f9703, Offset: 0x5e8
// Size: 0x28
function function_b58e0471(player, value) {
    [[ self ]]->function_b58e0471(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xe05ecce0, Offset: 0x618
// Size: 0x28
function function_ec7b95(player, value) {
    [[ self ]]->function_ec7b95(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xfa5e13c3, Offset: 0x648
// Size: 0x28
function function_91a8637f(player, value) {
    [[ self ]]->function_91a8637f(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xfda99177, Offset: 0x678
// Size: 0x28
function function_65a4dc3c(player, value) {
    [[ self ]]->function_65a4dc3c(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xb4677b71, Offset: 0x6a8
// Size: 0x28
function function_ceb51392(player, value) {
    [[ self ]]->function_ceb51392(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x219d8657, Offset: 0x6d8
// Size: 0x28
function function_4e193ca3(player, value) {
    [[ self ]]->function_4e193ca3(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x50f36071, Offset: 0x708
// Size: 0x28
function function_a2471efa(player, value) {
    [[ self ]]->function_a2471efa(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x295d8b6d, Offset: 0x738
// Size: 0x28
function function_adf24ba3(player, value) {
    [[ self ]]->function_adf24ba3(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x7717fa31, Offset: 0x768
// Size: 0x28
function function_ddf21dbe(player, value) {
    [[ self ]]->function_ddf21dbe(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x23d5de89, Offset: 0x798
// Size: 0x28
function function_410e8b54(player, value) {
    [[ self ]]->function_410e8b54(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xfda83eb0, Offset: 0x7c8
// Size: 0x28
function function_47aa7bfd(player, value) {
    [[ self ]]->function_47aa7bfd(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x8fd274a3, Offset: 0x7f8
// Size: 0x28
function function_46c41f5(player, value) {
    [[ self ]]->function_46c41f5(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x5f964283, Offset: 0x828
// Size: 0x28
function function_f8d33ca8(player, value) {
    [[ self ]]->function_f8d33ca8(player, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x65ea300e, Offset: 0x858
// Size: 0x28
function function_727bf185(player, value) {
    [[ self ]]->function_727bf185(player, value);
}


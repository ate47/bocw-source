// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace hud_spy;

// Namespace hud_spy
// Method(s) 31 Total 38
class class_f57714e4 : cluielem {

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xb45c9bc7, Offset: 0x1778
    // Size: 0x30
    function function_ec7b95(localclientnum, value) {
        set_data(localclientnum, "body_killed_by_mod", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x87238483, Offset: 0x19a8
    // Size: 0x30
    function function_46c41f5(localclientnum, value) {
        set_data(localclientnum, "show_scoreboard_hint", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x13bc0b7e, Offset: 0x1580
    // Size: 0x30
    function function_c060174(localclientnum, value) {
        set_data(localclientnum, "alive_player_count", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 1, eflags: 0x0
    // Checksum 0xd0aa4ca9, Offset: 0x12d8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x7f36220b, Offset: 0x15b8
    // Size: 0x30
    function function_2b10da38(localclientnum, value) {
        set_data(localclientnum, "missing_player_count", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x54b5083, Offset: 0x1660
    // Size: 0x30
    function function_341ec963(localclientnum, value) {
        set_data(localclientnum, "double_agent_player_count", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xebb091a1, Offset: 0x1938
    // Size: 0x30
    function function_410e8b54(localclientnum, value) {
        set_data(localclientnum, "suspect_id_number", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x4bc4e4b9, Offset: 0x1970
    // Size: 0x30
    function function_47aa7bfd(localclientnum, value) {
        set_data(localclientnum, "radio_count_down_timer", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x1af5cf0f, Offset: 0x1858
    // Size: 0x30
    function function_4e193ca3(localclientnum, value) {
        set_data(localclientnum, "current_selected_player", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 0, eflags: 0x0
    // Checksum 0x61e6f669, Offset: 0xfc0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("HUD_Spy");
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xe9bf1eb5, Offset: 0x1510
    // Size: 0x30
    function function_5d23ae16(localclientnum, value) {
        set_data(localclientnum, "player_role", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x5e9bdb98, Offset: 0x17e8
    // Size: 0x30
    function function_65a4dc3c(localclientnum, value) {
        set_data(localclientnum, "aux_notification_param", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xaffd8bbf, Offset: 0x15f0
    // Size: 0x30
    function function_6d5882c8(localclientnum, value) {
        set_data(localclientnum, "operative_player_count", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xa7902e30, Offset: 0x1a18
    // Size: 0x30
    function function_727bf185(localclientnum, value) {
        set_data(localclientnum, "update_spy_eliminations", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xe3520fb8, Offset: 0x1548
    // Size: 0x30
    function function_7350f1fd(localclientnum, value) {
        set_data(localclientnum, "player_id_number", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x21c3274d, Offset: 0x1708
    // Size: 0x30
    function function_82bcc7df(localclientnum, value) {
        set_data(localclientnum, "body_identity", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x9c14dbf4, Offset: 0x1698
    // Size: 0x30
    function function_8b74df97(localclientnum, value) {
        set_data(localclientnum, "body_player_clientnum", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 24, eflags: 0x0
    // Checksum 0x94e301b5, Offset: 0xaf0
    // Size: 0x4c4
    function setup_clientfields(var_9ec210c6, var_7674739c, var_202f443b, var_b8c3f033, var_ddd27460, var_9c8627ae, var_adf454f9, var_6fcb31c, var_227aceab, var_bc8fbd96, var_22fdd4f2, var_12555826, var_ba985308, var_440ee553, var_357cb5f7, var_e0201bbe, var_c8ee8c3a, var_ceab661d, var_f246bcfd, var_84035f7f, var_2854e954, var_80034bc0, var_1731b9d4, var_5c73c461) {
        cluielem::setup_clientfields("HUD_Spy");
        cluielem::add_clientfield("_state", 1, 3, "int");
        cluielem::add_clientfield("player_role", 28000, 2, "int", var_9ec210c6);
        cluielem::add_clientfield("player_id_number", 28000, 5, "int", var_7674739c);
        cluielem::add_clientfield("alive_player_count", 28000, 4, "int", var_202f443b);
        cluielem::add_clientfield("missing_player_count", 28000, 4, "int", var_b8c3f033);
        cluielem::add_clientfield("operative_player_count", 28000, 4, "int", var_ddd27460);
        cluielem::add_clientfield("investigator_player_count", 28000, 2, "int", var_9c8627ae);
        cluielem::add_clientfield("double_agent_player_count", 28000, 3, "int", var_adf454f9);
        cluielem::add_clientfield("body_player_clientnum", 28000, 7, "int", var_6fcb31c);
        cluielem::add_clientfield("body_agent_id", 28000, 4, "int", var_227aceab);
        cluielem::add_clientfield("body_identity", 28000, 2, "int", var_bc8fbd96);
        cluielem::add_clientfield("timeSinceDeath", 28000, 16, "int", var_22fdd4f2);
        cluielem::add_clientfield("body_killed_by_mod", 28000, 5, "int", var_12555826);
        cluielem::add_clientfield("notification_id", 28000, 5, "int", var_ba985308);
        cluielem::add_clientfield("aux_notification_param", 28000, 5, "int", var_440ee553);
        cluielem::add_clientfield("dirty_bomb_id", 28000, 2, "int", var_357cb5f7);
        cluielem::add_clientfield("current_selected_player", 28000, 5, "int", var_e0201bbe);
        cluielem::add_clientfield("body_killed_by_weapon", 20000, 10, "int", var_c8ee8c3a);
        cluielem::add_clientfield("reveal_encoded_msg", 28000, 4, "int", var_ceab661d);
        cluielem::add_clientfield("suspect_gender_type", 28000, 2, "int", var_f246bcfd);
        cluielem::add_clientfield("suspect_id_number", 28000, 5, "int", var_84035f7f);
        cluielem::add_clientfield("radio_count_down_timer", 28000, 6, "int", var_2854e954);
        cluielem::add_clientfield("show_scoreboard_hint", 28000, 1, "int", var_80034bc0);
        cluielem::add_clientfield("talk_in_double_agent_channel", 28000, 2, "int", var_1731b9d4);
        cluielem::add_clientfield("update_spy_eliminations", 28000, 1, "int", var_5c73c461);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x4e78ca02, Offset: 0x17b0
    // Size: 0x30
    function function_91a8637f(localclientnum, value) {
        set_data(localclientnum, "notification_id", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x286e815c, Offset: 0x1890
    // Size: 0x30
    function function_a2471efa(localclientnum, value) {
        set_data(localclientnum, "body_killed_by_weapon", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xbf50beb0, Offset: 0x18c8
    // Size: 0x30
    function function_adf24ba3(localclientnum, value) {
        set_data(localclientnum, "reveal_encoded_msg", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x71d70c33, Offset: 0x1740
    // Size: 0x30
    function function_b58e0471(localclientnum, value) {
        set_data(localclientnum, "timeSinceDeath", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xb6e6c37, Offset: 0x1820
    // Size: 0x30
    function function_ceb51392(localclientnum, value) {
        set_data(localclientnum, "dirty_bomb_id", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x5c2e5383, Offset: 0x16d0
    // Size: 0x30
    function function_cf7a3ce6(localclientnum, value) {
        set_data(localclientnum, "body_agent_id", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x2f214612, Offset: 0x1308
    // Size: 0x1fc
    function set_state(localclientnum, state_name) {
        if (#"defaultstate" == state_name) {
            set_data(localclientnum, "_state", 0);
            return;
        }
        if (#"hash_7d11e1c1b565495" == state_name) {
            set_data(localclientnum, "_state", 1);
            return;
        }
        if (#"combathud" == state_name) {
            set_data(localclientnum, "_state", 2);
            return;
        }
        if (#"hash_6724d4bba3d5bf31" == state_name) {
            set_data(localclientnum, "_state", 3);
            return;
        }
        if (#"hash_37663a3349e1e83c" == state_name) {
            set_data(localclientnum, "_state", 4);
            return;
        }
        if (#"wantedordermenu" == state_name) {
            set_data(localclientnum, "_state", 5);
            return;
        }
        if (#"hash_75ae26cee1b43762" == state_name) {
            set_data(localclientnum, "_state", 6);
            return;
        }
        if (#"friendlyfire" == state_name) {
            set_data(localclientnum, "_state", 7);
            return;
        }
        assertmsg("<unknown string>");
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x2c1a41cf, Offset: 0x1900
    // Size: 0x30
    function function_ddf21dbe(localclientnum, value) {
        set_data(localclientnum, "suspect_gender_type", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0xcb82d769, Offset: 0x1628
    // Size: 0x30
    function function_de4daba8(localclientnum, value) {
        set_data(localclientnum, "investigator_player_count", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 2, eflags: 0x0
    // Checksum 0x6e500e30, Offset: 0x19e0
    // Size: 0x30
    function function_f8d33ca8(localclientnum, value) {
        set_data(localclientnum, "talk_in_double_agent_channel", value);
    }

    // Namespace namespace_f57714e4/hud_spy
    // Params 1, eflags: 0x0
    // Checksum 0xdb6d6630, Offset: 0xfe8
    // Size: 0x2e4
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_state(localclientnum, #"defaultstate");
        set_data(localclientnum, "player_role", 0);
        set_data(localclientnum, "player_id_number", 0);
        set_data(localclientnum, "alive_player_count", 0);
        set_data(localclientnum, "missing_player_count", 0);
        set_data(localclientnum, "operative_player_count", 0);
        set_data(localclientnum, "investigator_player_count", 0);
        set_data(localclientnum, "double_agent_player_count", 0);
        set_data(localclientnum, "body_player_clientnum", 0);
        set_data(localclientnum, "body_agent_id", 0);
        set_data(localclientnum, "body_identity", 0);
        set_data(localclientnum, "timeSinceDeath", 0);
        set_data(localclientnum, "body_killed_by_mod", 0);
        set_data(localclientnum, "notification_id", 0);
        set_data(localclientnum, "aux_notification_param", 0);
        set_data(localclientnum, "dirty_bomb_id", 0);
        set_data(localclientnum, "current_selected_player", 0);
        set_data(localclientnum, "body_killed_by_weapon", 0);
        set_data(localclientnum, "reveal_encoded_msg", 0);
        set_data(localclientnum, "suspect_gender_type", 0);
        set_data(localclientnum, "suspect_id_number", 0);
        set_data(localclientnum, "radio_count_down_timer", 0);
        set_data(localclientnum, "show_scoreboard_hint", 0);
        set_data(localclientnum, "talk_in_double_agent_channel", 0);
        set_data(localclientnum, "update_spy_eliminations", 0);
    }

}

// Namespace hud_spy/hud_spy
// Params 24, eflags: 0x0
// Checksum 0xff23d7, Offset: 0x300
// Size: 0x25e
function register(var_9ec210c6, var_7674739c, var_202f443b, var_b8c3f033, var_ddd27460, var_9c8627ae, var_adf454f9, var_6fcb31c, var_227aceab, var_bc8fbd96, var_22fdd4f2, var_12555826, var_ba985308, var_440ee553, var_357cb5f7, var_e0201bbe, var_c8ee8c3a, var_ceab661d, var_f246bcfd, var_84035f7f, var_2854e954, var_80034bc0, var_1731b9d4, var_5c73c461) {
    elem = new class_f57714e4();
    [[ elem ]]->setup_clientfields(var_9ec210c6, var_7674739c, var_202f443b, var_b8c3f033, var_ddd27460, var_9c8627ae, var_adf454f9, var_6fcb31c, var_227aceab, var_bc8fbd96, var_22fdd4f2, var_12555826, var_ba985308, var_440ee553, var_357cb5f7, var_e0201bbe, var_c8ee8c3a, var_ceab661d, var_f246bcfd, var_84035f7f, var_2854e954, var_80034bc0, var_1731b9d4, var_5c73c461);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"hud_spy"])) {
        level.var_ae746e8f[#"hud_spy"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"hud_spy"])) {
        level.var_ae746e8f[#"hud_spy"] = [];
    } else if (!isarray(level.var_ae746e8f[#"hud_spy"])) {
        level.var_ae746e8f[#"hud_spy"] = array(level.var_ae746e8f[#"hud_spy"]);
    }
    level.var_ae746e8f[#"hud_spy"][level.var_ae746e8f[#"hud_spy"].size] = elem;
}

// Namespace hud_spy/hud_spy
// Params 0, eflags: 0x0
// Checksum 0x6e26e3e8, Offset: 0x568
// Size: 0x34
function register_clientside() {
    elem = new class_f57714e4();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace hud_spy/hud_spy
// Params 1, eflags: 0x0
// Checksum 0x3fb2d50e, Offset: 0x5a8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace hud_spy/hud_spy
// Params 1, eflags: 0x0
// Checksum 0xa328732e, Offset: 0x5d0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace hud_spy/hud_spy
// Params 1, eflags: 0x0
// Checksum 0x9c30e311, Offset: 0x5f8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xdfd7becc, Offset: 0x620
// Size: 0x28
function set_state(localclientnum, state_name) {
    [[ self ]]->set_state(localclientnum, state_name);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xc17239cd, Offset: 0x650
// Size: 0x28
function function_5d23ae16(localclientnum, value) {
    [[ self ]]->function_5d23ae16(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xe8709b7, Offset: 0x680
// Size: 0x28
function function_7350f1fd(localclientnum, value) {
    [[ self ]]->function_7350f1fd(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x1071c125, Offset: 0x6b0
// Size: 0x28
function function_c060174(localclientnum, value) {
    [[ self ]]->function_c060174(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x41d0509f, Offset: 0x6e0
// Size: 0x28
function function_2b10da38(localclientnum, value) {
    [[ self ]]->function_2b10da38(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x5213ede2, Offset: 0x710
// Size: 0x28
function function_6d5882c8(localclientnum, value) {
    [[ self ]]->function_6d5882c8(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x12e8d74b, Offset: 0x740
// Size: 0x28
function function_de4daba8(localclientnum, value) {
    [[ self ]]->function_de4daba8(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xdfcefd4b, Offset: 0x770
// Size: 0x28
function function_341ec963(localclientnum, value) {
    [[ self ]]->function_341ec963(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xf5593f35, Offset: 0x7a0
// Size: 0x28
function function_8b74df97(localclientnum, value) {
    [[ self ]]->function_8b74df97(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x13cca60a, Offset: 0x7d0
// Size: 0x28
function function_cf7a3ce6(localclientnum, value) {
    [[ self ]]->function_cf7a3ce6(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xc3a4ef55, Offset: 0x800
// Size: 0x28
function function_82bcc7df(localclientnum, value) {
    [[ self ]]->function_82bcc7df(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xb36b0c0d, Offset: 0x830
// Size: 0x28
function function_b58e0471(localclientnum, value) {
    [[ self ]]->function_b58e0471(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xb51e09a3, Offset: 0x860
// Size: 0x28
function function_ec7b95(localclientnum, value) {
    [[ self ]]->function_ec7b95(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0xaee86afe, Offset: 0x890
// Size: 0x28
function function_91a8637f(localclientnum, value) {
    [[ self ]]->function_91a8637f(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x30490905, Offset: 0x8c0
// Size: 0x28
function function_65a4dc3c(localclientnum, value) {
    [[ self ]]->function_65a4dc3c(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x40aeebfc, Offset: 0x8f0
// Size: 0x28
function function_ceb51392(localclientnum, value) {
    [[ self ]]->function_ceb51392(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x24fbfbd4, Offset: 0x920
// Size: 0x28
function function_4e193ca3(localclientnum, value) {
    [[ self ]]->function_4e193ca3(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x9528ea4f, Offset: 0x950
// Size: 0x28
function function_a2471efa(localclientnum, value) {
    [[ self ]]->function_a2471efa(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x2a5983c4, Offset: 0x980
// Size: 0x28
function function_adf24ba3(localclientnum, value) {
    [[ self ]]->function_adf24ba3(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x32afd301, Offset: 0x9b0
// Size: 0x28
function function_ddf21dbe(localclientnum, value) {
    [[ self ]]->function_ddf21dbe(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x82df0948, Offset: 0x9e0
// Size: 0x28
function function_410e8b54(localclientnum, value) {
    [[ self ]]->function_410e8b54(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x938ef4f9, Offset: 0xa10
// Size: 0x28
function function_47aa7bfd(localclientnum, value) {
    [[ self ]]->function_47aa7bfd(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x5400202a, Offset: 0xa40
// Size: 0x28
function function_46c41f5(localclientnum, value) {
    [[ self ]]->function_46c41f5(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x2b0c2c0b, Offset: 0xa70
// Size: 0x28
function function_f8d33ca8(localclientnum, value) {
    [[ self ]]->function_f8d33ca8(localclientnum, value);
}

// Namespace hud_spy/hud_spy
// Params 2, eflags: 0x0
// Checksum 0x13a8e733, Offset: 0xaa0
// Size: 0x28
function function_727bf185(localclientnum, value) {
    [[ self ]]->function_727bf185(localclientnum, value);
}


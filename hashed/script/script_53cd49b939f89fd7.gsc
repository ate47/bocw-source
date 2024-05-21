// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\scene_shared.csc;
#using scripts\core_common\custom_class.csc;
#using scripts\core_common\character_customization.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_d5a9ff55;

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 0, eflags: 0x5
// Checksum 0xe3bb7f7c, Offset: 0x140
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_24fe7853d0e9dd01", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 0, eflags: 0x6 linked
// Checksum 0xdd3db44, Offset: 0x188
// Size: 0x4c
function private preinit() {
    level.client_menus = associativearray();
    level.var_a14cc36b = [];
    callback::on_localclient_connect(&on_player_connect);
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 1, eflags: 0x2 linked
// Checksum 0x4da5933b, Offset: 0x1e0
// Size: 0x24
function on_player_connect(local_client_num) {
    level thread client_menus(local_client_num);
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 1, eflags: 0x2 linked
// Checksum 0xbfbe0237, Offset: 0x210
// Size: 0x88
function function_6f3e10a2(var_c12be4a6) {
    if (!isdefined(var_c12be4a6)) {
        return undefined;
    }
    data = function_63446d7f(var_c12be4a6);
    if (isdefined(data) && isdefined(var_c12be4a6.state)) {
        data = isdefined(data.states[var_c12be4a6.state]) ? data.states[var_c12be4a6.state] : data;
    }
    return data;
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 1, eflags: 0x2 linked
// Checksum 0xede40dc3, Offset: 0x2a0
// Size: 0x2c
function function_63446d7f(var_c12be4a6) {
    if (!isdefined(var_c12be4a6)) {
        return undefined;
    }
    return level.client_menus[var_c12be4a6.menu_name];
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 3, eflags: 0x2 linked
// Checksum 0x3fbeabca, Offset: 0x2d8
// Size: 0xde
function function_1337c436(menu_name, target_name, alt_render_mode = 1) {
    assert(isdefined(level.client_menus[menu_name]), "<unknown string>" + menu_name + "<unknown string>");
    menu_data = level.client_menus[menu_name];
    assert(!isdefined(menu_data.var_cf15815a), "<unknown string>" + menu_name + "<unknown string>");
    menu_data.var_cf15815a = target_name;
    menu_data.var_c27fdce9 = alt_render_mode;
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 2, eflags: 0x2 linked
// Checksum 0x6895549f, Offset: 0x3c0
// Size: 0x140
function function_daadc836(menu_name, local_client_num) {
    if (isdefined(menu_name)) {
        menu_data = level.client_menus[menu_name];
        character = menu_data.custom_characters[local_client_num];
        if (!isdefined(character) && isdefined(menu_data.var_cf15815a)) {
            model = getent(local_client_num, menu_data.var_cf15815a, "targetname");
            if (!isdefined(model)) {
                model = util::spawn_model(local_client_num, "tag_origin");
                model.targetname = menu_data.var_cf15815a;
            }
            model useanimtree("all_player");
            menu_data.custom_characters[local_client_num] = character_customization::function_dd295310(model, local_client_num, menu_data.var_c27fdce9);
            model hide();
            character = menu_data.custom_characters[local_client_num];
        }
    }
    return character;
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 1, eflags: 0x2 linked
// Checksum 0xd86f47aa, Offset: 0x508
// Size: 0x5a
function function_e41243c1(var_e953aca6) {
    if (!isdefined(var_e953aca6)) {
        return array();
    } else if (isarray(var_e953aca6)) {
        return var_e953aca6;
    }
    return array(var_e953aca6);
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 9, eflags: 0x2 linked
// Checksum 0x4c372d90, Offset: 0x570
// Size: 0x1c4
function function_f603fc4d(menu_name, target_name, xcam, sub_xcam, xcam_frame = undefined, var_1f199068 = undefined, var_2c679be0 = undefined, lerp_time = 0, lut_index = 0) {
    assert(!isdefined(level.client_menus[menu_name]), "<unknown string>" + menu_name + "<unknown string>");
    level.client_menus[menu_name] = {#menu_name:menu_name, #target_name:target_name, #xcam:xcam, #sub_xcam:sub_xcam, #xcam_frame:xcam_frame, #var_1f199068:function_e41243c1(var_1f199068), #var_2c679be0:function_e41243c1(var_2c679be0), #lerp_time:lerp_time, #lut_index:lut_index, #var_e57ed98b:[]};
    return level.client_menus[menu_name];
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 8, eflags: 0x2 linked
// Checksum 0x2e5353a1, Offset: 0x740
// Size: 0x130
function function_460e6001(menu_name, session_mode, target_name, xcam, sub_xcam, xcam_frame = undefined, lerp_time = 0, lut_index = 0) {
    assert(isdefined(level.client_menus[menu_name]), "<unknown string>" + menu_name + "<unknown string>");
    level.client_menus[menu_name].var_e57ed98b[session_mode] = {#target_name:target_name, #xcam:xcam, #sub_xcam:sub_xcam, #xcam_frame:xcam_frame, #lerp_time:lerp_time, #lut_index:lut_index};
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 7, eflags: 0x2 linked
// Checksum 0xc1e212b4, Offset: 0x878
// Size: 0x16c
function function_969a2881(menu_name, camera_function, has_state, var_1f199068 = undefined, var_2c679be0 = undefined, lut_index = 0, var_ef0a4d1e) {
    assert(!isdefined(level.client_menus[menu_name]), "<unknown string>" + menu_name + "<unknown string>");
    level.client_menus[menu_name] = {#menu_name:menu_name, #camera_function:camera_function, #has_state:has_state, #var_1f199068:function_e41243c1(var_1f199068), #var_2c679be0:function_e41243c1(var_2c679be0), #lut_index:lut_index, #var_ef0a4d1e:var_ef0a4d1e};
    return level.client_menus[menu_name];
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 5, eflags: 0x2 linked
// Checksum 0x509e708e, Offset: 0x9f0
// Size: 0x124
function function_6425472c(menu_name, str_scene, var_f647c5b2 = undefined, var_559c5c3e = undefined, var_3e7fd594 = undefined) {
    assert(!isdefined(level.client_menus[menu_name]), "<unknown string>" + menu_name + "<unknown string>");
    level.client_menus[menu_name] = {#menu_name:menu_name, #str_scene:str_scene, #var_f647c5b2:var_f647c5b2, #var_559c5c3e:var_559c5c3e, #var_3e7fd594:var_3e7fd594, #states:[], #var_b80d1ad4:[]};
    return level.client_menus[menu_name];
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 2, eflags: 0x2 linked
// Checksum 0xcc35c8ce, Offset: 0xb20
// Size: 0x6e
function function_17384292(menu_name, callback_fn) {
    assert(isdefined(level.client_menus[menu_name]), "<unknown string>" + menu_name + "<unknown string>");
    level.client_menus[menu_name].var_a362e358 = callback_fn;
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 6, eflags: 0x2 linked
// Checksum 0x2dbd8445, Offset: 0xb98
// Size: 0x118
function function_866692f8(menu_name, state, str_scene, var_f647c5b2 = undefined, var_559c5c3e = undefined, var_3e7fd594 = undefined) {
    assert(isdefined(level.client_menus[menu_name]), "<unknown string>" + menu_name + "<unknown string>");
    level.client_menus[menu_name].states[state] = {#menu_name:menu_name, #str_scene:str_scene, #var_f647c5b2:var_f647c5b2, #var_559c5c3e:var_559c5c3e, #var_3e7fd594:var_3e7fd594, #var_b80d1ad4:[]};
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 4, eflags: 0x2 linked
// Checksum 0x45d5cd62, Offset: 0xcb8
// Size: 0x16a
function function_f852c52c(menu_name, state_name = undefined, var_a180b828 = 1, var_a7c679da = 1) {
    assert(isdefined(level.client_menus[menu_name]), "<unknown string>" + menu_name + "<unknown string>");
    if (isdefined(state_name)) {
        assert(isdefined(level.client_menus[menu_name].states[state_name]), "<unknown string>" + menu_name + "<unknown string>" + state_name + "<unknown string>");
        level.client_menus[menu_name].states[state_name].var_b2ad82eb = var_a180b828;
        level.client_menus[menu_name].states[state_name].var_c9213d93 = var_a7c679da;
        return;
    }
    level.client_menus[menu_name].var_b2ad82eb = var_a180b828;
    level.client_menus[menu_name].var_c9213d93 = var_a7c679da;
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 4, eflags: 0x2 linked
// Checksum 0xce60abb3, Offset: 0xe30
// Size: 0x15c
function function_8950260c(menu_name, from_state = "__default__", to_state = "__default__", str_shot) {
    assert(from_state !== to_state, "<unknown string>" + menu_name + "<unknown string>" + (isdefined(from_state) ? "<unknown string>" + from_state : "<unknown string>") + "<unknown string>");
    assert(isdefined(level.client_menus[menu_name]), "<unknown string>" + menu_name + "<unknown string>");
    menu = level.client_menus[menu_name];
    if (from_state != "__default__" && isdefined(menu.states[from_state])) {
        menu.states[from_state].var_b80d1ad4[to_state] = str_shot;
        return;
    }
    menu.states.var_b80d1ad4[to_state] = str_shot;
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 2, eflags: 0x2 linked
// Checksum 0x7a8e880c, Offset: 0xf98
// Size: 0x10c
function function_de0ab(menu_name, var_42d665b7) {
    assert(isdefined(level.client_menus[menu_name]));
    if (!isdefined(level.client_menus[menu_name].var_1f199068)) {
        level.client_menus[menu_name].var_1f199068 = [];
    } else if (!isarray(level.client_menus[menu_name].var_1f199068)) {
        level.client_menus[menu_name].var_1f199068 = array(level.client_menus[menu_name].var_1f199068);
    }
    level.client_menus[menu_name].var_1f199068[level.client_menus[menu_name].var_1f199068.size] = var_42d665b7;
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 2, eflags: 0x2 linked
// Checksum 0x940ac1b5, Offset: 0x10b0
// Size: 0x10c
function function_13b48f53(menu_name, var_34fd6dc0) {
    assert(isdefined(level.client_menus[menu_name]));
    if (!isdefined(level.client_menus[menu_name].var_2c679be0)) {
        level.client_menus[menu_name].var_2c679be0 = [];
    } else if (!isarray(level.client_menus[menu_name].var_2c679be0)) {
        level.client_menus[menu_name].var_2c679be0 = array(level.client_menus[menu_name].var_2c679be0);
    }
    level.client_menus[menu_name].var_2c679be0[level.client_menus[menu_name].var_2c679be0.size] = var_34fd6dc0;
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 2, eflags: 0x2 linked
// Checksum 0x48b59a59, Offset: 0x11c8
// Size: 0xa0
function function_ffa1213e(var_8de6b51a, var_e3315405) {
    var_cd1475a5 = function_6f3e10a2(var_8de6b51a);
    new_menu = function_6f3e10a2(var_e3315405);
    if (var_cd1475a5.menu_name === new_menu.menu_name) {
        return var_cd1475a5.var_b80d1ad4[isdefined(var_e3315405.state) ? var_e3315405.state : "__default__"];
    }
    return undefined;
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 3, eflags: 0x2 linked
// Checksum 0xa0e3bcf4, Offset: 0x1270
// Size: 0x7b4
function setup_menu(local_client_num, var_8de6b51a, var_e3315405) {
    var_cd1475a5 = function_6f3e10a2(var_8de6b51a);
    var_a8080f41 = function_6f3e10a2(var_8de6b51a);
    new_menu = function_6f3e10a2(var_e3315405);
    var_f81682ee = function_63446d7f(var_e3315405);
    var_fdb39764 = var_cd1475a5.menu_name === new_menu.menu_name;
    var_d2bf9838 = var_cd1475a5.str_scene !== level.var_6dfc0bcf;
    var_ad156153 = function_daadc836(var_cd1475a5.menu_name, local_client_num);
    var_9168605c = function_daadc836(new_menu.menu_name, local_client_num);
    if (isdefined(var_cd1475a5)) {
        if (!var_fdb39764) {
            if (isdefined(var_a8080f41.var_2c679be0)) {
                foreach (fn in var_a8080f41.var_2c679be0) {
                    if (is_true(var_a8080f41.var_ef0a4d1e)) {
                        level [[ fn ]](local_client_num, var_a8080f41);
                        continue;
                    }
                    level thread [[ fn ]](local_client_num, var_a8080f41);
                }
            }
            if (!var_fdb39764 && isdefined(var_cd1475a5.str_scene) && var_d2bf9838) {
                outro = isdefined(var_cd1475a5.var_3e7fd594) ? var_cd1475a5.var_3e7fd594 : var_a8080f41.var_3e7fd594;
                if (isdefined(outro)) {
                    function_7851a662(var_cd1475a5, outro);
                } else {
                    function_4c61e7c(var_cd1475a5);
                }
            }
            level notify(var_8de6b51a.menu_name + "_closed");
            if (isdefined(var_a8080f41.camera_function)) {
                stopmaincamxcam(local_client_num);
            } else if (isdefined(var_a8080f41.xcam)) {
                stopmaincamxcam(local_client_num);
            }
            if (isdefined(var_ad156153) && var_ad156153 !== var_9168605c) {
                [[ var_ad156153 ]]->hide_model();
                [[ var_ad156153 ]]->function_39a68bf2();
            }
        }
    }
    if (isdefined(new_menu)) {
        if ((isdefined(var_cd1475a5.var_b2ad82eb) ? var_cd1475a5.var_b2ad82eb : var_a8080f41.var_b2ad82eb) !== (isdefined(new_menu.var_b2ad82eb) ? new_menu.var_b2ad82eb : var_f81682ee.var_b2ad82eb)) {
            if (is_true(isdefined(new_menu.var_b2ad82eb) ? new_menu.var_b2ad82eb : var_f81682ee.var_b2ad82eb)) {
                customclass::function_831397a7(local_client_num, is_true(isdefined(new_menu.var_c9213d93) ? new_menu.var_c9213d93 : var_f81682ee.var_c9213d93));
            } else {
                customclass::function_415febc4(local_client_num);
            }
        }
        if (isdefined(var_e3315405.charactermode) && isdefined(var_9168605c)) {
            [[ var_9168605c ]]->set_character_mode(var_e3315405.charactermode);
        }
        if (isdefined(var_f81682ee.var_a362e358)) {
            level thread [[ var_f81682ee.var_a362e358 ]](local_client_num, var_e3315405.menu_name, var_e3315405.state);
        }
        var_78594590 = function_6d469004(var_e3315405, var_8de6b51a);
        if (var_fdb39764) {
            if (isdefined(new_menu.str_scene)) {
                level thread function_4e55f369(var_8de6b51a, var_e3315405, var_78594590);
            } else if (isdefined(new_menu.camera_function)) {
                level thread [[ new_menu.camera_function ]](local_client_num, var_e3315405.menu_name, var_e3315405.state);
            }
            return;
        }
        if (isdefined(var_9168605c)) {
            [[ var_9168605c ]]->show_model();
        }
        if (isdefined(var_f81682ee.lut_index)) {
            setdvar(#"vc_lut", var_f81682ee.lut_index);
        }
        if (isdefined(var_f81682ee.camera_function)) {
            if (var_f81682ee.has_state === 1) {
                level thread [[ var_f81682ee.camera_function ]](local_client_num, var_e3315405.menu_name, var_e3315405.state);
            } else {
                level thread [[ var_f81682ee.camera_function ]](local_client_num, var_e3315405.menu_name);
            }
        } else if (isdefined(var_f81682ee.xcam)) {
            camera_data = isdefined(var_f81682ee.var_e57ed98b[currentsessionmode()]) ? var_f81682ee.var_e57ed98b[currentsessionmode()] : var_f81682ee;
            camera_ent = struct::get(camera_data.target_name);
            if (isdefined(camera_ent)) {
                playmaincamxcam(local_client_num, camera_data.xcam, camera_data.lerp_time, camera_data.sub_xcam, "", camera_ent.origin, camera_ent.angles);
            }
        }
        if (isdefined(new_menu.str_scene) && (new_menu.var_559c5c3e !== var_cd1475a5.var_559c5c3e || new_menu.str_scene !== var_cd1475a5.str_scene)) {
            level thread function_4aa3b942(new_menu, var_78594590);
        }
        if (isdefined(var_f81682ee.var_1f199068)) {
            foreach (fn in var_f81682ee.var_1f199068) {
                level thread [[ fn ]](local_client_num, var_f81682ee, var_a8080f41);
            }
        }
    }
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 2, eflags: 0x2 linked
// Checksum 0x66abba5b, Offset: 0x1a30
// Size: 0x10c
function function_6d469004(var_e3315405, var_8de6b51a) {
    var_386948ca = level.client_menus[var_e3315405.menu_name].var_386948ca;
    if (isarray(var_386948ca)) {
        foreach (var_2e96e768 in var_386948ca) {
            if (var_2e96e768.var_8176b3c === var_8de6b51a.menu_name && var_2e96e768.var_5e806f4a === var_8de6b51a.state && var_2e96e768.var_a62e11c1 === var_e3315405.state) {
                return var_2e96e768.var_b1e821c5;
            }
        }
    }
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 5, eflags: 0x2 linked
// Checksum 0xc2509714, Offset: 0x1b48
// Size: 0x1b8
function function_55d56772(var_7271d7d6, var_8176b3c, var_5e806f4a, var_b5964062, var_a62e11c1) {
    assert(isdefined(level.client_menus[var_b5964062]), "<unknown string>" + var_b5964062 + "<unknown string>");
    var_2e96e768 = {#var_a62e11c1:var_a62e11c1, #var_8176b3c:var_8176b3c, #var_5e806f4a:var_5e806f4a, #var_b1e821c5:var_7271d7d6};
    if (!isdefined(level.client_menus[var_b5964062].var_386948ca)) {
        level.client_menus[var_b5964062].var_386948ca = [];
    } else if (!isarray(level.client_menus[var_b5964062].var_386948ca)) {
        level.client_menus[var_b5964062].var_386948ca = array(level.client_menus[var_b5964062].var_386948ca);
    }
    if (!isinarray(level.client_menus[var_b5964062].var_386948ca, var_2e96e768)) {
        level.client_menus[var_b5964062].var_386948ca[level.client_menus[var_b5964062].var_386948ca.size] = var_2e96e768;
    }
}

/#

    // Namespace namespace_d5a9ff55/namespace_d5a9ff55
    // Params 1, eflags: 0x4
    // Checksum 0xfd51d298, Offset: 0x1d08
    // Size: 0x118
    function private function_2a35a5f(var_a14cc36b) {
        var_12fe97ab = "<unknown string>";
        foreach (menu_item in var_a14cc36b) {
            var_12fe97ab += "<unknown string>" + (isdefined(menu_item.menu_name) ? "<unknown string>" + menu_item.menu_name : ishash(menu_item.menu_name) ? function_9e72a96(menu_item.menu_name) : "<unknown string>") + "<unknown string>";
        }
        return var_12fe97ab;
    }

#/

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 1, eflags: 0x2 linked
// Checksum 0x3976e09, Offset: 0x1e28
// Size: 0x4c0
function client_menus(local_client_num) {
    level endon(#"disconnect");
    level.var_a14cc36b[local_client_num] = [];
    clientmenustack = level.var_a14cc36b[local_client_num];
    while (true) {
        waitresult = level waittill("menu_change" + local_client_num);
        menu_name = waitresult.menu;
        status = waitresult.status;
        state = waitresult.state;
        menu_index = undefined;
        for (i = 0; i < clientmenustack.size; i++) {
            if (clientmenustack[i].menu_name == menu_name) {
                menu_index = i;
                break;
            }
        }
        if (status === "closeToMenu" && isdefined(menu_index)) {
            topmenu = undefined;
            for (i = 0; i < menu_index; i++) {
                popped = array::pop(clientmenustack, 0, 0);
                if (!isdefined(topmenu)) {
                    topmenu = popped;
                }
            }
            setup_menu(local_client_num, topmenu, clientmenustack[0]);
            continue;
        }
        statechange = isdefined(menu_index) && status !== "closed" && clientmenustack[menu_index].state !== state && !(!isdefined(clientmenustack[menu_index].state) && !isdefined(state));
        updateonly = statechange && menu_index !== 0;
        if (updateonly) {
            clientmenustack[i].state = state;
            continue;
        }
        if (status === "closed" && isdefined(menu_index)) {
            /#
                if (menu_index != 0) {
                    var_12fe97ab = function_2a35a5f(clientmenustack);
                    assertmsg("<unknown string>" + local_client_num + "<unknown string>" + menu_name + "<unknown string>" + var_12fe97ab);
                }
            #/
            if (menu_index == 0) {
                popped = array::pop(clientmenustack, 0, 0);
                setup_menu(local_client_num, popped, clientmenustack[0]);
            }
            continue;
        }
        if (status === "opened" && !isdefined(menu_index)) {
            menu_data = {#menu_name:menu_name, #state:state, #charactermode:waitresult.mode};
            lastmenu = clientmenustack.size < 0 ? undefined : clientmenustack[0];
            setup_menu(local_client_num, lastmenu, menu_data);
            array::push_front(clientmenustack, menu_data);
            continue;
        }
        if (isdefined(menu_index) && statechange) {
            /#
                if (menu_index != 0) {
                    var_12fe97ab = function_2a35a5f(clientmenustack);
                    assertmsg("<unknown string>" + local_client_num + "<unknown string>" + menu_name + "<unknown string>" + var_12fe97ab);
                }
            #/
            var_80c09ee8 = clientmenustack[0];
            clientmenustack[0] = {#menu_name:menu_name, #state:state, #charactermode:waitresult.mode};
            setup_menu(local_client_num, var_80c09ee8, clientmenustack[0]);
        }
    }
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 5, eflags: 0x2 linked
// Checksum 0xee14d0cc, Offset: 0x22f0
// Size: 0x23c
function function_befcd4f0(str_scene, var_f647c5b2, var_559c5c3e, var_472bee8f, var_b1e821c5) {
    assert(!isdefined(var_f647c5b2) || scene::function_9730988a(str_scene, var_f647c5b2), "<unknown string>" + str_scene + "<unknown string>" + (isdefined(var_f647c5b2) ? "<unknown string>" + var_f647c5b2 : "<unknown string>"));
    assert(!isdefined(var_559c5c3e) || scene::function_9730988a(str_scene, var_559c5c3e), "<unknown string>" + str_scene + "<unknown string>" + (isdefined(var_559c5c3e) ? "<unknown string>" + var_559c5c3e : "<unknown string>"));
    level notify(#"hash_46855140938f532c");
    level endon(#"hash_46855140938f532c");
    if (isdefined(var_472bee8f)) {
        level endon(var_472bee8f);
    }
    if (level.var_6dfc0bcf !== str_scene) {
        level scene::stop(level.var_6dfc0bcf);
    } else if (isdefined(level.var_6dfc0bcf)) {
        level scene::cancel(level.var_6dfc0bcf);
    }
    level.var_6dfc0bcf = str_scene;
    if (isdefined(var_f647c5b2)) {
        level scene::play(str_scene, var_f647c5b2, undefined, undefined, undefined, undefined, var_b1e821c5);
        var_b1e821c5 = undefined;
    }
    if (isdefined(var_559c5c3e)) {
        level thread scene::play(str_scene, var_559c5c3e, undefined, undefined, undefined, undefined, var_b1e821c5);
        return;
    }
    level thread scene::play(str_scene, undefined, undefined, undefined, undefined, undefined, var_b1e821c5);
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 5, eflags: 0x0
// Checksum 0x47cd31a, Offset: 0x2538
// Size: 0x94
function function_5993fa03(str_scene, str_shot, time, var_472bee8f, var_78594590) {
    level notify(#"hash_46855140938f532c");
    level endon(#"hash_46855140938f532c");
    if (isdefined(var_472bee8f)) {
        level endon(var_472bee8f);
    }
    level thread scene::play_from_time(str_scene, str_shot, undefined, time, 1, 1, var_78594590);
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 2, eflags: 0x2 linked
// Checksum 0x1920d712, Offset: 0x25d8
// Size: 0x54
function function_4aa3b942(new_menu, var_b1e821c5) {
    function_befcd4f0(new_menu.str_scene, new_menu.var_f647c5b2, new_menu.var_559c5c3e, new_menu.menu_name + "_closed", var_b1e821c5);
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 3, eflags: 0x2 linked
// Checksum 0x1a4c1a47, Offset: 0x2638
// Size: 0x54
function function_7851a662(var_cd1475a5, shot, var_b1e821c5) {
    function_befcd4f0(var_cd1475a5.str_scene, shot, undefined, var_cd1475a5.menu_name + "_closed", var_b1e821c5);
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 1, eflags: 0x2 linked
// Checksum 0x10e8ae8e, Offset: 0x2698
// Size: 0x84
function function_4c61e7c(var_cd1475a5) {
    level notify(#"hash_46855140938f532c");
    level endon(var_cd1475a5.menu_name + "_closed");
    level endon(#"hash_46855140938f532c");
    level.var_6dfc0bcf = undefined;
    level scene::stop(var_cd1475a5.str_scene, 1);
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 3, eflags: 0x2 linked
// Checksum 0x1721796c, Offset: 0x2728
// Size: 0x14c
function function_4e55f369(var_8de6b51a, var_e3315405, var_b1e821c5) {
    level notify(#"hash_46855140938f532c");
    new_menu = function_6f3e10a2(var_e3315405);
    var_ffb43fb8 = function_ffa1213e(var_8de6b51a, var_e3315405);
    if (isdefined(var_ffb43fb8)) {
        level endon(#"hash_46855140938f532c");
        level endon(new_menu.menu_name + "_closed");
        level scene::play(new_menu.str_scene, var_ffb43fb8, undefined, undefined, undefined, undefined, var_b1e821c5);
        return;
    }
    var_cd1475a5 = function_6f3e10a2(var_8de6b51a);
    if (var_cd1475a5.str_scene !== new_menu.str_scene || var_cd1475a5.var_559c5c3e !== new_menu.var_559c5c3e) {
        new_menu = function_6f3e10a2(var_e3315405);
        function_4aa3b942(new_menu, var_b1e821c5);
    }
}

// Namespace namespace_d5a9ff55/namespace_d5a9ff55
// Params 3, eflags: 0x2 linked
// Checksum 0x162703dd, Offset: 0x2880
// Size: 0xb4
function is_current_menu(local_client_num, menu_name, state = undefined) {
    if (!isdefined(level.var_a14cc36b[local_client_num]) || level.var_a14cc36b[local_client_num].size == 0) {
        return false;
    }
    return level.var_a14cc36b[local_client_num][0].menu_name === menu_name && (!isdefined(state) || level.var_a14cc36b[local_client_num][0].state === state);
}


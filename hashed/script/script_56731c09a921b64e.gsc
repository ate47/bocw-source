// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\weapons\weaponobjects.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\core_common\item_inventory.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_1e7573ec;

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x5
// Checksum 0x4d14e234, Offset: 0x2c8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_538411714a272c00", &preinit, &postinit, undefined, "zm_weapons");
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x6 linked
// Checksum 0xd51f6bd7, Offset: 0x320
// Size: 0x11bc
function private preinit() {
    clientfield::register("scriptmover", "" + #"hash_4bd7cbe3f7fd44dd", 24000, 2, "int");
    clientfield::register("missile", "" + #"hash_3ec6598e8ba9406a", 24000, 1, "int");
    clientfield::register("toplayer", "" + #"hash_74134fadeeb8b692", 24000, 1, "counter");
    clientfield::register("toplayer", "" + #"hash_713a0ba5968a3bde", 24000, 1, "int");
    clientfield::register("toplayer", "" + #"hash_4aec08923edd6a40", 24000, 2, "int");
    clientfield::register("actor", "" + #"hash_5366f39f1aca2e65", 24000, 3, "int");
    level.var_40f9c873 = getweapon(#"ww_mega_barrel_fullauto_diffusion_beam_t9");
    level.var_2c70077f = getweapon(#"ww_mega_barrel_fullauto_copycat_t9");
    level.var_baecdd4d = getweapon(#"ww_mega_barrel_fullauto_blazer_beam_t9");
    level.var_755f4867 = getweapon(#"ww_mega_barrel_fullauto_micro_missile_t9");
    level.var_91a2f9ee = getweapon(#"ww_mega_barrel_fullauto_diffusion_beam_t9_upgraded");
    level.var_54815fbf = getweapon(#"ww_mega_barrel_fullauto_copycat_t9_upgraded");
    level.var_fc203ca0 = getweapon(#"ww_mega_barrel_fullauto_blazer_beam_t9_upgraded");
    level.var_c7179b04 = getweapon(#"ww_mega_barrel_fullauto_micro_missile_t9_upgraded");
    level.var_1da41b83 = 0;
    level.var_b96c6e68 = 0;
    level.var_2bc85849 = 0;
    if (!isdefined(level.var_6423192e)) {
        level.var_6423192e = [];
    } else if (!isarray(level.var_6423192e)) {
        level.var_6423192e = array(level.var_6423192e);
    }
    level.var_6423192e[level.var_6423192e.size] = #"mega_barrel_modkit_blazer_beam_item_t9";
    if (!isdefined(level.var_6423192e)) {
        level.var_6423192e = [];
    } else if (!isarray(level.var_6423192e)) {
        level.var_6423192e = array(level.var_6423192e);
    }
    level.var_6423192e[level.var_6423192e.size] = #"mega_barrel_modkit_diffusion_beam_item_t9";
    if (!isdefined(level.var_6423192e)) {
        level.var_6423192e = [];
    } else if (!isarray(level.var_6423192e)) {
        level.var_6423192e = array(level.var_6423192e);
    }
    level.var_6423192e[level.var_6423192e.size] = #"mega_barrel_modkit_micro_missile_item_t9";
    if (!isdefined(level.var_91f71aa)) {
        level.var_91f71aa = [];
    } else if (!isarray(level.var_91f71aa)) {
        level.var_91f71aa = array(level.var_91f71aa);
    }
    level.var_91f71aa[#"mega_barrel_modkit_blazer_beam_item_t9"] = &function_6732b1b;
    level.var_91f71aa[#"mega_barrel_modkit_diffusion_beam_item_t9"] = &function_6732b1b;
    level.var_91f71aa[#"mega_barrel_modkit_micro_missile_item_t9"] = &function_6732b1b;
    callback::add_weapon_fired(level.var_40f9c873, &function_bd070069);
    callback::add_weapon_fired(level.var_2c70077f, &function_a58f5f81);
    callback::add_weapon_fired(level.var_baecdd4d, &function_381102dc);
    callback::add_weapon_fired(level.var_755f4867, &function_b5ca1483);
    callback::add_weapon_fired(level.var_91a2f9ee, &function_bd070069);
    callback::add_weapon_fired(level.var_54815fbf, &function_a58f5f81);
    callback::add_weapon_fired(level.var_fc203ca0, &function_381102dc);
    callback::add_weapon_fired(level.var_c7179b04, &function_b5ca1483);
    weaponobjects::function_e6400478(#"ww_mega_barrel_fullauto_micro_missile_t9", &function_c0543415, 1);
    weaponobjects::function_e6400478(#"ww_mega_barrel_fullauto_micro_missile_t9_upgraded", &function_c0543415, 1);
    callback::on_weapon_change(&function_11110983);
    callback::on_ai_killed(&function_425c8feb);
    callback::on_item_pickup(&on_item_pickup);
    callback::on_item_drop(&on_item_drop);
    callback::on_spawned(&on_player_spawned);
    callback::on_ai_spawned(&function_83d01300);
    function_711219e7();
    if (zm_utility::is_survival()) {
        level.var_1a4cc228[#"hash_7cba8a05511ceedf"] = [#"hash_49adea61f71924bf", #"hash_1798ecca7f98873d", #"hash_26f6708ef92a0eae", #"hash_1c8805fec5806efe", #"hash_4d95f42b33499eba", #"hash_6799427e5e6c417c", #"hash_11e4908180a964c", #"hash_1340313347e93335"];
        level.var_1a4cc228[#"hash_29771ab26cb78d9b"] = [#"hash_69143c727337ba1a", #"hash_299e8cfa6d75ffd4", #"hash_7d223eb036f4a31b", #"hash_11d7f39f088f3822", #"hash_5e074c09a3a31d97", #"hash_1c437f787033a2e5", #"hash_34d9e63476111b5d", #"hash_779daa809936d578"];
        level.var_1a4cc228[#"hash_46c917a1b5ed91e7"] = [#"hash_4729aed4cfa43476"];
        level.var_1a4cc228[#"hash_338eb4103e0ed797"] = [#"hash_59e40ffcdcfbffa6"];
        level.var_1a4cc228[#"hash_124b582ce08d78c0"] = [#"hash_149fa86a9c5d858c", #"hash_63e9d6f275dc720", #"hash_94674cb554826a9", #"hash_6b9e4c8e8e955c71", #"hash_75cfd69ce1d6f3dd", #"hash_33c0e923173d2b48", #"hash_53dbc62471a61f88", #"hash_4ece13caf46c00c7"];
        level.var_1a4cc228[#"hash_30e4941b102093c4"] = [#"hash_5c0dcc3f9d9e1ea5", #"hash_e8b647bb58521c1", #"hash_23492308d6911444", #"hash_5616978b668f07dc", #"hash_31713e12a88def10", #"hash_3e647996c0a4d6b9", #"hash_b35b3dcb7417075", #"hash_53dbc62471a61f88"];
        level.var_1a4cc228[#"hash_78215fa79f5557dc"] = [#"hash_4814b7b3c67568e3"];
        level.var_1a4cc228[#"hash_12a17ab3df5889eb"] = level.var_1a4cc228[#"hash_78215fa79f5557dc"];
        level.var_1a4cc228[#"hash_7a8b592728eec95d"] = [#"hash_2cb37314243526ec"];
        level.var_1a4cc228[#"spawner_zm_steiner_split_radiation_bomb"] = [#"hash_614e3d7d0b75a944"];
        level.var_1a4cc228[#"spawner_zm_steiner_split_radiation_blast"] = [#"hash_53c08317d48a0e49"];
        level.var_1a4cc228[#"hash_6904f5c7bef64405"] = [#"hash_5eafd160d077670d"];
        level.var_1a4cc228[#"hash_7f957e36b4f6160f"] = [#"hash_61df3be05096e9e2"];
        level.var_1a4cc228[#"hash_729b116cf9d044"] = [#"hash_78238b400ae08c28"];
    } else if (util::get_map_name() == "zm_platinum") {
        level.var_1a4cc228[#"spawner_bo5_zombie_zm_platinum"] = [#"hash_656d60e84740cf6b", #"hash_7f1bca93226fa0d6", #"hash_5508f5847f3dd438", #"hash_78fb681158a2a435"];
        level.var_1a4cc228[#"hash_23fa13756529654e"] = [#"hash_423228b7b3b79e43", #"hash_34bec5ddf4f376", #"hash_656d60e84740cf6b", #"hash_7f1bca93226fa0d6"];
        level.var_1a4cc228[#"hash_2cdfe23b16faf150"] = [#"hash_4729aed4cfa43476"];
        level.var_1a4cc228[#"hash_67195396007b8efc"] = [#"hash_59e40ffcdcfbffa6"];
        level.var_1a4cc228[#"spawner_bo5_zombie_zm_platinum_female"] = [#"hash_149fa86a9c5d858c", #"hash_63e9d6f275dc720", #"hash_94674cb554826a9", #"hash_b35b3dcb7417075", #"hash_75cfd69ce1d6f3dd", #"hash_33c0e923173d2b48"];
        level.var_1a4cc228[#"hash_517608365a182612"] = [#"hash_65c4a876c73aee27", #"hash_29b24e853bff328a", #"hash_7f1bca93226fa0d6", #"hash_7e8014d9564c6ed5", #"hash_15d9acb30e6d566c"];
        level.var_1a4cc228[#"hash_3263f276cf59dde6"] = [#"hash_65c4a876c73aee27"];
        level.var_1a4cc228[#"hash_3263f176cf59dc33"] = [#"hash_29b24e853bff328a"];
        level.var_1a4cc228[#"hash_3263f076cf59da80"] = [#"hash_15d9acb30e6d566c"];
        level.var_1a4cc228[#"hash_57861ea96aec0131"] = [#"hash_656d60e84740cf6b", #"hash_7b3bac29e8e3bf13", #"hash_35d84238103deb46", #"hash_1c8805fec5806efe", #"hash_7151a0027b3ff314", #"hash_78a973a6fb604cf", #"hash_2d07ee0d2dca46d9"];
        level.var_1a4cc228[#"hash_6355316ab3554d43"] = [#"hash_423228b7b3b79e43", #"hash_34bec5ddf4f376", #"hash_75cfd69ce1d6f3dd", #"hash_63e9d6f275dc720"];
    }
    /#
        level thread function_37597f29();
    #/
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0xd275c77, Offset: 0x14e8
// Size: 0xea62
function function_711219e7() {
    if (!isdefined(level.var_5500d01c)) {
        level.var_5500d01c = [];
    } else if (!isarray(level.var_5500d01c)) {
        level.var_5500d01c = array(level.var_5500d01c);
    }
    var_8fc0de4c = randomintrangeinclusive(0, 2);
    var_57e8c0dc = randomintrangeinclusive(1, 2);
    for (i = 0; i < 3; i++) {
        level.var_5500d01c[i] = (var_8fc0de4c + var_57e8c0dc * i) % 3;
    }
    level.var_cdd6eac8 = 0;
    if (!isdefined(level.var_233782ac)) {
        level.var_233782ac = [];
    } else if (!isarray(level.var_233782ac)) {
        level.var_233782ac = array(level.var_233782ac);
    }
    if (!isdefined(level.var_537bfd7f)) {
        level.var_537bfd7f = [];
    } else if (!isarray(level.var_537bfd7f)) {
        level.var_537bfd7f = array(level.var_537bfd7f);
    }
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0]);
    }
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0]);
    }
    if (!isdefined(level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = [];
    } else if (!isarray(level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = array(level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0]);
    }
    if (!isdefined(level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    if (!isdefined(level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = [];
    } else if (!isarray(level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = array(level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0]);
    }
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0].size] = #"hash_6b2cf794d6d0b7e3";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0].size] = #"hash_6b2cf694d6d0b630";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0].size] = #"hash_6b2cf994d6d0bb49";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0].size] = #"hash_6b2cf894d6d0b996";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0].size] = #"hash_6b2cfb94d6d0beaf";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0].size] = #"hash_796e1ba35baaee46";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0].size] = #"hash_796e1ca35baaeff9";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0].size] = #"hash_6bdd667e9ddd9b81";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0].size] = #"hash_7d2d3995de537b0c";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0].size] = #"hash_4dbd7eb12d25620f";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0].size] = #"hash_66d0c1ec56c7e9a";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0].size] = #"hash_6beba238bfafdf48";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0].size] = #"hash_6beba338bfafe0fb";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0].size] = #"hash_6beba438bfafe2ae";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0].size] = #"hash_6beba538bfafe461";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0].size] = #"hash_6beba638bfafe614";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1]);
    }
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1]);
    }
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    if (!isdefined(level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = [];
    } else if (!isarray(level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = array(level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1]);
    }
    if (!isdefined(level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = [];
    } else if (!isarray(level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = array(level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1]);
    }
    if (!isdefined(level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1].size] = #"hash_4a58633cc1da2e80";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1].size] = #"hash_4a58643cc1da3033";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1].size] = #"hash_4a58653cc1da31e6";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1].size] = #"hash_4a58663cc1da3399";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1].size] = #"hash_4a58673cc1da354c";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1].size] = #"hash_4d11a3b0e2fe8565";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1].size] = #"hash_595d13b0cd43f7c6";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1].size] = #"hash_5c6d1a62ea05adb";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1].size] = #"hash_7f140a720152141c";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1].size] = #"hash_46ef6b34a7d2fb81";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1].size] = #"hash_47da5f1770c889e7";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1].size] = #"hash_47da5e1770c88834";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1].size] = #"hash_47da611770c88d4d";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1].size] = #"hash_47da601770c88b9a";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1].size] = #"hash_47da5b1770c8831b";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2]);
    }
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2]);
    }
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2]);
    }
    if (!isdefined(level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = [];
    } else if (!isarray(level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = array(level.var_537bfd7f[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2]);
    }
    if (!isdefined(level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = [];
    } else if (!isarray(level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = array(level.var_537bfd7f[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2]);
    }
    if (!isdefined(level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = [];
    } else if (!isarray(level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = array(level.var_537bfd7f[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2]);
    }
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2].size] = #"hash_1d22f15727da2481";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2].size] = #"hash_1d22f05727da22ce";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2].size] = #"hash_1d22ef5727da211b";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2].size] = #"hash_1d22ee5727da1f68";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2].size] = #"hash_1d22f55727da2b4d";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2].size] = #"hash_6ea9d6def826001c";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2].size] = #"hash_60f11644c5e3289b";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2].size] = #"hash_afbff2fcad84306";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2].size] = #"hash_71a1cf354145a35d";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2].size] = #"hash_335a7e194dd64fe0";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2].size] = #"hash_c5b603c98c89172";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2].size] = #"hash_c5b613c98c89325";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2].size] = #"hash_c5b5e3c98c88e0c";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2].size] = #"hash_c5b5f3c98c88fbf";
    if (!isdefined(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = [];
    } else if (!isarray(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = array(level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2]);
    }
    level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2][level.var_233782ac[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2].size] = #"hash_c5b5c3c98c88aa6";
    if (!isdefined(level.var_9c177f41)) {
        level.var_9c177f41 = [];
    } else if (!isarray(level.var_9c177f41)) {
        level.var_9c177f41 = array(level.var_9c177f41);
    }
    if (!isdefined(level.var_3a591424)) {
        level.var_3a591424 = [];
    } else if (!isarray(level.var_3a591424)) {
        level.var_3a591424 = array(level.var_3a591424);
    }
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0]);
    }
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0]);
    }
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0]);
    }
    if (!isdefined(level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = [];
    } else if (!isarray(level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = array(level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 0]);
    }
    if (!isdefined(level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = [];
    } else if (!isarray(level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = array(level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0]);
    }
    if (!isdefined(level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    if (!isdefined(level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = [];
    } else if (!isarray(level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = array(level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0]);
    }
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0].size] = #"hash_1062072690b1ae1b";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0].size] = #"hash_1062062690b1ac68";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0].size] = #"hash_1062092690b1b181";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0].size] = #"hash_1062082690b1afce";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0].size] = #"hash_10620b2690b1b4e7";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0].size] = #"hash_10620a2690b1b334";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0].size] = #"hash_10620d2690b1b84d";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 0].size] = #"hash_10620c2690b1b69a";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0].size] = #"hash_4f73c86224af6397";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0].size] = #"hash_4f73c76224af61e4";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0].size] = #"hash_4f73ca6224af66fd";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0].size] = #"hash_4f73c96224af654a";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 0].size] = #"hash_4f73c46224af5ccb";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0].size] = #"hash_71c91350a7d759c1";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0].size] = #"hash_71c91250a7d7580e";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0].size] = #"hash_71c91150a7d7565b";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0].size] = #"hash_71c91050a7d754a8";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 0].size] = #"hash_71c91750a7d7608d";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0].size] = #"hash_43ff5377a08f39ed";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0].size] = #"hash_56f38d9acba8712";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0].size] = #"hash_1a9b1d94addfca87";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0].size] = #"hash_62fea08b1ac1c264";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 0].size] = #"hash_74a6893e57e2e0d9";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1]);
    }
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1]);
    }
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1]);
    }
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    if (!isdefined(level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = [];
    } else if (!isarray(level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = array(level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 1]);
    }
    if (!isdefined(level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = [];
    } else if (!isarray(level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = array(level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1]);
    }
    if (!isdefined(level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = [];
    } else if (!isarray(level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = array(level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1]);
    }
    if (!isdefined(level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1].size] = #"hash_77a5e6b362278b68";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1].size] = #"hash_77a5e7b362278d1b";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1].size] = #"hash_77a5e8b362278ece";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1].size] = #"hash_77a5e9b362279081";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1].size] = #"hash_77a5eab362279234";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1].size] = #"hash_77a5ebb3622793e7";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1].size] = #"hash_77a5ecb36227959a";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 1].size] = #"hash_77a5edb36227974d";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1].size] = #"hash_2c6d87126fcfa44c";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1].size] = #"hash_2c6d88126fcfa5ff";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1].size] = #"hash_2c6d89126fcfa7b2";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1].size] = #"hash_2c6d8a126fcfa965";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 1].size] = #"hash_2c6d83126fcf9d80";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1].size] = #"hash_332e6ecd63338f7e";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1].size] = #"hash_332e6fcd63339131";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1].size] = #"hash_332e6ccd63338c18";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1].size] = #"hash_332e6dcd63338dcb";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 1].size] = #"hash_332e72cd6333964a";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1].size] = #"hash_44445af5227c4ec2";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1].size] = #"hash_39a9710692e76151";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1].size] = #"hash_39a9700692e75f9e";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1].size] = #"hash_68572dbf21c0bb2c";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1].size] = #"hash_4fd0802230ae7a6b";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1].size] = #"hash_4fd07f2230ae78b8";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 1].size] = #"hash_719fcd4db8a3fe56";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2]);
    }
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2]);
    }
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2]);
    }
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2]);
    }
    if (!isdefined(level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = [];
    } else if (!isarray(level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = array(level.var_3a591424[#"ww_mega_barrel_fullauto_copycat_t9" + 2]);
    }
    if (!isdefined(level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = [];
    } else if (!isarray(level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = array(level.var_3a591424[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2]);
    }
    if (!isdefined(level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = [];
    } else if (!isarray(level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = array(level.var_3a591424[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2]);
    }
    if (!isdefined(level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = [];
    } else if (!isarray(level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = array(level.var_3a591424[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2]);
    }
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2].size] = #"hash_2d280c48b056dc59";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2].size] = #"hash_2d280b48b056daa6";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2].size] = #"hash_2d280a48b056d8f3";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2].size] = #"hash_2d280948b056d740";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2].size] = #"hash_2d281048b056e325";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2].size] = #"hash_2d280f48b056e172";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2].size] = #"hash_2d280e48b056dfbf";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_copycat_t9" + 2].size] = #"hash_2d280d48b056de0c";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2].size] = #"hash_3091e14997030c45";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2].size] = #"hash_3091e04997030a92";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2].size] = #"hash_3091df49970308df";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2].size] = #"hash_3091de499703072c";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_diffusion_beam_t9" + 2].size] = #"hash_3091dd4997030579";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2].size] = #"hash_7a8d570f91044c1b";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2].size] = #"hash_7a8d560f91044a68";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2].size] = #"hash_7a8d590f91044f81";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2].size] = #"hash_7a8d580f91044dce";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_blazer_beam_t9" + 2].size] = #"hash_7a8d5b0f910452e7";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2].size] = #"hash_68c33f3f7d737a27";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2].size] = #"hash_2b68abce736bcbd8";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2].size] = #"hash_3e9a5d9916fd26f5";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2].size] = #"hash_6036190db3297cbe";
    if (!isdefined(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = [];
    } else if (!isarray(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2])) {
        level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2] = array(level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2]);
    }
    level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2][level.var_9c177f41[#"ww_mega_barrel_fullauto_micro_missile_t9" + 2].size] = #"hash_42d82be7f7c772b3";
    if (!isdefined(level.var_e36f0de5)) {
        level.var_e36f0de5 = [];
    } else if (!isarray(level.var_e36f0de5)) {
        level.var_e36f0de5 = array(level.var_e36f0de5);
    }
    if (!isdefined(level.var_19e4b715)) {
        level.var_19e4b715 = [];
    } else if (!isarray(level.var_19e4b715)) {
        level.var_19e4b715 = array(level.var_19e4b715);
    }
    if (!isdefined(level.var_e36f0de5[0])) {
        level.var_e36f0de5[0] = [];
    } else if (!isarray(level.var_e36f0de5[0])) {
        level.var_e36f0de5[0] = array(level.var_e36f0de5[0]);
    }
    if (!isdefined(level.var_19e4b715[0])) {
        level.var_19e4b715[0] = [];
    } else if (!isarray(level.var_19e4b715[0])) {
        level.var_19e4b715[0] = array(level.var_19e4b715[0]);
    }
    if (!isdefined(level.var_e36f0de5[0])) {
        level.var_e36f0de5[0] = [];
    } else if (!isarray(level.var_e36f0de5[0])) {
        level.var_e36f0de5[0] = array(level.var_e36f0de5[0]);
    }
    level.var_e36f0de5[0][level.var_e36f0de5[0].size] = #"hash_5d7d0dadca7f2e58";
    if (!isdefined(level.var_e36f0de5[0])) {
        level.var_e36f0de5[0] = [];
    } else if (!isarray(level.var_e36f0de5[0])) {
        level.var_e36f0de5[0] = array(level.var_e36f0de5[0]);
    }
    level.var_e36f0de5[0][level.var_e36f0de5[0].size] = #"hash_5d7d0eadca7f300b";
    if (!isdefined(level.var_e36f0de5[0])) {
        level.var_e36f0de5[0] = [];
    } else if (!isarray(level.var_e36f0de5[0])) {
        level.var_e36f0de5[0] = array(level.var_e36f0de5[0]);
    }
    level.var_e36f0de5[0][level.var_e36f0de5[0].size] = #"hash_5d7d0fadca7f31be";
    if (!isdefined(level.var_e36f0de5[0])) {
        level.var_e36f0de5[0] = [];
    } else if (!isarray(level.var_e36f0de5[0])) {
        level.var_e36f0de5[0] = array(level.var_e36f0de5[0]);
    }
    level.var_e36f0de5[0][level.var_e36f0de5[0].size] = #"hash_5d7d10adca7f3371";
    if (!isdefined(level.var_e36f0de5[0])) {
        level.var_e36f0de5[0] = [];
    } else if (!isarray(level.var_e36f0de5[0])) {
        level.var_e36f0de5[0] = array(level.var_e36f0de5[0]);
    }
    level.var_e36f0de5[0][level.var_e36f0de5[0].size] = #"hash_5d7d11adca7f3524";
    if (!isdefined(level.var_e36f0de5[0])) {
        level.var_e36f0de5[0] = [];
    } else if (!isarray(level.var_e36f0de5[0])) {
        level.var_e36f0de5[0] = array(level.var_e36f0de5[0]);
    }
    level.var_e36f0de5[0][level.var_e36f0de5[0].size] = #"hash_5d7d12adca7f36d7";
    if (!isdefined(level.var_e36f0de5[1])) {
        level.var_e36f0de5[1] = [];
    } else if (!isarray(level.var_e36f0de5[1])) {
        level.var_e36f0de5[1] = array(level.var_e36f0de5[1]);
    }
    if (!isdefined(level.var_19e4b715[1])) {
        level.var_19e4b715[1] = [];
    } else if (!isarray(level.var_19e4b715[1])) {
        level.var_19e4b715[1] = array(level.var_19e4b715[1]);
    }
    if (!isdefined(level.var_e36f0de5[1])) {
        level.var_e36f0de5[1] = [];
    } else if (!isarray(level.var_e36f0de5[1])) {
        level.var_e36f0de5[1] = array(level.var_e36f0de5[1]);
    }
    level.var_e36f0de5[1][level.var_e36f0de5[1].size] = #"hash_60d6e0bfb8778877";
    if (!isdefined(level.var_e36f0de5[1])) {
        level.var_e36f0de5[1] = [];
    } else if (!isarray(level.var_e36f0de5[1])) {
        level.var_e36f0de5[1] = array(level.var_e36f0de5[1]);
    }
    level.var_e36f0de5[1][level.var_e36f0de5[1].size] = #"hash_60d6dfbfb87786c4";
    if (!isdefined(level.var_e36f0de5[1])) {
        level.var_e36f0de5[1] = [];
    } else if (!isarray(level.var_e36f0de5[1])) {
        level.var_e36f0de5[1] = array(level.var_e36f0de5[1]);
    }
    level.var_e36f0de5[1][level.var_e36f0de5[1].size] = #"hash_60d6e2bfb8778bdd";
    if (!isdefined(level.var_e36f0de5[1])) {
        level.var_e36f0de5[1] = [];
    } else if (!isarray(level.var_e36f0de5[1])) {
        level.var_e36f0de5[1] = array(level.var_e36f0de5[1]);
    }
    level.var_e36f0de5[1][level.var_e36f0de5[1].size] = #"hash_60d6e1bfb8778a2a";
    if (!isdefined(level.var_e36f0de5[1])) {
        level.var_e36f0de5[1] = [];
    } else if (!isarray(level.var_e36f0de5[1])) {
        level.var_e36f0de5[1] = array(level.var_e36f0de5[1]);
    }
    level.var_e36f0de5[1][level.var_e36f0de5[1].size] = #"hash_60d6dcbfb87781ab";
    if (!isdefined(level.var_e36f0de5[1])) {
        level.var_e36f0de5[1] = [];
    } else if (!isarray(level.var_e36f0de5[1])) {
        level.var_e36f0de5[1] = array(level.var_e36f0de5[1]);
    }
    level.var_e36f0de5[1][level.var_e36f0de5[1].size] = #"hash_60d6dbbfb8777ff8";
    if (!isdefined(level.var_e36f0de5[2])) {
        level.var_e36f0de5[2] = [];
    } else if (!isarray(level.var_e36f0de5[2])) {
        level.var_e36f0de5[2] = array(level.var_e36f0de5[2]);
    }
    if (!isdefined(level.var_19e4b715[2])) {
        level.var_19e4b715[2] = [];
    } else if (!isarray(level.var_19e4b715[2])) {
        level.var_19e4b715[2] = array(level.var_19e4b715[2]);
    }
    if (!isdefined(level.var_e36f0de5[2])) {
        level.var_e36f0de5[2] = [];
    } else if (!isarray(level.var_e36f0de5[2])) {
        level.var_e36f0de5[2] = array(level.var_e36f0de5[2]);
    }
    level.var_e36f0de5[2][level.var_e36f0de5[2].size] = #"hash_90fb27464917902";
    if (!isdefined(level.var_e36f0de5[2])) {
        level.var_e36f0de5[2] = [];
    } else if (!isarray(level.var_e36f0de5[2])) {
        level.var_e36f0de5[2] = array(level.var_e36f0de5[2]);
    }
    level.var_e36f0de5[2][level.var_e36f0de5[2].size] = #"hash_90fb37464917ab5";
    if (!isdefined(level.var_e36f0de5[2])) {
        level.var_e36f0de5[2] = [];
    } else if (!isarray(level.var_e36f0de5[2])) {
        level.var_e36f0de5[2] = array(level.var_e36f0de5[2]);
    }
    level.var_e36f0de5[2][level.var_e36f0de5[2].size] = #"hash_90fb0746491759c";
    if (!isdefined(level.var_e36f0de5[2])) {
        level.var_e36f0de5[2] = [];
    } else if (!isarray(level.var_e36f0de5[2])) {
        level.var_e36f0de5[2] = array(level.var_e36f0de5[2]);
    }
    level.var_e36f0de5[2][level.var_e36f0de5[2].size] = #"hash_90fb1746491774f";
    if (!isdefined(level.var_e36f0de5[2])) {
        level.var_e36f0de5[2] = [];
    } else if (!isarray(level.var_e36f0de5[2])) {
        level.var_e36f0de5[2] = array(level.var_e36f0de5[2]);
    }
    level.var_e36f0de5[2][level.var_e36f0de5[2].size] = #"hash_90fae7464917236";
    if (!isdefined(level.var_e36f0de5[2])) {
        level.var_e36f0de5[2] = [];
    } else if (!isarray(level.var_e36f0de5[2])) {
        level.var_e36f0de5[2] = array(level.var_e36f0de5[2]);
    }
    level.var_e36f0de5[2][level.var_e36f0de5[2].size] = #"hash_90faf74649173e9";
    if (!isdefined(level.var_8e82f3e)) {
        level.var_8e82f3e = [];
    } else if (!isarray(level.var_8e82f3e)) {
        level.var_8e82f3e = array(level.var_8e82f3e);
    }
    if (!isdefined(level.var_fb6ec30d)) {
        level.var_fb6ec30d = [];
    } else if (!isarray(level.var_fb6ec30d)) {
        level.var_fb6ec30d = array(level.var_fb6ec30d);
    }
    if (!isdefined(level.var_8e82f3e[0])) {
        level.var_8e82f3e[0] = [];
    } else if (!isarray(level.var_8e82f3e[0])) {
        level.var_8e82f3e[0] = array(level.var_8e82f3e[0]);
    }
    if (!isdefined(level.var_fb6ec30d[0])) {
        level.var_fb6ec30d[0] = [];
    } else if (!isarray(level.var_fb6ec30d[0])) {
        level.var_fb6ec30d[0] = array(level.var_fb6ec30d[0]);
    }
    if (!isdefined(level.var_8e82f3e[0])) {
        level.var_8e82f3e[0] = [];
    } else if (!isarray(level.var_8e82f3e[0])) {
        level.var_8e82f3e[0] = array(level.var_8e82f3e[0]);
    }
    level.var_8e82f3e[0][level.var_8e82f3e[0].size] = #"hash_2a6c95936173340c";
    if (!isdefined(level.var_8e82f3e[0])) {
        level.var_8e82f3e[0] = [];
    } else if (!isarray(level.var_8e82f3e[0])) {
        level.var_8e82f3e[0] = array(level.var_8e82f3e[0]);
    }
    level.var_8e82f3e[0][level.var_8e82f3e[0].size] = #"hash_2a6c9693617335bf";
    if (!isdefined(level.var_8e82f3e[0])) {
        level.var_8e82f3e[0] = [];
    } else if (!isarray(level.var_8e82f3e[0])) {
        level.var_8e82f3e[0] = array(level.var_8e82f3e[0]);
    }
    level.var_8e82f3e[0][level.var_8e82f3e[0].size] = #"hash_2a6c979361733772";
    if (!isdefined(level.var_8e82f3e[0])) {
        level.var_8e82f3e[0] = [];
    } else if (!isarray(level.var_8e82f3e[0])) {
        level.var_8e82f3e[0] = array(level.var_8e82f3e[0]);
    }
    level.var_8e82f3e[0][level.var_8e82f3e[0].size] = #"hash_2a6c989361733925";
    if (!isdefined(level.var_8e82f3e[0])) {
        level.var_8e82f3e[0] = [];
    } else if (!isarray(level.var_8e82f3e[0])) {
        level.var_8e82f3e[0] = array(level.var_8e82f3e[0]);
    }
    level.var_8e82f3e[0][level.var_8e82f3e[0].size] = #"hash_2a6c919361732d40";
    if (!isdefined(level.var_8e82f3e[1])) {
        level.var_8e82f3e[1] = [];
    } else if (!isarray(level.var_8e82f3e[1])) {
        level.var_8e82f3e[1] = array(level.var_8e82f3e[1]);
    }
    if (!isdefined(level.var_fb6ec30d[1])) {
        level.var_fb6ec30d[1] = [];
    } else if (!isarray(level.var_fb6ec30d[1])) {
        level.var_fb6ec30d[1] = array(level.var_fb6ec30d[1]);
    }
    if (!isdefined(level.var_8e82f3e[1])) {
        level.var_8e82f3e[1] = [];
    } else if (!isarray(level.var_8e82f3e[1])) {
        level.var_8e82f3e[1] = array(level.var_8e82f3e[1]);
    }
    level.var_8e82f3e[1][level.var_8e82f3e[1].size] = #"hash_18951e1b7ad70df3";
    if (!isdefined(level.var_8e82f3e[1])) {
        level.var_8e82f3e[1] = [];
    } else if (!isarray(level.var_8e82f3e[1])) {
        level.var_8e82f3e[1] = array(level.var_8e82f3e[1]);
    }
    level.var_8e82f3e[1][level.var_8e82f3e[1].size] = #"hash_18951d1b7ad70c40";
    if (!isdefined(level.var_8e82f3e[1])) {
        level.var_8e82f3e[1] = [];
    } else if (!isarray(level.var_8e82f3e[1])) {
        level.var_8e82f3e[1] = array(level.var_8e82f3e[1]);
    }
    level.var_8e82f3e[1][level.var_8e82f3e[1].size] = #"hash_1895201b7ad71159";
    if (!isdefined(level.var_8e82f3e[1])) {
        level.var_8e82f3e[1] = [];
    } else if (!isarray(level.var_8e82f3e[1])) {
        level.var_8e82f3e[1] = array(level.var_8e82f3e[1]);
    }
    level.var_8e82f3e[1][level.var_8e82f3e[1].size] = #"hash_18951f1b7ad70fa6";
    if (!isdefined(level.var_8e82f3e[1])) {
        level.var_8e82f3e[1] = [];
    } else if (!isarray(level.var_8e82f3e[1])) {
        level.var_8e82f3e[1] = array(level.var_8e82f3e[1]);
    }
    level.var_8e82f3e[1][level.var_8e82f3e[1].size] = #"hash_1895221b7ad714bf";
    if (!isdefined(level.var_8e82f3e[2])) {
        level.var_8e82f3e[2] = [];
    } else if (!isarray(level.var_8e82f3e[2])) {
        level.var_8e82f3e[2] = array(level.var_8e82f3e[2]);
    }
    if (!isdefined(level.var_fb6ec30d[2])) {
        level.var_fb6ec30d[2] = [];
    } else if (!isarray(level.var_fb6ec30d[2])) {
        level.var_fb6ec30d[2] = array(level.var_fb6ec30d[2]);
    }
    if (!isdefined(level.var_8e82f3e[2])) {
        level.var_8e82f3e[2] = [];
    } else if (!isarray(level.var_8e82f3e[2])) {
        level.var_8e82f3e[2] = array(level.var_8e82f3e[2]);
    }
    level.var_8e82f3e[2][level.var_8e82f3e[2].size] = #"hash_7ed88f4ca2b83e46";
    if (!isdefined(level.var_8e82f3e[2])) {
        level.var_8e82f3e[2] = [];
    } else if (!isarray(level.var_8e82f3e[2])) {
        level.var_8e82f3e[2] = array(level.var_8e82f3e[2]);
    }
    level.var_8e82f3e[2][level.var_8e82f3e[2].size] = #"hash_7ed8904ca2b83ff9";
    if (!isdefined(level.var_8e82f3e[2])) {
        level.var_8e82f3e[2] = [];
    } else if (!isarray(level.var_8e82f3e[2])) {
        level.var_8e82f3e[2] = array(level.var_8e82f3e[2]);
    }
    level.var_8e82f3e[2][level.var_8e82f3e[2].size] = #"hash_7ed88d4ca2b83ae0";
    if (!isdefined(level.var_8e82f3e[2])) {
        level.var_8e82f3e[2] = [];
    } else if (!isarray(level.var_8e82f3e[2])) {
        level.var_8e82f3e[2] = array(level.var_8e82f3e[2]);
    }
    level.var_8e82f3e[2][level.var_8e82f3e[2].size] = #"hash_7ed88e4ca2b83c93";
    if (!isdefined(level.var_8e82f3e[2])) {
        level.var_8e82f3e[2] = [];
    } else if (!isarray(level.var_8e82f3e[2])) {
        level.var_8e82f3e[2] = array(level.var_8e82f3e[2]);
    }
    level.var_8e82f3e[2][level.var_8e82f3e[2].size] = #"hash_7ed8934ca2b84512";
    if (!isdefined(level.var_653e2f6e)) {
        level.var_653e2f6e = [];
    } else if (!isarray(level.var_653e2f6e)) {
        level.var_653e2f6e = array(level.var_653e2f6e);
    }
    if (!isdefined(level.var_5bf82a67)) {
        level.var_5bf82a67 = [];
    } else if (!isarray(level.var_5bf82a67)) {
        level.var_5bf82a67 = array(level.var_5bf82a67);
    }
    if (!isdefined(level.var_653e2f6e[0])) {
        level.var_653e2f6e[0] = [];
    } else if (!isarray(level.var_653e2f6e[0])) {
        level.var_653e2f6e[0] = array(level.var_653e2f6e[0]);
    }
    if (!isdefined(level.var_5bf82a67[0])) {
        level.var_5bf82a67[0] = [];
    } else if (!isarray(level.var_5bf82a67[0])) {
        level.var_5bf82a67[0] = array(level.var_5bf82a67[0]);
    }
    if (!isdefined(level.var_653e2f6e[0])) {
        level.var_653e2f6e[0] = [];
    } else if (!isarray(level.var_653e2f6e[0])) {
        level.var_653e2f6e[0] = array(level.var_653e2f6e[0]);
    }
    level.var_653e2f6e[0][level.var_653e2f6e[0].size] = #"hash_1f2ae33cab03220";
    if (!isdefined(level.var_653e2f6e[0])) {
        level.var_653e2f6e[0] = [];
    } else if (!isarray(level.var_653e2f6e[0])) {
        level.var_653e2f6e[0] = array(level.var_653e2f6e[0]);
    }
    level.var_653e2f6e[0][level.var_653e2f6e[0].size] = #"hash_6fbc8aca09cc6e8f";
    if (!isdefined(level.var_653e2f6e[0])) {
        level.var_653e2f6e[0] = [];
    } else if (!isarray(level.var_653e2f6e[0])) {
        level.var_653e2f6e[0] = array(level.var_653e2f6e[0]);
    }
    level.var_653e2f6e[0][level.var_653e2f6e[0].size] = #"hash_286c1837a2138b1a";
    if (!isdefined(level.var_653e2f6e[0])) {
        level.var_653e2f6e[0] = [];
    } else if (!isarray(level.var_653e2f6e[0])) {
        level.var_653e2f6e[0] = array(level.var_653e2f6e[0]);
    }
    level.var_653e2f6e[0][level.var_653e2f6e[0].size] = #"hash_ddc72977a84a801";
    if (!isdefined(level.var_653e2f6e[0])) {
        level.var_653e2f6e[0] = [];
    } else if (!isarray(level.var_653e2f6e[0])) {
        level.var_653e2f6e[0] = array(level.var_653e2f6e[0]);
    }
    level.var_653e2f6e[0][level.var_653e2f6e[0].size] = #"hash_1f2c45aebafa878c";
    if (!isdefined(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = [];
    } else if (!isarray(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = array(level.var_653e2f6e[1]);
    }
    if (!isdefined(level.var_5bf82a67[1])) {
        level.var_5bf82a67[1] = [];
    } else if (!isarray(level.var_5bf82a67[1])) {
        level.var_5bf82a67[1] = array(level.var_5bf82a67[1]);
    }
    if (!isdefined(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = [];
    } else if (!isarray(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = array(level.var_653e2f6e[1]);
    }
    level.var_653e2f6e[1][level.var_653e2f6e[1].size] = #"hash_5728619ce8efc607";
    if (!isdefined(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = [];
    } else if (!isarray(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = array(level.var_653e2f6e[1]);
    }
    level.var_653e2f6e[1][level.var_653e2f6e[1].size] = #"hash_1ed44f9b59ad190c";
    if (!isdefined(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = [];
    } else if (!isarray(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = array(level.var_653e2f6e[1]);
    }
    level.var_653e2f6e[1][level.var_653e2f6e[1].size] = #"hash_48d90895e07123b1";
    if (!isdefined(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = [];
    } else if (!isarray(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = array(level.var_653e2f6e[1]);
    }
    level.var_653e2f6e[1][level.var_653e2f6e[1].size] = #"hash_48d90795e07121fe";
    if (!isdefined(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = [];
    } else if (!isarray(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = array(level.var_653e2f6e[1]);
    }
    level.var_653e2f6e[1][level.var_653e2f6e[1].size] = #"hash_48d90695e071204b";
    if (!isdefined(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = [];
    } else if (!isarray(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = array(level.var_653e2f6e[1]);
    }
    level.var_653e2f6e[1][level.var_653e2f6e[1].size] = #"hash_2daea1afb8e9e236";
    if (!isdefined(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = [];
    } else if (!isarray(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = array(level.var_653e2f6e[1]);
    }
    level.var_653e2f6e[1][level.var_653e2f6e[1].size] = #"hash_78c8076d3abb12cb";
    if (!isdefined(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = [];
    } else if (!isarray(level.var_653e2f6e[1])) {
        level.var_653e2f6e[1] = array(level.var_653e2f6e[1]);
    }
    level.var_653e2f6e[1][level.var_653e2f6e[1].size] = #"hash_78c8066d3abb1118";
    if (!isdefined(level.var_653e2f6e[2])) {
        level.var_653e2f6e[2] = [];
    } else if (!isarray(level.var_653e2f6e[2])) {
        level.var_653e2f6e[2] = array(level.var_653e2f6e[2]);
    }
    if (!isdefined(level.var_5bf82a67[2])) {
        level.var_5bf82a67[2] = [];
    } else if (!isarray(level.var_5bf82a67[2])) {
        level.var_5bf82a67[2] = array(level.var_5bf82a67[2]);
    }
    if (!isdefined(level.var_653e2f6e[2])) {
        level.var_653e2f6e[2] = [];
    } else if (!isarray(level.var_653e2f6e[2])) {
        level.var_653e2f6e[2] = array(level.var_653e2f6e[2]);
    }
    level.var_653e2f6e[2][level.var_653e2f6e[2].size] = #"hash_363212fd163401aa";
    if (!isdefined(level.var_653e2f6e[2])) {
        level.var_653e2f6e[2] = [];
    } else if (!isarray(level.var_653e2f6e[2])) {
        level.var_653e2f6e[2] = array(level.var_653e2f6e[2]);
    }
    level.var_653e2f6e[2][level.var_653e2f6e[2].size] = #"hash_363213fd1634035d";
    if (!isdefined(level.var_653e2f6e[2])) {
        level.var_653e2f6e[2] = [];
    } else if (!isarray(level.var_653e2f6e[2])) {
        level.var_653e2f6e[2] = array(level.var_653e2f6e[2]);
    }
    level.var_653e2f6e[2][level.var_653e2f6e[2].size] = #"hash_4933d5263971f8bd";
    if (!isdefined(level.var_653e2f6e[2])) {
        level.var_653e2f6e[2] = [];
    } else if (!isarray(level.var_653e2f6e[2])) {
        level.var_653e2f6e[2] = array(level.var_653e2f6e[2]);
    }
    level.var_653e2f6e[2][level.var_653e2f6e[2].size] = #"hash_484f16ccbf147f40";
    if (!isdefined(level.var_653e2f6e[2])) {
        level.var_653e2f6e[2] = [];
    } else if (!isarray(level.var_653e2f6e[2])) {
        level.var_653e2f6e[2] = array(level.var_653e2f6e[2]);
    }
    level.var_653e2f6e[2][level.var_653e2f6e[2].size] = #"hash_5e0bb6e641fec7fb";
    if (!isdefined(level.var_653e2f6e[2])) {
        level.var_653e2f6e[2] = [];
    } else if (!isarray(level.var_653e2f6e[2])) {
        level.var_653e2f6e[2] = array(level.var_653e2f6e[2]);
    }
    level.var_653e2f6e[2][level.var_653e2f6e[2].size] = #"hash_739e4064ea876266";
    if (!isdefined(level.var_522398fe)) {
        level.var_522398fe = [];
    } else if (!isarray(level.var_522398fe)) {
        level.var_522398fe = array(level.var_522398fe);
    }
    if (!isdefined(level.var_691e2f88)) {
        level.var_691e2f88 = [];
    } else if (!isarray(level.var_691e2f88)) {
        level.var_691e2f88 = array(level.var_691e2f88);
    }
    if (!isdefined(level.var_522398fe[0])) {
        level.var_522398fe[0] = [];
    } else if (!isarray(level.var_522398fe[0])) {
        level.var_522398fe[0] = array(level.var_522398fe[0]);
    }
    if (!isdefined(level.var_691e2f88[0])) {
        level.var_691e2f88[0] = [];
    } else if (!isarray(level.var_691e2f88[0])) {
        level.var_691e2f88[0] = array(level.var_691e2f88[0]);
    }
    if (!isdefined(level.var_522398fe[0])) {
        level.var_522398fe[0] = [];
    } else if (!isarray(level.var_522398fe[0])) {
        level.var_522398fe[0] = array(level.var_522398fe[0]);
    }
    level.var_522398fe[0][level.var_522398fe[0].size] = #"hash_5d5e133a87537c96";
    if (!isdefined(level.var_522398fe[0])) {
        level.var_522398fe[0] = [];
    } else if (!isarray(level.var_522398fe[0])) {
        level.var_522398fe[0] = array(level.var_522398fe[0]);
    }
    level.var_522398fe[0][level.var_522398fe[0].size] = #"hash_5d5e143a87537e49";
    if (!isdefined(level.var_522398fe[0])) {
        level.var_522398fe[0] = [];
    } else if (!isarray(level.var_522398fe[0])) {
        level.var_522398fe[0] = array(level.var_522398fe[0]);
    }
    level.var_522398fe[0][level.var_522398fe[0].size] = #"hash_5d5e113a87537930";
    if (!isdefined(level.var_522398fe[0])) {
        level.var_522398fe[0] = [];
    } else if (!isarray(level.var_522398fe[0])) {
        level.var_522398fe[0] = array(level.var_522398fe[0]);
    }
    level.var_522398fe[0][level.var_522398fe[0].size] = #"hash_5d5e123a87537ae3";
    if (!isdefined(level.var_522398fe[0])) {
        level.var_522398fe[0] = [];
    } else if (!isarray(level.var_522398fe[0])) {
        level.var_522398fe[0] = array(level.var_522398fe[0]);
    }
    level.var_522398fe[0][level.var_522398fe[0].size] = #"hash_5d5e173a87538362";
    if (!isdefined(level.var_522398fe[1])) {
        level.var_522398fe[1] = [];
    } else if (!isarray(level.var_522398fe[1])) {
        level.var_522398fe[1] = array(level.var_522398fe[1]);
    }
    if (!isdefined(level.var_691e2f88[1])) {
        level.var_691e2f88[1] = [];
    } else if (!isarray(level.var_691e2f88[1])) {
        level.var_691e2f88[1] = array(level.var_691e2f88[1]);
    }
    if (!isdefined(level.var_522398fe[1])) {
        level.var_522398fe[1] = [];
    } else if (!isarray(level.var_522398fe[1])) {
        level.var_522398fe[1] = array(level.var_522398fe[1]);
    }
    level.var_522398fe[1][level.var_522398fe[1].size] = #"hash_694eb394dec24cd";
    if (!isdefined(level.var_522398fe[1])) {
        level.var_522398fe[1] = [];
    } else if (!isarray(level.var_522398fe[1])) {
        level.var_522398fe[1] = array(level.var_522398fe[1]);
    }
    level.var_522398fe[1][level.var_522398fe[1].size] = #"hash_694ea394dec231a";
    if (!isdefined(level.var_522398fe[1])) {
        level.var_522398fe[1] = [];
    } else if (!isarray(level.var_522398fe[1])) {
        level.var_522398fe[1] = array(level.var_522398fe[1]);
    }
    level.var_522398fe[1][level.var_522398fe[1].size] = #"hash_694e9394dec2167";
    if (!isdefined(level.var_522398fe[1])) {
        level.var_522398fe[1] = [];
    } else if (!isarray(level.var_522398fe[1])) {
        level.var_522398fe[1] = array(level.var_522398fe[1]);
    }
    level.var_522398fe[1][level.var_522398fe[1].size] = #"hash_694e8394dec1fb4";
    if (!isdefined(level.var_522398fe[1])) {
        level.var_522398fe[1] = [];
    } else if (!isarray(level.var_522398fe[1])) {
        level.var_522398fe[1] = array(level.var_522398fe[1]);
    }
    level.var_522398fe[1][level.var_522398fe[1].size] = #"hash_694e7394dec1e01";
    if (!isdefined(level.var_522398fe[2])) {
        level.var_522398fe[2] = [];
    } else if (!isarray(level.var_522398fe[2])) {
        level.var_522398fe[2] = array(level.var_522398fe[2]);
    }
    if (!isdefined(level.var_691e2f88[2])) {
        level.var_691e2f88[2] = [];
    } else if (!isarray(level.var_691e2f88[2])) {
        level.var_691e2f88[2] = array(level.var_691e2f88[2]);
    }
    if (!isdefined(level.var_522398fe[2])) {
        level.var_522398fe[2] = [];
    } else if (!isarray(level.var_522398fe[2])) {
        level.var_522398fe[2] = array(level.var_522398fe[2]);
    }
    level.var_522398fe[2][level.var_522398fe[2].size] = #"hash_71743f2e72dfd1ac";
    if (!isdefined(level.var_522398fe[2])) {
        level.var_522398fe[2] = [];
    } else if (!isarray(level.var_522398fe[2])) {
        level.var_522398fe[2] = array(level.var_522398fe[2]);
    }
    level.var_522398fe[2][level.var_522398fe[2].size] = #"hash_7174402e72dfd35f";
    if (!isdefined(level.var_522398fe[2])) {
        level.var_522398fe[2] = [];
    } else if (!isarray(level.var_522398fe[2])) {
        level.var_522398fe[2] = array(level.var_522398fe[2]);
    }
    level.var_522398fe[2][level.var_522398fe[2].size] = #"hash_7174412e72dfd512";
    if (!isdefined(level.var_522398fe[2])) {
        level.var_522398fe[2] = [];
    } else if (!isarray(level.var_522398fe[2])) {
        level.var_522398fe[2] = array(level.var_522398fe[2]);
    }
    level.var_522398fe[2][level.var_522398fe[2].size] = #"hash_7174422e72dfd6c5";
    if (!isdefined(level.var_522398fe[2])) {
        level.var_522398fe[2] = [];
    } else if (!isarray(level.var_522398fe[2])) {
        level.var_522398fe[2] = array(level.var_522398fe[2]);
    }
    level.var_522398fe[2][level.var_522398fe[2].size] = #"hash_71743b2e72dfcae0";
    if (!isdefined(level.var_9d5f03e9)) {
        level.var_9d5f03e9 = [];
    } else if (!isarray(level.var_9d5f03e9)) {
        level.var_9d5f03e9 = array(level.var_9d5f03e9);
    }
    if (!isdefined(level.var_6bd02b68)) {
        level.var_6bd02b68 = [];
    } else if (!isarray(level.var_6bd02b68)) {
        level.var_6bd02b68 = array(level.var_6bd02b68);
    }
    if (!isdefined(level.var_9d5f03e9[0])) {
        level.var_9d5f03e9[0] = [];
    } else if (!isarray(level.var_9d5f03e9[0])) {
        level.var_9d5f03e9[0] = array(level.var_9d5f03e9[0]);
    }
    if (!isdefined(level.var_6bd02b68[0])) {
        level.var_6bd02b68[0] = [];
    } else if (!isarray(level.var_6bd02b68[0])) {
        level.var_6bd02b68[0] = array(level.var_6bd02b68[0]);
    }
    if (!isdefined(level.var_9d5f03e9[0])) {
        level.var_9d5f03e9[0] = [];
    } else if (!isarray(level.var_9d5f03e9[0])) {
        level.var_9d5f03e9[0] = array(level.var_9d5f03e9[0]);
    }
    level.var_9d5f03e9[0][level.var_9d5f03e9[0].size] = #"hash_192f5d9edded0c28";
    if (!isdefined(level.var_9d5f03e9[0])) {
        level.var_9d5f03e9[0] = [];
    } else if (!isarray(level.var_9d5f03e9[0])) {
        level.var_9d5f03e9[0] = array(level.var_9d5f03e9[0]);
    }
    level.var_9d5f03e9[0][level.var_9d5f03e9[0].size] = #"hash_192f5e9edded0ddb";
    if (!isdefined(level.var_9d5f03e9[0])) {
        level.var_9d5f03e9[0] = [];
    } else if (!isarray(level.var_9d5f03e9[0])) {
        level.var_9d5f03e9[0] = array(level.var_9d5f03e9[0]);
    }
    level.var_9d5f03e9[0][level.var_9d5f03e9[0].size] = #"hash_192f5f9edded0f8e";
    if (!isdefined(level.var_9d5f03e9[0])) {
        level.var_9d5f03e9[0] = [];
    } else if (!isarray(level.var_9d5f03e9[0])) {
        level.var_9d5f03e9[0] = array(level.var_9d5f03e9[0]);
    }
    level.var_9d5f03e9[0][level.var_9d5f03e9[0].size] = #"hash_192f609edded1141";
    if (!isdefined(level.var_9d5f03e9[0])) {
        level.var_9d5f03e9[0] = [];
    } else if (!isarray(level.var_9d5f03e9[0])) {
        level.var_9d5f03e9[0] = array(level.var_9d5f03e9[0]);
    }
    level.var_9d5f03e9[0][level.var_9d5f03e9[0].size] = #"hash_192f619edded12f4";
    if (!isdefined(level.var_9d5f03e9[1])) {
        level.var_9d5f03e9[1] = [];
    } else if (!isarray(level.var_9d5f03e9[1])) {
        level.var_9d5f03e9[1] = array(level.var_9d5f03e9[1]);
    }
    if (!isdefined(level.var_6bd02b68[1])) {
        level.var_6bd02b68[1] = [];
    } else if (!isarray(level.var_6bd02b68[1])) {
        level.var_6bd02b68[1] = array(level.var_6bd02b68[1]);
    }
    if (!isdefined(level.var_9d5f03e9[1])) {
        level.var_9d5f03e9[1] = [];
    } else if (!isarray(level.var_9d5f03e9[1])) {
        level.var_9d5f03e9[1] = array(level.var_9d5f03e9[1]);
    }
    level.var_9d5f03e9[1][level.var_9d5f03e9[1].size] = #"hash_55ff6fe5d0180c47";
    if (!isdefined(level.var_9d5f03e9[1])) {
        level.var_9d5f03e9[1] = [];
    } else if (!isarray(level.var_9d5f03e9[1])) {
        level.var_9d5f03e9[1] = array(level.var_9d5f03e9[1]);
    }
    level.var_9d5f03e9[1][level.var_9d5f03e9[1].size] = #"hash_55ff6ee5d0180a94";
    if (!isdefined(level.var_9d5f03e9[1])) {
        level.var_9d5f03e9[1] = [];
    } else if (!isarray(level.var_9d5f03e9[1])) {
        level.var_9d5f03e9[1] = array(level.var_9d5f03e9[1]);
    }
    level.var_9d5f03e9[1][level.var_9d5f03e9[1].size] = #"hash_55ff71e5d0180fad";
    if (!isdefined(level.var_9d5f03e9[1])) {
        level.var_9d5f03e9[1] = [];
    } else if (!isarray(level.var_9d5f03e9[1])) {
        level.var_9d5f03e9[1] = array(level.var_9d5f03e9[1]);
    }
    level.var_9d5f03e9[1][level.var_9d5f03e9[1].size] = #"hash_55ff70e5d0180dfa";
    if (!isdefined(level.var_9d5f03e9[1])) {
        level.var_9d5f03e9[1] = [];
    } else if (!isarray(level.var_9d5f03e9[1])) {
        level.var_9d5f03e9[1] = array(level.var_9d5f03e9[1]);
    }
    level.var_9d5f03e9[1][level.var_9d5f03e9[1].size] = #"hash_55ff6be5d018057b";
    if (!isdefined(level.var_9d5f03e9[2])) {
        level.var_9d5f03e9[2] = [];
    } else if (!isarray(level.var_9d5f03e9[2])) {
        level.var_9d5f03e9[2] = array(level.var_9d5f03e9[2]);
    }
    if (!isdefined(level.var_6bd02b68[2])) {
        level.var_6bd02b68[2] = [];
    } else if (!isarray(level.var_6bd02b68[2])) {
        level.var_6bd02b68[2] = array(level.var_6bd02b68[2]);
    }
    if (!isdefined(level.var_9d5f03e9[2])) {
        level.var_9d5f03e9[2] = [];
    } else if (!isarray(level.var_9d5f03e9[2])) {
        level.var_9d5f03e9[2] = array(level.var_9d5f03e9[2]);
    }
    level.var_9d5f03e9[2][level.var_9d5f03e9[2].size] = #"hash_79fd238bdb5617d2";
    if (!isdefined(level.var_9d5f03e9[2])) {
        level.var_9d5f03e9[2] = [];
    } else if (!isarray(level.var_9d5f03e9[2])) {
        level.var_9d5f03e9[2] = array(level.var_9d5f03e9[2]);
    }
    level.var_9d5f03e9[2][level.var_9d5f03e9[2].size] = #"hash_79fd248bdb561985";
    if (!isdefined(level.var_9d5f03e9[2])) {
        level.var_9d5f03e9[2] = [];
    } else if (!isarray(level.var_9d5f03e9[2])) {
        level.var_9d5f03e9[2] = array(level.var_9d5f03e9[2]);
    }
    level.var_9d5f03e9[2][level.var_9d5f03e9[2].size] = #"hash_79fd218bdb56146c";
    if (!isdefined(level.var_9d5f03e9[2])) {
        level.var_9d5f03e9[2] = [];
    } else if (!isarray(level.var_9d5f03e9[2])) {
        level.var_9d5f03e9[2] = array(level.var_9d5f03e9[2]);
    }
    level.var_9d5f03e9[2][level.var_9d5f03e9[2].size] = #"hash_79fd228bdb56161f";
    if (!isdefined(level.var_9d5f03e9[2])) {
        level.var_9d5f03e9[2] = [];
    } else if (!isarray(level.var_9d5f03e9[2])) {
        level.var_9d5f03e9[2] = array(level.var_9d5f03e9[2]);
    }
    level.var_9d5f03e9[2][level.var_9d5f03e9[2].size] = #"hash_79fd1f8bdb561106";
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0xf19619f1, Offset: 0xff58
// Size: 0x6e
function function_e0c4e722() {
    if (level.var_cdd6eac8 >= 3) {
        self.var_23178d00 = randomintrangeinclusive(0, 2);
        return;
    }
    level.var_cdd6eac8++;
    self.var_23178d00 = level.var_5500d01c[level.var_cdd6eac8 - 1];
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0xf3063cb8, Offset: 0xffd0
// Size: 0x1c
function function_d0aeb094() {
    return isdefined(self.var_23178d00) ? self.var_23178d00 : 0;
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0xd10876dd, Offset: 0xfff8
// Size: 0x160
function mega_barrel_watch_reload() {
    self endon(#"death");
    var_17b7891d = "4a3a2e03173499cc" + "mega_barrel_watch_reload";
    self notify(var_17b7891d);
    self endon(var_17b7891d);
    while (true) {
        result = self waittill(#"reload_start");
        var_21e583b2 = self getcurrentweapon();
        if (function_3efc58e4(var_21e583b2)) {
            if (math::cointoss(15)) {
                character = self function_d0aeb094();
                if (level.var_fb6ec30d[character].size == 0) {
                    level.var_fb6ec30d[character] = arraycopy(level.var_8e82f3e[character]);
                }
                self thread function_1340d9d6(array::function_a3b0f814(level.var_fb6ec30d[character]));
            }
        }
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0x2c53ad62, Offset: 0x10160
// Size: 0xb8
function function_ea836a5d() {
    if (!isdefined(level.var_1a4cc228[self.aitype])) {
        return false;
    }
    self function_f9b43587();
    entitynum = self getentitynumber();
    var_6f4262ed = level.var_1a4cc228[self.aitype];
    self setmodel(var_6f4262ed[entitynum % var_6f4262ed.size]);
    if (isdefined(self.gib_state)) {
        gibserverutils::function_96bedd91(self);
    }
    return true;
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0xd488d3a6, Offset: 0x10220
// Size: 0x94
function function_5a2447b1(time) {
    result = self waittilltimeout(time, #"actor_corpse", #"death");
    waittillframeend();
    if (isdefined(result.corpse)) {
        result.corpse delete();
        return;
    }
    if (isdefined(self)) {
        self deletedelay();
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x943ca52a, Offset: 0x102c0
// Size: 0x11c
function function_6732b1b(*item) {
    if (function_3efc58e4(self namespace_a0d533d1::function_2b83d3ff(self item_inventory::function_2e711614(17 + 1)))) {
        return 1;
    }
    if (function_3efc58e4(self namespace_a0d533d1::function_2b83d3ff(self item_inventory::function_2e711614(17 + 1 + 8 + 1)))) {
        return 1;
    }
    if (function_3efc58e4(self namespace_a0d533d1::function_2b83d3ff(self item_inventory::function_2e711614(17 + 1 + 8 + 1 + 8 + 1)))) {
        return 1;
    }
    return 0;
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x19bea34, Offset: 0x103e8
// Size: 0x22
function function_c0543415(watcher) {
    watcher.onspawn = &function_f2346f03;
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 2, eflags: 0x2 linked
// Checksum 0xdd845b40, Offset: 0x10418
// Size: 0x19c
function function_f2346f03(*watcher, *player) {
    waitresult = self waittill(#"projectile_impact_explode", #"explode", #"death");
    damage_pos = self.origin;
    attacker = self.owner;
    weapon = self.weapon;
    if (weapon.name === #"ww_mega_barrel_fullauto_micro_missile_t9_upgraded") {
        var_ce734d05 = 64;
        n_damage_max = 3250;
        var_e781159f = 2750;
    } else {
        var_ce734d05 = 64;
        n_damage_max = 2250;
        var_e781159f = 1750;
    }
    for (i = 0; i < 4; i++) {
        radiusdamage(damage_pos + (randomfloatrange(-15, 15), randomfloatrange(-15, 15), randomfloatrange(-15, 15)), var_ce734d05, n_damage_max, var_e781159f, attacker, "MOD_EXPLOSIVE", weapon);
        wait(0.1);
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x6 linked
// Checksum 0xa36e07ff, Offset: 0x105c0
// Size: 0x304
function private postinit() {
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_copycat_t9", #"ww_mega_barrel_fullauto_copycat_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_copycat_t9", #"ww_mega_barrel_fullauto_diffusion_beam_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_copycat_t9", #"ww_mega_barrel_fullauto_blazer_beam_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_copycat_t9", #"ww_mega_barrel_fullauto_micro_missile_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_diffusion_beam_t9", #"ww_mega_barrel_fullauto_copycat_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_diffusion_beam_t9", #"ww_mega_barrel_fullauto_diffusion_beam_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_diffusion_beam_t9", #"ww_mega_barrel_fullauto_blazer_beam_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_diffusion_beam_t9", #"ww_mega_barrel_fullauto_micro_missile_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_blazer_beam_t9", #"ww_mega_barrel_fullauto_copycat_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_blazer_beam_t9", #"ww_mega_barrel_fullauto_diffusion_beam_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_blazer_beam_t9", #"ww_mega_barrel_fullauto_blazer_beam_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_blazer_beam_t9", #"ww_mega_barrel_fullauto_micro_missile_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_micro_missile_t9", #"ww_mega_barrel_fullauto_copycat_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_micro_missile_t9", #"ww_mega_barrel_fullauto_diffusion_beam_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_micro_missile_t9", #"ww_mega_barrel_fullauto_blazer_beam_t9");
    zm_weapons::function_8389c033(#"ww_mega_barrel_fullauto_micro_missile_t9", #"ww_mega_barrel_fullauto_micro_missile_t9");
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x7caaf02f, Offset: 0x108d0
// Size: 0x37c
function on_item_pickup(params) {
    item = params.item;
    if (isplayer(self)) {
        if (isdefined(item.itementry.weapon) && function_3efc58e4(item.itementry.weapon)) {
            if (isdefined(item.var_23178d00)) {
                self.var_23178d00 = item.var_23178d00;
            } else if (function_98e73a50(item.itementry.weapon) && isdefined(self.var_23178d00)) {
                return;
            } else {
                self function_e0c4e722();
            }
            return;
        }
        if (isdefined(item.itementry.name)) {
            var_12a61de4 = undefined;
            switch (item.itementry.name) {
            case #"mega_barrel_modkit_blazer_beam_item_t9":
                var_12a61de4 = #"ww_mega_barrel_fullauto_blazer_beam_t9";
                break;
            case #"mega_barrel_modkit_diffusion_beam_item_t9":
                var_12a61de4 = #"ww_mega_barrel_fullauto_diffusion_beam_t9";
                break;
            case #"mega_barrel_modkit_micro_missile_item_t9":
                var_12a61de4 = #"ww_mega_barrel_fullauto_micro_missile_t9";
                break;
            default:
                break;
            }
            if (isdefined(var_12a61de4)) {
                var_28f1804e = self namespace_a0d533d1::function_2b83d3ff(self function_e09526a6());
                if (!isdefined(var_28f1804e)) {
                    return;
                }
                if (zm_weapons::get_base_weapon(var_28f1804e).name === var_12a61de4) {
                    maxammo = var_28f1804e.maxammo;
                    maxclip = self function_b7f1fd2c(var_28f1804e);
                    self setweaponammoclip(var_28f1804e, maxclip);
                    self setweaponammostock(var_28f1804e, maxammo);
                    return;
                }
                if (math::cointoss(35)) {
                    character = self function_d0aeb094();
                    if (level.var_537bfd7f[var_12a61de4 + character].size == 0) {
                        level.var_537bfd7f[var_12a61de4 + character] = arraycopy(level.var_233782ac[var_12a61de4 + character]);
                    }
                    self thread function_1340d9d6(array::function_a3b0f814(level.var_537bfd7f[var_12a61de4 + character]));
                }
                self thread function_e7547fea(var_12a61de4);
            }
        }
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0xd73f40e7, Offset: 0x10c58
// Size: 0x86
function on_item_drop(params) {
    item = params.item;
    if (isplayer(self) && isdefined(item.itementry.weapon) && function_3efc58e4(item.itementry.weapon)) {
        item.var_23178d00 = self.var_23178d00;
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x6 linked
// Checksum 0x36c2d88, Offset: 0x10ce8
// Size: 0x1a
function private on_player_spawned() {
    self.is_valid_target_for_stinger_override = &is_valid_target_for_stinger_override;
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 2, eflags: 0x2 linked
// Checksum 0xeae66267, Offset: 0x10d10
// Size: 0x8c
function function_43a91a9f(var_30232463, var_f6d767a5) {
    var_5657333a = function_4ba8fde(var_f6d767a5);
    item = item_drop::drop_item(0, undefined, 1, 0, var_5657333a.id, var_30232463);
    if (isdefined(item)) {
        level.var_2bc85849++;
        item thread function_6b531012();
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0x4352f0da, Offset: 0x10da8
// Size: 0x34
function function_6b531012() {
    self waittill(#"death");
    if (level.var_2bc85849 > 0) {
        level.var_2bc85849--;
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x3d6dfeff, Offset: 0x10de8
// Size: 0x3a4
function function_11110983(params) {
    var_12ad41fb = function_3efc58e4(params.weapon);
    var_764ad66c = function_3efc58e4(params.last_weapon);
    if (var_12ad41fb) {
        self.var_ece67d81 = 1;
        if (!isdefined(self.var_8c1397c7)) {
            self.var_8c1397c7 = util::spawn_model(#"tag_origin", self.origin, self.angles);
            self.var_8c1397c7 linkto(self);
        }
        self thread mega_barrel_watch_multikill_vo();
        self thread mega_barrel_watch_reload();
        self.var_42d07392 = gettime();
        self thread mega_barrel_watch_pacifist_vo();
        self clientfield::set_to_player("" + #"hash_4aec08923edd6a40", 1);
        if (!is_true(var_764ad66c) && isdefined(self.var_845ce7ff)) {
            time_now = gettime();
            var_a3cf54d0 = float(time_now - self.var_845ce7ff) / 1000;
            if (var_a3cf54d0 > 120) {
                character = self function_d0aeb094();
                if (level.var_691e2f88[character].size == 0) {
                    level.var_691e2f88[character] = arraycopy(level.var_522398fe[character]);
                }
                self thread function_1340d9d6(array::function_a3b0f814(level.var_691e2f88[character]));
            }
        }
        self.var_845ce7ff = undefined;
        /#
            if (getdvarint(#"hash_c5361c7f50fa06d", 0)) {
                self thread function_8822b5d3();
            }
        #/
    } else {
        self.var_ece67d81 = 0;
        self clientfield::set_to_player("" + #"hash_4aec08923edd6a40", 0);
        if (var_764ad66c) {
            self.var_845ce7ff = gettime();
        }
    }
    if (function_5e5c11cc(params.weapon)) {
        self thread function_51b7e176();
    } else {
        self clientfield::set_to_player("" + #"hash_713a0ba5968a3bde", 0);
        if (isdefined(self.var_accb4770)) {
            self.var_accb4770 delete();
        }
    }
    if (isdefined(self.blazer_beam)) {
        self.blazer_beam delete();
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0xfca0209b, Offset: 0x11198
// Size: 0xd4
function function_3efc58e4(weapon) {
    if (isdefined(weapon)) {
        w_root = zm_weapons::function_386dacbc(weapon);
        switch (w_root.name) {
        case #"ww_mega_barrel_fullauto_blazer_beam_t9":
        case #"ww_mega_barrel_fullauto_diffusion_beam_t9_upgraded":
        case #"ww_mega_barrel_fullauto_diffusion_beam_t9":
        case #"ww_mega_barrel_fullauto_blazer_beam_t9_upgraded":
        case #"ww_mega_barrel_fullauto_micro_missile_t9_upgraded":
        case #"ww_mega_barrel_fullauto_copycat_t9_upgraded":
        case #"ww_mega_barrel_fullauto_copycat_t9":
        case #"ww_mega_barrel_fullauto_micro_missile_t9":
            return true;
        }
    }
    return false;
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x2332c784, Offset: 0x11278
// Size: 0x94
function function_98e73a50(weapon) {
    if (isdefined(weapon)) {
        w_root = zm_weapons::function_386dacbc(weapon);
        switch (w_root.name) {
        case #"ww_mega_barrel_fullauto_diffusion_beam_t9_upgraded":
        case #"ww_mega_barrel_fullauto_blazer_beam_t9_upgraded":
        case #"ww_mega_barrel_fullauto_micro_missile_t9_upgraded":
        case #"ww_mega_barrel_fullauto_copycat_t9_upgraded":
            return true;
        }
    }
    return false;
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x227556f, Offset: 0x11318
// Size: 0x35c
function function_425c8feb(params) {
    if (params.smeansofdeath == "MOD_MELEE") {
        return;
    }
    if (function_3efc58e4(params.weapon)) {
        self function_e5b5756e();
        if (isplayer(params.eattacker)) {
            player = params.eattacker;
            var_d3ed3a9b = zm_utility::function_4562a3ef(params.shitloc);
            if (var_d3ed3a9b && function_5e5c11cc(params.weapon)) {
                if (!player function_c44997c4() && !is_true(player.var_a5bcc97b) && math::cointoss(40)) {
                    character = player function_d0aeb094();
                    if (level.var_19e4b715[character].size == 0) {
                        level.var_19e4b715[character] = arraycopy(level.var_e36f0de5[character]);
                    }
                    player thread function_1340d9d6(array::function_a3b0f814(level.var_19e4b715[character]));
                    player.var_a5bcc97b = 1;
                    player thread function_8ec19026();
                }
            }
        }
        if (self function_ea836a5d()) {
            var_6233e1ed = 0;
            w_root = zm_weapons::function_386dacbc(params.weapon);
            switch (w_root.name) {
            case #"ww_mega_barrel_fullauto_diffusion_beam_t9_upgraded":
            case #"ww_mega_barrel_fullauto_blazer_beam_t9_upgraded":
            case #"ww_mega_barrel_fullauto_micro_missile_t9_upgraded":
            case #"ww_mega_barrel_fullauto_copycat_t9_upgraded":
                var_6233e1ed = 5;
                break;
            case #"ww_mega_barrel_fullauto_copycat_t9":
                var_6233e1ed = 1;
                break;
            case #"ww_mega_barrel_fullauto_diffusion_beam_t9":
                var_6233e1ed = 2;
                break;
            case #"ww_mega_barrel_fullauto_blazer_beam_t9":
                var_6233e1ed = 3;
                break;
            case #"ww_mega_barrel_fullauto_micro_missile_t9":
                var_6233e1ed = 4;
                break;
            default:
                break;
            }
            self clientfield::set("" + #"hash_5366f39f1aca2e65", var_6233e1ed);
            self thread function_5a2447b1(2);
        }
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0xb87a429, Offset: 0x11680
// Size: 0x1dc
function function_e5b5756e() {
    if (isdefined(level.var_15eefdd)) {
        if (level.var_15eefdd > 0) {
            level.var_15eefdd--;
        } else {
            function_43a91a9f(self.origin, #"mega_barrel_modkit_blazer_beam_item_t9");
            level.var_15eefdd = undefined;
        }
        return;
    }
    if (isdefined(self.var_6f84b820)) {
        if (level.var_2bc85849 >= 3) {
            return;
        }
        switch (self.var_6f84b820) {
        case #"normal":
            var_e39660fa = 2 + level.var_b96c6e68;
            break;
        case #"special":
            var_e39660fa = 10 + level.var_b96c6e68;
            break;
        case #"elite":
            var_e39660fa = 25 + level.var_b96c6e68;
            break;
        default:
            var_e39660fa = 0;
            break;
        }
        if (math::cointoss(var_e39660fa)) {
            level.var_1da41b83 = 0;
            level.var_b96c6e68 = 0;
            function_43a91a9f(self.origin, array::random(level.var_6423192e));
            return;
        }
        level.var_1da41b83++;
        if (level.var_1da41b83 >= 50) {
            level.var_b96c6e68 += 1;
        }
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0x88b9324, Offset: 0x11868
// Size: 0x162
function function_e09526a6() {
    var_37e764ff = undefined;
    var_cb5aea38 = [17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1];
    foreach (slot in var_cb5aea38) {
        slot_item = self item_inventory::function_2e711614(slot);
        if (!isdefined(slot_item)) {
            continue;
        }
        slot_weapon = self namespace_a0d533d1::function_2b83d3ff(slot_item);
        if (function_3efc58e4(slot_weapon)) {
            var_37e764ff = slot_item;
            break;
        }
    }
    return var_37e764ff;
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 2, eflags: 0x2 linked
// Checksum 0x7b7cb8ff, Offset: 0x119d8
// Size: 0x33c
function function_e7547fea(var_cbe471c0, var_6ce69257 = 0) {
    if (self laststand::player_is_in_laststand()) {
        return;
    }
    var_37e764ff = self function_e09526a6();
    if (isdefined(var_37e764ff)) {
        var_28f1804e = self namespace_a0d533d1::function_2b83d3ff(var_37e764ff);
        if (function_98e73a50(var_28f1804e)) {
            var_cbe471c0 += "_upgraded";
        }
        var_c07b2ded = getweapon(var_cbe471c0);
        var_c07b2ded = function_eeddea9a(var_c07b2ded, function_9f1cc9a9(var_28f1804e));
        self giveweapon(var_c07b2ded);
        self switchtoweapon(var_c07b2ded);
        weaponoptions = self function_ade49959(var_28f1804e);
        camoindex = getcamoindex(weaponoptions);
        self setcamo(var_c07b2ded, camoindex);
        var_37e764ff.var_627c698b = var_c07b2ded;
        var_3383cd4e = function_4ba8fde(var_cbe471c0 + "_item_sr");
        if (isdefined(var_3383cd4e)) {
            var_37e764ff.itementry = var_3383cd4e.itementry;
            var_37e764ff.id = var_3383cd4e.id;
        } else {
            assertmsg("<unknown string>" + var_cbe471c0);
        }
        if (var_6ce69257) {
            if (isdefined(self.var_9338f79f) && isdefined(self.var_9d3ba2ea)) {
                var_367c39db = self function_b7f1fd2c(var_c07b2ded);
                var_d2658667 = var_367c39db - self.var_9338f79f;
                self setweaponammoclip(var_c07b2ded, var_367c39db);
                self setweaponammostock(var_c07b2ded, self.var_9d3ba2ea + var_367c39db - var_d2658667);
            } else {
                self givemaxammo(var_c07b2ded);
            }
        } else {
            self.var_9338f79f = self getweaponammoclip(var_28f1804e);
            self.var_9d3ba2ea = self getweaponammostock(var_28f1804e);
            self givemaxammo(var_c07b2ded);
        }
        self thread function_7e7b7305(var_28f1804e);
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x8c8f4607, Offset: 0x11d20
// Size: 0x10c
function function_7e7b7305(var_b02cde1d) {
    level endon(#"end_game");
    if (!isdefined(self.var_9c4683a0)) {
        self.var_9c4683a0 = [];
    } else if (!isarray(self.var_9c4683a0)) {
        self.var_9c4683a0 = array(self.var_9c4683a0);
    }
    self.var_9c4683a0[self.var_9c4683a0.size] = var_b02cde1d;
    if (isdefined(self)) {
        wait(1);
        while (isdefined(self) && self isdroppingweapon()) {
            waitframe(1);
        }
        if (!isdefined(self)) {
            return;
        }
        self takeweapon(var_b02cde1d);
        if (isdefined(self.var_9c4683a0)) {
            arrayremovevalue(self.var_9c4683a0, var_b02cde1d);
        }
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 2, eflags: 0x0
// Checksum 0x188fb939, Offset: 0x11e38
// Size: 0x32
function function_d95ad6cc(vector, angle) {
    return rotatepointaroundaxis(vector, (0, 0, 1), angle);
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x36a09496, Offset: 0x11e78
// Size: 0xac
function function_53b759f3(weapon) {
    var_25120138 = 0;
    var_2346b625 = 0;
    if (function_a67d8f74(weapon)) {
        var_25120138 = 3;
    }
    if (self getweaponammoclip(weapon) <= var_25120138 && self getweaponammostock(weapon) <= var_2346b625) {
        self function_e7547fea(#"ww_mega_barrel_fullauto_copycat_t9", 1);
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x508bebcc, Offset: 0x11f30
// Size: 0xf2
function function_434c0676(weapon_name) {
    switch (weapon_name) {
    case #"ww_mega_barrel_fullauto_diffusion_beam_t9_upgraded":
    case #"ww_mega_barrel_fullauto_diffusion_beam_t9":
        return #"ww_mega_barrel_fullauto_diffusion_beam_t9";
    case #"ww_mega_barrel_fullauto_copycat_t9_upgraded":
    case #"ww_mega_barrel_fullauto_copycat_t9":
        return #"ww_mega_barrel_fullauto_copycat_t9";
    case #"ww_mega_barrel_fullauto_blazer_beam_t9":
    case #"ww_mega_barrel_fullauto_blazer_beam_t9_upgraded":
        return #"ww_mega_barrel_fullauto_blazer_beam_t9";
    case #"ww_mega_barrel_fullauto_micro_missile_t9_upgraded":
    case #"ww_mega_barrel_fullauto_micro_missile_t9":
        return #"ww_mega_barrel_fullauto_micro_missile_t9";
    default:
        return weapon_name;
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0xce78997f, Offset: 0x12030
// Size: 0x22
function function_c44997c4() {
    return is_true(self.var_8c1397c7.isspeaking);
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0xdb0d5fd6, Offset: 0x12060
// Size: 0x234
function function_1340d9d6(vo_line) {
    self endoncallback(&zm_vo::vo_clear, #"death");
    /#
        function_fc9aff93(vo_line);
        function_fc9aff93(self.var_23178d00);
    #/
    if (!isdefined(self.var_8c1397c7) || !is_true(self.var_ece67d81) || self function_c44997c4() || is_true(self.dontspeak) || self scene::is_igc_active() || level flag::get_any([#"main_quest_completed", #"exfil_cleared"])) {
        return;
    }
    sound_length = float(max(isdefined(soundgetplaybacktime(vo_line)) ? soundgetplaybacktime(vo_line) : 500, 500)) / 1000;
    if (sound_length > 0) {
        self clientfield::set_to_player("" + #"hash_4aec08923edd6a40", 2);
        self.var_54ddcd0c = 1;
        self.var_8c1397c7 zm_vo::function_d6f8bbd9(vo_line);
        self.var_54ddcd0c = undefined;
        self clientfield::set_to_player("" + #"hash_4aec08923edd6a40", 1);
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0xcb5a7dae, Offset: 0x122a0
// Size: 0x1d8
function mega_barrel_watch_multikill_vo() {
    self endon(#"death");
    var_17b7891d = "486527bb6ce86b8d" + "mega_barrel_watch_multikill_vo";
    self notify(var_17b7891d);
    self endon(var_17b7891d);
    while (true) {
        result = self waittill(#"hash_44abe1c14b998f86");
        if (isdefined(result.weapon_name)) {
            if (!self function_c44997c4() && !is_true(self.var_49be2d20) && math::cointoss(35)) {
                weapon_name = function_434c0676(result.weapon_name);
                character = self function_d0aeb094();
                if (level.var_3a591424[weapon_name + character].size == 0) {
                    level.var_3a591424[weapon_name + character] = arraycopy(level.var_9c177f41[weapon_name + character]);
                }
                self thread function_1340d9d6(array::function_a3b0f814(level.var_3a591424[weapon_name + character]));
                self.var_49be2d20 = 1;
                self thread function_b558d078();
            }
        }
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0x987b6542, Offset: 0x12480
// Size: 0x16e
function mega_barrel_watch_pacifist_vo() {
    self endon(#"death");
    var_17b7891d = "1247c8fdca351653" + "mega_barrel_watch_pacifist_vo";
    self notify(var_17b7891d);
    self endon(var_17b7891d);
    while (true) {
        wait(10);
        if (isdefined(self.var_42d07392)) {
            time_now = gettime();
            var_d27aea5b = float(time_now - self.var_42d07392) / 1000;
            if (!self function_c44997c4() && var_d27aea5b > 120) {
                character = self function_d0aeb094();
                if (level.var_6bd02b68[character].size == 0) {
                    level.var_6bd02b68[character] = arraycopy(level.var_9d5f03e9[character]);
                }
                self thread function_1340d9d6(array::function_a3b0f814(level.var_6bd02b68[character]));
                self.var_42d07392 = time_now;
            }
        }
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0x1f1795a1, Offset: 0x125f8
// Size: 0x2a
function function_b558d078() {
    self endon(#"death");
    wait(60);
    self.var_49be2d20 = 0;
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0x8930421e, Offset: 0x12630
// Size: 0x2a
function function_8ec19026() {
    self endon(#"death");
    wait(60);
    self.var_a5bcc97b = 0;
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x0
// Checksum 0xf201a3b7, Offset: 0x12668
// Size: 0x72
function function_9cd078c5(weapon) {
    if (isdefined(weapon)) {
        w_root = zm_weapons::function_386dacbc(weapon);
        return (w_root.name == #"ww_mega_barrel_fullauto_diffusion_beam_t9" || w_root.name == #"ww_mega_barrel_fullauto_diffusion_beam_t9_upgraded");
    }
    return false;
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x1e442cad, Offset: 0x126e8
// Size: 0x2c
function function_bd070069(weapon) {
    self.var_42d07392 = gettime();
    self function_53b759f3(weapon);
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0xb44c86e5, Offset: 0x12720
// Size: 0x72
function function_5e5c11cc(weapon) {
    if (isdefined(weapon)) {
        w_root = zm_weapons::function_386dacbc(weapon);
        return (w_root.name == #"ww_mega_barrel_fullauto_copycat_t9" || w_root.name == #"ww_mega_barrel_fullauto_copycat_t9_upgraded");
    }
    return false;
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x73af2da8, Offset: 0x127a0
// Size: 0x276
function function_a58f5f81(weapon) {
    /#
        function_fc9aff93("<unknown string>");
    #/
    if (isdefined(self.var_accb4770)) {
        v_angles = self getplayerangles();
        v_point = rotatepoint(self.var_accb4770 gettagorigin("tag_flash"), v_angles);
        self magicmissile(weapon, v_point + self getplayercamerapos(), anglestoforward(v_angles) * 3200);
        if (isdefined(self.var_accb4770.var_4d66ae56)) {
            playfxontag(self.var_accb4770.var_515e20e6 ? #"hash_77e7d9c6c1c5cb2b" : #"hash_52f32fbd7a1126ba", self.var_accb4770.var_4d66ae56, "tag_flash");
        }
    }
    self clientfield::increment_to_player("" + #"hash_74134fadeeb8b692");
    if (self getweaponammoclip(weapon) == 0 && self getweaponammostock(weapon) == 0) {
        if (!self function_c44997c4()) {
            character = self function_d0aeb094();
            if (level.var_5bf82a67[character].size == 0) {
                level.var_5bf82a67[character] = arraycopy(level.var_653e2f6e[character]);
            }
            self thread function_1340d9d6(array::function_a3b0f814(level.var_5bf82a67[character]));
        }
    }
    self.var_42d07392 = gettime();
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0x99c25f45, Offset: 0x12a20
// Size: 0x2e4
function function_51b7e176() {
    level endon(#"end_game");
    self endon(#"death");
    wait(0.6);
    if (!isalive(self) || isdefined(self.var_accb4770) || !function_5e5c11cc(self getcurrentweapon())) {
        return;
    }
    self clientfield::set_to_player("" + #"hash_713a0ba5968a3bde", 1);
    weapon = zm_weapons::function_386dacbc(self getcurrentweapon());
    var_accb4770 = util::spawn_model(#"hash_62460e2f377db8bc");
    var_accb4770.var_515e20e6 = weapon.name === #"ww_mega_barrel_fullauto_copycat_t9_upgraded";
    var_accb4770 ghost();
    var_accb4770 setforcenocull();
    var_accb4770 thread scene::play(#"p9_fxanim_ww_mega_barrel_fullauto_copycat_circle_bundle", var_accb4770);
    self.var_accb4770 = var_accb4770;
    var_4d66ae56 = util::spawn_model(#"hash_62460e2f377db8bc");
    var_4d66ae56 setinvisibletoplayer(self);
    var_4d66ae56 linkto(self, "tag_origin");
    var_4d66ae56 linktoupdateoffset(self getplayercamerapos(), self.angles);
    var_4d66ae56 thread scene::play(#"p9_fxanim_ww_mega_barrel_fullauto_copycat_circle_bundle", var_4d66ae56);
    playfxontag(var_accb4770.var_515e20e6 ? #"hash_2eabcf6f328bb46b" : #"hash_2ac49f49b148a4fa", var_4d66ae56, "tag_flash");
    var_accb4770.var_4d66ae56 = var_4d66ae56;
    var_accb4770 thread util::delete_on_death(var_4d66ae56);
    self thread util::delete_on_death(var_accb4770);
    self thread function_e518b5f8(var_accb4770);
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x56d52adf, Offset: 0x12d10
// Size: 0x150
function function_e518b5f8(var_accb4770) {
    level endon(#"end_game");
    self endon(#"death");
    var_accb4770 endon(#"death");
    while (true) {
        level waittill(#"hash_2e9ec9c0d937dcfd", #"scene_igc_shot_started", #"hash_4fbe4720f6f13107");
        self clientfield::set_to_player("" + #"hash_713a0ba5968a3bde", 0);
        var_accb4770 thread scene::stop(#"p9_fxanim_ww_mega_barrel_fullauto_copycat_circle_bundle");
        level waittill(#"hash_328354cda05a3914", #"hash_684b272680aa2ed");
        self clientfield::set_to_player("" + #"hash_713a0ba5968a3bde", 1);
        var_accb4770 thread scene::play(#"p9_fxanim_ww_mega_barrel_fullauto_copycat_circle_bundle", var_accb4770);
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x0
// Checksum 0xceb13b5a, Offset: 0x12e68
// Size: 0x72
function function_5885758(weapon) {
    if (isdefined(weapon)) {
        w_root = zm_weapons::function_386dacbc(weapon);
        return (w_root.name == #"ww_mega_barrel_fullauto_blazer_beam_t9" || w_root.name == #"ww_mega_barrel_fullauto_blazer_beam_t9_upgraded");
    }
    return false;
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x3fa1883b, Offset: 0x12ee8
// Size: 0x186
function function_381102dc(weapon) {
    /#
        function_fc9aff93("<unknown string>");
    #/
    if (!self flag::get("blazer_beam_extending")) {
        if (!isdefined(self.blazer_beam)) {
            self.blazer_beam = util::spawn_model("tag_origin", self getplayercamerapos());
            self.blazer_beam setowner(self);
            self.blazer_beam.owner = self;
        }
        self flag::set("blazer_beam_extending");
        self.blazer_beam clientfield::set("" + #"hash_4bd7cbe3f7fd44dd", 1);
        self.blazer_beam thread function_c57b04f7(self);
        self.blazer_beam thread function_6406aefd(self, weapon);
        self thread function_85ca2ad0(weapon);
    }
    self function_53b759f3(weapon);
    self.var_42d07392 = gettime();
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 2, eflags: 0x2 linked
// Checksum 0xee2fb8b0, Offset: 0x13078
// Size: 0x3a6
function function_6406aefd(player, weapon) {
    level endon(#"end_game");
    self endon(#"death", #"hash_35efe9aaf3eff505");
    self notify("5fd0f543ec58b500");
    self endon("5fd0f543ec58b500");
    if (weapon.name === #"ww_mega_barrel_fullauto_blazer_beam_t9_upgraded") {
        n_damage = 3000;
    } else {
        n_damage = 2000;
    }
    while (isdefined(self)) {
        if (self.beam_length < 1) {
            wait(0.1);
            continue;
        }
        trace_distance = self.beam_length;
        e_target = player;
        do {
            var_59cce13c = self.origin;
            var_ddd89fe0 = var_59cce13c - self.move_dir * trace_distance;
            trace = bullettrace(var_ddd89fe0, var_59cce13c, 1, e_target);
            e_target = trace[#"entity"];
            if (isactor(e_target) && isalive(e_target) || is_true(e_target.var_4165b2d7)) {
                trace_distance -= distance(var_ddd89fe0, trace[#"position"]);
                e_target dodamage(n_damage, trace[#"position"], player, undefined, trace[#"hitloc"], "MOD_RIFLE_BULLET", 0, weapon);
            }
            trace_distance -= 20;
            waitframe(1);
        } while (trace_distance > 5 && trace[#"fraction"] < 1);
        triggers = getentarray("trigger_damage", "classname");
        arrayremovevalue(triggers, undefined);
        triggers = arraysortclosest(triggers, self.origin, undefined, undefined, 100);
        foreach (trigger in triggers) {
            if (istouching(self.origin, trigger)) {
                trigger notify(#"damage", {#attacker:player, #weapon:level.var_baecdd4d});
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0xa26770c7, Offset: 0x13428
// Size: 0x214
function function_c57b04f7(player) {
    level endon(#"end_game");
    player endon(#"death", #"weapon_change");
    self.beam_length = 20;
    player function_66337ef1(#"damage_light");
    while (isdefined(self) && isdefined(player) && player flag::get("blazer_beam_extending")) {
        var_1e65372b = player getplayercamerapos();
        self.angles = player getplayerangles();
        if (self.beam_length < 800) {
            self.beam_length += 1200 * float(function_60d95f53()) / 1000;
        }
        self.move_dir = anglestoforward(self.angles);
        v_target_pos = var_1e65372b + self.move_dir * self.beam_length;
        trace = beamtrace(var_1e65372b, v_target_pos, 0, player);
        if (trace[#"fraction"] < 1) {
            self.origin = trace[#"position"];
            self.beam_length = distance(self.origin, var_1e65372b);
        } else {
            self.origin = v_target_pos;
        }
        waitframe(1);
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x1e131ec9, Offset: 0x13648
// Size: 0xfc
function function_85ca2ad0(weapon) {
    self endoncallback(&function_670efad6, #"death", #"weapon_change");
    level endon(#"end_game");
    while (zm_utility::is_player_valid(self, 0, 1) && self isfiring() && self getweaponammoclip(weapon) > 0 && !self ismeleeing() && !self isswitchingweapons()) {
        waitframe(1);
    }
    self function_670efad6();
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x404acc02, Offset: 0x13750
// Size: 0xa4
function function_670efad6(*str_notify) {
    self flag::clear("blazer_beam_extending");
    self stoprumble(#"damage_light");
    if (isdefined(self.blazer_beam)) {
        self.blazer_beam clientfield::set("" + #"hash_4bd7cbe3f7fd44dd", 2);
        self.blazer_beam thread function_80fdbf85(self);
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0xce433237, Offset: 0x13800
// Size: 0x174
function function_80fdbf85(player) {
    level endon(#"end_game");
    if (isdefined(player)) {
        player endon(#"blazer_beam_extending");
    }
    left_distance = 3000 - self.beam_length;
    v_target_pos = self.origin + left_distance * self.move_dir;
    trace = beamtrace(self.origin, v_target_pos, 0, player);
    if (trace[#"fraction"] < 1) {
        v_target_pos = trace[#"position"];
        left_distance = distance(self.origin, trace[#"position"]);
    }
    time = left_distance / 1200 + 0.1;
    if (time > 0) {
        self moveto(v_target_pos, time);
        wait(time);
    }
    if (isdefined(self)) {
        self.origin = v_target_pos;
        self thread function_dd8805e4(player);
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0xb9445e28, Offset: 0x13980
// Size: 0x134
function function_dd8805e4(player) {
    level endon(#"end_game");
    if (isdefined(player)) {
        player endon(#"blazer_beam_extending");
    }
    self clientfield::set("" + #"hash_4bd7cbe3f7fd44dd", 3);
    while (isdefined(self) && self.beam_length > 0) {
        self.beam_length -= 1200 * float(function_60d95f53()) / 1000;
        waitframe(1);
    }
    if (isdefined(self)) {
        self clientfield::set("" + #"hash_4bd7cbe3f7fd44dd", 0);
        if (!isalive(self.owner)) {
            self delete();
        }
    }
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x31bf0473, Offset: 0x13ac0
// Size: 0x2e
function function_b5ca1483(weapon) {
    self function_53b759f3(weapon);
    self.var_42d07392 = gettime();
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0x51b280f1, Offset: 0x13af8
// Size: 0x72
function function_a67d8f74(weapon) {
    if (isdefined(weapon)) {
        w_root = zm_weapons::function_386dacbc(weapon);
        return (w_root.name == #"ww_mega_barrel_fullauto_micro_missile_t9" || w_root.name == #"ww_mega_barrel_fullauto_micro_missile_t9_upgraded");
    }
    return false;
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 1, eflags: 0x2 linked
// Checksum 0xd9caa999, Offset: 0x13b78
// Size: 0xa6
function is_valid_target_for_stinger_override(entity) {
    weapon = self getcurrentweapon();
    if (function_a67d8f74(weapon)) {
        return is_true(entity.var_2285d4d6);
    }
    return !is_true(entity.var_2285d4d6) || is_true(entity.var_b8f31582);
}

// Namespace namespace_1e7573ec/namespace_1e7573ec
// Params 0, eflags: 0x2 linked
// Checksum 0x14a8c8a3, Offset: 0x13c28
// Size: 0x4c
function function_83d01300() {
    self.var_2285d4d6 = 1;
    if (target_istarget(self)) {
        self.var_b8f31582 = 1;
        return;
    }
    target_set(self);
}

/#

    // Namespace namespace_1e7573ec/namespace_1e7573ec
    // Params 1, eflags: 0x0
    // Checksum 0x530f27a0, Offset: 0x13c80
    // Size: 0x4c
    function function_fc9aff93(string) {
        if (getdvarint(#"hash_2ce8880e12d4414b", 0)) {
            println(string);
        }
    }

    // Namespace namespace_1e7573ec/namespace_1e7573ec
    // Params 0, eflags: 0x0
    // Checksum 0x34bb5123, Offset: 0x13cd8
    // Size: 0xa4
    function function_37597f29() {
        level_name = util::get_map_name();
        if (level_name === "<unknown string>") {
            util::add_debug_command("<unknown string>");
            util::add_debug_command("<unknown string>");
            util::add_debug_command("<unknown string>");
            zm_devgui::add_custom_devgui_callback(&cmd);
        }
    }

    // Namespace namespace_1e7573ec/namespace_1e7573ec
    // Params 1, eflags: 0x0
    // Checksum 0x75eeeee6, Offset: 0x13d88
    // Size: 0xda
    function cmd(cmd) {
        switch (cmd) {
        case #"hash_624c20b760e6e5c6":
            function_a7c4f468(#"mega_barrel_modkit_diffusion_beam_item_t9");
            break;
        case #"hash_1a395c3a23b52adf":
            function_a7c4f468(#"mega_barrel_modkit_blazer_beam_item_t9");
            break;
        case #"hash_165b5f12f006ed46":
            function_a7c4f468(#"mega_barrel_modkit_micro_missile_item_t9");
            break;
        default:
            break;
        }
    }

    // Namespace namespace_1e7573ec/namespace_1e7573ec
    // Params 1, eflags: 0x0
    // Checksum 0xeafba991, Offset: 0x13e70
    // Size: 0x11c
    function function_a7c4f468(weapon_name) {
        player = getplayers()[0];
        direction = player getplayerangles();
        direction_vec = anglestoforward(direction);
        eye = player getplayercamerapos();
        scale = 8000;
        direction_vec = (direction_vec[0] * scale, direction_vec[1] * scale, direction_vec[2] * scale);
        trace = bullettrace(eye, eye + direction_vec, 0, undefined);
        function_43a91a9f(trace[#"position"], weapon_name);
    }

    // Namespace namespace_1e7573ec/namespace_1e7573ec
    // Params 0, eflags: 0x0
    // Checksum 0x8c48fe68, Offset: 0x13f98
    // Size: 0x78
    function function_8822b5d3() {
        self endon(#"death");
        var_17b7891d = "<unknown string>" + "<unknown string>";
        self notify(var_17b7891d);
        self endon(var_17b7891d);
        while (true) {
            wait(20);
            self thread function_1340d9d6(#"hash_1e6feff7436a5081");
        }
    }

#/

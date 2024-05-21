// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\gametypes\globallogic.gsc;
#using script_5e96d104c70be5ac;
#using scripts\zm_common\trials\zm_trial_disable_buys.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_melee_weapon.gsc;
#using scripts\zm_common\zm_magicbox.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\zm_customgame.gsc;
#using scripts\zm_common\zm_contracts.gsc;
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\bb.gsc;
#using scripts\zm_common\callbacks.gsc;
#using script_7a8059ca02b7b09e;
#using scripts\core_common\math_shared.gsc;
#using script_340a2e805e35f7a2;
#using script_471b31bd963b388e;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_wallbuy;

// Namespace zm_wallbuy/zm_wallbuy
// Params 0, eflags: 0x5
// Checksum 0x5f3b3929, Offset: 0x4a0
// Size: 0xa4
function private autoexec __init__system__() {
    system::register(#"zm_wallbuy", &preinit, &postinit, undefined, array(#"zm", #"zm_zonemgr", #"zm_unitrigger", #"zm_weapons", #"hash_5bcba15330839867"));
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 0, eflags: 0x6 linked
// Checksum 0xd8a2d3e5, Offset: 0x550
// Size: 0x1bc
function private preinit() {
    if (!is_true(zm_custom::function_901b751c(#"zmwallbuysenabled"))) {
        a_outlines = getentarray("wallbuy_outline", "targetname");
        foreach (e_outline in a_outlines) {
            e_outline delete();
        }
        return;
    }
    if (zm_utility::get_story() != 1 && !zm_utility::is_survival()) {
        clientfield::register("scriptmover", "wallbuy_ambient_fx", 1, 3, "int");
        clientfield::register("scriptmover", "wallbuy_reveal_fx", 1, 1, "int");
    }
    content_manager::register_script("wallbuy", &function_d77fb9ee);
    callback::on_round_end(&on_round_end);
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 0, eflags: 0x6 linked
// Checksum 0xa3fae14c, Offset: 0x718
// Size: 0xdc
function private postinit() {
    if (!getgametypesetting(#"zmwallbuysenabled")) {
        return;
    }
    mapdestinations = struct::get_array(#"hash_313be7fccc870cdd", "variantname");
    if (!isdefined(mapdestinations) || mapdestinations.size <= 0) {
        thread init_spawnable_weapon_upgrade();
        return;
    }
    if (!zm_utility::is_survival() && isdefined(mapdestinations) && mapdestinations.size > 0) {
        level thread function_669a830(mapdestinations[0]);
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 0, eflags: 0x2 linked
// Checksum 0x65399d42, Offset: 0x800
// Size: 0x7fa
function on_round_end() {
    if (!is_true(getgametypesetting(#"zmwallbuysenabled")) || !is_true(getgametypesetting(#"hash_346c0aea148a07d9"))) {
        return;
    }
    if (level.round_number % 5 == 0) {
        round_number = level.round_number;
        foreach (instance in level.contentmanager.spawnedinstances[#"wallbuy"]) {
            foreach (chalk in instance.contentgroups[#"wallbuy_chalk"]) {
                if (isdefined(chalk.trigger.weapon.name) && isdefined(chalk.trigger.rarity) && isdefined(chalk.trigger) && isdefined(chalk.trigger.weapon.displayname) && is_true(chalk.trigger.var_9f32a5f4)) {
                    if (chalk.trigger.rarity != "orange") {
                        n_chance = 0;
                        switch (round_number) {
                        case 5:
                            if (chalk.trigger.rarity == "green") {
                                n_chance = 23;
                            } else if (chalk.trigger.rarity == "blue") {
                                n_chance = 8;
                            } else if (chalk.trigger.rarity == "purple") {
                                n_chance = 6;
                            }
                            break;
                        case 10:
                            if (chalk.trigger.rarity == "green") {
                                n_chance = 45;
                            } else if (chalk.trigger.rarity == "blue") {
                                n_chance = 10;
                            } else if (chalk.trigger.rarity == "purple") {
                                n_chance = 7;
                            }
                            break;
                        case 15:
                            if (chalk.trigger.rarity == "green") {
                                n_chance = 74;
                            } else if (chalk.trigger.rarity == "blue") {
                                n_chance = 19;
                            } else if (chalk.trigger.rarity == "purple") {
                                n_chance = 9;
                            }
                            break;
                        case 20:
                            if (chalk.trigger.rarity == "green") {
                                n_chance = 84;
                            } else if (chalk.trigger.rarity == "blue") {
                                n_chance = 44;
                            } else if (chalk.trigger.rarity == "purple") {
                                n_chance = 9;
                            }
                            break;
                        case 25:
                            if (chalk.trigger.rarity == "green") {
                                n_chance = 95;
                            } else if (chalk.trigger.rarity == "blue") {
                                n_chance = 73;
                            } else if (chalk.trigger.rarity == "purple") {
                                n_chance = 18;
                            }
                            break;
                        case 30:
                            if (chalk.trigger.rarity == "green") {
                                n_chance = 100;
                            } else if (chalk.trigger.rarity == "blue") {
                                n_chance = 90;
                            } else if (chalk.trigger.rarity == "purple") {
                                n_chance = 43;
                            }
                            break;
                        case 35:
                            if (chalk.trigger.rarity == "green") {
                                n_chance = 100;
                            } else if (chalk.trigger.rarity == "blue") {
                                n_chance = 100;
                            } else if (chalk.trigger.rarity == "purple") {
                                n_chance = 63;
                            }
                            break;
                        case 40:
                        default:
                            if (chalk.trigger.rarity == "green") {
                                n_chance = 100;
                            } else if (chalk.trigger.rarity == "blue") {
                                n_chance = 100;
                            } else if (chalk.trigger.rarity == "purple") {
                                n_chance = 90;
                            }
                            break;
                        }
                        if (math::cointoss(n_chance)) {
                            switch (chalk.trigger.rarity) {
                            case #"green":
                                new_rarity = "blue";
                                break;
                            case #"blue":
                                new_rarity = "purple";
                                break;
                            case #"purple":
                            default:
                                new_rarity = "orange";
                                break;
                            }
                            function_26b21477(chalk, new_rarity);
                        }
                    }
                }
                waitframe(1);
            }
        }
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 2, eflags: 0x2 linked
// Checksum 0x4d7c304, Offset: 0x1008
// Size: 0x27c
function function_26b21477(chalk, new_rarity) {
    if (isdefined(chalk.trigger.chalk_model)) {
        chalk.trigger.chalk_model delete();
        var_a2a22fe0 = chalk.contentgroups[#"hash_79425207763b7a66"][0];
        var_324ad795 = function_d26435e4(var_a2a22fe0, new_rarity, chalk.trigger.weapon.name);
        chalk_model = self content_manager::spawn_script_model(chalk, var_324ad795, 0, 0);
        chalk_model clientfield::set("set_compass_icon", 1);
        fx_pos = chalk_model getcentroid();
        playfx(#"hash_3d4331a432da7e8", fx_pos, anglestoforward(chalk.angles), (0, 0, 1));
        chalk.trigger.chalk_model = chalk_model;
        chalk_model.targetname = "chalk_model";
        item_name = level.var_29d88fe5[chalk.trigger.weapon.name][new_rarity];
        chalk.trigger.item_name = item_name;
        chalk.trigger.rarity = new_rarity;
        cost = zm_weapons::get_weapon_cost(chalk.trigger.weapon);
        cost += zm_weapons::function_5d47055e(new_rarity);
        chalk.trigger.cost = cost;
        hint = function_6e93c5b2(new_rarity);
        chalk.trigger sethintstring(hint, chalk.trigger.weapon.displayname, cost);
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 0, eflags: 0x2 linked
// Checksum 0xab8efb70, Offset: 0x1290
// Size: 0x394
function function_8183be86() {
    if (zm_utility::is_survival()) {
        var_b48509f9 = zm_utility::function_e3025ca5();
        n_roll = randomint(100);
        var_df3ef88a = 2 * var_b48509f9;
        var_ce91127 = 4 * var_b48509f9;
        var_2081b742 = 16 * var_b48509f9;
        var_990f9df7 = 32 * var_b48509f9;
        var_df3ef88a = math::clamp(var_df3ef88a, 0, 100);
        var_ce91127 = math::clamp(var_ce91127, 0, 100);
        var_2081b742 = math::clamp(var_2081b742, 0, 100);
        var_990f9df7 = math::clamp(var_990f9df7, 0, 100);
        var_8ec9324e = 100 - var_df3ef88a;
        var_7d403093 = 100 - var_ce91127;
        var_83ed455f = 100 - var_2081b742;
        var_31890740 = 100 - var_990f9df7;
        if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
            if (var_b48509f9 == 1) {
                return #"green";
            } else if (var_b48509f9 == 2) {
                if (n_roll >= var_8ec9324e) {
                    return #"blue";
                } else if (n_roll >= var_7d403093) {
                    return #"blue";
                } else if (n_roll >= var_83ed455f) {
                    return #"blue";
                } else if (n_roll >= var_31890740) {
                    return #"green";
                } else {
                    return #"green";
                }
            } else if (var_b48509f9 == 3) {
                if (n_roll >= var_8ec9324e) {
                    return #"purple";
                } else if (n_roll >= var_7d403093) {
                    return #"purple";
                } else if (n_roll >= var_83ed455f) {
                    return #"blue";
                } else if (n_roll >= var_31890740) {
                    return #"green";
                } else {
                    return #"green";
                }
            }
        }
        if (n_roll >= var_8ec9324e) {
            return #"orange";
        }
        if (n_roll >= var_7d403093) {
            return #"purple";
        }
        if (n_roll >= var_83ed455f) {
            return #"blue";
        }
        if (n_roll >= var_31890740) {
            return #"green";
        }
        return #"green";
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x2 linked
// Checksum 0xec57d5d, Offset: 0x1630
// Size: 0x174
function function_6e93c5b2(str_rarity) {
    switch (str_rarity) {
    case #"resource":
    case #"none":
    case #"white":
    case #"loadout":
        return #"hash_673212f5cf031080";
    case #"green":
    case #"uncommon":
        return #"hash_478525848719f211";
    case #"blue":
    case #"rare":
        return #"hash_1bf794b5f3fd1b53";
    case #"purple":
    case #"epic":
        return #"hash_71b7197253e518d6";
    case #"yellow":
    case #"ultra":
    case #"gold":
    case #"orange":
    case #"named":
    case #"legendary":
        return #"hash_6d88d5ee982a7896";
    }
    return 0;
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 8, eflags: 0x2 linked
// Checksum 0xb2609e23, Offset: 0x17b0
// Size: 0x464
function function_a1a1d2(weapon_name, var_e9040287, item_name, chalk_model, index, var_492e21a0, var_58bd64f1, str_rarity) {
    weapon = getweapon(weapon_name);
    hint = function_6e93c5b2(str_rarity);
    cost = zm_weapons::get_weapon_cost(weapon);
    cost += zm_weapons::function_5d47055e(str_rarity);
    chalk_model = self content_manager::spawn_script_model(self, chalk_model, 0, 0);
    chalk_model clientfield::set("set_compass_icon", 1);
    switch (weapon.weapclass) {
    case #"mg":
        var_7f9f4eb = 80;
        break;
    case #"spread":
        var_7f9f4eb = 70;
        break;
    case #"rifle":
        if (weapon.issniperweapon) {
            var_7f9f4eb = 90;
        } else if (zm_weapons::is_tactical_rifle(weapon)) {
            var_7f9f4eb = 80;
        } else {
            var_7f9f4eb = 65;
        }
        break;
    default:
        var_7f9f4eb = 45;
        break;
    }
    v_center = chalk_model getcentroid();
    var_8bda2b44 = v_center[1] - chalk_model.origin[1];
    trigger = self content_manager::function_22e120bc(self, &function_ab0340bb, hint, weapon.displayname, 25, var_7f9f4eb, 32, (0, var_8bda2b44, 0), cost);
    trigger.angles = chalk_model.angles + (0, 90, 0);
    v_forward = anglestoforward(trigger.angles) * 10;
    trigger.origin -= v_forward;
    trigger.weapon = weapon;
    trigger.cost = cost;
    trigger.var_9f32a5f4 = 1;
    trigger.item_name = item_name;
    trigger.rarity = str_rarity;
    chalk_model.targetname = "chalk_model";
    trigger.chalk_model = chalk_model;
    trigger.targetname = "trigger_wallbuy";
    tempmodel = var_e9040287 content_manager::spawn_script_model(var_e9040287, weapon.worldmodel);
    tempmodel useweaponmodel(weapon);
    if (isdefined(var_e9040287.var_3474efbf)) {
        var_e27c9160 = tempmodel worldtolocalcoords(tempmodel.origin);
        var_e27c9160 = (var_e27c9160[0] + var_492e21a0, var_e27c9160[1], var_e27c9160[2] + var_58bd64f1);
        tempmodel.origin = tempmodel localtoworldcoords(var_e27c9160);
    }
    tempmodel hide();
    tempmodel.targetname = "wallbuy_weapon" + index;
    trigger.target = tempmodel.targetname;
    trigger thread function_7a2524b3();
    trigger thread weapon_spawn_think();
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 0, eflags: 0x2 linked
// Checksum 0xb79ca411, Offset: 0x1c20
// Size: 0x1a4
function function_7a2524b3() {
    self endon(#"death");
    while (true) {
        foreach (player in getplayers()) {
            if (distance2d(player.origin, self.origin) > 64) {
                if (isdefined(player.var_ff409c52) && player.var_ff409c52 == self) {
                    player.var_ff409c52 = undefined;
                    player globallogic::function_d96c031e();
                }
                continue;
            }
            player.var_ff409c52 = self;
            if (player zm_score::can_player_purchase(self.cost)) {
                player globallogic::function_d96c031e();
                continue;
            }
            if (self zm_utility::function_4f593819(player)) {
                player globallogic::function_d1924f29(#"hash_6e3ae7967dc5d414");
                continue;
            }
            player globallogic::function_d96c031e();
        }
        wait(1);
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x2 linked
// Checksum 0x58842f51, Offset: 0x1dd0
// Size: 0xc
function function_ab0340bb(*sparams) {
    
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x2 linked
// Checksum 0x263c0d04, Offset: 0x1de8
// Size: 0xb9c
function function_d77fb9ee(s_instance) {
    if (!is_true(getgametypesetting(#"zmwallbuysenabled"))) {
        return;
    }
    wallbuys = s_instance.contentgroups[#"wallbuy_chalk"];
    count = 0;
    foreach (wallbuy in wallbuys) {
        weapon_name = wallbuy.script_noteworthy;
        if (!isdefined(weapon_name) || weapon_name == "" || weapon_name == #"random") {
            index = randomint(level.var_8e3edeb9.size);
            weapon_name = level.var_8e3edeb9[index];
        }
        var_e9040287 = wallbuy.contentgroups[#"hash_79425207763b7a66"][0];
        rarity = function_8183be86();
        if (zm_utility::is_classic() && isdefined(level.round_number) && level.round_number <= 1) {
            rarity = isdefined(wallbuy.script_string) ? wallbuy.script_string : "white";
        }
        self.rarity = rarity;
        item_name = level.var_29d88fe5[weapon_name][rarity];
        var_2c9ef3be = function_d26435e4(wallbuy, rarity, weapon_name);
        var_492e21a0 = 0;
        var_de5dab41 = 0;
        switch (weapon_name) {
        case #"knife_loadout":
            if (!is_true(getgametypesetting(#"hash_55a71b8eec91f064"))) {
                return;
            }
            break;
        case #"ar_accurate_t9":
            if (!is_true(getgametypesetting(#"hash_9574295c8d1417e"))) {
                return;
            }
            break;
        case #"ar_standard_t9":
            if (!is_true(getgametypesetting(#"hash_21138fb9940856ed"))) {
                return;
            }
            break;
        case #"ar_damage_t9":
            if (!is_true(getgametypesetting(#"hash_197b8b458c4577b9"))) {
                return;
            }
            break;
        case #"launcher_standard_t9":
            if (!is_true(getgametypesetting(#"hash_325ba7c748b18956"))) {
                return;
            }
            break;
        case #"pistol_burst_t9":
            if (!is_true(getgametypesetting(#"hash_7d458c697d0c4966"))) {
                return;
            }
            break;
        case #"pistol_revolver_t9":
            if (!is_true(getgametypesetting(#"hash_1456b26ab6d295ef"))) {
                return;
            }
            break;
        case #"pistol_semiauto_t9":
            if (!is_true(getgametypesetting(#"hash_7fd1ff1f0b2dc779"))) {
                return;
            }
            break;
        case #"shotgun_fullauto_t9":
            if (!is_true(getgametypesetting(#"hash_61b10205e83c5849"))) {
                return;
            }
            break;
        case #"shotgun_pump_t9":
            if (!is_true(getgametypesetting(#"hash_36996ba5b37104c9"))) {
                return;
            }
            break;
        case #"shotgun_semiauto_t9":
            if (!is_true(getgametypesetting(#"hash_1b556d0ef1bd7a36"))) {
                return;
            }
            break;
        case #"smg_burst_t9":
            if (!is_true(getgametypesetting(#"hash_4e946885bf06df52"))) {
                return;
            }
            break;
        case #"smg_fastfire_t9":
            if (!is_true(getgametypesetting(#"hash_634569782c55f196"))) {
                return;
            }
            break;
        case #"smg_handling_t9":
            if (!is_true(getgametypesetting(#"hash_46d3411097467f2d"))) {
                return;
            }
            break;
        case #"smg_standard_t9":
            if (!is_true(getgametypesetting(#"hash_7e967deb0d6b9649"))) {
                return;
            }
            var_492e21a0 = -0.1;
            break;
        case #"smg_heavy_t9":
            if (!is_true(getgametypesetting(#"hash_7880919be865d57b"))) {
                return;
            }
            break;
        case #"tr_damagesemi_t9":
            if (!is_true(getgametypesetting(#"hash_10756ba8dff36e5a"))) {
                return;
            }
            var_492e21a0 = -0.2;
            break;
        case #"tr_longburst_t9":
            if (!is_true(getgametypesetting(#"hash_fb69584de9657e3"))) {
                return;
            }
            var_492e21a0 = -0.13;
            break;
        case #"tr_powerburst_t9":
            if (!is_true(getgametypesetting(#"hash_1a5305df17fdcc40"))) {
                return;
            }
            break;
        case #"tr_precisionsemi_t9":
            if (!is_true(getgametypesetting(#"hash_4cbfbe5e677ce735"))) {
                return;
            }
            break;
        case #"sniper_standard_t9":
            if (!is_true(getgametypesetting(#"hash_f75e8d54b6ad799"))) {
                return;
            }
            break;
        case #"sniper_powersemi_t9":
            if (!is_true(getgametypesetting(#"hash_430002f66a3fd19b"))) {
                return;
            }
            break;
        case #"sniper_quickscope_t9":
            if (!is_true(getgametypesetting(#"hash_7db8d2ae05b98ba1"))) {
                return;
            }
            break;
        case #"pistol_revolver_t9":
            if (!is_true(getgametypesetting(#"hash_1456b26ab6d295ef"))) {
                return;
            }
            break;
        case #"lmg_accurate_t9":
            if (!is_true(getgametypesetting(#"hash_276c762aa3f9fb83"))) {
                return;
            }
            break;
        case #"smg_burst_t9":
            if (!is_true(getgametypesetting(#"hash_4e946885bf06df52"))) {
                return;
            }
            break;
        case #"smg_handling_t9":
            if (!is_true(getgametypesetting(#"hash_46d3411097467f2d"))) {
                return;
            }
            break;
        case #"smg_fastfire_t9":
            if (!is_true(getgametypesetting(#"hash_634569782c55f196"))) {
                return;
            }
            break;
        case #"sniper_powersemi_t9":
            if (!is_true(getgametypesetting(#"hash_430002f66a3fd19b"))) {
                return;
            }
            break;
        case #"ar_mobility_t9":
            if (!is_true(getgametypesetting(#"hash_5428069c26ac7a85"))) {
                return;
            }
            break;
        case #"ar_fastfire_t9":
            if (!is_true(getgametypesetting(#"hash_3cd4e4f070668ada"))) {
                return;
            }
            break;
        }
        wallbuy function_a1a1d2(weapon_name, var_e9040287, item_name, var_2c9ef3be, count, var_492e21a0, var_de5dab41, rarity);
        count++;
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x2 linked
// Checksum 0xe2ceecf3, Offset: 0x2990
// Size: 0x64
function function_669a830(s_destination) {
    if (!getgametypesetting(#"zmwallbuysenabled")) {
        return;
    }
    level flag::wait_till("start_zombie_round_logic");
    waittillframeend();
    init_spawnable_weapon_upgrade(s_destination);
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 0, eflags: 0x0
// Checksum 0x72bd4472, Offset: 0x2a00
// Size: 0x1bc
function init_weapon_upgrade() {
    weapon_spawns = [];
    weapon_spawns = getentarray("weapon_upgrade", "targetname");
    for (i = 0; i < weapon_spawns.size; i++) {
        weapon_spawns[i].weapon = getweapon(weapon_spawns[i].zombie_weapon_upgrade);
        hint_string = zm_weapons::get_weapon_hint(weapon_spawns[i].weapon);
        cost = zm_weapons::get_weapon_cost(weapon_spawns[i].weapon);
        weapon_spawns[i] sethintstring(hint_string);
        weapon_spawns[i] setcursorhint("HINT_NOICON");
        weapon_spawns[i] usetriggerrequirelookat();
        weapon_spawns[i] thread weapon_spawn_think();
        model = getent(weapon_spawns[i].target, "targetname");
        if (isdefined(model)) {
            model useweaponhidetags(weapon_spawns[i].weapon);
            model hide();
        }
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x2 linked
// Checksum 0xbb1e8dd6, Offset: 0x2bc8
// Size: 0xdac
function init_spawnable_weapon_upgrade(s_destination) {
    if (isdefined(s_destination)) {
        foreach (s_location in s_destination.locations) {
            if (content_manager::function_fe9fb6fd(s_location)) {
                continue;
            }
            wallbuy = s_location.instances[#"wallbuy"];
            if (isdefined(wallbuy)) {
                content_manager::spawn_instance(wallbuy);
            }
        }
        return;
    }
    spawn_list = [];
    spawnable_weapon_spawns = struct::get_array("weapon_upgrade", "targetname");
    spawnable_weapon_spawns = arraycombine(spawnable_weapon_spawns, struct::get_array("bowie_upgrade", "targetname"), 1, 0);
    spawnable_weapon_spawns = arraycombine(spawnable_weapon_spawns, struct::get_array("sickle_upgrade", "targetname"), 1, 0);
    spawnable_weapon_spawns = arraycombine(spawnable_weapon_spawns, struct::get_array("tazer_upgrade", "targetname"), 1, 0);
    spawnable_weapon_spawns = arraycombine(spawnable_weapon_spawns, struct::get_array("buildable_wallbuy", "targetname"), 1, 0);
    if (is_true(level.use_autofill_wallbuy)) {
        spawnable_weapon_spawns = arraycombine(spawnable_weapon_spawns, level.active_autofill_wallbuys, 1, 0);
    }
    if (!is_true(level.headshots_only)) {
        spawnable_weapon_spawns = arraycombine(spawnable_weapon_spawns, struct::get_array("claymore_purchase", "targetname"), 1, 0);
    }
    location = level.scr_zm_map_start_location;
    if ((location == "default" || location == "") && isdefined(level.default_start_location)) {
        location = level.default_start_location;
    }
    match_string = level.scr_zm_ui_gametype;
    if ("" != location) {
        match_string = match_string + "_" + location;
    }
    match_string_plus_space = " " + match_string;
    for (i = 0; i < spawnable_weapon_spawns.size; i++) {
        spawnable_weapon = spawnable_weapon_spawns[i];
        spawnable_weapon.weapon = getweapon(spawnable_weapon.zombie_weapon_upgrade);
        weapon_group = util::getweaponclass(spawnable_weapon);
        if (weapon_group == #"weapon_pistol" && !zm_custom::function_901b751c(#"zmweaponspistol") || weapon_group == #"weapon_cqb" && !zm_custom::function_901b751c(#"zmweaponsshotgun") || weapon_group == #"weapon_smg" && !zm_custom::function_901b751c(#"zmweaponssmg") || weapon_group == #"weapon_assault" && !zm_custom::function_901b751c(#"zmweaponsar") || weapon_group == #"weapon_tactical" && !zm_custom::function_901b751c(#"zmweaponstr") || weapon_group == #"weapon_lmg" && !zm_custom::function_901b751c(#"zmweaponslmg") || weapon_group == #"weapon_sniper" && !zm_custom::function_901b751c(#"zmweaponssniper") || weapon_group == #"weapon_knife" && !zm_custom::function_901b751c(#"zmweaponsknife")) {
            continue;
        }
        if (isdefined(spawnable_weapon.zombie_weapon_upgrade) && spawnable_weapon.weapon.isgrenadeweapon && is_true(level.headshots_only)) {
            continue;
        }
        if (!isdefined(spawnable_weapon.script_noteworthy) || spawnable_weapon.script_noteworthy == "") {
            spawn_list[spawn_list.size] = spawnable_weapon;
            continue;
        }
        matches = strtok(spawnable_weapon.script_noteworthy, ",");
        for (j = 0; j < matches.size; j++) {
            if (matches[j] == match_string || matches[j] == match_string_plus_space) {
                spawn_list[spawn_list.size] = spawnable_weapon;
            }
        }
    }
    tempmodel = spawn("script_model", (0, 0, 0));
    for (i = 0; i < spawn_list.size; i++) {
        clientfieldname = spawn_list[i].zombie_weapon_upgrade + "_" + spawn_list[i].origin;
        numbits = 2;
        if (isdefined(level._wallbuy_override_num_bits)) {
            numbits = level._wallbuy_override_num_bits;
        }
        clientfield::register("world", clientfieldname, 1, numbits, "int");
        target_struct = struct::get(spawn_list[i].target, "targetname");
        if (spawn_list[i].targetname == "buildable_wallbuy") {
            bits = 4;
            if (isdefined(level.buildable_wallbuy_weapons)) {
                bits = getminbitcountfornum(level.buildable_wallbuy_weapons.size + 1);
            }
            clientfield::register("world", clientfieldname + "_idx", 1, bits, "int");
            spawn_list[i].clientfieldname = clientfieldname;
            continue;
        }
        var_f8d30499 = 50;
        var_887e6ebe = 32;
        var_b0e9dcba = 120;
        if (is_true(level.var_a8f3193b)) {
            tempmodel.origin = spawn_list[i].origin;
            tempmodel.angles = spawn_list[i].angles;
            mins = undefined;
            maxs = undefined;
            absmins = undefined;
            absmaxs = undefined;
            tempmodel setmodel(target_struct.model);
            tempmodel useweaponhidetags(spawn_list[i].weapon);
            mins = tempmodel getmins();
            maxs = tempmodel getmaxs();
            absmins = tempmodel getabsmins();
            absmaxs = tempmodel getabsmaxs();
            bounds = absmaxs - absmins;
            var_887e6ebe = bounds[0] * 0.25;
            var_f8d30499 = bounds[1];
            var_b0e9dcba = bounds[2];
        }
        unitrigger_stub = zm_unitrigger::function_9267812e(var_f8d30499, var_887e6ebe, var_b0e9dcba);
        zm_unitrigger::function_47625e58(unitrigger_stub, spawn_list[i].origin - anglestoright(spawn_list[i].angles) * var_887e6ebe * 0.2, spawn_list[i].angles);
        zm_unitrigger::function_c4a5fdf5(unitrigger_stub, 1);
        if (is_true(spawn_list[i].require_look_from)) {
            unitrigger_stub.require_look_from = 1;
        }
        unitrigger_stub.target = spawn_list[i].target;
        unitrigger_stub.targetname = spawn_list[i].targetname;
        zm_unitrigger::function_c9e3607c(unitrigger_stub, "HINT_WEAPON", spawn_list[i].weapon);
        zm_unitrigger::unitrigger_set_hint_string(unitrigger_stub, zm_weapons::get_weapon_hint(spawn_list[i].weapon), zm_weapons::get_weapon_cost(spawn_list[i].weapon));
        if (is_true(spawn_list[i].require_look_from)) {
            unitrigger_stub.require_look_from = 1;
        }
        if (isdefined(spawn_list[i].script_string) && is_true(int(spawn_list[i].script_string))) {
            zm_unitrigger::function_89380dda(unitrigger_stub, 0);
        } else {
            zm_unitrigger::function_89380dda(unitrigger_stub, 1);
        }
        unitrigger_stub.target = spawn_list[i].target;
        unitrigger_stub.targetname = spawn_list[i].targetname;
        unitrigger_stub.weapon = spawn_list[i].weapon;
        unitrigger_stub.item_entry = spawn_list[i].zombie_weapon_upgrade + "_item_sr";
        unitrigger_stub.clientfieldname = clientfieldname;
        if (unitrigger_stub.weapon.weapclass != "melee" && unitrigger_stub.weapon.weapclass != "grenade") {
            zm_unitrigger::function_2547d31f(unitrigger_stub, &wall_weapon_update_prompt);
        }
        zm_unitrigger::register_static_unitrigger(unitrigger_stub, &weapon_spawn_think);
        spawn_list[i].trigger_stub = unitrigger_stub;
        if (isdefined(target_struct.target) && !is_true(level.var_c1013f84)) {
            if (is_true(level.var_2e5167c9)) {
                spawn_list[i] thread function_44840c02(target_struct.target);
            }
        }
    }
    level._spawned_wallbuys = spawn_list;
    if (isdefined(tempmodel)) {
        tempmodel delete();
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x2 linked
// Checksum 0x93f1f500, Offset: 0x3980
// Size: 0x94
function function_44840c02(str_targetname) {
    level flag::wait_till_all(array(#"zones_initialized", #"hash_4f4b65226250fc99"));
    var_8d0ce13b = getent(str_targetname, "targetname");
    var_8d0ce13b clientfield::set("wallbuy_ambient_fx", 1);
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 2, eflags: 0x0
// Checksum 0x3368687a, Offset: 0x3a20
// Size: 0x224
function function_c970de50(trigger, parent) {
    if (isdefined(parent)) {
        trigger enablelinkto();
        trigger linkto(parent, "", self worldtolocalcoords(trigger.origin), (0, 0, 0));
    }
    trigger.weapon = getweapon(trigger.zombie_weapon_upgrade);
    trigger setcursorhint("HINT_WEAPON_3D", trigger.weapon);
    trigger.cost = zm_weapons::get_weapon_cost(trigger.weapon);
    trigger.hint_string = zm_weapons::get_weapon_hint(trigger.weapon);
    trigger.hint_parm1 = trigger.cost;
    trigger sethintstring(trigger.hint_string);
    self.buyable_weapon = trigger;
    level._spawned_wallbuys[level._spawned_wallbuys.size] = trigger;
    weapon_model = getent(trigger.target, "targetname");
    if (isdefined(parent)) {
        weapon_model linkto(parent, "", self worldtolocalcoords(weapon_model.origin), weapon_model.angles + self.angles);
        weapon_model setmovingplatformenabled(1);
        weapon_model._linked_ent = trigger;
    }
    weapon_model show();
    weapon_model thread function_753c491c(trigger);
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x2 linked
// Checksum 0x45d30ae, Offset: 0x3c50
// Size: 0x74
function function_753c491c(trigger) {
    self.orgmodel = self.model;
    self setmodel(#"wpn_t7_none_world");
    trigger waittill(#"trigger");
    self setmodel(self.orgmodel);
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 3, eflags: 0x0
// Checksum 0x2304975e, Offset: 0x3cd0
// Size: 0x614
function add_dynamic_wallbuy(weapon, wallbuy, pristine) {
    spawned_wallbuy = undefined;
    for (i = 0; i < level._spawned_wallbuys.size; i++) {
        if (level._spawned_wallbuys[i].target == wallbuy) {
            spawned_wallbuy = level._spawned_wallbuys[i];
            break;
        }
    }
    if (!isdefined(spawned_wallbuy)) {
        assertmsg("<unknown string>");
        return;
    }
    if (isdefined(spawned_wallbuy.trigger_stub)) {
        assertmsg("<unknown string>");
        return;
    }
    target_struct = struct::get(wallbuy, "targetname");
    wallmodel = zm_utility::spawn_weapon_model(weapon, undefined, target_struct.origin, target_struct.angles, undefined);
    clientfieldname = spawned_wallbuy.clientfieldname;
    model = weapon.worldmodel;
    unitrigger_stub = spawnstruct();
    unitrigger_stub.origin = target_struct.origin;
    unitrigger_stub.angles = target_struct.angles;
    wallmodel.origin = target_struct.origin;
    wallmodel.angles = target_struct.angles;
    mins = undefined;
    maxs = undefined;
    absmins = undefined;
    absmaxs = undefined;
    wallmodel setmodel(model);
    wallmodel useweaponhidetags(weapon);
    mins = wallmodel getmins();
    maxs = wallmodel getmaxs();
    absmins = wallmodel getabsmins();
    absmaxs = wallmodel getabsmaxs();
    bounds = absmaxs - absmins;
    unitrigger_stub.script_length = bounds[0] * 0.25;
    unitrigger_stub.script_width = bounds[1];
    unitrigger_stub.script_height = bounds[2];
    unitrigger_stub.origin -= anglestoright(unitrigger_stub.angles) * unitrigger_stub.script_length * 0.4;
    unitrigger_stub.target = spawned_wallbuy.target;
    unitrigger_stub.targetname = "weapon_upgrade";
    unitrigger_stub.cursor_hint = "HINT_NOICON";
    unitrigger_stub.first_time_triggered = !pristine;
    if (!weapon.ismeleeweapon) {
        if (pristine || zm_loadout::is_placeable_mine(weapon)) {
            unitrigger_stub.hint_string = zm_weapons::get_weapon_hint(weapon);
        } else {
            unitrigger_stub.hint_string = get_weapon_hint_ammo();
        }
        unitrigger_stub.cost = zm_weapons::get_weapon_cost(weapon);
    }
    unitrigger_stub.weapon = weapon;
    unitrigger_stub.weapon_upgrade = weapon;
    unitrigger_stub.script_unitrigger_type = "unitrigger_box_use";
    unitrigger_stub.require_look_at = 1;
    unitrigger_stub.clientfieldname = clientfieldname;
    zm_unitrigger::unitrigger_force_per_player_triggers(unitrigger_stub, 1);
    if (weapon.ismeleeweapon) {
        if (weapon == "tazer_knuckles" && isdefined(level.taser_trig_adjustment)) {
            unitrigger_stub.origin += level.taser_trig_adjustment;
        }
        zm_melee_weapon::add_stub(unitrigger_stub, weapon);
        zm_unitrigger::register_static_unitrigger(unitrigger_stub, &zm_melee_weapon::melee_weapon_think);
    } else {
        unitrigger_stub.prompt_and_visibility_func = &wall_weapon_update_prompt;
        zm_unitrigger::register_static_unitrigger(unitrigger_stub, &weapon_spawn_think);
    }
    spawned_wallbuy.trigger_stub = unitrigger_stub;
    weaponidx = undefined;
    if (isdefined(level.buildable_wallbuy_weapons)) {
        for (i = 0; i < level.buildable_wallbuy_weapons.size; i++) {
            if (weapon == level.buildable_wallbuy_weapons[i]) {
                weaponidx = i;
                break;
            }
        }
    }
    if (isdefined(weaponidx)) {
        level clientfield::set(clientfieldname + "_idx", weaponidx + 1);
        wallmodel delete();
        if (!pristine) {
            level clientfield::set(clientfieldname, 1);
        }
        return;
    }
    level clientfield::set(clientfieldname, 1);
    wallmodel show();
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x2 linked
// Checksum 0x6eb40da0, Offset: 0x42f0
// Size: 0x470
function wall_weapon_update_prompt(player) {
    if (!isdefined(player.currentweapon)) {
        return false;
    }
    weapon = self.stub.weapon;
    player_has_weapon = player zm_weapons::has_weapon_or_upgrade(weapon);
    if (!player_has_weapon && is_true(level.weapons_using_ammo_sharing)) {
        shared_ammo_weapon = player zm_weapons::get_shared_ammo_weapon(self.zombie_weapon_upgrade);
        if (isdefined(shared_ammo_weapon)) {
            weapon = shared_ammo_weapon;
            player_has_weapon = 1;
        }
    }
    if (isdefined(level.func_override_wallbuy_prompt)) {
        if (!self [[ level.func_override_wallbuy_prompt ]](player, player_has_weapon)) {
            return false;
        }
    } else if (zm_trial_disable_buys::is_active()) {
        return false;
    } else if (!player_has_weapon) {
        self.stub.cursor_hint = "HINT_WEAPON";
        cost = zm_weapons::get_weapon_cost(weapon);
        if (player bgb::is_enabled(#"zm_bgb_secret_shopper") && !zm_weapons::is_wonder_weapon(player.currentweapon) && player.currentweapon.type !== "melee") {
            if (player function_8b1a219a()) {
                self.stub.hint_string = #"hash_7778a99e3a7d47";
            } else {
                self.stub.hint_string = #"hash_18379e4e114fabf9";
            }
            if (self.stub.var_8d306e51) {
                self sethintstringforplayer(player, self.stub.hint_string);
            } else {
                self sethintstring(self.stub.hint_string);
            }
        } else if (player bgb::is_enabled(#"zm_bgb_wall_to_wall_clearance")) {
            if (player function_8b1a219a()) {
                self.stub.hint_string = #"hash_7a24a147b8f09767";
            } else {
                self.stub.hint_string = #"hash_791fe9da17cf7059";
            }
            if (self.stub.var_8d306e51) {
                self sethintstringforplayer(player, self.stub.hint_string);
            } else {
                self sethintstring(self.stub.hint_string);
            }
        } else {
            if (player function_8b1a219a()) {
                self.stub.hint_string = #"hash_2791ecebb85142c4";
            } else {
                self.stub.hint_string = #"hash_60606b68e93a29c8";
            }
            if (self.stub.var_8d306e51) {
                self sethintstringforplayer(player, self.stub.hint_string);
            } else {
                self sethintstring(self.stub.hint_string);
            }
        }
    } else {
        return false;
    }
    self.stub.cursor_hint = "HINT_WEAPON";
    self.stub.cursor_hint_weapon = weapon;
    self setcursorhint(self.stub.cursor_hint, self.stub.cursor_hint_weapon);
    return true;
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x2 linked
// Checksum 0x8a644d93, Offset: 0x4768
// Size: 0xbc
function reset_wallbuy_internal(set_hint_string) {
    if (is_true(self.first_time_triggered)) {
        self.first_time_triggered = 0;
        if (isdefined(self.clientfieldname)) {
            level clientfield::set(self.clientfieldname, 0);
        }
        if (set_hint_string) {
            hint_string = zm_weapons::get_weapon_hint(self.weapon);
            cost = zm_weapons::get_weapon_cost(self.weapon);
            self sethintstring(hint_string);
        }
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 0, eflags: 0x0
// Checksum 0xe72edb2a, Offset: 0x4830
// Size: 0x362
function reset_wallbuys() {
    weapon_spawns = [];
    weapon_spawns = getentarray("weapon_upgrade", "targetname");
    melee_and_grenade_spawns = [];
    melee_and_grenade_spawns = getentarray("bowie_upgrade", "targetname");
    melee_and_grenade_spawns = arraycombine(melee_and_grenade_spawns, getentarray("sickle_upgrade", "targetname"), 1, 0);
    melee_and_grenade_spawns = arraycombine(melee_and_grenade_spawns, getentarray("tazer_upgrade", "targetname"), 1, 0);
    if (!is_true(level.headshots_only)) {
        melee_and_grenade_spawns = arraycombine(melee_and_grenade_spawns, getentarray("claymore_purchase", "targetname"), 1, 0);
    }
    for (i = 0; i < weapon_spawns.size; i++) {
        weapon_spawns[i].weapon = getweapon(weapon_spawns[i].zombie_weapon_upgrade);
        weapon_spawns[i] reset_wallbuy_internal(1);
    }
    for (i = 0; i < melee_and_grenade_spawns.size; i++) {
        melee_and_grenade_spawns[i].weapon = getweapon(melee_and_grenade_spawns[i].zombie_weapon_upgrade);
        melee_and_grenade_spawns[i] reset_wallbuy_internal(0);
    }
    if (isdefined(level._unitriggers)) {
        candidates = [];
        for (i = 0; i < level._unitriggers.trigger_stubs.size; i++) {
            stub = level._unitriggers.trigger_stubs[i];
            tn = stub.targetname;
            if (tn == "weapon_upgrade" || tn == "bowie_upgrade" || tn == "sickle_upgrade" || tn == "tazer_upgrade" || tn == "claymore_purchase") {
                stub.first_time_triggered = 0;
                if (isdefined(stub.clientfieldname)) {
                    level clientfield::set(stub.clientfieldname, 0);
                }
                if (tn == "weapon_upgrade") {
                    stub.hint_string = zm_weapons::get_weapon_hint(stub.weapon);
                    stub.cost = zm_weapons::get_weapon_cost(stub.weapon);
                }
            }
        }
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 0, eflags: 0x2 linked
// Checksum 0x8df693f6, Offset: 0x4ba0
// Size: 0x12
function get_weapon_hint_ammo() {
    return #"hash_60606b68e93a29c8";
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 2, eflags: 0x0
// Checksum 0xabbbfa7, Offset: 0x4bc0
// Size: 0x3c
function weapon_set_first_time_hint(*cost, *ammo_cost) {
    self sethintstring(get_weapon_hint_ammo());
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x2 linked
// Checksum 0xcf0a234d, Offset: 0x4c08
// Size: 0x3a
function placeable_mine_can_buy_weapon_extra_check_func(w_weapon) {
    if (isdefined(w_weapon) && w_weapon == self zm_loadout::get_player_placeable_mine()) {
        return false;
    }
    return true;
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 0, eflags: 0x2 linked
// Checksum 0x5eed4701, Offset: 0x4c50
// Size: 0xd40
function weapon_spawn_think() {
    self endon(#"death");
    var_4ee4441d = is_true(self.var_9f32a5f4);
    rarity = #"none";
    if (isdefined(self.rarity)) {
        rarity = self.rarity;
    }
    cost = self.cost;
    ammo_cost = zm_weapons::get_ammo_cost(self.weapon);
    is_grenade = self.weapon.isgrenadeweapon;
    shared_ammo_weapon = undefined;
    if (isdefined(self.parent_player) && !is_grenade) {
        self.parent_player notify(#"zm_bgb_secret_shopper", {#trigger:self});
    }
    second_endon = undefined;
    if (isdefined(self.stub)) {
        second_endon = "kill_trigger";
        self.first_time_triggered = self.stub.first_time_triggered;
    }
    onlyplayer = undefined;
    can_buy_weapon_extra_check_func = undefined;
    if (isdefined(self.stub) && is_true(self.stub.trigger_per_player)) {
        onlyplayer = self.parent_player;
        if (zm_loadout::is_placeable_mine(self.weapon)) {
            can_buy_weapon_extra_check_func = &placeable_mine_can_buy_weapon_extra_check_func;
        }
    }
    self thread zm_magicbox::decide_hide_show_hint("stop_hint_logic", second_endon, onlyplayer, can_buy_weapon_extra_check_func, 0);
    if (is_grenade || zm_loadout::is_melee_weapon(self.weapon)) {
        self.first_time_triggered = 0;
        if (var_4ee4441d) {
            hint = #"hash_6ee6f17a7c9eb226";
        } else {
            hint = zm_weapons::get_weapon_hint(self.weapon);
        }
        self sethintstring(hint);
        cursor_hint = "HINT_WEAPON";
        cursor_hint_weapon = self.weapon;
        self setcursorhint(cursor_hint, cursor_hint_weapon);
    } else if (!isdefined(self.first_time_triggered)) {
        self.first_time_triggered = 0;
        if (isdefined(self.stub)) {
            self.stub.first_time_triggered = 0;
        }
    }
    for (;;) {
        waitresult = self waittill(#"trigger");
        player = waitresult.activator;
        currentweapon = player getcurrentweapon();
        cost = self.cost;
        if (!zm_utility::is_player_valid(player)) {
            player thread zm_utility::ignore_triggers(0.5);
            continue;
        }
        if (!player zm_magicbox::can_buy_weapon(0) || player ismeleeing()) {
            wait(0.1);
            continue;
        }
        if (isdefined(self.stub) && is_true(self.stub.require_look_from)) {
            toplayer = player util::get_eye() - self.origin;
            forward = -1 * anglestoright(self.angles);
            dot = vectordot(toplayer, forward);
            if (dot < 0) {
                continue;
            }
        }
        if (player zm_loadout::has_powerup_weapon() || currentweapon.isheroweapon) {
            wait(0.1);
            continue;
        }
        if (zm_trial_disable_buys::is_active()) {
            wait(0.1);
            continue;
        }
        if (isdefined(player.var_44b2ea64)) {
            foreach (func_override in player.var_44b2ea64) {
                n_cost = player [[ func_override ]](self.weapon, self);
                if (isdefined(n_cost)) {
                    if (n_cost < cost) {
                        cost = n_cost;
                    }
                }
            }
        }
        if (isdefined(player.check_override_wallbuy_purchase)) {
            if (player [[ player.check_override_wallbuy_purchase ]](self.weapon, self)) {
                continue;
            }
        }
        if (zm_utility::function_e05ac4ad(player, cost)) {
            rarity = isdefined(self.rarity) ? self.rarity : #"white";
            if (self.first_time_triggered == 0) {
                self show_all_weapon_buys(player, cost, ammo_cost, is_grenade, var_4ee4441d);
            }
            player zm_score::minus_to_player_score(cost);
            if (isdefined(level.var_db463b5)) {
                self [[ level.var_db463b5 ]](player);
            }
            level notify(#"weapon_bought", {#player:player, #weapon:self.weapon});
            player zm_stats::increment_challenge_stat(#"survivalist_buy_wallbuy", undefined, 1);
            player zm_stats::increment_challenge_stat(#"hash_385398b8acbf8b4a", undefined, 1);
            player zm_stats::increment_challenge_stat(#"hash_702d98df99af63d5", undefined, 1);
            player zm_stats::function_c0c6ab19(#"weapons_bought", 1, 1);
            player zm_stats::function_c0c6ab19(#"wallbuys", 1, 1);
            player contracts::increment_zm_contract(#"contract_zm_weapons_bought", 1, #"zstandard");
            player contracts::increment_zm_contract(#"contract_zm_wallbuys", 1, #"zstandard");
            if (self.weapon.isriotshield) {
                player zm_equipment::give(self.weapon);
                if (isdefined(player.player_shield_reset_health)) {
                    player [[ player.player_shield_reset_health ]](self.weapon);
                }
            } else {
                if (zm_loadout::is_lethal_grenade(self.weapon)) {
                    player zm_weapons::weapon_take(player zm_loadout::get_player_lethal_grenade());
                    player zm_loadout::set_player_lethal_grenade(self.weapon);
                }
                weapon = self.weapon;
                if (should_upgrade_weapon(player)) {
                    if (player zm_weapons::can_upgrade_weapon(weapon)) {
                        weapon = zm_weapons::get_upgrade_weapon(weapon);
                        player notify(#"zm_bgb_wall_power_used");
                    }
                }
                if (isdefined(self.item_name)) {
                    item_name = self.item_name;
                    if (self.weapon.weapclass === "pistol" && !is_true(self.weapon.isdualwield)) {
                        if (math::cointoss(15)) {
                            item_name = zm_weapons::function_c69910e2(self.weapon.name, rarity);
                            if (!isdefined(item_name)) {
                                item_name = self.item_name;
                            }
                        }
                    }
                    point = function_4ba8fde(item_name);
                    if (isdefined(point.itementry.var_a53e9db0)) {
                        weapon = namespace_65181344::function_67456242(point.itementry);
                        dropitem = item_drop::drop_item(0, weapon, 1, weapon.maxammo, point.id, self.origin, self.angles, 1);
                        dropitem.wallbuy_weapon = 1;
                        dropitem.hidetime = 1;
                        dropitem hide();
                        player zm_weapons::function_98776900(dropitem, 0, 0);
                    } else {
                        player zm_weapons::function_98776900(point, 0, 0);
                    }
                } else {
                    player zm_weapons::weapon_give(weapon, 0, 1, undefined, undefined, rarity);
                }
            }
            if (isdefined(weapon)) {
                level notify(#"hash_159f5d1e1b511031", {#player:player, #weapon:self.weapon});
                player zm_stats::increment_client_stat("wallbuy_weapons_purchased");
                player zm_stats::increment_player_stat("wallbuy_weapons_purchased");
                player zm_stats::function_8f10788e("boas_wallbuy_weapons_purchased");
                bb::logpurchaseevent(player, self, cost, weapon.name, player zm_weapons::has_upgrade(weapon), "_weapon", "_purchase");
                telemetry::function_18135b72(#"hash_44873692d238cf3b", {#weapon:weapon, #rarity:rarity, #purchaser:player});
                weaponindex = undefined;
                if (isdefined(weaponindex)) {
                    weaponindex = matchrecordgetweaponindex(weapon);
                }
                if (isdefined(weaponindex)) {
                    player recordmapevent(6, gettime(), player.origin, level.round_number, weaponindex, cost);
                }
            }
        } else {
            zm_utility::play_sound_on_ent("no_purchase");
            player zm_audio::create_and_play_dialog(#"general", #"outofmoney");
        }
        if (isdefined(player)) {
            player notify(#"wallbuy_done");
            if (isdefined(self.stub) && isdefined(self.stub.prompt_and_visibility_func)) {
                self [[ self.stub.prompt_and_visibility_func ]](player);
            }
        }
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x2 linked
// Checksum 0x6e1d84ef, Offset: 0x5998
// Size: 0x56
function should_upgrade_weapon(player) {
    if (isdefined(level.var_f270168a)) {
        return [[ level.var_f270168a ]]();
    }
    if (player bgb::is_enabled(#"zm_bgb_wall_power")) {
        return 1;
    }
    return 0;
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 5, eflags: 0x2 linked
// Checksum 0x43b87a71, Offset: 0x59f8
// Size: 0x42a
function show_all_weapon_buys(player, *cost, *ammo_cost, *is_grenade, var_4ee4441d = 0) {
    model = getent(self.target, "targetname");
    is_melee = zm_loadout::is_melee_weapon(self.weapon);
    if (isdefined(model)) {
        model thread weapon_show(is_grenade, var_4ee4441d);
    } else if (isdefined(self.clientfieldname)) {
        level clientfield::set(self.clientfieldname, 1);
    }
    if (zm_utility::get_story() != 1 && !isdefined(model)) {
        var_6ff4b667 = struct::get(self.target, "targetname");
        if (isdefined(var_6ff4b667) && isdefined(var_6ff4b667.target)) {
            var_8d0ce13b = getent(var_6ff4b667.target, "targetname");
            var_8d0ce13b clientfield::set("wallbuy_reveal_fx", 1);
            var_8d0ce13b clientfield::set("wallbuy_ambient_fx", 0);
        }
    }
    self.first_time_triggered = 1;
    if (isdefined(self.stub)) {
        self.stub.first_time_triggered = 1;
    }
    if (!is_true(level.dont_link_common_wallbuys) && isdefined(level._spawned_wallbuys)) {
        for (i = 0; i < level._spawned_wallbuys.size; i++) {
            wallbuy = level._spawned_wallbuys[i];
            if (isdefined(self.stub) && isdefined(wallbuy.trigger_stub) && self.stub.clientfieldname == wallbuy.trigger_stub.clientfieldname) {
                continue;
            }
            if (self.weapon == wallbuy.weapon) {
                if (isdefined(wallbuy.trigger_stub) && isdefined(wallbuy.trigger_stub.clientfieldname)) {
                    level clientfield::set(wallbuy.trigger_stub.clientfieldname, 1);
                    var_6ff4b667 = struct::get(wallbuy.target, "targetname");
                    if (isdefined(var_6ff4b667) && isdefined(var_6ff4b667.target)) {
                        var_8d0ce13b = getent(var_6ff4b667.target, "targetname");
                        var_8d0ce13b clientfield::set("wallbuy_ambient_fx", 0);
                    }
                } else if (isdefined(wallbuy.target)) {
                    model = getent(wallbuy.target, "targetname");
                    if (isdefined(model)) {
                        model thread weapon_show(is_grenade);
                    }
                }
                if (isdefined(wallbuy.trigger_stub)) {
                    wallbuy.trigger_stub.first_time_triggered = 1;
                    if (isdefined(wallbuy.trigger_stub.trigger)) {
                        wallbuy.trigger_stub.trigger.first_time_triggered = 1;
                    }
                }
            }
        }
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 2, eflags: 0x2 linked
// Checksum 0xe0e73d85, Offset: 0x5e30
// Size: 0x294
function weapon_show(player, var_4ee4441d = 0) {
    if (var_4ee4441d) {
        final_pos = self.origin;
        var_e27c9160 = self worldtolocalcoords(final_pos);
        var_e27c9160 = (var_e27c9160[0], var_e27c9160[1] - 3, var_e27c9160[2]);
        self.origin = self localtoworldcoords(var_e27c9160);
        waitframe(1);
        self show();
        zm_utility::play_sound_at_pos("weapon_show", self.origin, self);
        time = 1;
        if (!isdefined(self._linked_ent)) {
            self moveto(final_pos, time);
        }
        return;
    }
    player_angles = vectortoangles(player.origin - self.origin);
    player_yaw = player_angles[1];
    weapon_yaw = self.angles[1];
    if (isdefined(self.script_int)) {
        weapon_yaw -= self.script_int;
    }
    yaw_diff = angleclamp180(player_yaw - weapon_yaw);
    if (yaw_diff > 0) {
        yaw = weapon_yaw - 90;
    } else {
        yaw = weapon_yaw + 90;
    }
    self.og_origin = self.origin;
    self.origin += anglestoforward((0, yaw, 0)) * 8;
    waitframe(1);
    self show();
    zm_utility::play_sound_at_pos("weapon_show", self.origin, self);
    time = 1;
    if (!isdefined(self._linked_ent)) {
        self moveto(self.og_origin, time);
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x2 linked
// Checksum 0x82d2dba, Offset: 0x60d0
// Size: 0xb8
function is_wallbuy(w_to_check) {
    w_base = zm_weapons::get_base_weapon(w_to_check);
    foreach (s_wallbuy in level._spawned_wallbuys) {
        if (s_wallbuy.weapon == w_base) {
            return true;
        }
    }
    return false;
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x0
// Checksum 0x42b98e37, Offset: 0x6190
// Size: 0x17a
function function_b5992fb1(str_rarity = #"none") {
    switch (str_rarity) {
    case #"green":
        self clientfield::set("wallbuy_ambient_fx", 3);
        break;
    case #"blue":
        self clientfield::set("wallbuy_ambient_fx", 4);
        break;
    case #"purple":
        self clientfield::set("wallbuy_ambient_fx", 5);
        break;
    case #"orange":
        self clientfield::set("wallbuy_ambient_fx", 6);
        break;
    case #"gold":
        self clientfield::set("wallbuy_ambient_fx", 7);
        break;
    default:
        self clientfield::set("wallbuy_ambient_fx", 0);
        break;
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x0
// Checksum 0xda0fe513, Offset: 0x6318
// Size: 0x17a
function function_36eb0acc(str_rarity = #"none") {
    switch (str_rarity) {
    case #"green":
        self clientfield::set("model_rarity_rob", 3);
        break;
    case #"blue":
        self clientfield::set("model_rarity_rob", 4);
        break;
    case #"purple":
        self clientfield::set("model_rarity_rob", 5);
        break;
    case #"orange":
        self clientfield::set("model_rarity_rob", 6);
        break;
    case #"gold":
        self clientfield::set("model_rarity_rob", 7);
        break;
    default:
        self clientfield::set("model_rarity_rob", 0);
        break;
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x0
// Checksum 0x7dad6e11, Offset: 0x64a0
// Size: 0xa8
function function_c047c228(func_override) {
    if (!isdefined(self.var_44b2ea64)) {
        self.var_44b2ea64 = [];
    }
    if (!isdefined(self.var_44b2ea64)) {
        self.var_44b2ea64 = [];
    } else if (!isarray(self.var_44b2ea64)) {
        self.var_44b2ea64 = array(self.var_44b2ea64);
    }
    if (!isinarray(self.var_44b2ea64, func_override)) {
        self.var_44b2ea64[self.var_44b2ea64.size] = func_override;
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x0
// Checksum 0x8ae035fb, Offset: 0x6550
// Size: 0x24
function function_a6889c(func_override) {
    arrayremovevalue(self.var_44b2ea64, func_override);
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x0
// Checksum 0x189427b2, Offset: 0x6580
// Size: 0xa8
function function_48f914bd(func_override) {
    if (!isdefined(self.var_6d2d0163)) {
        self.var_6d2d0163 = [];
    }
    if (!isdefined(self.var_6d2d0163)) {
        self.var_6d2d0163 = [];
    } else if (!isarray(self.var_6d2d0163)) {
        self.var_6d2d0163 = array(self.var_6d2d0163);
    }
    if (!isinarray(self.var_6d2d0163, func_override)) {
        self.var_6d2d0163[self.var_6d2d0163.size] = func_override;
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x0
// Checksum 0xc1816b54, Offset: 0x6630
// Size: 0x24
function function_99911dae(func_override) {
    arrayremovevalue(self.var_6d2d0163, func_override);
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x0
// Checksum 0x65d368f3, Offset: 0x6660
// Size: 0xa8
function function_33023da5(func_override) {
    if (!isdefined(self.var_dc25727a)) {
        self.var_dc25727a = [];
    }
    if (!isdefined(self.var_dc25727a)) {
        self.var_dc25727a = [];
    } else if (!isarray(self.var_dc25727a)) {
        self.var_dc25727a = array(self.var_dc25727a);
    }
    if (!isinarray(self.var_dc25727a, func_override)) {
        self.var_dc25727a[self.var_dc25727a.size] = func_override;
    }
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x0
// Checksum 0xbe2cea59, Offset: 0x6710
// Size: 0x24
function function_782e8955(func_override) {
    arrayremovevalue(self.var_dc25727a, func_override);
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 3, eflags: 0x2 linked
// Checksum 0xd5715753, Offset: 0x6740
// Size: 0x69e
function function_d26435e4(wallbuy, rarity = undefined, weapon_name = undefined) {
    if (!isdefined(rarity)) {
        rarity = wallbuy.script_string;
    }
    if (!isdefined(weapon_name)) {
        weapon_name = wallbuy.script_noteworthy;
    }
    switch (weapon_name) {
    case #"ar_accurate_t9":
        str_model = #"hash_b18f20cb6f2d3ee" + function_db435e40(rarity);
        break;
    case #"ar_damage_t9":
        str_model = #"hash_6d658fd7592db043" + function_db435e40(rarity);
        break;
    case #"ar_fastfire_t9":
        str_model = #"hash_3c95f8ce2c0fbdfe" + function_db435e40(rarity);
        break;
    case #"ar_mobility_t9":
        str_model = #"hash_32fb24c0c5d102d3" + function_db435e40(rarity);
        break;
    case #"ar_standard_t9":
        str_model = #"hash_4d1f14fc6af93fdf" + function_db435e40(rarity);
        break;
    case #"lmg_accurate_t9":
        str_model = #"hash_4773313d864ae5ed" + function_db435e40(rarity);
        break;
    case #"lmg_light_t9":
        str_model = #"hash_16391617b28fbdb1" + function_db435e40(rarity);
        break;
    case #"lmg_slowfire_t9":
        str_model = #"hash_75fc409d6903b2d8" + function_db435e40(rarity);
        break;
    case #"pistol_burst_t9":
        str_model = #"hash_430e069dea3f037a" + function_db435e40(rarity);
        break;
    case #"pistol_revolver_t9":
        str_model = #"hash_78d9d44a7f144889" + function_db435e40(rarity);
        break;
    case #"pistol_semiauto_t9":
        str_model = #"hash_539f03e2e452a63f" + function_db435e40(rarity);
        break;
    case #"shotgun_fullauto_t9":
        str_model = #"hash_2a19f21a12cde617" + function_db435e40(rarity);
        break;
    case #"shotgun_pump_t9":
        str_model = #"hash_40883cceb6c55cdf" + function_db435e40(rarity);
        break;
    case #"shotgun_semiauto_t9":
        str_model = #"hash_2683df0426369c92" + function_db435e40(rarity);
        break;
    case #"smg_burst_t9":
        str_model = #"hash_23eb3df35de8a3b0" + function_db435e40(rarity);
        break;
    case #"smg_capacity_t9":
        str_model = #"hash_3d694269a762a916" + function_db435e40(rarity);
        break;
    case #"smg_fastfire_t9":
        str_model = #"hash_6367b1f6911d804c" + function_db435e40(rarity);
        break;
    case #"smg_handling_t9":
        str_model = #"hash_23ce74f320b45a3d" + function_db435e40(rarity);
        break;
    case #"smg_heavy_t9":
        str_model = #"hash_65daac53d155f273" + function_db435e40(rarity);
        break;
    case #"smg_standard_t9":
        str_model = #"hash_14739c03c7098011" + function_db435e40(rarity);
        break;
    case #"sniper_powersemi_t9":
        str_model = #"hash_134924d394746989" + function_db435e40(rarity);
        break;
    case #"sniper_standard_t9":
        str_model = #"hash_37cf1b0c57f3c6f7" + function_db435e40(rarity);
        break;
    case #"tr_damagesemi_t9":
        str_model = #"hash_47467fcd21ac00b8" + function_db435e40(rarity);
        break;
    case #"tr_longburst_t9":
        str_model = #"hash_3736072ca55132fb" + function_db435e40(rarity);
        break;
    case #"tr_powerburst_t9":
        str_model = #"hash_34775ab64087e586" + function_db435e40(rarity);
        break;
    case #"tr_precisionsemi_t9":
        str_model = #"hash_76be15429ec12365" + function_db435e40(rarity);
        break;
    case #"sniper_quickscope_t9":
        str_model = #"hash_3cf732953f907c47" + function_db435e40(rarity);
        break;
    default:
        str_model = #"hash_34775ab64087e586" + function_db435e40(rarity);
        break;
    }
    return str_model;
}

// Namespace zm_wallbuy/zm_wallbuy
// Params 1, eflags: 0x6 linked
// Checksum 0xd4da25ae, Offset: 0x6de8
// Size: 0xda
function private function_db435e40(str_rarity = "white") {
    switch (str_rarity) {
    case #"green":
        return "_uncommon";
    case #"purple":
        return "_epic";
    case #"orange":
        return "_legendary";
    case #"blue":
        return "_rare";
    case #"gold":
        return "_ultra";
    default:
        return "";
    }
}


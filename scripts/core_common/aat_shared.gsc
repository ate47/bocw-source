// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\util_shared.gsc;

#namespace aat;

// Namespace aat/aat_shared
// Params 0, eflags: 0x5
// Checksum 0xc805f809, Offset: 0x1e8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"aat", &preinit, &finalize_clientfields, undefined, undefined);
}

// Namespace aat/aat_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x69a37ce3, Offset: 0x240
// Size: 0x22c
function private preinit() {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    if (!isdefined(level.aat)) {
        level.aat = [];
    }
    clientfield::register("toplayer", "rob_ammo_mod_ready", 1, 1, "int");
    clientfield::register_clientuimodel("hud_items.gibDismembermentType", 16000, 5, "int", 0);
    level.aat[#"none"] = spawnstruct();
    level.aat[#"none"].name = "none";
    level.aat_reroll = [];
    level.var_bdba6ee8 = [];
    callback::on_connect(&on_player_connect);
    callback::on_ai_damage(&on_ai_damage);
    callback::function_33f0ddd3(&function_33f0ddd3);
    spawners = getspawnerarray();
    foreach (spawner in spawners) {
        spawner spawner::add_spawn_function(&aat_cooldown_init);
    }
    level.aat_exemptions = [];
    /#
        level thread setup_devgui();
    #/
}

// Namespace aat/aat_shared
// Params 0, eflags: 0x0
// Checksum 0x6a371a64, Offset: 0x478
// Size: 0x90
function function_2b3bcce0() {
    if (!isdefined(level.var_e44e90d6)) {
        return;
    }
    foreach (call in level.var_e44e90d6) {
        [[ call ]]();
    }
}

// Namespace aat/aat_shared
// Params 2, eflags: 0x0
// Checksum 0x6b064c31, Offset: 0x510
// Size: 0x84
function function_571fceb(aat_name, main) {
    if (!isdefined(level.var_e44e90d6)) {
        level.var_e44e90d6 = [];
    }
    /#
        if (isdefined(level.var_e44e90d6[aat_name])) {
            println("<unknown string>" + aat_name + "<unknown string>");
        }
    #/
    level.var_e44e90d6[aat_name] = main;
}

// Namespace aat/aat_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x54985518, Offset: 0x5a0
// Size: 0xb8
function private on_player_connect() {
    self.aat = [];
    self.aat_cooldown_start = [];
    foreach (key, v in level.aat) {
        self.aat_cooldown_start[key] = 0;
    }
    self thread watch_weapon_changes();
    /#
    #/
}

// Namespace aat/aat_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x9b9ffc25, Offset: 0x660
// Size: 0xb4
function private function_33f0ddd3(s_event) {
    if (s_event.event === "take_weapon" && isdefined(s_event.weapon)) {
        if (isplayer(self) && isdefined(s_event.weapon)) {
            weapon = function_702fb333(s_event.weapon);
            if (isdefined(self.aat[weapon])) {
                self remove(weapon);
            }
        }
    }
}

/#

    // Namespace aat/aat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x3b3758e3, Offset: 0x720
    // Size: 0x19c
    function setup_devgui(var_e73fddff) {
        if (!isdefined(var_e73fddff)) {
            var_e73fddff = "<unknown string>";
        }
        waittillframeend();
        setdvar(#"aat_acquire_devgui", "<unknown string>");
        aat_devgui_base = var_e73fddff;
        foreach (key, v in level.aat) {
            if (key != "<unknown string>") {
                name = function_9e72a96(key);
                util::add_debug_command(aat_devgui_base + name + "<unknown string>" + "<unknown string>" + "<unknown string>" + name + "<unknown string>");
            }
        }
        util::add_debug_command(aat_devgui_base + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        level thread aat_devgui_think();
    }

    // Namespace aat/aat_shared
    // Params 0, eflags: 0x4
    // Checksum 0x725bf45f, Offset: 0x8c8
    // Size: 0x278
    function private aat_devgui_think() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        for (;;) {
            aat_name = getdvarstring(#"aat_acquire_devgui");
            if (aat_name != "<unknown string>") {
                for (i = 0; i < level.players.size; i++) {
                    if (aat_name == "<unknown string>") {
                        if (sessionmodeiszombiesgame()) {
                            weapon = level.players[i] getcurrentweapon();
                            item = level.players[i] item_inventory::function_230ceec4(weapon);
                            if (isdefined(item.aat)) {
                                item.aat = undefined;
                            }
                        }
                        level.players[i] thread remove(level.players[i] getcurrentweapon());
                    } else {
                        if (sessionmodeiszombiesgame()) {
                            weapon = level.players[i] getcurrentweapon();
                            item = level.players[i] item_inventory::function_230ceec4(weapon);
                            if (isdefined(item)) {
                                item.aat = aat_name;
                            }
                        }
                        level.players[i] thread acquire(level.players[i] getcurrentweapon(), aat_name);
                    }
                    level.players[i] thread aat_set_debug_text(aat_name, 0, 0, 0);
                }
            }
            setdvar(#"aat_acquire_devgui", "<unknown string>");
            wait(0.5);
        }
    }

    // Namespace aat/aat_shared
    // Params 4, eflags: 0x4
    // Checksum 0xb6730a4, Offset: 0xb48
    // Size: 0x202
    function private aat_set_debug_text(name, success, success_reroll, fail) {
        self notify(#"aat_set_debug_text_thread");
        self endon(#"aat_set_debug_text_thread", #"disconnect");
        if (!isdefined(self.aat_debug_text)) {
            return;
        }
        percentage = "<unknown string>";
        if (isdefined(level.aat[name]) && name != "<unknown string>") {
            percentage = level.aat[name].percentage;
        }
        self.aat_debug_text fadeovertime(0.05);
        self.aat_debug_text.alpha = 1;
        self.aat_debug_text settext("<unknown string>" + name + "<unknown string>" + percentage);
        if (success) {
            self.aat_debug_text.color = (0, 1, 0);
        } else if (success_reroll) {
            self.aat_debug_text.color = (0.8, 0, 0.8);
        } else if (fail) {
            self.aat_debug_text.color = (1, 0, 0);
        } else {
            self.aat_debug_text.color = (1, 1, 1);
        }
        wait(1);
        self.aat_debug_text fadeovertime(1);
        self.aat_debug_text.color = (1, 1, 1);
        if ("<unknown string>" == name) {
            self.aat_debug_text.alpha = 0;
        }
    }

#/

// Namespace aat/aat_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xf7353584, Offset: 0xd58
// Size: 0x90
function private aat_cooldown_init() {
    self.aat_cooldown_start = [];
    foreach (key, v in level.aat) {
        self.aat_cooldown_start[key] = 0;
    }
}

// Namespace aat/aat_shared
// Params 16, eflags: 0x0
// Checksum 0x1848186d, Offset: 0xdf0
// Size: 0xf8
function aat_vehicle_damage_monitor(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, *vdamageorigin, psoffsettime, damagefromunderneath, *modelindex, *partname, vsurfacenormal) {
    willbekilled = self.health - weapon <= 0;
    if (is_true(level.aat_in_use)) {
        self thread aat_response(willbekilled, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, vdamageorigin, psoffsettime, damagefromunderneath, modelindex, partname, vsurfacenormal);
    }
    return weapon;
}

// Namespace aat/aat_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x8432c62d, Offset: 0xef0
// Size: 0x62
function function_3895d220(weapon) {
    if (isdefined(weapon)) {
        if (weapon.isaltmode) {
            weapon = weapon.altweapon;
        }
        if (weapon.inventorytype == "dwlefthand") {
            weapon = weapon.dualwieldweapon;
        }
        weapon = weapon.rootweapon;
    }
    return weapon;
}

// Namespace aat/aat_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x33d6451b, Offset: 0xf60
// Size: 0x5a
function function_42918474(entity) {
    if (isdefined(entity) && (isplayer(entity) || is_true(entity.var_42918474))) {
        return true;
    }
    return false;
}

// Namespace aat/aat_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x30510cea, Offset: 0xfc8
// Size: 0x150
function on_ai_damage(params) {
    b_death = params.idamage > self.health;
    aat_response(b_death, params.einflictor, params.eattacker, params.idamage, params.idflags, params.smeansofdeath, params.weapon, params.var_fd90b0bb, params.vpoint, params.vdir, params.shitloc, params.psoffsettime, params.boneindex, params.surfacetype);
    name = params.eattacker.aat[function_702fb333(params.weapon)];
    if (isdefined(name) && b_death) {
        if (isdefined(level.aat[name].var_de81baf2) && b_death) {
            self thread [[ level.aat[name].var_de81baf2 ]](params.idamage, params.eattacker, params.weapon);
        }
    }
}

// Namespace aat/aat_shared
// Params 14, eflags: 0x2 linked
// Checksum 0x5fdf4f7b, Offset: 0x1120
// Size: 0x7c4
function aat_response(death, *inflictor, attacker, *damage, *flags, mod, weapon, var_fd90b0bb, vpoint, *vdir, shitloc, *psoffsettime, boneindex, *surfacetype) {
    if (!function_42918474(var_fd90b0bb) || !isdefined(var_fd90b0bb.aat) || !isdefined(vdir)) {
        return;
    }
    if (vdir.weapclass !== #"rocketlauncher" && vpoint != "MOD_PISTOL_BULLET" && vpoint != "MOD_RIFLE_BULLET" && vpoint != "MOD_GRENADE" && vpoint != "MOD_PROJECTILE" && vpoint != "MOD_EXPLOSIVE" && vpoint != "MOD_IMPACT" && (vpoint != "MOD_MELEE" || !is_true(level.var_9d1d502c))) {
        return;
    }
    if (is_true(level.var_9d1d502c) && isdefined(level.var_37c36b82) && vpoint == "MOD_MELEE") {
        if (![[ level.var_37c36b82 ]](vdir)) {
            return;
        }
    }
    name = var_fd90b0bb.aat[function_702fb333(vdir)];
    if (!isdefined(name)) {
        return;
    }
    if (is_true(weapon) && !is_true(level.aat[name].occurs_on_death)) {
        return;
    }
    if (!isdefined(self.archetype)) {
        return;
    }
    if (is_true(self.var_dd6fe31f)) {
        return;
    }
    if (is_true(self.var_69a981e6)) {
        return;
    }
    if (is_true(self.aat_turned)) {
        return;
    }
    if (is_true(level.aat[name].immune_trigger[self.archetype])) {
        return;
    }
    now = float(gettime()) / 1000;
    if (isdefined(level.var_a839c34d)) {
        if (self [[ level.var_a839c34d ]](name, now, var_fd90b0bb)) {
            return;
        }
    } else {
        if (isdefined(self.aat_cooldown_start) && now <= self.aat_cooldown_start[name] + level.aat[name].cooldown_time_entity) {
            return;
        }
        if (now <= var_fd90b0bb.aat_cooldown_start[name] + level.aat[name].cooldown_time_attacker) {
            return;
        }
        if (now <= level.aat[name].cooldown_time_global_start + level.aat[name].cooldown_time_global) {
            return;
        }
    }
    if (isdefined(level.aat[name].validation_func)) {
        if (![[ level.aat[name].validation_func ]]()) {
            return;
        }
    }
    success = 0;
    reroll_icon = undefined;
    percentage = level.aat[name].percentage;
    if (isdefined(level.var_bdba6ee8[vdir])) {
        if (level.var_bdba6ee8[vdir] < percentage) {
            percentage = level.var_bdba6ee8[vdir];
        }
    }
    if (isdefined(var_fd90b0bb.var_2defbefd)) {
        percentage = var_fd90b0bb.var_2defbefd;
    }
    /#
        aat_percentage_override = getdvarfloat(#"scr_aat_percentage_override", 0);
        if (aat_percentage_override > 0) {
            percentage = aat_percentage_override;
        }
    #/
    if (percentage >= randomfloat(1)) {
        success = 1;
        /#
            var_fd90b0bb thread aat_set_debug_text(name, 1, 0, 0);
        #/
    }
    if (!success) {
        keys = getarraykeys(level.aat_reroll);
        keys = array::randomize(keys);
        foreach (key in keys) {
            if (var_fd90b0bb [[ level.aat_reroll[key].active_func ]]()) {
                for (i = 0; i < level.aat_reroll[key].count; i++) {
                    if (percentage >= randomfloat(1)) {
                        success = 1;
                        reroll_icon = level.aat_reroll[key].damage_feedback_icon;
                        /#
                            var_fd90b0bb thread aat_set_debug_text(name, 0, 1, 0);
                        #/
                        break;
                    }
                }
            }
            if (success) {
                break;
            }
        }
    }
    if (!success) {
        /#
            var_fd90b0bb thread aat_set_debug_text(name, 0, 0, 1);
        #/
        return;
    }
    level.aat[name].cooldown_time_global_start = now;
    var_fd90b0bb.aat_cooldown_start[name] = now;
    self thread [[ level.aat[name].result_func ]](weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype);
    if (isplayer(var_fd90b0bb)) {
        var_fd90b0bb clientfield::set_to_player("rob_ammo_mod_ready", 0);
        var_fd90b0bb thread function_45db1b8a(name);
        var_fd90b0bb playlocalsound(level.aat[name].damage_feedback_sound);
    }
}

// Namespace aat/aat_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2ccfc2a2, Offset: 0x18f0
// Size: 0xc4
function function_45db1b8a(name) {
    self notify("5cc8d10e5693e31f");
    self endon("5cc8d10e5693e31f");
    self endon(#"death");
    while (true) {
        now = float(gettime()) / 1000;
        if (now >= self.aat_cooldown_start[name] + level.aat[name].cooldown_time_attacker) {
            self clientfield::set_to_player("rob_ammo_mod_ready", 1);
            return;
        }
        wait(1);
    }
}

// Namespace aat/aat_shared
// Params 13, eflags: 0x0
// Checksum 0xc6948ab1, Offset: 0x19c0
// Size: 0x69e
function register(name, percentage, cooldown_time_entity, cooldown_time_attacker, cooldown_time_global, occurs_on_death, result_func, damage_feedback_icon, damage_feedback_sound, validation_func, element, var_de81baf2, var_68a3f665) {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    if (!isdefined(level.aat)) {
        level.aat = [];
    }
    assert(!is_false(level.aat_initializing), "<unknown string>");
    assert(isdefined(name), "<unknown string>");
    assert("<unknown string>" != name, "<unknown string>" + "<unknown string>" + "<unknown string>");
    assert(!isdefined(level.aat[name]), "<unknown string>" + name + "<unknown string>");
    assert(isdefined(percentage), "<unknown string>" + name + "<unknown string>");
    assert(0 <= percentage && 1 > percentage, "<unknown string>" + name + "<unknown string>");
    assert(isdefined(cooldown_time_entity), "<unknown string>" + name + "<unknown string>");
    assert(0 <= cooldown_time_entity, "<unknown string>" + name + "<unknown string>");
    assert(isdefined(cooldown_time_entity), "<unknown string>" + name + "<unknown string>");
    assert(0 <= cooldown_time_entity, "<unknown string>" + name + "<unknown string>");
    assert(isdefined(cooldown_time_global), "<unknown string>" + name + "<unknown string>");
    assert(0 <= cooldown_time_global, "<unknown string>" + name + "<unknown string>");
    assert(isdefined(occurs_on_death), "<unknown string>" + name + "<unknown string>");
    assert(isdefined(result_func), "<unknown string>" + name + "<unknown string>");
    assert(isdefined(damage_feedback_icon), "<unknown string>" + name + "<unknown string>");
    assert(isstring(damage_feedback_icon), "<unknown string>" + name + "<unknown string>");
    assert(isdefined(damage_feedback_sound), "<unknown string>" + name + "<unknown string>");
    assert(isstring(damage_feedback_sound), "<unknown string>" + name + "<unknown string>");
    level.aat[name] = spawnstruct();
    level.aat[name].name = name;
    level.aat[name].hash_id = stathash(name);
    level.aat[name].percentage = percentage;
    level.aat[name].cooldown_time_entity = cooldown_time_entity;
    level.aat[name].cooldown_time_attacker = cooldown_time_attacker;
    level.aat[name].cooldown_time_global = cooldown_time_global;
    level.aat[name].cooldown_time_global_start = 0;
    level.aat[name].occurs_on_death = occurs_on_death;
    level.aat[name].result_func = result_func;
    level.aat[name].damage_feedback_icon = damage_feedback_icon;
    level.aat[name].damage_feedback_sound = damage_feedback_sound;
    level.aat[name].validation_func = validation_func;
    level.aat[name].immune_trigger = [];
    level.aat[name].immune_result_direct = [];
    level.aat[name].immune_result_indirect = [];
    level.aat[name].var_de81baf2 = var_de81baf2;
    level.aat[name].var_68a3f665 = var_68a3f665;
    if (!isdefined(level.var_7c5fd6a4)) {
        level.var_7c5fd6a4 = [];
    }
    level.var_7c5fd6a4[hash(name)] = name;
    if (isdefined(element)) {
        level.aat[name].element = element;
    }
}

// Namespace aat/aat_shared
// Params 5, eflags: 0x0
// Checksum 0xdfd38245, Offset: 0x2068
// Size: 0x200
function register_immunity(name, archetype, immune_trigger, immune_result_direct, immune_result_indirect) {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    while (level.aat_initializing !== 0) {
        waitframe(1);
    }
    assert(isdefined(name), "<unknown string>");
    assert(isdefined(archetype), "<unknown string>");
    assert(isdefined(immune_trigger), "<unknown string>");
    assert(isdefined(immune_result_direct), "<unknown string>");
    assert(isdefined(immune_result_indirect), "<unknown string>");
    if (!isdefined(level.aat[name].immune_trigger)) {
        level.aat[name].immune_trigger = [];
    }
    if (!isdefined(level.aat[name].immune_result_direct)) {
        level.aat[name].immune_result_direct = [];
    }
    if (!isdefined(level.aat[name].immune_result_indirect)) {
        level.aat[name].immune_result_indirect = [];
    }
    level.aat[name].immune_trigger[archetype] = immune_trigger;
    level.aat[name].immune_result_direct[archetype] = immune_result_direct;
    level.aat[name].immune_result_indirect[archetype] = immune_result_indirect;
}

// Namespace aat/aat_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x26b33e0, Offset: 0x2270
// Size: 0x1a0
function finalize_clientfields() {
    println("<unknown string>");
    if (!is_true(level.aat_in_use)) {
        return;
    }
    if (isdefined(level.aat) && level.aat.size > 1) {
        array::alphabetize(level.aat);
        i = 0;
        foreach (aat in level.aat) {
            aat.clientfield_index = i;
            i++;
            println("<unknown string>" + aat.name);
        }
        n_bits = getminbitcountfornum(level.aat.size - 1);
        clientfield::register("toplayer", "aat_current", 1, n_bits, "int");
    }
    level.aat_initializing = 0;
}

// Namespace aat/aat_shared
// Params 1, eflags: 0x0
// Checksum 0xcb38929e, Offset: 0x2418
// Size: 0x50
function register_aat_exemption(weapon) {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    weapon = function_702fb333(weapon);
    level.aat_exemptions[weapon] = 1;
}

// Namespace aat/aat_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xa0cdc1de, Offset: 0x2470
// Size: 0x4e
function is_exempt_weapon(weapon) {
    if (!is_true(level.aat_in_use)) {
        return false;
    }
    weapon = function_702fb333(weapon);
    return isdefined(level.aat_exemptions[weapon]);
}

// Namespace aat/aat_shared
// Params 4, eflags: 0x0
// Checksum 0x3598f3e0, Offset: 0x24c8
// Size: 0x26a
function register_reroll(name, count, active_func, damage_feedback_icon) {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    assert(isdefined(name), "<unknown string>");
    assert("<unknown string>" != name, "<unknown string>" + "<unknown string>" + "<unknown string>");
    assert(!isdefined(level.aat[name]), "<unknown string>" + name + "<unknown string>");
    assert(isdefined(count), "<unknown string>" + name + "<unknown string>");
    assert(0 < count, "<unknown string>" + name + "<unknown string>");
    assert(isdefined(active_func), "<unknown string>" + name + "<unknown string>");
    assert(isdefined(damage_feedback_icon), "<unknown string>" + name + "<unknown string>");
    assert(isstring(damage_feedback_icon), "<unknown string>" + name + "<unknown string>");
    level.aat_reroll[name] = spawnstruct();
    level.aat_reroll[name].name = name;
    level.aat_reroll[name].count = count;
    level.aat_reroll[name].active_func = active_func;
    level.aat_reroll[name].damage_feedback_icon = damage_feedback_icon;
}

// Namespace aat/aat_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x9a8e0eb7, Offset: 0x2740
// Size: 0x72
function function_702fb333(weapon) {
    if (!is_true(level.aat_in_use)) {
        return undefined;
    }
    if (isdefined(level.var_ee5c0b6e)) {
        weapon = self [[ level.var_ee5c0b6e ]](weapon);
        return weapon;
    }
    weapon = function_3895d220(weapon);
    return weapon;
}

// Namespace aat/aat_shared
// Params 2, eflags: 0x0
// Checksum 0x3bab0b2a, Offset: 0x27c0
// Size: 0x110
function getaatonweapon(weapon, var_a217d0c1 = 0) {
    weapon = function_702fb333(weapon);
    if (!isdefined(weapon) || weapon == level.weaponnone || !is_true(level.aat_in_use) || is_exempt_weapon(weapon) || !isdefined(self.aat) || !isdefined(self.aat[weapon]) || !isdefined(level.aat[self.aat[weapon]])) {
        return undefined;
    }
    if (var_a217d0c1) {
        return self.aat[weapon];
    }
    return level.aat[self.aat[weapon]];
}

// Namespace aat/aat_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x4c434229, Offset: 0x28d8
// Size: 0x306
function acquire(weapon, name, var_77cf85b7) {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    assert(isdefined(weapon), "<unknown string>");
    assert(weapon != level.weaponnone, "<unknown string>");
    weapon_instance = weapon;
    weapon = function_702fb333(weapon);
    if (is_exempt_weapon(weapon)) {
        return;
    }
    if (isdefined(name)) {
        assert("<unknown string>" != name, "<unknown string>" + "<unknown string>" + "<unknown string>");
        assert(isdefined(level.aat[name]), "<unknown string>" + name + "<unknown string>");
        self.aat[weapon] = name;
    } else {
        keys = getarraykeys(level.aat);
        arrayremovevalue(keys, hash("none"));
        if (isdefined(self.aat[weapon])) {
            arrayremovevalue(keys, self.aat[weapon]);
        }
        if (isdefined(var_77cf85b7)) {
            arrayremovevalue(keys, hash(var_77cf85b7));
        }
        if (keys.size) {
            rand = randomint(keys.size);
            name = keys[rand];
            self.aat[weapon] = name;
        }
    }
    if (weapon == function_702fb333(self getcurrentweapon())) {
        self clientfield::set_to_player("aat_current", level.aat[self.aat[weapon]].clientfield_index);
    }
    self clientfield::set_to_player("rob_ammo_mod_ready", 1);
    self notify(#"hash_4de2d5115dc310e2");
}

// Namespace aat/aat_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x1bff4049, Offset: 0x2be8
// Size: 0xcc
function remove(weapon) {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    assert(isdefined(weapon), "<unknown string>");
    assert(weapon != level.weaponnone, "<unknown string>");
    weapon_instance = weapon;
    weapon = function_702fb333(weapon);
    self.aat[weapon] = undefined;
    self function_bf3044dc(weapon_instance, 0);
}

// Namespace aat/aat_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xa18bf456, Offset: 0x2cc0
// Size: 0x180
function watch_weapon_changes() {
    self endon(#"disconnect");
    while (isdefined(self)) {
        waitresult = self waittill(#"weapon_change");
        weapon = waitresult.weapon;
        if (sessionmodeiszombiesgame()) {
            item = item_inventory::function_230ceec4(weapon);
            if (isdefined(item.aat)) {
                name = item.aat;
            } else {
                name = "none";
            }
            self clientfield::set_player_uimodel("hud_items.gibDismembermentType", gibserverutils::function_de4d9d(weapon, item.var_e91aba42));
        } else {
            weapon = function_702fb333(weapon);
            name = "none";
            if (isdefined(self.aat[weapon])) {
                name = self.aat[weapon];
            }
        }
        self clientfield::set_to_player("aat_current", level.aat[name].clientfield_index);
    }
}

// Namespace aat/aat_shared
// Params 1, eflags: 0x0
// Checksum 0xa4387656, Offset: 0x2e48
// Size: 0x68
function has_aat(w_current) {
    if (!is_true(level.aat_in_use)) {
        return false;
    }
    w_current = function_702fb333(w_current);
    if (isdefined(self.aat) && isdefined(self.aat[w_current])) {
        return true;
    }
    return false;
}

// Namespace aat/aat_shared
// Params 2, eflags: 0x0
// Checksum 0xf0d0e996, Offset: 0x2eb8
// Size: 0x1dc
function function_7a12b737(stat_name, amount = 1) {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    assert(ishash(stat_name), "<unknown string>");
    if (!level.onlinegame || is_true(level.zm_disable_recording_stats)) {
        return;
    }
    if (!isdefined(self)) {
        return;
    }
    self stats::function_dad108fa(stat_name, amount);
    /#
        var_ba1fb8c1 = self stats::get_stat_global(stat_name);
        if (isdefined(var_ba1fb8c1)) {
            if (isdefined(self.entity_num)) {
                println("<unknown string>" + self.entity_num + "<unknown string>" + function_9e72a96(stat_name) + "<unknown string>" + var_ba1fb8c1);
            } else {
                println("<unknown string>" + function_9e72a96(stat_name) + "<unknown string>" + var_ba1fb8c1);
            }
        }
        if (!isdefined(var_ba1fb8c1)) {
            println("<unknown string>" + self.entity_num + "<unknown string>" + function_9e72a96(stat_name) + "<unknown string>");
        }
    #/
}


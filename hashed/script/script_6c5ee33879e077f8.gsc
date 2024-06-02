// Atian COD Tools GSC CW decompiler test
#using script_4a6f4e6c1c838e01;
#using script_6f8610e78fdd3440;
#using scripts\core_common\stealth\debug.gsc;
#using script_139ae0bb0a87141c;
#using scripts\core_common\stealth\threat_sight.gsc;
#using script_5450c003e8a913b7;
#using scripts\core_common\stealth\utility.gsc;
#using scripts\core_common\stealth\event.gsc;
#using script_16a28d93ee216f6f;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace manager;

// Namespace manager/manager
// Params 2, eflags: 0x0
// Checksum 0xa193a9ea, Offset: 0x2f0
// Size: 0x14
function scalevolume(*ent, *vol) {
    
}

#namespace namespace_393f6012;

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0xaa91eb98, Offset: 0x310
// Size: 0x134
function function_f9682fd() {
    if (isdefined(level.stealth)) {
        return;
    }
    init();
    callback::on_spawned(&on_player_spawned);
    callback::on_ai_spawned(&on_ai_spawned);
    level thread manager_thread();
    level thread teams_thread();
    level thread hunt_thread();
    level thread function_807b87bc();
    if (getdvarint(#"hash_4e997f8f5fb7bc59", 0)) {
        stealth_suspicious_doors_init();
    }
    level.var_8bca2033 = &namespace_979752dc::function_2baa2568;
    /#
        thread stealth_debug::debug_manager();
    #/
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x904f331f, Offset: 0x450
// Size: 0x54
function on_player_spawned() {
    if (!isdefined(self.stealth)) {
        stealth_init::set_stealth_mode(level flag::get("stealth_enabled"));
    }
    self thread update_stealth_spotted_thread();
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x357fa29, Offset: 0x4b0
// Size: 0x34
function on_ai_spawned() {
    if (isdefined(self.var_de6a9e87) && self.var_de6a9e87) {
        self thread namespace_979752dc::ignore_corpse();
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0xd488f9e8, Offset: 0x4f0
// Size: 0x3c4
function init() {
    level flag::init("stealth_enabled", 1);
    level flag::init("stealth_spotted");
    level.stealth = spawnstruct();
    level.stealth.detect = spawnstruct();
    level.stealth.save = spawnstruct();
    level.stealth.sentientevents = "sentientevents_stealth";
    /#
        level.stealth.debug = spawnstruct();
        level.stealth.debug.screen = [];
    #/
    level.stealth.ai_event = [];
    level.stealth.funcs = [];
    level.stealth.detect.state = "hidden";
    level.stealth.detect.range = [];
    level.stealth.detect.range[#"hidden"] = [];
    level.stealth.detect.range[#"spotted"] = [];
    level.stealth.detect.minrangedarkness[#"hidden"] = [];
    level.stealth.detect.minrangedarkness[#"spotted"] = [];
    level.stealth.detect.timeout = 5;
    namespace_cc4354b9::corpse_init_level();
    stealth_event::event_init_level();
    level.stealth.next_sound_wait = 3000;
    level.stealth.head_shot_dist = 20;
    level.stealth.group = spawnstruct();
    level.stealth.group.flags = [];
    level.stealth.group.groups = [];
    level.stealth.group.ally_groups = [];
    level.stealth.group.death_alert_timeout = [];
    level.stealth.hunting_groups = [];
    set_default_settings();
    init_stealth_volumes();
    namespace_5cd4acd8::init_hunt_regions();
    init_save();
    namespace_979752dc::alertlevel_init_map();
    if (!isdefined(level.default_goalradius)) {
        level.default_goalradius = 2048;
    }
    level.stealth.min_alert_level_duration = 1;
    level.var_a8072505 = &namespace_979752dc::function_7211414e;
    setup_stealth_funcs();
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x9770143b, Offset: 0x8c0
// Size: 0x8a
function setup_stealth_funcs() {
    level namespace_979752dc::set_stealth_func("do_stealth", &namespace_979752dc::do_stealth);
    namespace_f1f700ac::set_default_stealth_funcs();
    level.stealth.fngroupspottedflag = &namespace_979752dc::group_spotted_flag;
    level.stealth.fninitenemygame = undefined;
    level.stealth.fnsetdisguised = &namespace_979752dc::set_disguised_default;
}

// Namespace namespace_393f6012/manager
// Params 1, eflags: 0x2 linked
// Checksum 0x60dae609, Offset: 0x958
// Size: 0x23c
function set_default_settings(isnight) {
    stealth_hidden = [];
    if (is_true(isnight)) {
        stealth_hidden[#"prone"] = 150;
        stealth_hidden[#"crouch"] = 350;
        stealth_hidden[#"stand"] = 600;
    } else {
        stealth_hidden[#"prone"] = 400;
        stealth_hidden[#"crouch"] = 800;
        stealth_hidden[#"stand"] = 1500;
    }
    stealth_spotted = [];
    stealth_spotted[#"prone"] = 8192;
    stealth_spotted[#"crouch"] = 8192;
    stealth_spotted[#"stand"] = 8192;
    namespace_979752dc::set_detect_ranges(stealth_hidden, stealth_spotted);
    var_90bb9561 = [];
    var_90bb9561[#"prone"] = 130;
    var_90bb9561[#"crouch"] = 215;
    var_90bb9561[#"stand"] = 300;
    var_a8964800 = [];
    var_a8964800[#"prone"] = 300;
    var_a8964800[#"crouch"] = 375;
    var_a8964800[#"stand"] = 450;
    namespace_979752dc::set_min_detect_range_darkness(var_90bb9561, var_a8964800);
    namespace_cc4354b9::set_corpse_ranges_default();
    namespace_979752dc::set_disguised(0);
    event_change("hidden");
}

// Namespace namespace_393f6012/manager
// Params 2, eflags: 0x2 linked
// Checksum 0xd98f3974, Offset: 0xba0
// Size: 0x2c6
function set_detect_ranges_internal(hidden, spotted) {
    var_250a510c = 0.25;
    if (isdefined(hidden)) {
        level.stealth.detect.range[#"hidden"][#"prone"] = hidden[#"prone"];
        level.stealth.detect.range[#"hidden"][#"crouch"] = hidden[#"crouch"];
        level.stealth.detect.range[#"hidden"][#"stand"] = hidden[#"stand"];
        if (!isdefined(hidden[#"shadow"])) {
            hidden[#"shadow"] = var_250a510c;
        }
        level.stealth.detect.range[#"hidden"][#"shadow"] = hidden[#"shadow"];
    }
    if (isdefined(spotted)) {
        level.stealth.detect.range[#"spotted"][#"prone"] = spotted[#"prone"];
        level.stealth.detect.range[#"spotted"][#"crouch"] = spotted[#"crouch"];
        level.stealth.detect.range[#"spotted"][#"stand"] = spotted[#"stand"];
        if (!isdefined(spotted[#"shadow"])) {
            spotted[#"shadow"] = var_250a510c;
        }
        level.stealth.detect.range[#"spotted"][#"shadow"] = spotted[#"shadow"];
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x4899f056, Offset: 0xe70
// Size: 0x10a
function manager_thread() {
    while (true) {
        level flag::wait_till("stealth_enabled");
        stealth_threat_sight::threat_sight_set_dvar(1);
        level flag::wait_till("stealth_spotted");
        if (!level flag::get("stealth_enabled")) {
            continue;
        }
        event_change("spotted");
        level flag::wait_till_clear("stealth_spotted");
        if (!level flag::get("stealth_enabled")) {
            continue;
        }
        event_change("hidden");
        waittillframeend();
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x7c3b39b, Offset: 0xf88
// Size: 0x1a4
function anyone_in_combat() {
    if (isdefined(level.stealth.groupdata)) {
        foreach (group in level.stealth.groupdata.groups) {
            if (stealth_group::group_anyoneincombat(group.name)) {
                return true;
            }
        }
    }
    ais = getactorteamarray("axis", "team3");
    foreach (guy in ais) {
        if (!isdefined(guy.stealth) && isdefined(guy.finished_spawning) && isdefined(guy.enemy) && guy.enemy == self) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x2c392541, Offset: 0x1138
// Size: 0x1c6
function update_stealth_spotted_thread() {
    waitframe(1);
    wasspotted = 0;
    while (true) {
        if (level flag::get("stealth_enabled")) {
            bspotted = anyone_in_combat();
            if (bspotted) {
                if (!wasspotted && isdefined(level.stealth.stealth_spotted_delay)) {
                    wait(level.stealth.stealth_spotted_delay);
                    if (!anyone_in_combat()) {
                        waitframe(1);
                        continue;
                    }
                }
                if (!level flag::get("stealth_spotted")) {
                    level flag::set("stealth_spotted");
                    if (isdefined(self.stealth)) {
                        var_1dd006fc = self namespace_979752dc::get_group_flagname("stealth_spotted");
                        level flag::set(var_1dd006fc);
                    }
                }
            } else if (level flag::get("stealth_spotted")) {
                namespace_979752dc::function_740dbf99();
                if (isdefined(self.stealth)) {
                    var_1dd006fc = self namespace_979752dc::get_group_flagname("stealth_spotted");
                    level flag::clear(var_1dd006fc);
                }
            }
            wasspotted = bspotted;
        }
        waitframe(1);
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x65f40b85, Offset: 0x1308
// Size: 0xe0
function teams_thread() {
    level.stealth.enemies[#"axis"] = [];
    level.stealth.enemies[#"allies"] = [];
    while (true) {
        level flag::wait_till("stealth_enabled");
        level.stealth.enemies[#"axis"] = getplayers();
        level.stealth.enemies[#"allies"] = getactorteamarray("axis");
        wait(0.05);
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0xcf4de6fb, Offset: 0x13f0
// Size: 0x108
function hunt_thread() {
    while (true) {
        level flag::wait_till("stealth_enabled");
        if (isdefined(level.stealth.hunt_stealth_group_region_sets) && level.stealth.hunt_stealth_group_region_sets.size != 0) {
            foreach (group, group_data in level.stealth.hunt_stealth_group_region_sets) {
                namespace_5cd4acd8::huntcomputeaiindependentregionscores(group, group_data);
                wait(0.2);
            }
            continue;
        }
        wait(0.5);
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x37f5cb3d, Offset: 0x1500
// Size: 0x4c
function function_807b87bc() {
    while (true) {
        level flag::wait_till("stealth_enabled");
        level.stealth.var_69fc8bf2 = 0;
        wait(0.05);
    }
}

// Namespace namespace_393f6012/manager
// Params 1, eflags: 0x2 linked
// Checksum 0xb3033818, Offset: 0x1558
// Size: 0x7c
function event_change(name) {
    level.stealth.detect.state = name;
    if (name == "spotted") {
        loadsentienteventparameters("sentientevents");
        return;
    }
    loadsentienteventparameters(level.stealth.sentientevents);
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x880f7f7e, Offset: 0x15e0
// Size: 0x6c
function init_save() {
    level flag::init("stealth_player_nade");
    level.stealth.save.player_nades = 0;
    array::thread_all(getplayers(), &player_grenade_check);
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x6aff4afa, Offset: 0x1658
// Size: 0x80
function player_grenade_check() {
    while (true) {
        self waittill(#"grenade_pullback");
        level flag::set("stealth_player_nade");
        waitresult = self waittill(#"grenade_fire");
        thread player_grenade_check_dieout(waitresult.projectile);
    }
}

// Namespace namespace_393f6012/manager
// Params 1, eflags: 0x2 linked
// Checksum 0x2372edfe, Offset: 0x16e0
// Size: 0x94
function player_grenade_check_dieout(grenade) {
    level.stealth.save.player_nades++;
    grenade waittilltimeout(10, #"death");
    level.stealth.save.player_nades--;
    waittillframeend();
    if (!level.stealth.save.player_nades) {
        level flag::clear("stealth_player_nade");
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x481ee05c, Offset: 0x1780
// Size: 0x184
function stealth_suspicious_doors_init() {
    if (is_true(level.ship_assault)) {
        return;
    }
    if (isdefined(level.stealth)) {
        if (!isdefined(level.stealth.suspicious_door)) {
            level.stealth.suspicious_door = spawnstruct();
            level.stealth.suspicious_door.doors = [];
            level.stealth.suspicious_door.reset_time = 30;
            level.stealth.suspicious_door.sight_distsqrd = sqr(600);
            level.stealth.suspicious_door.detect_distsqrd = sqr(500);
            level.stealth.suspicious_door.found_distsqrd = sqr(300);
        }
        level namespace_979752dc::set_stealth_func("suspicious_door", &namespace_cc4354b9::suspicious_door_found);
        level stealth_event::event_severity_set("investigate", "suspicious_door", 20);
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0xb8d2ea2b, Offset: 0x1910
// Size: 0x7e4
function init_stealth_volumes() {
    level.stealth.combat_volumes = [];
    level.stealth.hunt_volumes = [];
    level.stealth.investigate_volumes = [];
    allvolumes = getentarray("info_volume_stealth_all", "variantname");
    volumes = getentarray("info_volume_stealth_combat", "variantname");
    volumes = arraycombine(volumes, allvolumes);
    if (isdefined(volumes)) {
        foreach (vol in volumes) {
            assert(isdefined(vol.script_stealthgroup), "<unknown string>" + vol.origin);
            assert(vol.script_stealthgroup != "<unknown string>" && vol.script_stealthgroup != "<unknown string>", "<unknown string>" + vol.origin);
            groups = strtok(vol.script_stealthgroup, " ");
            foreach (group in groups) {
                /#
                    if (isdefined(level.stealth.combat_volumes[group])) {
                        iprintln("<unknown string>" + group + "<unknown string>" + vol.origin + "<unknown string>" + level.stealth.combat_volumes[group].origin);
                    }
                #/
                level.stealth.combat_volumes[group] = vol;
            }
        }
    }
    volumes = getentarray("info_volume_stealth_hunt", "variantname");
    volumes = arraycombine(volumes, allvolumes);
    if (isdefined(volumes)) {
        foreach (vol in volumes) {
            assert(isdefined(vol.script_stealthgroup), "<unknown string>" + vol.origin);
            assert(vol.script_stealthgroup != "<unknown string>" && vol.script_stealthgroup != "<unknown string>", "<unknown string>" + vol.origin);
            groups = strtok(vol.script_stealthgroup, " ");
            foreach (group in groups) {
                /#
                    if (isdefined(level.stealth.hunt_volumes[group])) {
                        iprintln("<unknown string>" + group + "<unknown string>" + vol.origin + "<unknown string>" + level.stealth.hunt_volumes[group].origin);
                    }
                #/
                level.stealth.hunt_volumes[group] = vol;
            }
        }
    }
    volumes = getentarray("info_volume_stealth_investigate", "variantname");
    volumes = arraycombine(volumes, allvolumes, 0, 0);
    if (isdefined(volumes)) {
        foreach (vol in volumes) {
            assert(isdefined(vol.script_stealthgroup), "<unknown string>" + vol.origin);
            assert(vol.script_stealthgroup != "<unknown string>" && vol.script_stealthgroup != "<unknown string>", "<unknown string>" + vol.origin);
            groups = strtok(vol.script_stealthgroup, " ");
            foreach (group in groups) {
                /#
                    if (isdefined(level.stealth.investigate_volumes[group])) {
                        iprintln("<unknown string>" + group + "<unknown string>" + vol.origin + "<unknown string>" + level.stealth.investigate_volumes[group].origin);
                    }
                #/
                level.stealth.investigate_volumes[group] = vol;
            }
        }
    }
    thread function_e1ee46bb("trigger_multiple_stealth_shadow", "stealth_in_shadow", 1);
    thread function_e1ee46bb("trigger_multiple_stealth_flashlight_on", "flashlight_on", 0);
    thread function_e1ee46bb("trigger_multiple_stealth_flashlight_off", "flashlight_off", 0);
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x0
// Checksum 0x1e1ed757, Offset: 0x2100
// Size: 0x4a
function playerlootenabled() {
    if (isdefined(level.stealth) && isdefined(level.stealth.fnplayerlootenabled)) {
        return [[ level.stealth.fnplayerlootenabled ]]();
    }
    return 0;
}

// Namespace namespace_393f6012/manager
// Params 3, eflags: 0x6 linked
// Checksum 0xbaf8a614, Offset: 0x2158
// Size: 0xd0
function private function_e1ee46bb(targetname, var_a7c14b20, var_1910605e) {
    triggers = getentarray(targetname, "targetname");
    foreach (trig in triggers) {
        trig thread function_5ca45f26(trig, var_a7c14b20, var_1910605e);
    }
}

// Namespace namespace_393f6012/manager
// Params 3, eflags: 0x6 linked
// Checksum 0x923f8296, Offset: 0x2230
// Size: 0x12e
function private function_5ca45f26(trigger, var_a7c14b20, var_1910605e) {
    trigger endon(#"death");
    if (is_true(var_1910605e)) {
        if (!isdefined(level.var_5ca45f26)) {
            level.var_5ca45f26 = [];
        }
        if (!isdefined(level.var_5ca45f26[var_a7c14b20])) {
            level.var_5ca45f26[var_a7c14b20] = [];
        }
        level.var_5ca45f26[var_a7c14b20][level.var_5ca45f26[var_a7c14b20].size] = trigger;
    }
    while (true) {
        waitresult = trigger waittill(#"trigger");
        other = waitresult.activator;
        if (other flag::get(var_a7c14b20)) {
            continue;
        }
        other thread function_5e5e064d(trigger, var_a7c14b20);
        waitframe(1);
    }
}

// Namespace namespace_393f6012/manager
// Params 2, eflags: 0x6 linked
// Checksum 0x34a291e2, Offset: 0x2368
// Size: 0x84
function private function_5e5e064d(volume, var_a7c14b20) {
    self endon(#"death");
    self flag::set(var_a7c14b20);
    while (isdefined(volume) && self istouching(volume)) {
        waitframe(1);
    }
    self flag::clear(var_a7c14b20);
}


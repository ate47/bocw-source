// Atian COD Tools GSC CW decompiler test
#using script_48f7c4ab73137f8;
#using scripts\zm_common\zm_laststand.gsc;
#using script_5f261a5d57de5f7c;
#using script_3751b21462a54a7d;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using scripts\zm_common\zm.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\visionset_mgr_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_perk_quick_revive;

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x5
// Checksum 0xaa11578f, Offset: 0x280
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"zm_perk_quick_revive", &preinit, undefined, undefined, #"hash_2d064899850813e2");
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x6 linked
// Checksum 0xd183f364, Offset: 0x2d0
// Size: 0x54
function private preinit() {
    enable_quick_revive_perk_for_level();
    zm_perks::register_lost_perk_override(&function_5a52e778);
    zm_laststand::register_revive_override(&function_d5c9a81);
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 1, eflags: 0x0
// Checksum 0x91a4597c, Offset: 0x330
// Size: 0xc
function function_8d30502d(*perk) {
    
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 1, eflags: 0x2 linked
// Checksum 0xf03467a2, Offset: 0x348
// Size: 0xb6
function function_5a52e778(*perk) {
    self notify(#"hash_5a4925a840de5ae5");
    if (isdefined(self.var_ec8703d1)) {
        foreach (player in self.var_ec8703d1) {
            player notify(#"hash_4d93608c4b0fd45a");
        }
        self.var_ec8703d1 = undefined;
    }
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 1, eflags: 0x2 linked
// Checksum 0xb16f6c2e, Offset: 0x408
// Size: 0x5e
function function_d5c9a81(e_revivee) {
    if (!isdefined(e_revivee.revivetrigger)) {
        return false;
    }
    if (!isalive(self)) {
        return false;
    }
    if (is_true(e_revivee.var_d1e03242)) {
        return true;
    }
    return false;
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 1, eflags: 0x0
// Checksum 0x582fcfbf, Offset: 0x470
// Size: 0x3cc
function function_8f059827(radius) {
    self notify("7783069b110b4859");
    self endon("7783069b110b4859");
    self endon(#"death", #"hash_5a4925a840de5ae5");
    self.var_ec8703d1 = [];
    while (self namespace_e86ffa8::function_8923370c(4)) {
        players = getplayers();
        foreach (player in players) {
            if (self != player && distance2d(self.origin, player.origin) < radius && player laststand::player_is_in_laststand() && !self laststand::player_is_in_laststand() && !is_true(player.var_b895a3ff)) {
                if (!isinarray(self.var_ec8703d1, player) && !is_true(player.revivetrigger.beingrevived)) {
                    player.var_d1e03242 = 1;
                    if (!isdefined(self.var_ec8703d1)) {
                        self.var_ec8703d1 = [];
                    } else if (!isarray(self.var_ec8703d1)) {
                        self.var_ec8703d1 = array(self.var_ec8703d1);
                    }
                    self.var_ec8703d1[self.var_ec8703d1.size] = player;
                    self thread function_3037364a(player);
                }
                continue;
            }
            if (isinarray(self.var_ec8703d1, player) && player laststand::player_is_in_laststand()) {
                if (is_true(player.var_d1e03242)) {
                    revivetime = 3;
                    player.var_d1e03242 = undefined;
                    player notify(#"hash_4d93608c4b0fd45a");
                    arrayremovevalue(self.var_ec8703d1, player);
                    if ((isdefined(player.var_6fc48a11) ? player.var_6fc48a11 : 0) < revivetime) {
                        player stoprevive(self);
                    } else {
                        player zm_laststand::auto_revive(self);
                    }
                }
                continue;
            }
            if (isinarray(self.var_ec8703d1, player) && !player laststand::player_is_in_laststand()) {
                arrayremovevalue(self.var_ec8703d1, player);
            }
        }
        wait(1);
    }
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 1, eflags: 0x2 linked
// Checksum 0xc5d53844, Offset: 0x848
// Size: 0x16c
function function_3037364a(e_revivee) {
    if (!isplayer(e_revivee)) {
        return;
    }
    e_revivee endon(#"death");
    e_revivee endon(#"hash_4d93608c4b0fd45a", #"player_revived");
    e_revivee.var_6fc48a11 = 0;
    revivetime = 3;
    e_revivee thread laststand::revive_hud_show_n_fade(#"hash_12e2c5e29f8ce6ad", 3, self);
    e_revivee startrevive(self);
    while (true) {
        waitframe(1);
        if (isplayer(e_revivee)) {
            e_revivee.var_6fc48a11 += 0.05;
            if (isdefined(level.var_ff482f76)) {
                level.var_ff482f76 zm_laststand_client::set_revive_progress(e_revivee, e_revivee.var_6fc48a11 / revivetime);
            }
            if (e_revivee.var_6fc48a11 >= revivetime) {
                e_revivee zm_laststand::auto_revive(self);
                break;
            }
        }
    }
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x2 linked
// Checksum 0xe160bb79, Offset: 0x9c0
// Size: 0x1ac
function enable_quick_revive_perk_for_level() {
    zm_perks::register_perk_basic_info(#"hash_7f98b3dd3cce95aa", #"perk_quick_revive", 2000, #"zombie/perk_quickrevive", getweapon("zombie_perk_bottle_revive"), undefined, #"zmperksquickrevive");
    zm_perks::register_perk_precache_func(#"hash_7f98b3dd3cce95aa", &quick_revive_precache);
    zm_perks::register_perk_clientfields(#"hash_7f98b3dd3cce95aa", &quick_revive_register_clientfield, &quick_revive_set_clientfield);
    zm_perks::register_perk_machine(#"hash_7f98b3dd3cce95aa", &quick_revive_perk_machine_setup);
    zm_perks::register_perk_threads(#"hash_7f98b3dd3cce95aa", &give_quick_revive_perk, &take_quick_revive_perk);
    zm_perks::register_perk_host_migration_params(#"hash_7f98b3dd3cce95aa", "vending_revive", "revive_light");
    zm_perks::register_perk_machine_power_override(#"hash_7f98b3dd3cce95aa", &turn_revive_on);
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x2 linked
// Checksum 0x9b511cdb, Offset: 0xb78
// Size: 0xfe
function quick_revive_precache() {
    if (isdefined(level.var_88d522c3)) {
        [[ level.var_88d522c3 ]]();
        return;
    }
    level._effect[#"revive_light"] = #"zombie/fx_perk_quickrevive_ndu";
    level.machine_assets[#"hash_7f98b3dd3cce95aa"] = spawnstruct();
    level.machine_assets[#"hash_7f98b3dd3cce95aa"].weapon = getweapon("zombie_perk_bottle_revive");
    level.machine_assets[#"hash_7f98b3dd3cce95aa"].off_model = "p9_sur_machine_quick_revive_off";
    level.machine_assets[#"hash_7f98b3dd3cce95aa"].on_model = "p9_sur_machine_quick_revive";
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0xc80
// Size: 0x4
function quick_revive_register_clientfield() {
    
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 1, eflags: 0x2 linked
// Checksum 0x4f0d3814, Offset: 0xc90
// Size: 0xc
function quick_revive_set_clientfield(*state) {
    
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 4, eflags: 0x2 linked
// Checksum 0xacc3e9d2, Offset: 0xca8
// Size: 0x9a
function quick_revive_perk_machine_setup(use_trigger, perk_machine, bump_trigger, *collision) {
    perk_machine.script_sound = "mus_perks_revive_jingle";
    perk_machine.script_string = "revive_perk";
    perk_machine.script_label = "mus_perks_revive_sting";
    perk_machine.target = "vending_revive";
    bump_trigger.script_string = "revive_perk";
    bump_trigger.targetname = "vending_revive";
    if (isdefined(collision)) {
        collision.script_string = "revive_perk";
    }
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x2 linked
// Checksum 0xe7aa11fd, Offset: 0xd50
// Size: 0x570
function turn_revive_on() {
    level endon(#"stop_quickrevive_logic");
    level flag::wait_till("start_zombie_round_logic");
    while (true) {
        machine = getentarray("vending_revive", "targetname");
        machine_triggers = getentarray("vending_revive", "target");
        for (i = 0; i < machine.size; i++) {
            machine[i] setmodel(level.machine_assets[#"hash_7f98b3dd3cce95aa"].off_model);
            zm_utility::function_ca960904(machine[i]);
            if (isdefined(level.quick_revive_final_pos)) {
                level.quick_revive_default_origin = level.quick_revive_final_pos;
            }
            if (!isdefined(level.quick_revive_default_origin)) {
                level.quick_revive_default_origin = machine[i].origin;
                level.quick_revive_default_angles = machine[i].angles;
            }
            level.quick_revive_machine = machine[i];
        }
        array::thread_all(machine, &zm_perks::set_power_on, 0);
        for (i = 0; i < machine.size; i++) {
            if (isdefined(machine[i].classname) && machine[i].classname == "script_model") {
                if (isdefined(machine[i].script_noteworthy) && machine[i].script_noteworthy == "clip") {
                    machine_clip = machine[i];
                    continue;
                }
                machine[i] setmodel(level.machine_assets[#"hash_7f98b3dd3cce95aa"].on_model);
                machine[i] vibrate((0, -100, 0), 0.3, 0.4, 3);
                if (!isdefined(machine[i].n_obj_id)) {
                    machine[i].n_obj_id = zm_utility::function_4a4cf79a(#"hash_366d84a7a7556fa4", machine[i]);
                }
                machine_model = machine[i];
                machine[i] thread zm_perks::perk_fx("revive_light");
                exploder::exploder("quick_revive_lgts");
                machine[i] thread zm_perks::play_loop_on_machine();
                if (isdefined(machine_triggers[i])) {
                    machine_clip = machine_triggers[i].clip;
                }
                if (isdefined(machine_triggers[i])) {
                    blocker_model = machine_triggers[i].blocker_model;
                }
            }
        }
        util::wait_network_frame();
        array::thread_all(machine, &zm_perks::set_power_on, 1);
        if (isdefined(level.machine_assets[#"hash_7f98b3dd3cce95aa"].power_on_callback)) {
            array::thread_all(machine, level.machine_assets[#"hash_7f98b3dd3cce95aa"].power_on_callback);
        }
        level notify(#"specialty_quickrevive_power_on");
        if (isdefined(machine_model)) {
            machine_model.ishidden = 0;
        }
        notify_str = level waittill(#"revive_off", #"revive_hide", #"stop_quickrevive_logic");
        should_hide = 0;
        if (notify_str._notify == "revive_hide") {
            should_hide = 1;
        }
        if (isdefined(level.machine_assets[#"hash_7f98b3dd3cce95aa"].power_off_callback)) {
            array::thread_all(machine, level.machine_assets[#"hash_7f98b3dd3cce95aa"].power_off_callback);
        }
        for (i = 0; i < machine.size; i++) {
            if (isdefined(machine[i].classname) && machine[i].classname == "script_model") {
                machine[i] zm_perks::turn_perk_off(should_hide);
            }
        }
    }
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x0
// Checksum 0x996c6090, Offset: 0x12c8
// Size: 0x44e
function unhide_quickrevive() {
    while (zm_perks::players_are_in_perk_area(level.quick_revive_machine)) {
        wait(0.1);
    }
    if (isdefined(level.quick_revive_machine_clip)) {
        level.quick_revive_machine_clip show();
        level.quick_revive_machine_clip disconnectpaths();
    }
    if (isdefined(level.quick_revive_final_pos)) {
        level.quick_revive_machine.origin = level.quick_revive_final_pos;
    }
    playfx(level._effect[#"poltergeist"], level.quick_revive_machine.origin);
    if (isdefined(level.quick_revive_trigger) && isdefined(level.quick_revive_trigger.blocker_model)) {
        level.quick_revive_trigger.blocker_model hide();
    }
    level.quick_revive_machine show();
    level.quick_revive_machine solid();
    if (isdefined(level.quick_revive_machine.original_pos)) {
        level.quick_revive_default_origin = level.quick_revive_machine.original_pos;
        level.quick_revive_default_angles = level.quick_revive_machine.original_angles;
    }
    direction = level.quick_revive_machine.origin;
    direction = (direction[1], direction[0], 0);
    if (direction[1] < 0 || direction[0] > 0 && direction[1] > 0) {
        direction = (direction[0], direction[1] * -1, 0);
    } else if (direction[0] < 0) {
        direction = (direction[0] * -1, direction[1], 0);
    }
    org = level.quick_revive_default_origin;
    if (isdefined(level.quick_revive_linked_ent)) {
        org = level.quick_revive_linked_ent.origin;
        if (isdefined(level.quick_revive_linked_ent_offset)) {
            org += level.quick_revive_linked_ent_offset;
        }
    }
    if (!is_true(level.quick_revive_linked_ent_moves) && level.quick_revive_machine.origin != org) {
        level.quick_revive_machine moveto(org, 3);
        level.quick_revive_machine vibrate(direction, 10, 0.5, 2.9);
        level.quick_revive_machine waittill(#"movedone");
        level.quick_revive_machine.angles = level.quick_revive_default_angles;
    } else {
        if (isdefined(level.quick_revive_linked_ent)) {
            org = level.quick_revive_linked_ent.origin;
            if (isdefined(level.quick_revive_linked_ent_offset)) {
                org += level.quick_revive_linked_ent_offset;
            }
            level.quick_revive_machine.origin = org;
        }
        level.quick_revive_machine vibrate((0, -100, 0), 0.3, 0.4, 3);
    }
    if (isdefined(level.quick_revive_linked_ent)) {
        level.quick_revive_machine linkto(level.quick_revive_linked_ent);
    }
    level.quick_revive_machine.ishidden = 0;
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x0
// Checksum 0x7fb2aef7, Offset: 0x1720
// Size: 0x100
function restart_quickrevive() {
    vending_machines = zm_perks::get_perk_machines();
    foreach (trigger in vending_machines) {
        if (!isdefined(trigger.script_noteworthy)) {
            continue;
        }
        if (trigger.script_noteworthy == #"hash_7f98b3dd3cce95aa") {
            trigger notify(#"stop_quickrevive_logic");
            trigger thread zm_perks::vending_trigger_think();
            trigger triggerenable(1);
        }
    }
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 1, eflags: 0x0
// Checksum 0xad7cfe69, Offset: 0x1828
// Size: 0x17a
function update_quickrevive_power_state(poweron) {
    foreach (item in level.powered_items) {
        if (isdefined(item.target) && isdefined(item.target.script_noteworthy) && item.target.script_noteworthy == "specialty_quickrevive") {
            if (item.power && !poweron) {
                if (!isdefined(item.powered_count)) {
                    item.powered_count = 0;
                } else if (item.powered_count > 0) {
                    item.powered_count--;
                }
            } else if (!item.power && poweron) {
                if (!isdefined(item.powered_count)) {
                    item.powered_count = 0;
                }
                item.powered_count++;
            }
            if (!isdefined(item.depowered_count)) {
                item.depowered_count = 0;
            }
            item.power = poweron;
        }
    }
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x19b0
// Size: 0x4
function give_quick_revive_perk() {
    
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 4, eflags: 0x2 linked
// Checksum 0xb0385c87, Offset: 0x19c0
// Size: 0x64
function take_quick_revive_perk(*b_pause, *str_perk, *str_result, *n_slot) {
    if (self getmovespeedscale() == 2) {
        self setmovespeedscale(1);
    }
}


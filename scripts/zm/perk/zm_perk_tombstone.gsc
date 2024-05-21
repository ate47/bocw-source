// Atian COD Tools GSC CW decompiler test
#using script_5f261a5d57de5f7c;
#using script_4ccfb58a9443a60b;
#using script_7a5293d92c61c788;
#using scripts\zm_common\gametypes\zm_gametype.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_6167e26342be354b;
#using scripts\core_common\lui_shared.gsc;
#using script_471b31bd963b388e;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_perk_tombstone;

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x5
// Checksum 0x5fdf7d12, Offset: 0x438
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"zm_perk_tombstone", &preinit, undefined, undefined, #"hash_2d064899850813e2");
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x6 linked
// Checksum 0xed380ff5, Offset: 0x488
// Size: 0x14
function private preinit() {
    function_27473e44();
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0xb7d1b507, Offset: 0x4a8
// Size: 0x274
function function_27473e44() {
    zm_perks::register_perk_basic_info(#"hash_38c08136902fd553", #"perk_tombstone", 2000, #"hash_30c002174ad27054", getweapon("zombie_perk_bottle_tombstone"), undefined, #"hash_46862a73c93d9338");
    zm_perks::register_perk_precache_func(#"hash_38c08136902fd553", &precache);
    zm_perks::register_perk_clientfields(#"hash_38c08136902fd553", &register_clientfield, &set_clientfield);
    zm_perks::register_perk_machine(#"hash_38c08136902fd553", &perk_machine_setup);
    zm_perks::register_perk_threads(#"hash_38c08136902fd553", &perk_give, &function_6df7ba74);
    zm_perks::register_perk_host_migration_params(#"hash_38c08136902fd553", "vending_tombstone", "tombstone_light");
    callback::on_bleedout(&on_player_bleedout);
    callback::on_laststand(&on_player_laststand);
    callback::function_716834ed(&function_716834ed);
    callback::on_disconnect(&on_disconnect);
    callback::on_joined_spectate(&on_joined_spectate);
    callback::on_revived(&on_player_revived);
    callback::on_spawned(&on_spawned);
    level.var_655e32ec = &function_6cc3fb63;
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0xbe062b40, Offset: 0x728
// Size: 0xf6
function precache() {
    if (isdefined(level.var_cf57ff63)) {
        [[ level.var_cf57ff63 ]]();
        return;
    }
    level._effect[#"tombstone_light"] = "maps/zm_gold/fx9_sur_machine_tombstone_eye_smk";
    level.machine_assets[#"hash_38c08136902fd553"] = spawnstruct();
    level.machine_assets[#"hash_38c08136902fd553"].weapon = getweapon("zombie_perk_bottle_tombstone");
    level.machine_assets[#"hash_38c08136902fd553"].off_model = "p9_sur_machine_tombstone_off";
    level.machine_assets[#"hash_38c08136902fd553"].on_model = "p9_sur_machine_tombstone";
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x5dfb3654, Offset: 0x828
// Size: 0x114
function register_clientfield() {
    clientfield::register("allplayers", "" + #"hash_46072c670fdaf2fa", 8000, 1, "int");
    clientfield::register_clientuimodel("hud_items.tombstonePerkAvailable", 8000, 3, "int");
    clientfield::register_clientuimodel("hud_items.tombstoneReviveTimerShorten", 8000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_2897f04212a28873", 8000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_5d96e4c9a397fa0", 8000, 1, "int");
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 1, eflags: 0x2 linked
// Checksum 0xbd9c1a93, Offset: 0x948
// Size: 0x2c
function set_clientfield(state) {
    self clientfield::set_player_uimodel("hud_items.tombstonePerkAvailable", state);
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 4, eflags: 0x2 linked
// Checksum 0x2be3c07d, Offset: 0x980
// Size: 0x9a
function perk_machine_setup(use_trigger, perk_machine, bump_trigger, *collision) {
    perk_machine.script_sound = "mus_perks_tombstone_jingle";
    perk_machine.script_string = "marathon_perk";
    perk_machine.script_label = "mus_perks_tombstone_sting";
    perk_machine.target = "vending_tombstone";
    bump_trigger.script_string = "marathon_perk";
    bump_trigger.targetname = "vending_tombstone";
    if (isdefined(collision)) {
        collision.script_string = "marathon_perk";
    }
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0xa28
// Size: 0x4
function perk_give() {
    
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 4, eflags: 0x2 linked
// Checksum 0x21e27bb6, Offset: 0xa38
// Size: 0x3e
function function_6df7ba74(*b_pause, *str_perk, *str_result, *n_slot) {
    self notify(#"hash_3c6513b34d68ea46");
    self.var_1399a943 = undefined;
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 2, eflags: 0x2 linked
// Checksum 0xc868fe5b, Offset: 0xa80
// Size: 0xc0
function function_7c589e7(slot, item_name) {
    entry = spawnstruct();
    entry.slot = slot;
    entry.item_name = item_name;
    if (!isdefined(level.var_45030deb)) {
        level.var_45030deb = [];
    } else if (!isarray(level.var_45030deb)) {
        level.var_45030deb = array(level.var_45030deb);
    }
    level.var_45030deb[level.var_45030deb.size] = entry;
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0xcef2ae51, Offset: 0xb48
// Size: 0x74
function on_player_laststand() {
    if (self namespace_e86ffa8::function_33d837e4() && !is_true(level.var_a69fc817)) {
        self thread function_dfd10619();
        return;
    }
    self clientfield::set_player_uimodel("hud_items.tombstonePerkAvailable", 0);
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0xa8a8964c, Offset: 0xbc8
// Size: 0x522
function function_716834ed() {
    if (is_true(level.var_a69fc817)) {
        return;
    }
    if (is_true(self.var_b895a3ff)) {
        self.var_dc4f101 notify(#"stop_revive_trigger");
    }
    if (self namespace_e86ffa8::function_33d837e4()) {
        if (self namespace_e86ffa8::function_33d837e4(4)) {
            self.var_6d71557a = 1;
            self clientfield::set_player_uimodel("hud_items.tombstoneReviveTimerShorten", 1);
        }
        if (!is_true(self.var_b895a3ff)) {
            self.var_2f2bf1ea = namespace_e86ffa8::function_33d837e4(3);
            if (self.var_2f2bf1ea) {
                if (!isdefined(self.var_7d3caa9)) {
                    self.var_7d3caa9 = [];
                }
                var_16f12c31 = structcopy(self.inventory.items[17]);
                var_fe58c446 = structcopy(self.inventory.items[13]);
                var_312d49ec = structcopy(self.inventory.items[7]);
                var_61bf1830 = structcopy(self.inventory.items[17 + 1]);
                var_61bf1830.hidetime = 0;
                weapon1 = var_61bf1830.var_627c698b;
                if (isdefined(weapon1)) {
                    var_61bf1830.clipammo = self getweaponammoclip(weapon1);
                    var_61bf1830.stockammo = self getweaponammostock(weapon1);
                    if (is_true(weapon1.isdualwield) && isdefined(weapon1.dualwieldweapon) && weapon1.dualwieldweapon != level.weaponnone) {
                        var_61bf1830.var_7fa2b50b = self getweaponammoclip(weapon1.dualwieldweapon);
                    }
                }
                var_c6dd36cf = structcopy(self.inventory.items[17 + 1 + 8 + 1]);
                var_c6dd36cf.hidetime = 0;
                weapon2 = var_c6dd36cf.var_627c698b;
                if (isdefined(weapon2)) {
                    var_c6dd36cf.clipammo = self getweaponammoclip(weapon2);
                    var_c6dd36cf.stockammo = self getweaponammostock(weapon2);
                    if (is_true(weapon2.isdualwield) && isdefined(weapon2.dualwieldweapon) && weapon2.dualwieldweapon != level.weaponnone) {
                        var_c6dd36cf.var_7fa2b50b = self getweaponammoclip(weapon2.dualwieldweapon);
                    }
                }
                var_42045b62 = {#armor:self.armor, #var_6032cf15:self.armortier, #scrap:isdefined(self.var_595a11bc) ? self.var_595a11bc : 0, #var_c7f20631:isdefined(self.var_72d64cfd) ? self.var_72d64cfd : 0, #scorestreak:var_16f12c31, #tactical:var_fe58c446, #lethal:var_312d49ec, #weapon1:var_61bf1830, #weapon2:var_c6dd36cf};
                var_42045b62 = function_314e7dbf(var_42045b62);
                if (!isdefined(self.var_7d3caa9)) {
                    self.var_7d3caa9 = [];
                } else if (!isarray(self.var_7d3caa9)) {
                    self.var_7d3caa9 = array(self.var_7d3caa9);
                }
                self.var_7d3caa9[self.var_7d3caa9.size] = var_42045b62;
            }
        }
        return;
    }
    self.var_2f2bf1ea = undefined;
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 1, eflags: 0x2 linked
// Checksum 0x21d9d1e1, Offset: 0x10f8
// Size: 0x282
function function_314e7dbf(stash) {
    if (isdefined(level.var_45030deb)) {
        foreach (var_d20236ab in level.var_45030deb) {
            switch (var_d20236ab.slot) {
            case #"tactical":
                var_be84ec96 = stash.tactical;
                if (isdefined(var_be84ec96.itementry)) {
                    var_5c7249bf = item_world_util::get_itemtype(var_be84ec96.itementry);
                    if (var_5c7249bf === var_d20236ab.item_name) {
                        stash.tactical = undefined;
                    }
                }
                break;
            case #"lethal":
                var_60d9ce9d = stash.lethal;
                if (isdefined(var_60d9ce9d.itementry)) {
                    var_8be8c440 = item_world_util::get_itemtype(var_60d9ce9d.itementry);
                    if (var_8be8c440 === var_d20236ab.item_name) {
                        stash.lethal = undefined;
                    }
                }
                break;
            case #"weapon":
                var_9f785cff = stash.weapon1;
                if (isdefined(var_9f785cff.itementry)) {
                    var_8b0bcb30 = item_world_util::get_itemtype(var_9f785cff.itementry);
                    if (var_8b0bcb30 === var_d20236ab.item_name) {
                        stash.weapon1 = undefined;
                    }
                }
                var_ad06f81c = stash.weapon2;
                if (isdefined(var_ad06f81c.itementry)) {
                    var_35b52084 = item_world_util::get_itemtype(var_ad06f81c.itementry);
                    if (var_35b52084 === var_d20236ab.item_name) {
                        stash.weapon2 = undefined;
                    }
                }
                break;
            default:
                break;
            }
        }
    }
    return stash;
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 1, eflags: 0x2 linked
// Checksum 0xe87206b0, Offset: 0x1388
// Size: 0x6c
function on_player_revived(*params) {
    self.var_6d71557a = undefined;
    self clientfield::set_player_uimodel("hud_items.tombstoneReviveTimerShorten", 0);
    if (is_true(self.var_2f2bf1ea)) {
        arrayremoveindex(self.var_7d3caa9, 0);
    }
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x69701a6f, Offset: 0x1400
// Size: 0x34
function on_joined_spectate() {
    if (is_true(self.var_b895a3ff)) {
        self function_3db7ced3();
    }
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x33d4175c, Offset: 0x1440
// Size: 0x2c
function on_spawned() {
    self.var_6d71557a = undefined;
    self clientfield::set_player_uimodel("hud_items.tombstoneReviveTimerShorten", 0);
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0xb51917c6, Offset: 0x1478
// Size: 0x1f6
function function_dfd10619() {
    self endon(#"disconnect", #"zombified", #"player_revived", #"bled_out", #"hash_3c6513b34d68ea46");
    level endon(#"end_game");
    usinggamepad = self gamepadusedlast();
    while (usinggamepad && self weaponswitchbuttonpressed() || !usinggamepad && self fragbuttonpressed()) {
        wait(1);
    }
    self.var_1399a943 = 1;
    var_6de5125c = 0;
    while (!var_6de5125c) {
        self function_c1ae3843();
        if (!is_true(self.revivetrigger.beingrevived) && !is_true(self.var_16735873) && self.bleedout_time > 4) {
            var_6de5125c = 1;
        }
        wait(0.1);
    }
    if (is_true(self.var_45ef153) || is_true(level.var_45ef153)) {
        self zm_laststand::auto_revive();
        return;
    }
    self thread function_fe8b87d5();
    self notify(#"tombstone_shadow");
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x162774c6, Offset: 0x1678
// Size: 0xe6
function function_c1ae3843() {
    start_time = 0;
    use_time = getdvarint(#"g_useholdtime", 0);
    while (true) {
        usinggamepad = self gamepadusedlast();
        if (usinggamepad && self weaponswitchbuttonpressed() || !usinggamepad && self fragbuttonpressed()) {
            if (start_time == 0) {
                start_time = gettime();
            } else if (gettime() - start_time > use_time) {
                return;
            }
        } else {
            start_time = 0;
        }
        waitframe(1);
    }
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x2b24fb5, Offset: 0x1768
// Size: 0x170
function spawn_corpse() {
    trace_start = self.origin;
    trace_end = self.origin + (0, 0, -500);
    var_5716a6f5 = playerphysicstrace(trace_start, trace_end);
    playfx(#"hash_7338c45a04f946da", self.origin);
    corpse = util::spawn_player_clone(self, #"hash_7258182255087552", undefined, 0);
    corpse clientfield::set("" + #"hash_5d96e4c9a397fa0", 1);
    corpse.owner = self;
    corpse thread revive_trigger_spawn();
    self.var_57b374b4 = gameobjects::get_next_obj_id();
    objective_add(self.var_57b374b4, "active", corpse, #"hash_6986c5321eb92948");
    corpse thread function_cf07c32a();
    return corpse;
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0xfb920f0f, Offset: 0x18e0
// Size: 0x22a
function function_cf07c32a() {
    self endon(#"death");
    while (true) {
        wait(1);
        var_3ab39d83 = self.origin + (0, 0, 30);
        var_9568b0fc = anglestoforward(self.angles);
        var_9568b0fc = vectornormalize(var_9568b0fc);
        v_behind = var_9568b0fc * -1;
        var_9568b0fc = vectorscale(var_9568b0fc, 256);
        var_9568b0fc = var_3ab39d83 + var_9568b0fc;
        v_behind = vectorscale(v_behind, 256);
        v_behind = var_3ab39d83 + v_behind;
        v_right = anglestoright(self.angles);
        v_right = vectornormalize(v_right);
        v_left = v_right * -1;
        v_right = vectorscale(v_right, 256);
        v_right = var_3ab39d83 + v_right;
        v_left = vectorscale(v_left, 256);
        v_left = var_3ab39d83 + v_left;
        if (!bullettracepassed(var_3ab39d83, var_9568b0fc, 0, self) && !bullettracepassed(var_3ab39d83, v_behind, 0, self) && !bullettracepassed(var_3ab39d83, v_right, 0, self) && !bullettracepassed(var_3ab39d83, v_left, 0, self)) {
            if (self.owner.bleedout_time > 0.1) {
                self.owner.var_ba9d4da6 = 1;
                self.owner zm_laststand::auto_revive();
                return;
            }
        }
    }
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x31bf7e02, Offset: 0x1b18
// Size: 0x16c
function revive_trigger_spawn() {
    if (is_true(level.var_28bbd30a)) {
        return;
    }
    radius = getdvarint(#"revive_trigger_radius", 100);
    self.revivetrigger = spawn("trigger_radius", (0, 0, 0), 0, radius, radius);
    self.revivetrigger sethintstring("");
    self.revivetrigger setcursorhint("HINT_NOICON");
    self.revivetrigger setmovingplatformenabled(1);
    self.revivetrigger enablelinkto();
    self.revivetrigger.origin = self.origin;
    self.revivetrigger linkto(self);
    self.revivetrigger.beingrevived = 0;
    self.revivetrigger.createtime = gettime();
    self.revivetrigger.radius = radius;
    self thread revive_trigger_think();
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 1, eflags: 0x2 linked
// Checksum 0x2edf8a79, Offset: 0x1c90
// Size: 0x624
function revive_trigger_think(t_secondary) {
    self endon(#"disconnect", #"zombified", #"stop_revive_trigger", #"death");
    level endon(#"end_game");
    while (true) {
        wait(0.1);
        if (isdefined(t_secondary)) {
            t_revive = t_secondary;
        } else if (isdefined(self.revivetrigger)) {
            t_revive = self.revivetrigger;
        } else {
            self notify(#"stop_revive_trigger");
            return;
        }
        t_revive function_268e4500();
        foreach (e_player in getplayers()) {
            n_depth = 0;
            n_depth = self depthinwater();
            e_player.var_88590b2 = 0;
            if (e_player namespace_e86ffa8::function_33d837e4()) {
                e_player.var_88590b2 = 1;
            }
            if (isdefined(t_secondary)) {
                if (e_player zm_laststand::can_revive(self, 1, 1) && e_player istouching(t_revive) || n_depth > 20) {
                    if (e_player.var_dc4f101 === e_player) {
                        e_player.var_88590b2 = 4;
                    } else {
                        e_player.var_88590b2 = 3;
                    }
                }
            } else if (e_player zm_laststand::can_revive_via_override(self) || e_player zm_laststand::can_revive(self) || n_depth > 20) {
                if (e_player.var_dc4f101 === self) {
                    e_player.var_88590b2 = 4;
                } else {
                    e_player.var_88590b2 = 3;
                }
            }
            if (e_player.var_dc4f101 === self && e_player.var_88590b2 !== 4) {
                e_player.var_88590b2 = 2;
            }
            e_player clientfield::set_player_uimodel("hud_items.tombstonePerkAvailable", e_player.var_88590b2);
        }
        foreach (e_reviver in getplayers()) {
            if (!isdefined(e_reviver) || self == e_reviver && !isdefined(self.var_6d772cb) || !e_reviver zm_laststand::is_reviving(self, t_secondary)) {
                continue;
            }
            if (e_reviver isreloading()) {
                continue;
            }
            if (!isdefined(self.var_6d772cb) && (!isdefined(e_reviver.s_revive_override_used) || e_reviver.s_revive_override_used.b_use_revive_tool)) {
                if (e_reviver zm_laststand::function_94cd8c0f()) {
                    continue;
                }
                e_reviver gestures::function_56e00fbf("gestable_t9_stimshot_last_stand");
                if (e_reviver !== self.var_1ff8de20) {
                    e_reviver disableweaponcycling();
                    e_reviver disableoffhandweapons();
                    e_reviver disableoffhandspecial();
                    e_reviver disableweaponswitchhero();
                }
                e_reviver val::set("laststand_revive", "allow_movement", 0);
                e_reviver thread zm_laststand::revive_give_back_weapons_when_done(self);
            }
            b_revive_successful = e_reviver zm_laststand::revive_do_revive(self, t_secondary);
            if (isdefined(e_reviver)) {
                e_reviver notify(#"revive_done");
            }
            if (b_revive_successful) {
                if (isdefined(level.a_revive_success_perk_func)) {
                    foreach (func in level.a_revive_success_perk_func) {
                        self [[ func ]]();
                    }
                }
                self.owner thread function_b3b8c37d(e_reviver);
                self thread zm_laststand::auto_revive(e_reviver, 0, 0);
                return;
            }
            if (isdefined(e_reviver)) {
                e_reviver zm_vo::vo_stop();
            }
        }
    }
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0xa21c00f2, Offset: 0x22c0
// Size: 0x512
function function_fe8b87d5() {
    self endon(#"death", #"entering_last_stand");
    self thread lui::screen_flash(0.1, 0.5, 0.5, 1, "white");
    self.var_8f0245d0 = {#armor:self.armor};
    self.var_b895a3ff = 1;
    self.var_39c78617 = 1;
    self.no_revive_trigger = 1;
    self.var_dc4f101 = self spawn_corpse();
    self thread function_9ebf012d();
    self.armor = 0;
    if (isdefined(self.revivetrigger)) {
        self.revivetrigger delete();
        self.revivetrigger = undefined;
    }
    self clientfield::set("zm_last_stand_postfx", 0);
    self clientfield::set_player_uimodel("hud_items.tombstonePerkAvailable", 2);
    self val::set("zm_laststand", "allowdeath", 0);
    if (!self namespace_e86ffa8::function_33d837e4(1)) {
        self val::set("tombstone_shadow", "health_regen", 0);
    } else {
        self.var_8fd58a32 = 1;
    }
    self thread function_19412563();
    self util::delay(2, "death", &val::reset, "zm_laststand", "allowdeath");
    self util::delay(2, "death", &val::reset, "laststand", "ignoreme");
    self setmovespeedscale(1);
    self allowjump(1);
    self function_88575fbe();
    self enableweaponcycling();
    if (self.lastactiveweapon != level.weaponnone && self hasweapon(self.lastactiveweapon, 1) && !zm_loadout::is_placeable_mine(self.lastactiveweapon) && !zm_equipment::is_equipment(self.lastactiveweapon) && !zm_loadout::is_hero_weapon(self.lastactiveweapon) && !self.lastactiveweapon.isriotshield) {
        self switchtoweapon(self.lastactiveweapon);
    } else if (self getweaponslistprimaries().size) {
        self switchtoweapon();
    }
    foreach (slotid in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
        self zm_weapons::function_51aa5813(slotid);
    }
    self childthread function_3c87c880();
    self clientfield::set("" + #"hash_46072c670fdaf2fa", 1);
    self.var_dc4f101 waittill(#"player_revived");
    self notify(#"player_revived");
    self.var_4eea3759 = 1;
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x4e8a70ee, Offset: 0x27e0
// Size: 0x1d4
function function_19412563() {
    if (!isdefined(level.var_f2db450a)) {
        level.var_f2db450a = [];
    }
    arrayremovevalue(level.var_f2db450a, undefined);
    self val::set("tombstone_shadow", "disable_usability", 1);
    while (isalive(self) && is_true(self.var_b895a3ff)) {
        var_456acf0c = 1;
        foreach (entity in level.var_f2db450a) {
            if (isdefined(entity) && self istouching(entity)) {
                var_456acf0c = 0;
                break;
            }
        }
        if (var_456acf0c) {
            self val::set("tombstone_shadow", "disable_usability", 1);
        } else {
            self val::reset("tombstone_shadow", "disable_usability");
        }
        wait(0.25);
    }
    if (isdefined(self)) {
        self val::reset("tombstone_shadow", "disable_usability");
    }
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x61aa12bc, Offset: 0x29c0
// Size: 0xce
function function_88575fbe() {
    if (isdefined(self.laststandpistol)) {
        if (isdefined(self.var_1d2409c1)) {
            if (is_true(self.var_9c882b2d)) {
                self.var_9c882b2d = undefined;
                self takeweapon(self.laststandpistol);
            } else {
                zm_laststand::function_a9cb028f();
            }
            self.var_1d2409c1 = undefined;
        } else if (is_true(self.var_9c882b2d)) {
            self.var_9c882b2d = undefined;
            self takeweapon(self.laststandpistol);
        }
    }
    self.laststandpistol = undefined;
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x20f50fc4, Offset: 0x2a98
// Size: 0x2b4
function function_9ebf012d() {
    self endon(#"disconnect");
    println("<unknown string>");
    spawnpoint = zm_gametype::onfindvalidspawnpoint();
    origin = spawnpoint.origin;
    angles = spawnpoint.angles;
    new_origin = undefined;
    if (isdefined(level.var_5816975b)) {
        new_origin = [[ level.var_5816975b ]](self);
    }
    if (isdefined(level.var_8179368e)) {
        new_origin = [[ level.var_8179368e ]](self);
    }
    if (isdefined(level.var_dbf9c70d)) {
        new_origin = [[ level.var_dbf9c70d ]](self);
    }
    if (!isdefined(new_origin)) {
        new_origin = zm_player::check_for_valid_spawn_near_team(self, 1);
    }
    if (!isdefined(new_origin)) {
        if (isdefined(self.var_f4710251)) {
            targetplayer = getentbynum(self.var_f4710251);
            if (isdefined(targetplayer) && isplayer(targetplayer) && isalive(targetplayer)) {
                new_origin = squad_spawn::function_e402b74e(self, targetplayer);
            }
        }
    }
    if (isdefined(new_origin)) {
        if (!isdefined(new_origin.angles)) {
            angles = (0, 0, 0);
        } else {
            angles = new_origin.angles;
        }
        if (isdefined(new_origin.origin)) {
            origin = new_origin.origin;
        }
        self setorigin(origin);
        self setplayerangles(angles);
    } else if (isvec(origin) && isvec(angles)) {
        self setorigin(origin);
        self setplayerangles(angles);
    }
    self.is_zombie = 0;
    self reviveplayer();
    self function_26a6d33c();
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0xd37b0756, Offset: 0x2d58
// Size: 0x160
function function_26a6d33c() {
    a_ai = getaiteamarray(level.zombie_team);
    a_aoe_ai = arraysortclosest(a_ai, self.origin, a_ai.size, 0, 200);
    foreach (ai in a_aoe_ai) {
        if (isactor(ai) && isalive(ai) && ai.var_6f84b820 === #"normal") {
            ai.marked_for_recycle = 1;
            ai.has_been_damaged_by_player = 0;
            ai dodamage(ai.health, self.origin, self);
        }
    }
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 1, eflags: 0x2 linked
// Checksum 0xa0df8e99, Offset: 0x2ec0
// Size: 0x10c
function function_b3b8c37d(e_reviver) {
    self endon(#"death");
    self zm_stats::increment_challenge_stat(#"hash_66292e9d9de31883");
    self function_3db7ced3();
    if (!is_true(self.var_ba9d4da6)) {
        self thread function_eedd0275();
    }
    self thread zm_laststand::revive_success(e_reviver);
    self thread function_26a6d33c();
    self.var_b895a3ff = undefined;
    self.no_revive_trigger = undefined;
    self.var_39c78617 = undefined;
    self.var_ba9d4da6 = undefined;
    self.var_dc4f101 waittill(#"player_revived");
    self function_575d770f();
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x7490e05c, Offset: 0x2fd8
// Size: 0xf4
function function_eedd0275() {
    self endon(#"disconnect");
    self.var_e70b811 = spawn("script_origin", self.origin);
    self.var_e70b811.angles = self.angles;
    self linkto(self.var_e70b811);
    self.var_e70b811.origin = self.var_dc4f101.origin;
    self.var_e70b811.angles = self.var_dc4f101.angles;
    waitframe(1);
    if (isdefined(self.var_e70b811)) {
        self.var_e70b811 delete();
    }
    self setvelocity((0, 0, 0));
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x6 linked
// Checksum 0xe3d77461, Offset: 0x30d8
// Size: 0x74
function private function_3c87c880() {
    s_waitresult = self waittill(#"scene_igc_shot_started", #"player_revived");
    if (s_waitresult._notify === "scene_igc_shot_started" && isdefined(self.var_dc4f101)) {
        self function_6cc3fb63();
    }
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x63213a7a, Offset: 0x3158
// Size: 0x4c
function function_6cc3fb63() {
    self thread function_b3b8c37d();
    self.var_dc4f101 notify(#"stop_revive_trigger");
    self.var_dc4f101 notify(#"player_revived");
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0xc30fe052, Offset: 0x31b0
// Size: 0x12e
function function_575d770f() {
    if (isdefined(self.var_dc4f101)) {
        playfx(#"hash_7338c45a04f946da", self.var_dc4f101.origin);
        self.var_dc4f101 clientfield::set("" + #"hash_5d96e4c9a397fa0", 0);
    }
    if (isdefined(self.var_57b374b4)) {
        objective_delete(self.var_57b374b4);
        gameobjects::release_obj_id(self.var_57b374b4);
        self.var_57b374b4 = undefined;
    }
    if (isdefined(self.var_dc4f101.revivetrigger)) {
        self.var_dc4f101.revivetrigger delete();
    }
    if (isdefined(self.var_dc4f101)) {
        self.var_dc4f101 delete();
    }
    self.var_dc4f101 = undefined;
    self.var_ba9d4da6 = undefined;
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x7399c665, Offset: 0x32e8
// Size: 0xe4
function function_3db7ced3() {
    self val::reset("tombstone_shadow", "health_regen");
    self val::reset("tombstone_shadow", "disable_usability");
    self clientfield::set("" + #"hash_46072c670fdaf2fa", 0);
    self.armor = self.var_8f0245d0.armor;
    self.var_8f0245d0 struct::delete();
    self.var_8f0245d0 = undefined;
    self.var_8fd58a32 = undefined;
    self.var_1399a943 = undefined;
    self clientfield::set_player_uimodel("hud_items.tombstonePerkAvailable", 0);
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x6803cbf0, Offset: 0x33d8
// Size: 0x146
function on_player_bleedout() {
    self endon(#"disconnect");
    if (is_true(self.var_6d71557a)) {
        if (zm_utility::is_classic()) {
            self thread special_revive();
            self.var_6d71557a = undefined;
        }
    }
    wait(1);
    if (!isdefined(self)) {
        return;
    }
    if (!isalive(self)) {
        if (is_true(self.var_2f2bf1ea) && !isdefined(self.var_67a30a9)) {
            self.var_67a30a9 = function_8fddd50e();
        }
    }
    if (is_true(self.var_b895a3ff)) {
        self function_3db7ced3();
        self.var_b895a3ff = undefined;
        self function_575d770f();
    }
    self.var_b895a3ff = undefined;
    self.var_2f2bf1ea = undefined;
    self.var_1399a943 = undefined;
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x76495fc4, Offset: 0x3528
// Size: 0x1c
function on_disconnect() {
    self function_575d770f();
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x9b3d8e43, Offset: 0x3550
// Size: 0x218
function function_8fddd50e() {
    var_a97ca678 = isdefined(self.var_dc4f101) ? self.var_dc4f101.origin : self.origin;
    trace_start = var_a97ca678;
    trace_end = var_a97ca678 + (0, 0, -100);
    var_dfa8eaa5 = playerphysicstrace(trace_start, trace_end);
    a_str_models = [#"hash_4bee36a9434de051", #"hash_4bee33a9434ddb38", #"hash_4bee34a9434ddceb", #"hash_4bee39a9434de56a"];
    stash = util::spawn_model(a_str_models[self.entity_num], var_dfa8eaa5 + (0, 0, 15));
    stash function_619a5c20();
    stash clientfield::set("" + #"hash_2897f04212a28873", 1);
    stash.owner = self;
    stash thread function_330c66cc();
    stash thread function_f11599cf(self);
    stash.var_eeef4e4 = gameobjects::get_next_obj_id();
    objective_add(stash.var_eeef4e4, "active", stash, #"hash_4488235ae3df0e8a");
    stash bobbing((0, 0, 1), 2, 5);
    return stash;
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x603760d1, Offset: 0x3770
// Size: 0xb4
function function_330c66cc() {
    s_unitrigger = zm_unitrigger::function_a7620bfb();
    zm_unitrigger::unitrigger_set_hint_string(s_unitrigger, #"hash_66e274e3eb59ecc9");
    zm_unitrigger::unitrigger_force_per_player_triggers(s_unitrigger, 1);
    s_unitrigger.var_8d306e51 = 1;
    s_unitrigger.prompt_and_visibility_func = &function_c7f0270c;
    s_unitrigger.related_parent = self;
    self.s_unitrigger = s_unitrigger;
    zm_unitrigger::register_static_unitrigger(s_unitrigger, &function_cde4678f);
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x3ada45c4, Offset: 0x3830
// Size: 0x9e
function function_cde4678f() {
    self endon(#"kill_trigger");
    while (true) {
        waitresult = self waittill(#"trigger");
        player = waitresult.activator;
        player playsound(#"hash_5ba85bd7ec71cb6c");
        player function_8bc73ff9();
        waitframe(1);
    }
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 1, eflags: 0x2 linked
// Checksum 0x855f03aa, Offset: 0x38d8
// Size: 0x52
function function_c7f0270c(player) {
    owner = self.stub.related_parent.owner;
    var_94037c86 = 0;
    if (player === owner) {
        var_94037c86 = 1;
    }
    return var_94037c86;
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 1, eflags: 0x2 linked
// Checksum 0x5e0b9213, Offset: 0x3938
// Size: 0x6c
function function_f11599cf(player_owner) {
    player_owner endon(#"disconnect");
    player_owner waittill(#"spawned_player");
    player_owner waittilltimeout(180, #"hash_52bcdd4b631e0fed");
    self function_64d23fc();
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x301bc4ba, Offset: 0x39b0
// Size: 0x14c
function function_64d23fc() {
    player = self.owner;
    if (isdefined(self) && isdefined(self.s_unitrigger)) {
        zm_unitrigger::unregister_unitrigger(self.s_unitrigger);
    }
    self clientfield::set("" + #"hash_2897f04212a28873", 0);
    if (isdefined(self.var_eeef4e4)) {
        objective_delete(self.var_eeef4e4);
        gameobjects::release_obj_id(self.var_eeef4e4);
        self.var_eeef4e4 = undefined;
    }
    if (isplayer(player)) {
        player.var_67a30a9 = undefined;
        arrayremoveindex(player.var_7d3caa9, 0);
    }
    wait(0.1);
    if (isdefined(self)) {
        playfx(#"hash_7338c45a04f946da", self.origin);
    }
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0xff68939b, Offset: 0x3b08
// Size: 0x686
function function_8bc73ff9() {
    var_12a9e30a = self.var_7d3caa9[0];
    if (!isdefined(var_12a9e30a)) {
        return;
    }
    if (isdefined(var_12a9e30a.var_6032cf15) && var_12a9e30a.var_6032cf15 > 0) {
        if (var_12a9e30a.var_6032cf15 <= self.armortier) {
            if (self.armor < var_12a9e30a.armor) {
                self.armor = var_12a9e30a.armor;
            }
        } else {
            switch (var_12a9e30a.var_6032cf15) {
            case 1:
            default:
                str_level = #"armor_item_lv1_t9_sr";
                break;
            case 2:
                str_level = #"armor_item_lv2_t9_sr";
                break;
            case 3:
                str_level = #"armor_item_lv2_t9_sr";
                break;
            }
            self namespace_dd7e54e3::give_armor(str_level);
            if (self.armor < var_12a9e30a.armor) {
                self.armor = var_12a9e30a.armor;
            }
        }
    }
    if (!isdefined(self.var_595a11bc)) {
        self.var_595a11bc = 0;
    }
    if (!isdefined(self.var_72d64cfd)) {
        self.var_72d64cfd = 0;
    }
    if (isdefined(var_12a9e30a.scrap)) {
        self.var_595a11bc += var_12a9e30a.scrap;
    }
    if (isdefined(var_12a9e30a.var_c7f20631)) {
        self.var_72d64cfd += var_12a9e30a.var_c7f20631;
    }
    scorestreak = var_12a9e30a.scorestreak;
    if (isdefined(scorestreak.itementry)) {
        var_87b53013 = item_world_util::get_itemtype(scorestreak.itementry);
        self namespace_1cc7b406::give_item(var_87b53013);
    }
    lethal = var_12a9e30a.lethal;
    if (isdefined(lethal.itementry)) {
        var_16f23139 = item_world_util::get_itemtype(lethal.itementry);
        self namespace_1cc7b406::give_item(var_16f23139, lethal.count, 1);
    }
    tactical = var_12a9e30a.tactical;
    if (isdefined(tactical.itementry)) {
        var_20131ecc = item_world_util::get_itemtype(tactical.itementry);
        self namespace_1cc7b406::give_item(var_20131ecc, tactical.count, 1);
    }
    weapon1 = var_12a9e30a.weapon1;
    var_a85dc309 = self.inventory.items[17 + 1];
    var_7accd6f7 = item_inventory::function_a33744de(var_a85dc309.var_627c698b);
    dropweapon = self item_inventory::function_b76f46a0(weapon1, var_7accd6f7, 1);
    self setweaponammoclip(weapon1.var_627c698b, weapon1.clipammo);
    self setweaponammostock(weapon1.var_627c698b, weapon1.stockammo);
    if (isdefined(weapon1.var_7fa2b50b)) {
        self setweaponammoclip(weapon1.var_627c698b.dualwieldweapon, int(weapon1.var_7fa2b50b));
    }
    weapon2 = var_12a9e30a.weapon2;
    var_bacb67e4 = self.inventory.items[17 + 1 + 8 + 1];
    if (isdefined(weapon2.var_627c698b)) {
        if (!isdefined(var_bacb67e4.var_627c698b)) {
            self zm_weapons::function_98776900(weapon2, 1, 0);
        } else {
            var_1f321fb7 = item_inventory::function_a33744de(var_bacb67e4.var_627c698b);
            dropweapon = self item_inventory::function_b76f46a0(weapon2, var_1f321fb7, 1);
        }
        self setweaponammoclip(weapon2.var_627c698b, weapon2.clipammo);
        self setweaponammostock(weapon2.var_627c698b, weapon2.stockammo);
        if (isdefined(weapon2.var_7fa2b50b)) {
            self setweaponammoclip(weapon2.var_627c698b.dualwieldweapon, int(weapon2.var_7fa2b50b));
        }
    }
    self clientfield::set_player_uimodel("hudItems.scrap", isdefined(self.var_595a11bc) ? self.var_595a11bc : 0);
    self clientfield::set_player_uimodel("hudItems.rareScrap", isdefined(self.var_72d64cfd) ? self.var_72d64cfd : 0);
    self.killsconfirmed = isdefined(self.var_595a11bc) ? self.var_595a11bc : 0;
    self.killsdenied = isdefined(self.var_72d64cfd) ? self.var_72d64cfd : 0;
    self notify(#"hash_52bcdd4b631e0fed");
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0xb54aebbd, Offset: 0x4198
// Size: 0x4c
function special_revive() {
    self endon(#"disconnect");
    wait(1);
    while (level.var_9427911d > 1) {
        waitframe(1);
    }
    self thread zm_player::spectator_respawn_player();
}


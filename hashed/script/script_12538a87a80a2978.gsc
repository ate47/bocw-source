// Atian COD Tools GSC CW decompiler test
#using script_4ce7b4190a2fa70;
#using script_7d7ac1f663edcdc8;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_score.gsc;
#using script_18077945bb84ede7;
#using script_165beea08a63a243;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using script_7fc996fe8678852;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_cda50904;

// Namespace namespace_cda50904/namespace_cda50904
// Params 0, eflags: 0x5
// Checksum 0xd0008ec3, Offset: 0x350
// Size: 0x54
function private autoexec __init__system__() {
    system::register(#"hash_57d1b71f57332413", &function_70a657d8, undefined, &function_5700f119, #"hash_f81b9dea74f0ee");
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x3b0
// Size: 0x4
function function_70a657d8() {
    
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 0, eflags: 0x0
// Checksum 0xf91a50ba, Offset: 0x3c0
// Size: 0x1c
function function_5700f119() {
    /#
        level thread init_devgui();
    #/
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 4, eflags: 0x0
// Checksum 0xece3f4e5, Offset: 0x3e8
// Size: 0x44e
function function_a92a93e9(var_c860e2f, v_angles, var_75b5cef0 = 0, n_delay = 1) {
    foreach (player in getplayers()) {
        switch (level.var_b48509f9) {
        case #"hash_defdefdefdefdef0":
            level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:"objective_complete_capsule_1", #attacker:player});
            break;
        case 2:
            level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:"objective_complete_capsule_2", #attacker:player});
            break;
        case 3:
            level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:"objective_complete_capsule_3", #attacker:player});
            break;
        case 4:
            level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:"objective_complete_capsule_4", #attacker:player});
            break;
        case 5:
            level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:"objective_complete_capsule_5", #attacker:player});
            break;
        case 6:
            level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:"objective_complete_capsule_6", #attacker:player});
            break;
        case 7:
            level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:"objective_complete_capsule_7", #attacker:player});
            break;
        case 8:
            level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:"objective_complete_capsule_8", #attacker:player});
            break;
        case 9:
            level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:"objective_complete_capsule_9", #attacker:player});
            break;
        case 10:
            level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:"objective_complete_capsule_10", #attacker:player});
            break;
        }
    }
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 1, eflags: 0x0
// Checksum 0x2e01c121, Offset: 0xa80
// Size: 0x38c
function function_bdd95292(struct) {
    struct.scriptmodel.struct = namespace_8b6a9d79::function_f3d93ee9(struct, "p8_fxanim_wz_supply_stash_01_glow_mod", 1);
    struct.var_422ae63e.struct = #"hash_5657ee89257b06fe";
    struct.scriptmodel fx::play("sr/fx9_chest_objective_amb", struct.origin, struct.angles, "death");
    struct.state.struct = 0;
    struct.var_9825cc78.struct = [];
    struct.players.struct = [];
    players = getplayers();
    /#
        assert(players.size > 0, "<unknown string>");
    #/
    foreach (player in players) {
        if (!isdefined(player.var_524f43cb)) {
            player.var_524f43cb.player = [];
        }
        trigger = namespace_8b6a9d79::function_214737c7(struct, &function_b4f2a34e, #"hash_4703982104472957", undefined, 200);
        trigger.struct = struct;
        trigger.origin.trigger = trigger.origin + vectorscale((0, 0, 1), 16);
        objid = zm_utility::function_f5a222a8(#"hash_52547cde15854dbf", struct.scriptmodel);
        trigger.var_7fadf788 = objid;
        player.var_524f43cb[objid] = objid;
        function_56ad6a7a(player.var_524f43cb[objid]);
        objective_setvisibletoplayer(player.var_524f43cb[objid], player);
        player clientclaimtrigger(trigger);
        if (!isdefined(struct.var_9825cc78)) {
            struct.var_9825cc78.struct = [];
        } else if (!isarray(struct.var_9825cc78)) {
            struct.var_9825cc78.struct = array(struct.var_9825cc78);
        }
        struct.var_9825cc78[struct.var_9825cc78.size] = trigger;
        if (!isdefined(struct.players)) {
            struct.players.struct = [];
        } else if (!isarray(struct.players)) {
            struct.players.struct = array(struct.players);
        }
        struct.players[struct.players.size] = player;
    }
    struct thread function_9086861a();
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 0, eflags: 0x0
// Checksum 0x1e0d047f, Offset: 0xe18
// Size: 0x180
function function_9086861a() {
    level endon(#"game_ended");
    self endon(#"death");
    while (1) {
        var_79e2063c = 0;
        foreach (trigger in self.var_9825cc78) {
            if (isdefined(trigger)) {
                var_79e2063c = 1;
            }
        }
        if (!var_79e2063c) {
            mdl_origin = self.scriptmodel.origin;
            self.scriptmodel clientfield::set("reward_chest_fx", 0);
            wait(5);
            self fx::play("sr/fx9_safehouse_mchn_wonderfizz_spawn", self.origin, self.angles);
            self.scriptmodel delete();
            level thread item_drop::function_4da960f6(mdl_origin, 64, 3);
            return;
        }
        waitframe(1);
    }
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 1, eflags: 0x0
// Checksum 0x2eafb3a3, Offset: 0xfa0
// Size: 0xb4
function function_b4f2a34e(eventstruct) {
    var_9a42a872 = eventstruct.activator;
    if (self.struct.state == 0) {
        self.struct.scriptmodel thread scene::play(self.struct.var_422ae63e, self.struct.scriptmodel);
        self.struct.state = 1;
        wait(0.25);
    }
    var_9a42a872 thread function_39340834(self.struct, self);
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 2, eflags: 0x0
// Checksum 0x20daa86a, Offset: 0x1060
// Size: 0x34c
function function_39340834(struct, trigger) {
    var_2be3941a = #"sr_objective_rewards_guns_tier_1";
    var_9c9943cf = 0;
    if (level.var_cf558bf < 1) {
        var_2be3941a = #"sr_objective_rewards_guns_tier_1";
    }
    if (level.var_cf558bf == 1) {
        var_2be3941a = #"sr_objective_rewards_guns_tier_2";
        var_9c9943cf = 1;
    }
    if (level.var_cf558bf >= 2) {
        var_2be3941a = #"sr_objective_rewards_guns_tier_3";
        var_9c9943cf = 2;
    }
    if (struct.state == 1) {
        struct.state.struct = 2;
        list = getscriptbundle(var_2be3941a);
        function_621d45bc(list, struct);
    }
    if (!level.var_30197c60 namespace_54dcccfc::is_open(self)) {
        level.var_30197c60 namespace_54dcccfc::open(self, 0);
        if (isdefined(struct.var_f0f92268)) {
            playerindex = function_76d51213(struct, self);
            if (playerindex < 0) {
                playerindex = 0;
            }
            index1 = 0;
            index2 = 1;
            var_d6a6fb08 = 2;
            if (isdefined(struct.var_f0f92268[playerindex][1]) && isdefined(struct.var_f0f92268[playerindex][0]) && isdefined(struct.var_f0f92268[playerindex][2])) {
                index1 = struct.var_f0f92268[playerindex][0];
                index2 = struct.var_f0f92268[playerindex][1];
                var_d6a6fb08 = struct.var_f0f92268[playerindex][2];
            }
            var_d80c7456 = function_219cb8bb(index1);
            var_c65bd0f5 = function_219cb8bb(index2);
            var_ff88c34e = function_219cb8bb(var_d6a6fb08);
            level.var_30197c60 namespace_54dcccfc::function_43ba5f0e(self, var_d80c7456);
            level.var_30197c60 namespace_54dcccfc::function_2d7f3298(self, var_c65bd0f5);
            level.var_30197c60 namespace_54dcccfc::function_ada8b2f1(self, var_ff88c34e);
            level.var_30197c60 namespace_54dcccfc::set_color(self, var_9c9943cf);
        }
        self thread function_80bbb50b(struct, trigger);
        self namespace_553954de::function_14bada94();
    }
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 2, eflags: 0x0
// Checksum 0x6af2ee81, Offset: 0x13b8
// Size: 0x1c0
function function_621d45bc(list, struct) {
    players = getplayers();
    struct.var_f0f92268.struct = [];
    foreach (player in players) {
        var_2ab78386 = function_410c380(list.itemlist);
        var_ff082c28 = function_410c380(list.itemlist, var_2ab78386);
        var_d3ac88d = function_410c380(list.itemlist, var_2ab78386, var_ff082c28);
        var_c4aee6b4 = [2:var_d3ac88d, 1:var_ff082c28, 0:var_2ab78386];
        if (!isdefined(struct.var_f0f92268)) {
            struct.var_f0f92268.struct = [];
        } else if (!isarray(struct.var_f0f92268)) {
            struct.var_f0f92268.struct = array(struct.var_f0f92268);
        }
        struct.var_f0f92268[struct.var_f0f92268.size] = var_c4aee6b4;
    }
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 3, eflags: 0x4
// Checksum 0x776fb59e, Offset: 0x1580
// Size: 0x6dc
function private function_410c380(list, var_523adf97, var_5fe37ae8) {
    var_c4b75358 = [];
    i = 0;
    foreach (i, item in list) {
        if (item.maxweight == item.minweight) {
            weight = item.maxweight;
        } else {
            weight = randomintrange(item.minweight, item.maxweight);
        }
        var_c4b75358[i] = weight;
    }
    i = 0;
    total_weight = 0;
    foreach (weight in var_c4b75358) {
        total_weight = total_weight + weight;
    }
    var_f00ca053 = [];
    var_abe6284f = [];
    var_34e28de6 = randomintrange(0, total_weight);
    var_abe6284f[0] = var_c4b75358[0];
    for (count = 1; count < var_c4b75358.size; count++) {
        var_abe6284f[count] = var_abe6284f[count - 1] + var_c4b75358[count];
    }
    foreach (i, weight in var_abe6284f) {
        if (var_34e28de6 < weight) {
            if (isdefined(var_523adf97) && isdefined(var_5fe37ae8)) {
                if (list[i].var_a6762160 != var_523adf97 && list[i].var_a6762160 != var_5fe37ae8) {
                    if (!isdefined(var_f00ca053)) {
                        var_f00ca053 = [];
                    } else if (!isarray(var_f00ca053)) {
                        var_f00ca053 = array(var_f00ca053);
                    }
                    if (!isinarray(var_f00ca053, i)) {
                        var_f00ca053[var_f00ca053.size] = i;
                    }
                }
            } else if (isdefined(var_523adf97)) {
                if (list[i].var_a6762160 != var_523adf97) {
                    if (!isdefined(var_f00ca053)) {
                        var_f00ca053 = [];
                    } else if (!isarray(var_f00ca053)) {
                        var_f00ca053 = array(var_f00ca053);
                    }
                    if (!isinarray(var_f00ca053, i)) {
                        var_f00ca053[var_f00ca053.size] = i;
                    }
                }
            } else {
                if (!isdefined(var_f00ca053)) {
                    var_f00ca053 = [];
                } else if (!isarray(var_f00ca053)) {
                    var_f00ca053 = array(var_f00ca053);
                }
                if (!isinarray(var_f00ca053, i)) {
                    var_f00ca053[var_f00ca053.size] = i;
                }
            }
        }
    }
    if (var_f00ca053.size >= 1) {
        random_index = randomint(var_f00ca053.size);
        item_index = var_f00ca053[random_index];
        return list[item_index].var_a6762160;
    } else if (isdefined(var_523adf97) && isdefined(var_5fe37ae8)) {
        var_b4bf88aa = [];
        foreach (item in list) {
            if (item.var_a6762160 != var_523adf97 && item.var_a6762160 != var_5fe37ae8) {
                if (!isdefined(var_b4bf88aa)) {
                    var_b4bf88aa = [];
                } else if (!isarray(var_b4bf88aa)) {
                    var_b4bf88aa = array(var_b4bf88aa);
                }
                if (!isinarray(var_b4bf88aa, item.var_a6762160)) {
                    var_b4bf88aa[var_b4bf88aa.size] = item.var_a6762160;
                }
            }
        }
        random_index = randomint(var_b4bf88aa.size);
        return var_b4bf88aa[random_index];
    } else if (isdefined(var_523adf97)) {
        var_b4bf88aa = [];
        foreach (item in list) {
            if (item.var_a6762160 != var_523adf97) {
                if (!isdefined(var_b4bf88aa)) {
                    var_b4bf88aa = [];
                } else if (!isarray(var_b4bf88aa)) {
                    var_b4bf88aa = array(var_b4bf88aa);
                }
                if (!isinarray(var_b4bf88aa, item.var_a6762160)) {
                    var_b4bf88aa[var_b4bf88aa.size] = item.var_a6762160;
                }
            }
        }
        random_index = randomint(var_b4bf88aa.size);
        return var_b4bf88aa[random_index];
    } else {
        random_index = randomint(list.size);
        return list[random_index].var_a6762160;
    }
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 1, eflags: 0x4
// Checksum 0xb014b1f0, Offset: 0x1c68
// Size: 0x27a
function private function_219cb8bb(var_a6762160) {
    switch (var_a6762160) {
    case #"ar_accurate_t9_orange_item_sr":
    case #"ar_accurate_t9_item_sr":
    case #"hash_5b2d331d596e0292":
        return 0;
        break;
    case #"hash_5b1db5e03f5e110":
    case #"ar_slowhandling_t9_item_sr":
    case #"ar_slowhandling_t9_orange_item_sr":
        return 1;
        break;
    case #"launcher_standard_t9_item_sr":
        return 2;
        break;
    case #"lmg_fastfire_t9_item_sr":
    case #"hash_591cbfbc064e6c05":
    case #"lmg_fastfire_t9_orange_item_sr":
        return 3;
        break;
    case #"lmg_slowfire_t9_orange_item_sr":
    case #"hash_19e050fa878481ae":
    case #"lmg_slowfire_t9_item_sr":
        return 4;
        break;
    case #"smg_spray_t9_item_sr":
    case #"smg_spray_t9_orange_item_sr":
    case #"hash_2116e38be200ebf7":
        return 5;
        break;
    case #"smg_standard_t9_orange_item_sr":
    case #"smg_standard_t9_item_sr":
    case #"hash_551ca3818f740355":
        return 6;
        break;
    case #"tr_longburst_t9_orange_item_sr":
    case #"tr_longburst_t9_item_sr":
    case #"hash_7b49122756d14edb":
        return 7;
        break;
    case #"hash_304d190e0d3d0fcb":
    case #"tr_fastburst_t9_item_sr":
    case #"tr_fastburst_t9_orange_item_sr":
        return 8;
        break;
    case #"hash_39cfa9ec04309821":
    case #"sniper_cannon_t9_orange_item_sr":
    case #"sniper_cannon_t9_item_sr":
        return 9;
        break;
    case #"sniper_quickscope_t9_orange_item_sr":
    case #"sniper_quickscope_t9_item_sr":
    case #"hash_4cf361d49f792fed":
        return 10;
        break;
    }
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 2, eflags: 0x4
// Checksum 0x34aa3592, Offset: 0x1ef0
// Size: 0x9a
function private function_76d51213(struct, var_6ca170e7) {
    foreach (i, player in struct.players) {
        if (player == var_6ca170e7) {
            return i;
        }
    }
    return -1;
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 0, eflags: 0x0
// Checksum 0x6ed85faf, Offset: 0x1f98
// Size: 0x8c
function function_6c71e778() {
    self val::reset(#"hash_5ff56dba9074b0b4", "allow_crouch");
    self val::reset(#"hash_5ff56dba9074b0b4", "allow_prone");
    level.var_30197c60 namespace_54dcccfc::close(self);
    self namespace_553954de::function_548f282();
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 1, eflags: 0x0
// Checksum 0x2a2e9939, Offset: 0x2030
// Size: 0x92
function function_39d87af7(currentselection) {
    switch (currentselection) {
    case 0:
        return "Gun1Selected";
        break;
    case 1:
        return "Gun2Selected";
        break;
    case 2:
        return "Gun3Selected";
        break;
    case #"hash_defdefdefdefdef0":
        return "Gun1Selected";
        break;
    }
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 2, eflags: 0x0
// Checksum 0x8aab0679, Offset: 0x20d0
// Size: 0x680
function function_80bbb50b(chest, trigger) {
    trigger sethintstring("");
    if (isdefined(self.var_524f43cb[trigger.var_7fadf788])) {
        objid = self.var_524f43cb[trigger.var_7fadf788];
        objective_setinvisibletoplayer(objid, self);
    }
    self endoncallback(&function_6c71e778, #"death");
    chest endoncallback(&function_6c71e778, #"death");
    wait(0.25);
    self val::set(#"hash_5ff56dba9074b0b4", "allow_crouch", 0);
    self val::set(#"hash_5ff56dba9074b0b4", "allow_prone", 0);
    self.var_ba0ccdab = 0;
    state = function_39d87af7(self.var_ba0ccdab);
    level.var_30197c60 namespace_54dcccfc::set_state(self, state);
    var_38c5c771 = 0;
    var_8cd7eab = 0;
    var_febc0c66 = 0;
    lasttime = gettime();
    time = gettime();
    delta = time - lasttime;
    while (1) {
        lasttime = time;
        time = gettime();
        delta = time - lasttime;
        if (self actionslotthreebuttonpressed()) {
            if (!var_8cd7eab) {
                self.var_ba0ccdab = self.var_ba0ccdab - 1;
                if (self.var_ba0ccdab < 0) {
                    self.var_ba0ccdab = 0;
                }
                state = function_39d87af7(self.var_ba0ccdab);
                level.var_30197c60 namespace_54dcccfc::set_state(self, state);
            }
            var_8cd7eab = 1;
        } else {
            var_8cd7eab = 0;
        }
        if (self actionslotfourbuttonpressed()) {
            if (!var_febc0c66) {
                self.var_ba0ccdab = self.var_ba0ccdab + 1;
                if (self.var_ba0ccdab > 2) {
                    self.var_ba0ccdab = 2;
                }
                state = function_39d87af7(self.var_ba0ccdab);
                level.var_30197c60 namespace_54dcccfc::set_state(self, state);
            }
            var_febc0c66 = 1;
        } else {
            var_febc0c66 = 0;
        }
        if (self reloadbuttonpressed() && isalive(self) && !self laststand::player_is_in_laststand() && !self isinvehicle()) {
            var_38c5c771 = var_38c5c771 + 1 * delta;
            if (var_38c5c771 > 750) {
                playerindex = function_76d51213(chest, self);
                if (playerindex < 0) {
                    playerindex = 0;
                }
                var_25b6fcfc = #"ar_accurate_t9_item_sr";
                if (isdefined(chest.var_f0f92268[playerindex][self.var_ba0ccdab])) {
                    var_25b6fcfc = chest.var_f0f92268[playerindex][self.var_ba0ccdab];
                }
                gun = function_4ba8fde(var_25b6fcfc);
                var_fa3df96 = self item_inventory::function_e66dcff5(gun);
                self item_world::function_de2018e3(gun, self, var_fa3df96);
                if (isdefined(trigger.var_7fadf788) && isdefined(self.var_524f43cb) && isdefined(self.var_524f43cb[trigger.var_7fadf788])) {
                    objective_delete(self.var_524f43cb[trigger.var_7fadf788]);
                }
                if (isdefined(trigger)) {
                    trigger delete();
                }
                self function_6c71e778();
                return;
            }
            level.var_30197c60 namespace_54dcccfc::function_b94196b8(self, var_38c5c771 / 750);
        } else {
            var_38c5c771 = 0;
            level.var_30197c60 namespace_54dcccfc::function_b94196b8(self, var_38c5c771 / 750);
        }
        if (self stancebuttonpressed() || distance2d(self.origin, chest.origin) > 128 || self laststand::player_is_in_laststand() || self isinvehicle()) {
            trigger sethintstring(#"hash_4703982104472957");
            if (isdefined(self.var_524f43cb[trigger.var_7fadf788])) {
                objid = self.var_524f43cb[trigger.var_7fadf788];
                objective_setvisibletoplayer(objid, self);
            }
            self function_6c71e778();
            return;
        }
        waitframe(1);
    }
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 0, eflags: 0x0
// Checksum 0x866c200b, Offset: 0x2758
// Size: 0x54
function init_devgui() {
    /#
        waittill_can_add_debug_command();
        add_devgui("<unknown string>", "<unknown string>");
        level thread function_578918d1();
    #/
}

// Namespace namespace_cda50904/namespace_cda50904
// Params 0, eflags: 0x0
// Checksum 0xd9685569, Offset: 0x27b8
// Size: 0x13e
function function_578918d1() {
    /#
        while (1) {
            if (getdvarint(#"hash_316815357b0bca3a", 0)) {
                setdvar(#"hash_316815357b0bca3a", 0);
                player = getplayers()[0];
                if (isplayer(player)) {
                    forwardvec = anglestoforward(player.angles);
                    forwardvec = vectornormalize(forwardvec);
                    forwardvec = forwardvec * 128;
                    loc = player.origin + forwardvec;
                    function_a92a93e9(loc, player.angles + vectorscale((0, 1, 0), 180), 0);
                }
            }
            wait(1);
        }
    #/
}


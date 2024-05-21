// Atian COD Tools GSC CW decompiler test
#using script_2a5bf5b4a00cee0d;
#using script_164a456ce05c3483;
#using script_3faf478d5b0850fe;
#using script_47851dbeea22fe66;
#using script_1ee011cd0961afd7;
#using script_5f20d3b434d24884;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\ai\blackboard_vehicle.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\vehicle_death_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\statemachine_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\ai\systems\ai_blackboard.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_81522b3c;

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 0, eflags: 0x2 linked
// Checksum 0x9e0490ae, Offset: 0x230
// Size: 0x4c
function init() {
    level.doa.var_b95a5b86 = [];
    namespace_250e9486::function_252dff4d("bat", 0, &function_3b9ddd99, &function_d48ae962);
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 0, eflags: 0x2 linked
// Checksum 0xe43a043d, Offset: 0x288
// Size: 0x108
function function_5a423724() {
    self endon(#"death");
    self.var_d9c5a0f9 = 0;
    var_7756d233 = sqr(1500);
    while (true) {
        var_638f5ee0 = var_7756d233;
        if (isdefined(self.enemy)) {
            var_638f5ee0 = distancesquared(self.origin, self.enemy.origin);
        }
        if (!isdefined(self.enemy) || var_638f5ee0 >= var_7756d233) {
            self.var_d9c5a0f9++;
            if (self.var_d9c5a0f9 > 10) {
                self namespace_ec06fe4a::function_570729f0(1);
                return;
            }
        } else if (var_638f5ee0 < var_7756d233) {
            self.var_d9c5a0f9 = 0;
        }
        wait(1);
    }
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 0, eflags: 0x2 linked
// Checksum 0x1aa0f0cf, Offset: 0x398
// Size: 0x2bc
function function_3b9ddd99() {
    self useanimtree("generic");
    namespace_250e9486::function_25b2c8a9();
    self thread function_5a423724();
    initblackboard();
    self.b_ignore_cleanup = 1;
    self.var_5dd07a80 = 1;
    self.var_232915af = 1;
    self.var_76cb41b3 = 1;
    self.var_68139d12 = 1;
    self.nodamagefeedback = 1;
    self.var_63f6a059 = 1;
    self vehicle::friendly_fire_shield();
    self enableaimassist();
    self setneargoalnotifydist(25);
    self setdrawinfrared(1);
    self.fovcosine = 0;
    self.fovcosinebusy = 0;
    self.vehaircraftcollisionenabled = 1;
    assert(isdefined(self.scriptbundlesettings));
    self.settings = getscriptbundle(self.scriptbundlesettings);
    self.goalradius = 2048;
    self.goalheight = 100;
    self.var_ec0d66ce = 0.5 * (self.settings.engagementdistmin + self.settings.engagementdistmax);
    self.var_ff6d7c88 = sqr(self.var_ec0d66ce);
    self thread vehicle_ai::nudge_collision();
    self.health = 1000;
    self.maxhealth = 1000;
    self.damage_on_death = 0;
    defaultrole();
    level.doa.var_b95a5b86[level.doa.var_b95a5b86.size] = self;
    target_set(self);
    self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_bat_spawn");
    self thread namespace_9fc66ac::function_ba33d23d(#"hash_448d2fb335fe0966", #"hash_448d2fb335fe0966", #"hash_17c9c900a52243f8");
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 0, eflags: 0x2 linked
// Checksum 0x5311b123, Offset: 0x660
// Size: 0x2f4
function function_d48ae962() {
    self endon(#"death");
    firetime = max(self seatgetweapon(0).firetime, 1);
    var_4add6b14 = 1;
    var_7858260 = 5;
    var_806460d7 = 2;
    var_924b2038 = 8;
    self.var_92707b1f = gettime() + 5000;
    weapon = getweapon(#"hash_36e9b7c5ad4a0a76");
    while (!self.var_c0bd8c06) {
        time = gettime();
        if (self.var_92707b1f < time) {
            if (isdefined(self.var_c4e19d3)) {
                self setentitytarget(self.var_c4e19d3);
                self.stationary = 1;
                shots = randomintrange(var_4add6b14, var_7858260);
                self.var_c4e19d3 thread function_f7d9bc34();
                wait(0.75);
                while (shots && isdefined(self.var_c4e19d3) && namespace_ec06fe4a::function_a8975c67()) {
                    shots--;
                    fwd = vectorscale(vectornormalize(anglestoforward(self.angles)), 20);
                    start = self.origin + fwd + (0, 0, 20);
                    dest = self.var_c4e19d3.origin + (randomintrange(-15, 15), randomintrange(-15, 15), 48);
                    magicbullet(weapon, start, dest, self);
                    wait(firetime);
                }
                self.stationary = undefined;
            }
            cooldown = randomintrange(var_806460d7, var_924b2038);
            self.var_92707b1f = gettime() + cooldown * 1000;
        }
        wait(1);
        namespace_250e9486::function_c1f37cab();
    }
    self thread namespace_ec06fe4a::function_570729f0(0.1);
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 0, eflags: 0x2 linked
// Checksum 0x1b3aac52, Offset: 0x960
// Size: 0x64
function function_f7d9bc34() {
    self endon(#"disconnect");
    self namespace_83eb6304::function_3ecfde67("incoming_impact");
    wait(1.2);
    if (isdefined(self)) {
        self namespace_83eb6304::turnofffx("incoming_impact");
    }
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 1, eflags: 0x6 linked
// Checksum 0x9ba8402a, Offset: 0x9d0
// Size: 0xc0
function private istargetvalid(target) {
    if (!isdefined(target) || !isalive(target)) {
        return false;
    }
    if (isplayer(target) && (target.sessionstate == "spectator" || target.sessionstate == "intermission")) {
        return false;
    }
    if (is_true(target.ignoreme) || target isnotarget()) {
        return false;
    }
    return true;
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 0, eflags: 0x6 linked
// Checksum 0xe25ebff5, Offset: 0xa98
// Size: 0xec
function private gettarget() {
    targets = getplayers();
    leasthunted = targets[0];
    for (i = 0; i < targets.size; i++) {
        if (!isdefined(targets[i].hunted_by)) {
            targets[i].hunted_by = 0;
        }
        if (!istargetvalid(targets[i])) {
            continue;
        }
        if (!istargetvalid(leasthunted) || targets[i].hunted_by < leasthunted.hunted_by) {
            leasthunted = targets[i];
        }
    }
    if (istargetvalid(leasthunted)) {
        return leasthunted;
    }
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 0, eflags: 0x6 linked
// Checksum 0xbf703475, Offset: 0xb90
// Size: 0x128
function private function_1076a2e0() {
    self endon(#"change_state", #"death");
    while (true) {
        if (is_true(self.ignoreall)) {
            wait(0.5);
            continue;
        }
        if (istargetvalid(self.var_c4e19d3)) {
            wait(0.5);
            continue;
        }
        target = gettarget();
        if (!isdefined(target)) {
            self.var_c4e19d3 = undefined;
        } else {
            self.var_c4e19d3 = target;
            self.var_c4e19d3.hunted_by += 1;
            self vehlookat(self.var_c4e19d3);
            self turretsettarget(0, self.var_c4e19d3);
        }
        wait(0.5);
    }
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 0, eflags: 0x4
// Checksum 0xd0a64476, Offset: 0xcc0
// Size: 0x1c8
function private function_776e45e5() {
    self endon(#"change_state", #"death");
    self waittilltimeout(10, #"reached_end_node");
    while (true) {
        players = getplayers();
        var_3ada9d08 = 0;
        foreach (player in players) {
            if (self seerecently(player, 30)) {
                var_3ada9d08 = 1;
                break;
            }
        }
        if (gettime() - self.spawn_time > 10000 && !var_3ada9d08 && !is_true(self.var_894194a9)) {
            self.var_d880e556 = 1;
            self.allowdeath = 1;
            self kill();
            waitframe(1);
            if (isdefined(self)) {
                /#
                    debugstar(self.origin, 1000, (1, 1, 1));
                #/
                self delete();
            }
            return;
        }
        wait(1);
    }
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 0, eflags: 0x6 linked
// Checksum 0xdfd3448d, Offset: 0xe90
// Size: 0x54
function private initblackboard() {
    self.__blackboard = undefined;
    blackboard::createblackboardforentity(self);
    self blackboard::registervehicleblackboardattributes();
    ai::createinterfaceforentity(self);
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 0, eflags: 0x2 linked
// Checksum 0xf67f80df, Offset: 0xef0
// Size: 0xe4
function defaultrole() {
    statemachine = self vehicle_ai::init_state_machine_for_role("default");
    self vehicle_ai::get_state_callbacks("combat").enter_func = &state_combat_enter;
    self vehicle_ai::get_state_callbacks("combat").update_func = &state_combat_update;
    self vehicle_ai::get_state_callbacks("death").update_func = &state_death_update;
    self vehicle_ai::call_custom_add_state_callbacks();
    vehicle_ai::startinitialstate("combat");
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 0, eflags: 0x0
// Checksum 0x440e2979, Offset: 0xfe0
// Size: 0x22
function function_9122b0e5() {
    return self ai::get_behavior_attribute("firing_rate");
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 1, eflags: 0x2 linked
// Checksum 0x349a2947, Offset: 0x1010
// Size: 0xc4
function state_death_update(*params) {
    self endon(#"death");
    self asmrequestsubstate(#"death@stationary");
    if (isdefined(self.var_c4e19d3) && isdefined(self.var_c4e19d3.hunted_by)) {
        self.var_c4e19d3.hunted_by--;
    }
    self namespace_83eb6304::function_3ecfde67("demon_burst");
    self vehicle_death::death_fx();
    wait(1);
    self delete();
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 1, eflags: 0x2 linked
// Checksum 0x504d41de, Offset: 0x10e0
// Size: 0x54
function state_combat_enter(*params) {
    self thread function_1076a2e0();
    self thread function_2b369c9f();
    /#
        self thread function_66d3e7c2();
    #/
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 0, eflags: 0x2 linked
// Checksum 0x1d35ddf6, Offset: 0x1140
// Size: 0x96
function function_2b369c9f() {
    self endon(#"change_state", #"death");
    self.ai.var_e7d26c0f = 0;
    while (true) {
        if (self.ai.var_e7d26c0f > 3) {
            if (isdefined(level.var_d9f4b654)) {
                self.ai.var_e7d26c0f = 0;
                [[ level.var_d9f4b654 ]](self);
            }
        }
        wait(1);
    }
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 6, eflags: 0x2 linked
// Checksum 0x1da14e27, Offset: 0x11e0
// Size: 0x4e2
function function_1c4cd527(origin, owner, innerradius, outerradius, halfheight, spacing) {
    queryresult = positionquery_source_navigation(origin, innerradius, outerradius, halfheight, spacing, "navvolume_small", spacing);
    positionquery_filter_sight(queryresult, origin, self geteye() - self.origin, self, 0, owner);
    arrayremovevalue(level.doa.var_b95a5b86, undefined);
    foreach (point in queryresult.data) {
        foreach (bat in level.doa.var_b95a5b86) {
            if (isdefined(bat.var_c8c5a7d3)) {
                distsq = distancesquared(point.origin, bat.var_c8c5a7d3);
                if (distsq <= sqr(300)) {
                    /#
                        if (!isdefined(point._scoredebug)) {
                            point._scoredebug = [];
                        }
                        if (!isdefined(point._scoredebug[#"no visibility"])) {
                            point._scoredebug[#"no visibility"] = spawnstruct();
                        }
                        point._scoredebug[#"no visibility"].score = -1000;
                        point._scoredebug[#"no visibility"].scorename = "<unknown string>";
                    #/
                    point.score += -1000;
                }
            }
        }
    }
    foreach (point in queryresult.data) {
        if (!point.visibility) {
            /#
                if (!isdefined(point._scoredebug)) {
                    point._scoredebug = [];
                }
                if (!isdefined(point._scoredebug[#"no visibility"])) {
                    point._scoredebug[#"no visibility"] = spawnstruct();
                }
                point._scoredebug[#"no visibility"].score = -5000;
                point._scoredebug[#"no visibility"].scorename = "<unknown string>";
            #/
            point.score += -5000;
        }
    }
    if (queryresult.data.size > 0) {
        vehicle_ai::positionquery_postprocess_sortscore(queryresult);
        self vehicle_ai::positionquery_debugscores(queryresult);
        foreach (point in queryresult.data) {
            if (isdefined(point.origin)) {
                goal = point.origin;
                break;
            }
        }
    }
    return goal;
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 1, eflags: 0x2 linked
// Checksum 0x6c143f37, Offset: 0x16d0
// Size: 0x156
function function_8550e9be(enemy) {
    protectdest = undefined;
    if (isdefined(level.hostmigrationtimer)) {
        return undefined;
    }
    if (isdefined(enemy)) {
        groundpos = getclosestpointonnavmesh(enemy.origin, 10000);
        if (isdefined(groundpos)) {
            self.var_d6acaac4 = groundpos;
            pos = groundpos + (0, 0, randomintrange(100, 150));
            pos = getclosestpointonnavvolume(pos, "navvolume_small", 2000);
            if (isdefined(pos)) {
                var_3a364b6c = distance(self.origin, pos);
                if (var_3a364b6c < 200 || var_3a364b6c > 256) {
                    protectdest = function_1c4cd527(pos, enemy, 200, 350, 24, 48);
                    if (isdefined(protectdest)) {
                        self.var_c8c5a7d3 = protectdest;
                    }
                }
            }
        }
    }
    return protectdest;
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 0, eflags: 0x0
// Checksum 0x3992c5b5, Offset: 0x1830
// Size: 0xce
function function_66d3e7c2() {
    self endon(#"death");
    while (true) {
        if (isdefined(self.var_c8c5a7d3)) {
            /#
                recordsphere(self.var_c8c5a7d3, 8, (0, 0, 1), "<unknown string>");
            #/
            if (isdefined(self.var_d6acaac4)) {
                /#
                    recordsphere(self.var_c8c5a7d3, 8, (0, 1, 0), "<unknown string>");
                    recordline(self.var_c8c5a7d3, self.var_d6acaac4, (0, 1, 0), "<unknown string>");
                #/
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 1, eflags: 0x2 linked
// Checksum 0x96b8af0f, Offset: 0x1908
// Size: 0x248
function state_combat_update(*params) {
    self endon(#"change_state", #"death");
    self asmrequestsubstate(#"locomotion@movement");
    for (;;) {
        if (is_true(self.ignoreall)) {
            wait(1);
            continue;
        }
        if (is_true(self.stationary)) {
            self function_a57c34b7(self.origin, 1, 1);
            wait(1);
            continue;
        }
        if (isdefined(level.hostmigrationtimer)) {
            wait(1);
            continue;
        }
        if (!ispointinnavvolume(self.origin, "navvolume_small")) {
            var_f524eafc = getclosestpointonnavvolume(self.origin, "navvolume_small", 2000);
            if (isdefined(var_f524eafc)) {
                self.origin = var_f524eafc;
            }
        }
        if (!isdefined(self.var_c4e19d3)) {
            self function_a57c34b7(self.origin, 1, 1);
        }
        protectdest = function_8550e9be(self.var_c4e19d3);
        if (isdefined(protectdest)) {
            path = function_ae7a8634(self.origin, protectdest, self);
            if (isdefined(path) && path.status === "succeeded") {
                self.ai.var_e7d26c0f = 0;
                self function_a57c34b7(protectdest, 1, 1);
            } else {
                self.ai.var_e7d26c0f++;
            }
        }
        wait(randomintrange(3, 5));
    }
}


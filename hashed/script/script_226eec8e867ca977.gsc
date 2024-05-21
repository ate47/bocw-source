// Atian COD Tools GSC CW decompiler test
#using script_47851dbeea22fe66;
#using script_774302f762d76254;
#using script_1ee011cd0961afd7;
#using script_1b0b07ff57d1dde3;
#using script_634ae70c663d1cc9;
#using script_17dcb1172e441bf6;
#using script_2a5bf5b4a00cee0d;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;

#namespace namespace_85f9e33a;

// Namespace namespace_85f9e33a/namespace_85f9e33a
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x340
// Size: 0x4
function init() {
    
}

// Namespace namespace_85f9e33a/namespace_85f9e33a
// Params 0, eflags: 0x2 linked
// Checksum 0x2d75e0c1, Offset: 0x350
// Size: 0x16
function main() {
    level.doa.var_18f8e489 = [];
}

// Namespace namespace_85f9e33a/namespace_85f9e33a
// Params 0, eflags: 0x2 linked
// Checksum 0xafe0fafc, Offset: 0x370
// Size: 0x1de
function function_81853592() {
    self notify("64d873247a66697a");
    self endon("64d873247a66697a");
    self thread namespace_268747c0::function_978c05b5();
    result = self waittill(#"hash_3e251384a5400dce");
    if (is_true(self.var_7c56394) && is_true(result.var_760a0807)) {
        arrayremovevalue(level.doa.var_18f8e489, self);
        namespace_1e25ad94::debugmsg("Deleting Flogger trap permenently at:" + self.origin);
    }
    if (isdefined(self.trigger)) {
        triggers = arraycopy(self.trigger);
        foreach (trigger in triggers) {
            trigger namespace_268747c0::function_54f185a();
        }
        self.trigger = [];
    }
    if (isdefined(self.script_model)) {
        self.script_model delete();
    }
    self.var_13c99cf7 = gettime() + 1000;
}

// Namespace namespace_85f9e33a/namespace_85f9e33a
// Params 2, eflags: 0x2 linked
// Checksum 0x87153a42, Offset: 0x558
// Size: 0x210
function function_ecfc6c75(trap, var_7c56394 = 0) {
    hazard = namespace_ec06fe4a::spawnmodel(trap.origin, "p8_fxanim_mp_zmuseum_flogger_trap_mod");
    if (isdefined(hazard)) {
        hazard.targetname = "hazard";
        hazard.var_fd5301f9 = "flogger";
        hazard.angles = trap.angles;
        hazard enablelinkto();
    }
    trap.script_model = hazard;
    trap.var_7c56394 = var_7c56394;
    trap.trigger = [];
    trap.spinrate = 1;
    trap.minwait = 3;
    trap.maxwait = 5;
    trap.maxloops = 3;
    if (isdefined(trap.script_parameters)) {
        args = strtok(trap.script_parameters, ";");
        if (args.size > 0) {
            trap.spinrate = float(args[0]);
        }
        if (args.size > 1) {
            trap.minwait = float(args[1]);
        }
        if (args.size > 2) {
            trap.maxwait = float(args[2]);
        }
        if (args.size > 3) {
            trap.maxloops = float(args[3]);
        }
    }
    trap.spinrate = 1;
    trap thread function_80eed528();
    return trap;
}

// Namespace namespace_85f9e33a/namespace_85f9e33a
// Params 2, eflags: 0x2 linked
// Checksum 0x18ab0d3e, Offset: 0x770
// Size: 0xf4
function function_7fb58446(trap, page = 0) {
    if (page) {
        if (!isdefined(level.doa.var_18f8e489)) {
            level.doa.var_18f8e489 = [];
        } else if (!isarray(level.doa.var_18f8e489)) {
            level.doa.var_18f8e489 = array(level.doa.var_18f8e489);
        }
        level.doa.var_18f8e489[level.doa.var_18f8e489.size] = trap;
        return;
    }
    function_ecfc6c75(trap);
}

// Namespace namespace_85f9e33a/namespace_85f9e33a
// Params 0, eflags: 0x2 linked
// Checksum 0xd32b2c12, Offset: 0x870
// Size: 0x350
function function_9d10940b() {
    self notify("56bc794308d648b4");
    self endon("56bc794308d648b4");
    level endon(#"game_over");
    while (true) {
        wait(0.5);
        if (namespace_4dae815d::function_59a9cf1d() == 0) {
            continue;
        }
        foreach (trap in level.doa.var_18f8e489) {
            time = gettime();
            if (isdefined(trap.var_13c99cf7) && time < trap.var_13c99cf7) {
                continue;
            }
            if (isdefined(trap.var_eb9d64bb) && time < trap.var_eb9d64bb) {
                continue;
            }
            trap.var_eb9d64bb = time + 1500 + randomint(600);
            if (!isdefined(trap.script_model)) {
                activate = 0;
                if (isdefined(trap.var_f8660931)) {
                    distsq = distancesquared(trap.origin, trap.var_f8660931.origin);
                    if (distsq < sqr(3200)) {
                        activate = 1;
                    }
                }
                if (!activate) {
                    trap.var_f8660931 = namespace_ec06fe4a::function_6eacecf5(trap.origin, 3200);
                    if (isdefined(trap.var_f8660931)) {
                        activate = 1;
                    } else {
                        trap.var_f8660931 = namespace_ec06fe4a::function_bd3709ce(trap.origin, 1200);
                        if (isdefined(trap.var_f8660931)) {
                            activate = 1;
                        }
                    }
                }
                if (activate) {
                    function_ecfc6c75(trap, 1);
                    trap.var_eb9d64bb += 5000;
                    namespace_1e25ad94::debugmsg("Paging IN flogger trap at:" + trap.origin);
                }
                continue;
            }
            trap.var_f8660931 = namespace_ec06fe4a::function_f3eab80e(trap.origin, 3600);
            if (!isdefined(trap.var_f8660931)) {
                namespace_1e25ad94::debugmsg("Paging out flogger trap at:" + trap.origin);
                trap notify(#"hash_3e251384a5400dce", {#var_760a0807:0});
            }
        }
    }
}

// Namespace namespace_85f9e33a/namespace_85f9e33a
// Params 0, eflags: 0x2 linked
// Checksum 0x14e3e0ed, Offset: 0xbc8
// Size: 0x138
function function_a76494d5() {
    level.doa.var_18f8e489 = [];
    level thread function_9d10940b();
    if (isdefined(level.doa.var_a77e6349)) {
        traps = [[ level.doa.var_a77e6349 ]]->function_87f950c1("flogger");
        page = 1;
    } else {
        traps = [[ level.doa.var_39e3fa99 ]]->function_242886d5("flogger");
    }
    foreach (trap in traps) {
        trap.var_13c99cf7 = 0;
        function_7fb58446(trap, page);
    }
}

// Namespace namespace_85f9e33a/namespace_85f9e33a
// Params 0, eflags: 0x2 linked
// Checksum 0x20b7b2c5, Offset: 0xd08
// Size: 0x5fc
function function_80eed528() {
    self notify("220693f3dc4b6553");
    self endon("220693f3dc4b6553");
    level endon(#"game_over");
    self endon(#"hash_3e251384a5400dce");
    self thread function_81853592();
    if (!isdefined(self.script_model)) {
        self notify(#"hash_3e251384a5400dce");
    }
    self.script_model useanimtree("generic");
    self.script_model solid();
    length = getanimlength(#"hash_32b5327a0dd4ac63");
    assert(self.trigger.size == 0, "<unknown string>");
    triggers = arraycopy(self.trigger);
    foreach (trigger in triggers) {
        trigger namespace_268747c0::function_54f185a();
    }
    self.trigger = [];
    while (self.trigger.size < 2) {
        self.trigger[self.trigger.size] = self namespace_268747c0::function_678eaf60("flogger", self.origin, 512, 1, 256);
    }
    self.trigger[0] unlink();
    self.trigger[1] unlink();
    self.trigger[0] linkto(self.script_model, "flogger_trap_rod_jnt", (-100, 0, 0));
    self.trigger[1] linkto(self.script_model, "flogger_trap_rod_jnt", (100, 0, 0));
    self.trigger[0] triggerenable(0);
    self.trigger[1] triggerenable(0);
    if (!isdefined(self.spinrate)) {
        self.spinrate = 1;
    }
    animationrate = self.spinrate;
    length /= animationrate;
    self.script_model namespace_e32bb68::function_3a59ec34("evt_doa_hazard_flogger_eng_start");
    wait(1);
    foreach (trigger in self.trigger) {
        trigger triggerenable(1);
        trigger thread function_ab141bd8(self.script_model, self);
    }
    self.script_model namespace_e32bb68::function_3a59ec34("evt_doa_hazard_flogger_eng_start");
    self.script_model namespace_e32bb68::function_3a59ec34("evt_doa_hazard_flogger_eng_loop");
    self.script_model thread function_b98fe7eb();
    self.script_model animscripted("spin_end", self.origin, self.angles, #"hash_32b5327a0dd4ac63", "server script", undefined, animationrate);
    wait(length);
    self.script_model stopanimscripted(0, 1);
    self.script_model namespace_e32bb68::function_ae271c0b("evt_doa_hazard_flogger_eng_loop");
    self.script_model namespace_e32bb68::function_3a59ec34("evt_doa_hazard_flogger_eng_stop");
    triggers = arraycopy(self.trigger);
    foreach (trigger in triggers) {
        trigger namespace_268747c0::function_54f185a();
    }
    self.trigger = [];
    wait(randomfloatrange(self.minwait, self.maxwait));
    self thread function_80eed528();
}

// Namespace namespace_85f9e33a/namespace_85f9e33a
// Params 0, eflags: 0x2 linked
// Checksum 0x5455c9ca, Offset: 0x1310
// Size: 0x8a
function function_b98fe7eb() {
    self notify("7897d0aa40ce1f82");
    self endon("7897d0aa40ce1f82");
    self endon(#"death");
    for (log = 0; true; log = !log) {
        self waittill(#"hash_4460cb197033d052");
        self namespace_e32bb68::function_3a59ec34("evt_doa_hazard_flogger_whoosh_" + log);
    }
}

// Namespace namespace_85f9e33a/namespace_85f9e33a
// Params 2, eflags: 0x2 linked
// Checksum 0x787a29e4, Offset: 0x13a8
// Size: 0x308
function function_ab141bd8(model, trap) {
    self notify("22fa8b414c5486fc");
    self endon("22fa8b414c5486fc");
    self endon(#"death", #"hash_5dc5b7f198cd1bec");
    fling_force = 190;
    while (isdefined(self)) {
        result = self waittill(#"trigger");
        guy = result.activator;
        if (isdefined(guy)) {
            if (!isdefined(guy.var_62abb118)) {
                guy.var_62abb118 = 0;
            }
            if (guy.var_62abb118 < gettime()) {
                guy.var_62abb118 = gettime() + 500;
                guy namespace_83eb6304::function_3ecfde67("pungi_damage");
                model namespace_e32bb68::function_3a59ec34("evt_doa_hazard_flogger_impact");
            }
            if (is_true(guy.var_47267079) || is_true(guy.boss)) {
                continue;
            }
            if (isplayer(guy)) {
                guy dodamage(isdefined(trap.damage) ? trap.damage : guy.health + 100, guy.origin);
                guy playrumbleonentity("damage_heavy");
                if (isdefined(trap.var_2e485cc) && guy.birthtime != gettime()) {
                    guy thread status_effect::status_effect_apply(trap.var_2e485cc, guy.currentweapon, self, 1);
                }
                continue;
            }
            if (!is_true(guy.var_e66cd6fb)) {
                v_centroid = guy getcentroid();
                v_away_from_source = vectornormalize(self.origin - v_centroid);
                v_away_from_source *= 128;
                v_away_from_source = (v_away_from_source[0], v_away_from_source[1], randomintrange(128, 200));
                guy thread namespace_ec06fe4a::function_b4ff2191(v_away_from_source, fling_force);
                continue;
            }
            guy thread namespace_ed80aead::function_586ef822();
        }
    }
}


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

#namespace namespace_3c9cfcff;

// Namespace namespace_3c9cfcff/namespace_3c9cfcff
// Params 0, eflags: 0x2 linked
// Checksum 0x65f53888, Offset: 0x250
// Size: 0x34
function init() {
    clientfield::register("scriptmover", "dragonTrapState", 1, 2, "int");
}

// Namespace namespace_3c9cfcff/namespace_3c9cfcff
// Params 0, eflags: 0x2 linked
// Checksum 0xc7fbdf4a, Offset: 0x290
// Size: 0x16
function main() {
    level.doa.var_dfb9e943 = [];
}

// Namespace namespace_3c9cfcff/namespace_3c9cfcff
// Params 0, eflags: 0x2 linked
// Checksum 0xa35157ef, Offset: 0x2b0
// Size: 0x1a6
function function_49caf2d6() {
    self notify("6879420b153ee8d7");
    self endon("6879420b153ee8d7");
    self thread namespace_268747c0::function_978c05b5();
    result = self waittill(#"hash_3e251384a5400dce");
    if (is_true(self.var_7c56394) && is_true(result.var_760a0807)) {
        arrayremovevalue(level.doa.var_dfb9e943, self);
        namespace_1e25ad94::debugmsg("Deleting dragonhead trap permenently at:" + self.origin);
    }
    util::wait_network_frame();
    if (isdefined(self.trigger)) {
        self.trigger namespace_268747c0::function_54f185a();
        self.trigger = undefined;
    }
    if (isdefined(self.script_model)) {
        self.script_model clientfield::set("dragonTrapState", 0);
        util::wait_network_frame();
        self.script_model delete();
    }
    self.script_model = undefined;
    self.damage = undefined;
    self.var_f3e30707 = undefined;
    self.var_2e485cc = undefined;
    self.var_7c56394 = undefined;
}

// Namespace namespace_3c9cfcff/namespace_3c9cfcff
// Params 2, eflags: 0x2 linked
// Checksum 0x2dd066f7, Offset: 0x460
// Size: 0x128
function function_54989f74(trap, var_7c56394 = 0) {
    hazard = namespace_ec06fe4a::spawnmodel(trap.origin, "tag_origin");
    if (isdefined(hazard)) {
        hazard clientfield::set("dragonTrapState", 1);
        hazard.targetname = "hazard";
        hazard.var_fd5301f9 = "dragonhead";
        hazard.angles = trap.angles;
        hazard enablelinkto();
    }
    trap.script_model = hazard;
    trap.damage = 50;
    trap.var_f3e30707 = 1;
    trap.var_2e485cc = getstatuseffect(#"hash_69374f563cb01313");
    trap.var_7c56394 = var_7c56394;
    trap thread function_b853a1c6();
    return trap;
}

// Namespace namespace_3c9cfcff/namespace_3c9cfcff
// Params 2, eflags: 0x2 linked
// Checksum 0x7d3ada29, Offset: 0x590
// Size: 0x10c
function function_c808b1bb(trap, page = 0) {
    if (!namespace_ec06fe4a::function_a8975c67()) {
        return;
    }
    if (page) {
        if (!isdefined(level.doa.var_dfb9e943)) {
            level.doa.var_dfb9e943 = [];
        } else if (!isarray(level.doa.var_dfb9e943)) {
            level.doa.var_dfb9e943 = array(level.doa.var_dfb9e943);
        }
        level.doa.var_dfb9e943[level.doa.var_dfb9e943.size] = trap;
        return;
    }
    function_54989f74(trap);
}

// Namespace namespace_3c9cfcff/namespace_3c9cfcff
// Params 0, eflags: 0x2 linked
// Checksum 0x58d9072c, Offset: 0x6a8
// Size: 0x344
function function_d4a86caf() {
    self notify("1dbe5052204cf03");
    self endon("1dbe5052204cf03");
    level endon(#"game_over", #"hash_15db1223146bc923");
    while (true) {
        wait(0.5);
        state = namespace_4dae815d::function_59a9cf1d();
        if (state == 0) {
            continue;
        }
        foreach (trap in level.doa.var_dfb9e943) {
            time = gettime();
            if (isdefined(trap.var_eb9d64bb) && time < trap.var_eb9d64bb) {
                continue;
            }
            trap.var_eb9d64bb = time + 2000 + randomint(600);
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
                    function_54989f74(trap, 1);
                    trap.var_eb9d64bb += 5000;
                    namespace_1e25ad94::debugmsg("Paging IN dragonhead trap at:" + trap.origin);
                }
                continue;
            }
            trap.var_f8660931 = namespace_ec06fe4a::function_f3eab80e(trap.origin, 3600);
            if (!isdefined(trap.var_f8660931)) {
                trap notify(#"hash_3e251384a5400dce", {#var_760a0807:0});
                namespace_1e25ad94::debugmsg("Paging out dragonhead trap at:" + trap.origin);
            }
        }
    }
}

// Namespace namespace_3c9cfcff/namespace_3c9cfcff
// Params 0, eflags: 0x2 linked
// Checksum 0x3203ea86, Offset: 0x9f8
// Size: 0x130
function function_19903280() {
    level.doa.var_dfb9e943 = [];
    level thread function_d4a86caf();
    if (isdefined(level.doa.var_a77e6349)) {
        traps = [[ level.doa.var_a77e6349 ]]->function_87f950c1("dragonhead");
        page = 1;
    } else {
        traps = [[ level.doa.var_39e3fa99 ]]->function_242886d5("dragonhead");
    }
    foreach (trap in traps) {
        function_c808b1bb(trap, page);
    }
}

// Namespace namespace_3c9cfcff/namespace_3c9cfcff
// Params 0, eflags: 0x2 linked
// Checksum 0x34ad9bdc, Offset: 0xb30
// Size: 0x25c
function function_b853a1c6() {
    self notify("2abb479d63f5058");
    self endon("2abb479d63f5058");
    level endon(#"game_over");
    self endon(#"hash_3e251384a5400dce");
    self thread function_49caf2d6();
    wait(randomfloatrange(0.1, 3));
    while (true) {
        if (isdefined(self.script_model)) {
            self.script_model clientfield::set("dragonTrapState", 2);
        }
        if (isdefined(self.trigger)) {
            self.trigger triggerenable(0);
        }
        wait(randomintrange(3, 10));
        self.trigger = self namespace_268747c0::function_678eaf60("dragonhead", self.origin, 1024, 1, 256);
        var_5ccd914d = rotatepointaroundaxis((0, 170, -150), (0, 0, 1), self.angles[1] - 90);
        self.trigger.origin = self.origin + var_5ccd914d;
        self.trigger thread function_d1b295d7(self);
        if (isdefined(self.script_model)) {
            self.script_model clientfield::set("dragonTrapState", 3);
        }
        wait(1);
        if (isdefined(self.trigger)) {
            self.trigger triggerenable(1);
            count = randomintrange(5, 12);
            while (isdefined(self.trigger) && count > 0) {
                count -= 0.25;
                wait(0.25);
            }
        }
    }
}

// Namespace namespace_3c9cfcff/namespace_3c9cfcff
// Params 1, eflags: 0x2 linked
// Checksum 0x8b6c5c73, Offset: 0xd98
// Size: 0x310
function function_d1b295d7(trap) {
    self notify("6480039efba6256a");
    self endon("6480039efba6256a");
    self endon(#"death", #"hash_5dc5b7f198cd1bec");
    var_f3e30707 = (isdefined(trap.var_f3e30707) ? trap.var_f3e30707 : 1) * 1000;
    while (isdefined(self)) {
        result = self waittill(#"trigger");
        guy = result.activator;
        if (!isdefined(guy)) {
            continue;
        }
        if (is_true(guy.laststand)) {
            continue;
        }
        if (!isalive(guy)) {
            continue;
        }
        if (is_true(guy.var_47267079) || is_true(guy.boss)) {
            continue;
        }
        time = gettime();
        if (!isdefined(guy.var_d93d3433)) {
            guy.var_d93d3433 = 0;
        }
        if (guy.var_d93d3433 > gettime()) {
            continue;
        }
        guy.var_d93d3433 = time + var_f3e30707;
        if (isplayer(guy)) {
            guy dodamage(isdefined(trap.damage) ? trap.damage : guy.health + 100, guy.origin);
            guy playrumbleonentity("mechz_footstep_medium");
            guy namespace_83eb6304::function_3ecfde67("burn_zombie");
            if (isdefined(trap.var_2e485cc) && guy.birthtime != gettime()) {
                guy thread status_effect::status_effect_apply(trap.var_2e485cc, guy.currentweapon, self, 1);
            }
            continue;
        }
        if (!is_true(guy.var_1b41b0e8) && isactor(guy)) {
            guy namespace_83eb6304::function_3ecfde67("burn_zombie");
        }
        guy thread namespace_ec06fe4a::function_570729f0(randomfloatrange(0.5, 2.2));
    }
}


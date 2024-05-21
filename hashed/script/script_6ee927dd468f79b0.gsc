// Atian COD Tools GSC CW decompiler test
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_774302f762d76254;
#using script_1ee011cd0961afd7;
#using script_1b0b07ff57d1dde3;
#using script_634ae70c663d1cc9;
#using script_17dcb1172e441bf6;
#using script_2a5bf5b4a00cee0d;
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

#namespace namespace_2a2a39d4;

// Namespace namespace_2a2a39d4/namespace_2a2a39d4
// Params 0, eflags: 0x2 linked
// Checksum 0x5edb678, Offset: 0x278
// Size: 0x52
function init() {
    level.doa.var_45c191a4 = getweapon("zombietron_fireball_weapon");
    level.doa.var_18a44fc1 = getweapon("zombietron_fireball_weapon_gravity");
}

// Namespace namespace_2a2a39d4/namespace_2a2a39d4
// Params 0, eflags: 0x2 linked
// Checksum 0x7a038bed, Offset: 0x2d8
// Size: 0x16
function main() {
    level.doa.var_a8a43931 = [];
}

// Namespace namespace_2a2a39d4/namespace_2a2a39d4
// Params 0, eflags: 0x2 linked
// Checksum 0xc636872b, Offset: 0x2f8
// Size: 0x11c
function function_cddc7db1() {
    self notify("aa86a08f233597e");
    self endon("aa86a08f233597e");
    self thread namespace_268747c0::function_978c05b5();
    result = self waittill(#"hash_3e251384a5400dce");
    if (is_true(self.var_7c56394) && is_true(result.var_760a0807)) {
        arrayremovevalue(level.doa.var_a8a43931, self);
        namespace_1e25ad94::debugmsg("Deleting Fireball trap permenently at:" + self.origin);
    }
    util::wait_network_frame();
    if (isdefined(self.script_model)) {
        self.script_model delete();
    }
}

// Namespace namespace_2a2a39d4/namespace_2a2a39d4
// Params 2, eflags: 0x2 linked
// Checksum 0xd6ef386, Offset: 0x420
// Size: 0x400
function function_b9c75c0(trap, var_7c56394 = 0) {
    trap.weapon = level.doa.var_45c191a4;
    trap.var_5a546472 = 0;
    if (isdefined(trap.script_parameters)) {
        toks = strtok(trap.script_parameters, ";");
        if (toks.size > 0) {
            if (toks[0] === "gravity") {
                trap.weapon = level.doa.var_18a44fc1;
            } else {
                trap.weapon = level.doa.var_45c191a4;
            }
        }
        if (toks.size > 1) {
            trap.minround = int(toks[1]);
        }
        if (toks.size > 2) {
            trap.hidemodel = int(toks[2]);
        }
        if (toks.size > 3) {
            trap.var_5a546472 = int(toks[3]) ? 1 : 0;
            trap.var_1a7efc31 = 4;
            trap.var_92bb507 = 4;
            trap.var_bf3fd288 = 2;
        }
        if (toks.size > 4) {
            trap.var_f92c74e = int(toks[4]);
            trap.var_90ff9be6 = trap.var_f92c74e;
        }
        if (toks.size > 5) {
            trap.var_1a7efc31 = int(toks[5]);
        }
        if (toks.size > 6) {
            trap.var_92bb507 = int(toks[6]);
        }
        if (toks.size > 7) {
            trap.var_bf3fd288 = int(toks[7]);
        }
        if (toks.size > 8) {
            trap.var_90ff9be6 = int(toks[8]);
        }
        if (toks.size > 9) {
            trap.maxrounds = int(toks[9]);
        }
    }
    if (isdefined(trap.minround) && level.doa.roundnumber < trap.minround) {
        return;
    }
    hazard = namespace_ec06fe4a::spawnmodel(trap.origin, "zombietron_fireball_trap");
    if (isdefined(hazard)) {
        hazard.targetname = "hazard";
        hazard.var_fd5301f9 = "fireball";
        hazard.angles = trap.angles;
        hazard.team = "axis";
        if (is_true(trap.hidemodel)) {
            hazard hide();
        }
    }
    trap.script_model = hazard;
    trap.var_7c56394 = var_7c56394;
    trap.velocity = isdefined(trap.script_int) ? int(trap.script_int) : 200;
    trap thread function_14a55bfa();
    return trap;
}

// Namespace namespace_2a2a39d4/namespace_2a2a39d4
// Params 2, eflags: 0x2 linked
// Checksum 0xfcdf79a, Offset: 0x828
// Size: 0x14c
function function_7a2f725d(trap, page = 0) {
    if (!namespace_ec06fe4a::function_a8975c67()) {
        return;
    }
    if (isdefined(level.var_c5e70c83)) {
        roll = randomint(100);
        if (roll > level.var_c5e70c83) {
            return;
        }
    }
    if (page) {
        if (!isdefined(level.doa.var_a8a43931)) {
            level.doa.var_a8a43931 = [];
        } else if (!isarray(level.doa.var_a8a43931)) {
            level.doa.var_a8a43931 = array(level.doa.var_a8a43931);
        }
        level.doa.var_a8a43931[level.doa.var_a8a43931.size] = trap;
        return;
    }
    function_b9c75c0(trap);
}

// Namespace namespace_2a2a39d4/namespace_2a2a39d4
// Params 0, eflags: 0x2 linked
// Checksum 0x65433b15, Offset: 0x980
// Size: 0x30c
function function_d4a86caf() {
    self notify("c1672b60ea15110");
    self endon("c1672b60ea15110");
    level endon(#"game_over");
    while (true) {
        wait(0.5);
        foreach (trap in level.doa.var_a8a43931) {
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
                    function_b9c75c0(trap, 1);
                    trap.var_eb9d64bb += 5000;
                    namespace_1e25ad94::debugmsg("Paging IN fireball trap at:" + trap.origin);
                }
                continue;
            }
            trap.var_f8660931 = namespace_ec06fe4a::function_f3eab80e(trap.origin, 3600);
            if (!isdefined(trap.var_f8660931)) {
                trap notify(#"hash_3e251384a5400dce", {#var_760a0807:0});
                namespace_1e25ad94::debugmsg("Paging out fireball trap at:" + trap.origin);
            }
        }
    }
}

// Namespace namespace_2a2a39d4/namespace_2a2a39d4
// Params 0, eflags: 0x2 linked
// Checksum 0x8c7129f, Offset: 0xc98
// Size: 0x130
function function_3a25f62f() {
    level.doa.var_a8a43931 = [];
    level thread function_d4a86caf();
    if (isdefined(level.doa.var_a77e6349)) {
        traps = [[ level.doa.var_a77e6349 ]]->function_87f950c1("fireball");
        page = 1;
    } else {
        traps = [[ level.doa.var_39e3fa99 ]]->function_242886d5("fireball");
    }
    foreach (trap in traps) {
        function_7a2f725d(trap, page);
    }
}

// Namespace namespace_2a2a39d4/namespace_2a2a39d4
// Params 0, eflags: 0x2 linked
// Checksum 0xcc73bd8c, Offset: 0xdd0
// Size: 0x3c8
function function_14a55bfa() {
    self notify("74d7ef0e3ce7fc9c");
    self endon("74d7ef0e3ce7fc9c");
    level endon(#"game_over");
    self endon(#"hash_3e251384a5400dce");
    self thread function_cddc7db1();
    if (!isdefined(self.script_model)) {
        self notify(#"hash_3e251384a5400dce");
    }
    origin = self.script_model gettagorigin("tag_flash_lvl3_le");
    angles = self.script_model gettagangles("tag_flash_lvl3_le");
    var_7ceb92b = self.velocity;
    var_c36bfa20 = self.velocity * 0.08;
    var_ac885920 = is_true(self.var_5a546472) && !isdefined(level.doa.var_182fb75a);
    minwait = isdefined(self.var_f92c74e) ? self.var_f92c74e : 5;
    maxwait = isdefined(self.var_f92c74e) ? self.var_f92c74e << 1 : 10;
    while (true) {
        var_37deefd = namespace_7f5aeb59::function_aab26933(self.origin, 1800);
        if (var_37deefd == 0) {
            wait(2);
            continue;
        }
        for (rounds = isdefined(self.maxrounds) ? self.maxrounds : randomint(3) + 1; rounds; rounds--) {
            if (namespace_ec06fe4a::function_a8975c67(64)) {
                newangles = angles;
                if (var_ac885920) {
                    newangles += (randomfloatrange(self.var_1a7efc31 * -1, self.var_1a7efc31), randomfloatrange(self.var_92bb507 * -1, self.var_92bb507), randomfloatrange(self.var_bf3fd288 * -1, self.var_bf3fd288));
                }
                launchvector = anglestoforward(newangles);
                velocity = launchvector * (var_7ceb92b + randomfloatrange(var_c36bfa20 * -1, var_c36bfa20));
                missile = self.script_model magicmissile(self.weapon, origin, velocity);
                self.script_model namespace_e32bb68::function_3a59ec34("zmb_doa_fireball_emit");
            } else {
                wait(6);
            }
            wait(randomfloatrange(1, 4));
        }
        wait(randomfloatrange(minwait, maxwait));
    }
}


// Atian COD Tools GSC CW decompiler test
#using script_634ae70c663d1cc9;
#using script_47851dbeea22fe66;
#using script_774302f762d76254;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_17dcb1172e441bf6;
#using script_2a5bf5b4a00cee0d;
#using scripts\core_common\status_effects\status_effect_util.gsc;
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

#namespace namespace_6624770a;

// Namespace namespace_6624770a/namespace_6624770a
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x210
// Size: 0x4
function init() {
    
}

// Namespace namespace_6624770a/namespace_6624770a
// Params 0, eflags: 0x2 linked
// Checksum 0xa004e829, Offset: 0x220
// Size: 0x16
function main() {
    level.var_8cff5775.var_e60dfadc = [];
}

// Namespace namespace_6624770a/namespace_6624770a
// Params 0, eflags: 0x2 linked
// Checksum 0x96a27ef9, Offset: 0x240
// Size: 0x14c
function function_49caf2d6() {
    self notify("7982aa19a2f9f78d");
    self endon("7982aa19a2f9f78d");
    self thread namespace_268747c0::function_978c05b5();
    result = undefined;
    result = self waittill(#"hash_3e251384a5400dce");
    if (is_true(self.var_7c56394) && is_true(result.var_760a0807)) {
        arrayremovevalue(level.var_8cff5775.var_e60dfadc, self);
        namespace_1e25ad94::function_f5f0c0f8("Deleting killbox trap permenently at:" + self.origin);
    }
    util::wait_network_frame();
    if (isdefined(self.trigger)) {
        self.trigger namespace_268747c0::function_54f185a();
        self.trigger = undefined;
    }
    if (isdefined(self.script_model)) {
        self.script_model delete();
    }
}

// Namespace namespace_6624770a/namespace_6624770a
// Params 3, eflags: 0x2 linked
// Checksum 0xfa5edcec, Offset: 0x398
// Size: 0xd8
function function_7023aae4(trap, var_7c56394 = 0, modelname) {
    if (isdefined(modelname)) {
        var_4a2d3ac2 = namespace_ec06fe4a::function_e22ae9b3(trap.origin, modelname);
        if (isdefined(var_4a2d3ac2)) {
            var_4a2d3ac2.targetname.var_4a2d3ac2 = "hazard";
            var_4a2d3ac2.var_fd5301f9.var_4a2d3ac2 = "killbox";
            var_4a2d3ac2.angles.var_4a2d3ac2 = trap.angles;
            var_4a2d3ac2 enablelinkto();
        }
        trap.script_model = var_4a2d3ac2;
    }
    trap.var_7c56394 = var_7c56394;
    trap thread function_e7b3a3fe();
    return trap;
}

// Namespace namespace_6624770a/namespace_6624770a
// Params 2, eflags: 0x2 linked
// Checksum 0xcc4532ae, Offset: 0x478
// Size: 0x34c
function function_bbdbcaa5(trap, page = 0) {
    if (!is_true(trap.initialized)) {
        /#
            assert(isdefined(trap.script_parameters), "<unknown string>");
        #/
        args = strtok(trap.script_parameters, ";");
        /#
            assert(args.size >= 4, "<unknown string>");
        #/
        trap.type.trap = hash(args[0]);
        trap.length.trap = int(args[1]);
        trap.width.trap = int(args[2]);
        trap.height.trap = int(args[3]);
        trap.teleport.trap = 1;
        if (args.size > 4) {
            trap.teleport.trap = int(args[4]);
        }
        trap.damage.trap = 50;
        trap.var_f3e30707.trap = 1;
        if (args.size > 5) {
            trap.damage.trap = int(args[5]);
        }
        if (args.size > 6) {
            trap.var_f3e30707.trap = int(args[6]);
        }
        if (trap.type === #"acid") {
            trap.var_2e485cc.trap = getstatuseffect(#"hash_69c2a47bf2322b6b");
        }
        if (trap.type === #"fire") {
            trap.var_2e485cc.trap = getstatuseffect(#"hash_69374f563cb01313");
        }
        trap.initialized.trap = 1;
    }
    if (page) {
        if (!isdefined(level.var_8cff5775.var_e60dfadc)) {
            level.var_8cff5775.var_e60dfadc = [];
        } else if (!isarray(level.var_8cff5775.var_e60dfadc)) {
            level.var_8cff5775.var_e60dfadc = array(level.var_8cff5775.var_e60dfadc);
        }
        level.var_8cff5775.var_e60dfadc[level.var_8cff5775.var_e60dfadc.size] = trap;
    } else {
        function_7023aae4(trap);
    }
}

// Namespace namespace_6624770a/namespace_6624770a
// Params 0, eflags: 0x2 linked
// Checksum 0x62e15ac7, Offset: 0x7d0
// Size: 0x31c
function function_d4a86caf() {
    self notify("41f606aa177d8d06");
    self endon("41f606aa177d8d06");
    level endon(#"game_over");
    while (1) {
        wait(0.5);
        foreach (trap in level.var_8cff5775.var_e60dfadc) {
            time = gettime();
            if (isdefined(trap.var_eb9d64bb) && time < trap.var_eb9d64bb) {
                continue;
            }
            trap.var_eb9d64bb.trap = time + 2000 + randomint(600);
            if (!is_true(trap.active)) {
                activate = 0;
                if (isdefined(trap.var_f8660931)) {
                    distsq = distancesquared(trap.origin, trap.var_f8660931.origin);
                    if (distsq < function_a3f6cdac(3200)) {
                        activate = 1;
                    }
                }
                if (!activate) {
                    trap.var_f8660931.trap = namespace_ec06fe4a::function_6eacecf5(trap.origin, 3200);
                    if (isdefined(trap.var_f8660931)) {
                        activate = 1;
                    } else {
                        trap.var_f8660931.trap = namespace_ec06fe4a::function_bd3709ce(trap.origin, 1200);
                        if (isdefined(trap.var_f8660931)) {
                            activate = 1;
                        }
                    }
                }
                if (activate) {
                    function_7023aae4(trap, 1);
                    trap.var_eb9d64bb.trap = trap.var_eb9d64bb + 5000;
                    namespace_1e25ad94::function_f5f0c0f8("Paging IN killbox trap at:" + trap.origin);
                }
            } else {
                trap.var_f8660931.trap = namespace_ec06fe4a::function_f3eab80e(trap.origin, 3600);
                if (!isdefined(trap.var_f8660931)) {
                    trap notify(#"hash_3e251384a5400dce", {#var_760a0807:0});
                    namespace_1e25ad94::function_f5f0c0f8("Paging out killbox trap at:" + trap.origin);
                }
            }
        }
    }
}

// Namespace namespace_6624770a/namespace_6624770a
// Params 1, eflags: 0x2 linked
// Checksum 0x47903bcb, Offset: 0xaf8
// Size: 0x156
function function_813ad4cb(traps) {
    level.var_8cff5775.var_e60dfadc = [];
    level thread function_d4a86caf();
    if (isdefined(level.var_8cff5775.var_a77e6349)) {
        traps = [[ level.var_8cff5775.var_a77e6349 ]]->function_87f950c1("killbox");
        page = 1;
        arena = 0;
    } else {
        traps = [[ level.var_8cff5775.var_39e3fa99 ]]->function_242886d5("killbox");
        arena = 1;
    }
    foreach (trap in traps) {
        function_bbdbcaa5(trap, page);
        trap.arena = arena;
    }
}

// Namespace namespace_6624770a/namespace_6624770a
// Params 0, eflags: 0x2 linked
// Checksum 0xaaa3c36c, Offset: 0xc58
// Size: 0x238
function function_e7b3a3fe() {
    self notify("37f159c943c3db47");
    self endon("37f159c943c3db47");
    level endon(#"game_over");
    self endon(#"hash_3e251384a5400dce");
    self thread function_49caf2d6();
    wait(randomfloatrange(0.1, 3));
    while (1) {
        self.trigger = self namespace_268747c0::function_678eaf60("killbox", self.origin, 1024, 1, 256);
        if (self.trigger.width != self.width || self.trigger.length != self.length || self.trigger.height != self.height) {
            self.trigger delete();
            namespace_268747c0::function_e8bbd3ad("killbox");
            self.trigger = namespace_268747c0::function_3111b4b2("killbox", "trigger_box", self.length, self.height, self.width);
            if (isdefined(self.trigger)) {
                self.trigger namespace_268747c0::function_b3c196a(self, self.origin, self.angles);
            }
        }
        if (!isdefined(self.trigger)) {
            wait(0.2);
            continue;
        }
        self.trigger thread function_d1b295d7(self);
        wait(1);
        if (isdefined(self.trigger)) {
            self.trigger triggerenable(1);
            while (isdefined(self.trigger)) {
                wait(0.25);
            }
        }
    }
}

// Namespace namespace_6624770a/namespace_6624770a
// Params 1, eflags: 0x2 linked
// Checksum 0x6b609491, Offset: 0xe98
// Size: 0x470
function function_d1b295d7(trap) {
    self notify("10130a76d58d799d");
    self endon("10130a76d58d799d");
    level endon(#"game_over");
    self endon(#"death", #"hash_3e251384a5400dce", #"hash_5dc5b7f198cd1bec");
    var_f3e30707 = (isdefined(trap.var_f3e30707) ? trap.var_f3e30707 : 1) * 1000;
    while (1) {
        result = undefined;
        result = self waittill(#"trigger");
        guy = result.activator;
        if (!isdefined(guy)) {
            continue;
        }
        if (is_true(guy.var_47267079) || is_true(guy.boss)) {
            continue;
        }
        if (is_true(guy.laststand)) {
            continue;
        }
        if (!isalive(guy)) {
            continue;
        }
        if (!isdefined(guy.var_a138f7e0)) {
            guy.var_a138f7e0.guy = 0;
        }
        time = gettime();
        if (guy.var_a138f7e0 > gettime()) {
            continue;
        }
        guy.var_a138f7e0.guy = time + var_f3e30707;
        if (isplayer(guy)) {
            guy dodamage(isdefined(trap.damage) ? trap.damage : guy.health + 100, guy.origin);
            guy playrumbleonentity("damage_light");
            if (isdefined(trap.var_2e485cc) && guy.birthtime != gettime()) {
                guy thread status_effect::status_effect_apply(trap.var_2e485cc, guy.currentweapon, self, 1);
            }
        } else {
            if (!isdefined(guy.var_4ff10643)) {
                guy.var_4ff10643.guy = 0;
            }
            if (guy.var_4ff10643 < gettime()) {
                if (trap.type === #"fire") {
                    guy namespace_83eb6304::function_3ecfde67("burn_zombie");
                }
                guy.var_4ff10643.guy = gettime() + 1000;
            }
            if (trap.type === #"fire") {
                guy thread namespace_ec06fe4a::function_570729f0(randomfloatrange(0.5, 2.2));
            }
            if (trap.type === #"hash_1af42a1c565c45de") {
                guy thread namespace_ed80aead::function_586ef822();
            } else {
                guy thread namespace_ec06fe4a::function_570729f0(0.1);
            }
        }
        level notify(#"hash_46fa6c5088941b95", {#guy:guy});
        if (isplayer(guy) && is_true(trap.arena) && is_true(trap.teleport)) {
            spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_70fb5745();
            guy setorigin(spot.origin);
        }
    }
}

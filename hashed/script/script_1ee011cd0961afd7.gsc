// Atian COD Tools GSC CW decompiler test
#using script_1b9c0b4f8da07fee;
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
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

#namespace namespace_83eb6304;

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 0, eflags: 0x2 linked
// Checksum 0x1b12a661, Offset: 0x208
// Size: 0x1a4
function init() {
    level.doa.var_11c4dca4 = [];
    clientfield::register("scriptmover", "play_fx", 1, 8, "int");
    clientfield::register("allplayers", "play_fx", 1, 8, "int");
    clientfield::register("actor", "play_fx", 1, 8, "int");
    clientfield::register("vehicle", "play_fx", 1, 8, "int");
    clientfield::register("scriptmover", "stop_fx", 1, 8, "int");
    clientfield::register("allplayers", "stop_fx", 1, 8, "int");
    clientfield::register("actor", "stop_fx", 1, 8, "int");
    clientfield::register("vehicle", "stop_fx", 1, 8, "int");
    namespace_7e1ec234::function_10d1200d();
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 5, eflags: 0x2 linked
// Checksum 0xab60247b, Offset: 0x3b8
// Size: 0x10c
function function_4060ccb4(name, *unused1, var_f80dfd0d, *var_5ddf2027, *var_26f1324c = 0) {
    var_318e5b78 = level.doa.var_11c4dca4.size;
    assert(var_318e5b78 < 256, "<unknown string>");
    assert(!isdefined(level.doa.var_11c4dca4[var_5ddf2027]), "<unknown string>");
    level.doa.var_11c4dca4[var_5ddf2027] = {#name:var_5ddf2027, #id:var_318e5b78, #clear:var_26f1324c};
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0xf302626d, Offset: 0x4d0
// Size: 0x204
function function_13be6e83(&queue) {
    var_f53e8844 = 20;
    var_dcf59f7c = 0;
    while (var_f53e8844 > 0) {
        if (!isdefined(self)) {
            return;
        }
        if (queue.size > 0) {
            var_9e787c74 = queue[0];
            /#
                if (queue.size > var_dcf59f7c) {
                    var_dcf59f7c = queue.size;
                }
            #/
            if (gettime() === self.birthtime) {
                waitframe(1);
            }
            if (!isdefined(self)) {
                return;
            }
            self clientfield::set(var_9e787c74.flag, var_9e787c74.fx.id);
            util::wait_network_frame();
            if (!isdefined(self)) {
                return;
            }
            if (var_9e787c74.fx.clear) {
                self clientfield::set(var_9e787c74.flag, 0);
                util::wait_network_frame();
            }
            arrayremoveindex(queue, 0, 0);
        } else {
            self clientfield::set("play_fx", 0);
            self clientfield::set("stop_fx", 0);
            waitframe(1);
            var_f53e8844--;
        }
        if (queue.size > 0) {
            var_f53e8844 = 20;
        }
    }
    if (!isdefined(self)) {
        return;
    }
    assert(queue.size == 0);
    self clientfield::set("play_fx", 0);
    self clientfield::set("stop_fx", 0);
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0xd63fe90d, Offset: 0x6e0
// Size: 0x11e
function function_dd47bd22(fxcmd) {
    assert(isdefined(fxcmd), "<unknown string>");
    if (!isdefined(fxcmd)) {
        return;
    }
    self notify("245ebdee8b7ffcce");
    self endon("245ebdee8b7ffcce");
    self endon(#"disconnect", #"death");
    if (!isdefined(self.var_93d7fb93)) {
        self.var_93d7fb93 = [];
    }
    if (!isdefined(self.var_93d7fb93)) {
        self.var_93d7fb93 = [];
    } else if (!isarray(self.var_93d7fb93)) {
        self.var_93d7fb93 = array(self.var_93d7fb93);
    }
    self.var_93d7fb93[self.var_93d7fb93.size] = fxcmd;
    self function_13be6e83(self.var_93d7fb93);
    self.var_93d7fb93 = undefined;
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 0, eflags: 0x2 linked
// Checksum 0xa25a8c12, Offset: 0x808
// Size: 0x50
function function_8a1f8325() {
    self endon(#"death");
    while (isdefined(self.var_93d7fb93) && self.var_93d7fb93.size > 0) {
        util::wait_network_frame();
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0xe035788, Offset: 0x860
// Size: 0x1ac
function turnofffx(name) {
    if (!isdefined(name) || !isdefined(self)) {
        return;
    }
    if (!isdefined(level.doa.var_11c4dca4[name])) {
        namespace_1e25ad94::debugmsg("FX OFF ERROR for entity [" + (isdefined(self.entnum) ? self.entnum : self getentitynumber()) + "] effect UNDFINED--> [" + name + "] ");
        return;
    }
    fxcmd = {#fx:level.doa.var_11c4dca4[name], #flag:"stop_fx"};
    if (!isdefined(self.var_93d7fb93)) {
        self thread function_dd47bd22(fxcmd);
    } else {
        if (!isdefined(self.var_93d7fb93)) {
            self.var_93d7fb93 = [];
        } else if (!isarray(self.var_93d7fb93)) {
            self.var_93d7fb93 = array(self.var_93d7fb93);
        }
        self.var_93d7fb93[self.var_93d7fb93.size] = fxcmd;
    }
    assert(self.var_93d7fb93.size < 60, "<unknown string>" + name);
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0x7582118c, Offset: 0xa18
// Size: 0x2c4
function function_3ecfde67(name) {
    if (!isdefined(name) || !isdefined(self)) {
        return;
    }
    if (!isdefined(level.doa.var_11c4dca4[name])) {
        namespace_1e25ad94::debugmsg("FX ON ERROR for entity [" + (isdefined(self.entnum) ? self.entnum : self getentitynumber()) + "] effect UNDFINED--> [" + name + "] ");
        return;
    }
    fxcmd = {#fx:level.doa.var_11c4dca4[name], #flag:"play_fx"};
    if (!isdefined(self.var_93d7fb93)) {
        self thread function_dd47bd22(fxcmd);
    } else {
        if (!isdefined(self.var_93d7fb93)) {
            self.var_93d7fb93 = [];
        } else if (!isarray(self.var_93d7fb93)) {
            self.var_93d7fb93 = array(self.var_93d7fb93);
        }
        self.var_93d7fb93[self.var_93d7fb93.size] = fxcmd;
    }
    /#
        if (self.var_93d7fb93.size >= 60) {
            i = 1;
            foreach (var_9e787c74 in self.var_93d7fb93) {
                namespace_1e25ad94::debugmsg("<unknown string>" + (isdefined(self.entnum) ? self.entnum : self getentitynumber()) + "<unknown string>" + i + "<unknown string>" + var_9e787c74.fx.name + "<unknown string>");
                i++;
            }
        }
        assert(self.var_93d7fb93.size < 60, "<unknown string>" + name);
    #/
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 0, eflags: 0x2 linked
// Checksum 0xb8f86bc3, Offset: 0xce8
// Size: 0x24
function function_8b4b9bdd() {
    self callback::on_death(&function_de09b352);
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0x52c23ade, Offset: 0xd18
// Size: 0x3c
function function_de09b352(eventstruct) {
    if (isdefined(eventstruct.corpse)) {
        eventstruct.corpse function_3ecfde67("burn_zombie");
    }
}


// Atian COD Tools GSC CW decompiler test
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_774302f762d76254;
#using script_1b0b07ff57d1dde3;
#using script_6b6510e124bad778;
#using script_1ee011cd0961afd7;
#using script_350cffecd05ef6cf;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using scripts\core_common\animation_shared.gsc;
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

#namespace namespace_a4bedd45;

// Namespace namespace_a4bedd45/namespace_1dde4e70
// Params 1, eflags: 0x2 linked
// Checksum 0x16bade9b, Offset: 0x2e8
// Size: 0x76
function function_49f419a1(time = 1) {
    self endon(#"disconnect");
    old = self.var_8cff5775.var_4f3aee7b;
    self.var_8cff5775.var_4f3aee7b = 1;
    wait(time);
    self.var_8cff5775.var_4f3aee7b = old;
}

// Namespace namespace_a4bedd45/namespace_1dde4e70
// Params 0, eflags: 0x2 linked
// Checksum 0xc18f4c9c, Offset: 0x368
// Size: 0xa6
function function_17c3e29f() {
    self notify("4213ebfc1999ad2b");
    self endon("4213ebfc1999ad2b");
    self endon(#"disconnect");
    self endon(#"hash_7893364bd228d63e");
    level waittill(#"hash_658e10e65ed524c0", #"hash_770d5565510bda45", #"hash_23fda6a40f9f6f6", #"hash_7893364bd228d63e", #"host_migration_begin");
    self notify(#"hash_7893364bd228d63e");
}

// Namespace namespace_a4bedd45/namespace_1dde4e70
// Params 0, eflags: 0x2 linked
// Checksum 0x712f1395, Offset: 0x418
// Size: 0xac
function function_c724b8f9() {
    if (is_true(level.var_8cff5775.var_318aa67a)) {
        return;
    }
    self notify("1c3527d4af214864");
    self endon("1c3527d4af214864");
    self endon(#"disconnect", #"hash_7893364bd228d63e");
    if (!is_true(self.var_8cff5775.var_1b452923)) {
        self namespace_83eb6304::function_3ecfde67("firstPersonMarker");
    }
}

// Namespace namespace_a4bedd45/namespace_1dde4e70
// Params 1, eflags: 0x2 linked
// Checksum 0x64549704, Offset: 0x4d0
// Size: 0x61c
function function_1735c657(forced) {
    self notify("72446a348015a25a");
    self endon("72446a348015a25a");
    self endon(#"disconnect");
    if (!is_true(forced) && !is_true(level.var_8cff5775.var_318aa67a)) {
        self namespace_6e90e490::function_55775bbc(4, 0);
    }
    self thread function_c724b8f9();
    self thread function_17c3e29f();
    timeout = self namespace_1c2a96f9::function_4808b985(90);
    result = undefined;
    result = self waittilltimeout(timeout, #"hash_444e9c51ba5bd99", #"hash_7893364bd228d63e");
    if (forced) {
        if (!is_true(result.var_cff8d1e) || is_true(level.var_8cff5775.var_318aa67a)) {
            self thread function_1735c657(forced);
        }
    }
    angles = absangleclamp360(self.angles);
    angles = (0, angles[1], 0);
    var_28e27203 = isdefined(result.var_28e27203) ? result.var_28e27203 : angles;
    self notify(#"hash_7893364bd228d63e");
    self namespace_ec06fe4a::function_a4b3f184(1);
    if (is_true(self.var_8cff5775.var_f583234e)) {
        self clientfield::set_to_player("toggleflashlight", 0);
    }
    self thread namespace_7f5aeb59::function_bc1f5034();
    self.topdowncamera = 1;
    self setclientthirdperson(0);
    if (isalive(self) && !is_true(self.var_8cff5775.var_70c50ae0)) {
        self.health = self.maxhealth;
    }
    if (!isdefined(self.vehicle)) {
        self namespace_83eb6304::function_3ecfde67("player_trail_" + self.var_8cff5775.color);
    }
    self clientfield::increment_to_player("exitFPS");
    self.var_8cff5775.var_21eab413 = gettime() + 2500;
    /#
        function_f5f0c0f8("<unknown string>" + self.name + "<unknown string>" + gettime());
    #/
    self.var_8cff5775.var_3e81d24c = undefined;
    self namespace_7f5aeb59::function_fae39d88();
    wait(0.25);
    self clientfield::increment_to_player("setCompassVis");
    self notify(#"critical_health_end");
    org = undefined;
    if (isdefined(var_28e27203)) {
        org = namespace_ec06fe4a::function_e22ae9b3(self.origin, "tag_origin");
        if (isdefined(org)) {
            org thread namespace_ec06fe4a::function_ae010bb4(self);
            org.angles.org = self.angles;
            self linkto(org);
            org rotateto(var_28e27203, 0.25);
            wait(0.25);
        }
    }
    if (isdefined(org)) {
        self unlink();
        org delete();
    }
    wait(0.2);
    self namespace_ec06fe4a::function_a4b3f184(0);
    self.var_8cff5775.var_4f3aee7b = 0;
    self namespace_83eb6304::turnofffx("firstPersonMarker");
    if (is_true(self.var_8cff5775.var_f583234e)) {
        self clientfield::set_to_player("toggleflashlight", 1);
    }
    self clientfield::increment_to_player("controlBinding");
    self clientfield::increment_to_player("setCompassVis");
    level clientfield::set("doafps", 0);
    self setorigin(self.origin + vectorscale((0, 0, 1), 20));
    self notify(#"hash_5a8ee2526fb3775b");
    /#
        function_f5f0c0f8("<unknown string>" + self.name + "<unknown string>" + gettime());
    #/
}

// Namespace namespace_a4bedd45/namespace_1dde4e70
// Params 2, eflags: 0x2 linked
// Checksum 0x385fb497, Offset: 0xaf8
// Size: 0x61c
function function_1f704cee(force = 0, var_28e27203 = 1) {
    namespace_1e25ad94::function_f5f0c0f8("+++++++++++++++++++++++++++++++ PLAYER ENTERING FP : " + self.name);
    if (is_true(level.var_8cff5775.var_318aa67a)) {
        force = 1;
    }
    if (self.birthtime === gettime()) {
        waitframe(1);
    }
    self endon(#"disconnect");
    if (is_true(self.var_8cff5775.var_3e81d24c)) {
        namespace_1e25ad94::function_f5f0c0f8("+++++++++++++++++++++++++++++++ PLAYER ALREADY IN FP : " + self.name);
        self thread function_1735c657(force);
        return;
    }
    self notify("7f96f25ab02d6853");
    self endon("7f96f25ab02d6853");
    /#
        function_f5f0c0f8("<unknown string>" + self.name + "<unknown string>" + gettime());
    #/
    self.var_8cff5775.var_3e81d24c = 1;
    self.var_8cff5775.var_4f3aee7b = force;
    self.var_8cff5775.var_9f8bc3f9 = 0;
    self thread namespace_7f5aeb59::function_bc1f5034(0);
    self thread function_49f419a1();
    self namespace_83eb6304::turnofffx("player_trail_" + self.var_8cff5775.color);
    v_player_velocity = self getvelocity();
    if (length(v_player_velocity) < 0.1) {
        angles = vectortoangles(anglestoforward(self.angles));
    } else {
        angles = vectortoangles(v_player_velocity);
    }
    angles = (0, angles[1], 0);
    /#
        function_f5f0c0f8("<unknown string>" + angles + "<unknown string>" + v_player_velocity + "<unknown string>" + length(v_player_velocity));
    #/
    if (is_true(self.var_8cff5775.var_f583234e)) {
        self clientfield::set_to_player("toggleflashlight", 0);
    }
    self namespace_ec06fe4a::function_a4b3f184(1);
    self clientfield::increment_to_player("goFPS");
    level clientfield::set("doafps", 1);
    util::wait_network_frame(2);
    self clientfield::increment_to_player("setCompassVis");
    self.topdowncamera = 0;
    self setclientthirdperson(0);
    if (is_true(self.var_8cff5775.var_f583234e)) {
        self clientfield::set_to_player("toggleflashlight", 1);
    }
    if (is_true(var_28e27203)) {
        if (isdefined(self.var_8cff5775.var_5d4bd96f)) {
            self.var_8cff5775.var_5d4bd96f delete();
        }
        self.var_8cff5775.var_5d4bd96f = namespace_ec06fe4a::function_e22ae9b3(self.origin, "tag_origin");
        if (isdefined(self.var_8cff5775.var_5d4bd96f)) {
            self.var_8cff5775.var_5d4bd96f thread namespace_ec06fe4a::function_ae010bb4(self);
            self.var_8cff5775.var_5d4bd96f.angles = self.angles;
            self linkto(self.var_8cff5775.var_5d4bd96f);
            self.var_8cff5775.var_5d4bd96f rotateto(angles, 0.25);
            wait(0.25);
            self unlink();
            self.var_8cff5775.var_5d4bd96f delete();
            /#
                function_f5f0c0f8("<unknown string>" + self.angles);
            #/
        }
    }
    self namespace_ec06fe4a::function_a4b3f184(0);
    self namespace_7f5aeb59::function_fae39d88();
    self thread function_1735c657(force);
    namespace_1e25ad94::function_f5f0c0f8("+++++++++++++++++++++++++++++++ PLAYER FP SETUP COMPLETE: " + self.name);
}

// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\stealth\utility.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_1c7657c;

// Namespace namespace_1c7657c/alarm
// Params 0, eflags: 0x0
// Checksum 0x99d2be6e, Offset: 0x178
// Size: 0xbc
function init() {
    level.var_9a798a88 = spawnstruct();
    level.var_9a798a88.alarms = struct::get_array("stealth_alarm", "script_noteworthy");
    level.g_effect[#"hash_43519b3856d70cf6"] = "vfx/iw7/levels/europa/vfx_eu_bfg_light_redblink.vfx";
    level.g_effect[#"hash_53121b07fda44a8d"] = "vfx/core/vehicles/aircraft_light_white_blink.vfx";
    array::thread_all(level.var_9a798a88.alarms, &function_a8f7fa5b);
}

// Namespace namespace_1c7657c/alarm
// Params 2, eflags: 0x0
// Checksum 0x543e84cd, Offset: 0x240
// Size: 0xbe
function function_ea8a5678(targetname, func) {
    foreach (alarm in level.var_9a798a88.alarms) {
        if (isdefined(alarm.targetname) && alarm.targetname == targetname) {
            alarm.on_func = func;
        }
    }
}

// Namespace namespace_1c7657c/alarm
// Params 0, eflags: 0x0
// Checksum 0xf46d1f7a, Offset: 0x308
// Size: 0x26c
function function_a8f7fa5b() {
    ents = struct::get_array(self.script_linkto, "script_linkname");
    self.lights = [];
    self.trigs = [];
    self.active = 1;
    self.state = "idle";
    foreach (ent in ents) {
        if (!isdefined(ent.script_noteworthy)) {
            continue;
        }
        switch (ent.script_noteworthy) {
        case #"trigger_disable":
            self.trigs[#"hack"] = ent;
            self thread function_2dc6261d();
            break;
        case #"trigger_damage":
            self.trigs[#"dmg"] = ent;
            self thread function_47de2d14();
            break;
        case #"light":
            self.lights[self.lights.size] = ent;
            self.var_bb4a3b9 = ent.model;
            ent.idle_fx = spawnfx(level.g_effect[#"hash_53121b07fda44a8d"], ent.origin);
            triggerfx(ent.idle_fx);
            if (isdefined(ent.script_wtf)) {
                self.var_c0effb5a = ent.script_wtf;
            }
            break;
        default:
            break;
        }
    }
    self thread function_7e4779a4();
}

// Namespace namespace_1c7657c/alarm
// Params 0, eflags: 0x0
// Checksum 0x21e203d1, Offset: 0x580
// Size: 0x11c
function function_2dc6261d() {
    self endon(#"death");
    self.trigs[#"hack"] endon(#"death");
    waitresult = self.trigs[#"hack"] waittill(#"trigger");
    whom = waitresult.activator;
    self notify(#"state_change", {#state:"disabled"});
    if (soundexists(#"hash_2185069045279c89")) {
        playsoundatposition(#"hash_2185069045279c89", getplayers()[0].origin);
    }
}

// Namespace namespace_1c7657c/alarm
// Params 0, eflags: 0x0
// Checksum 0x27aa4995, Offset: 0x6a8
// Size: 0xbe
function function_47de2d14() {
    self endon(#"death");
    self.trigs[#"dmg"] endon(#"death");
    waitresult = self.trigs[#"dmg"] waittill(#"trigger");
    whom = waitresult.activator;
    self notify(#"state_change", {#state:"destroyed"});
}

// Namespace namespace_1c7657c/alarm
// Params 0, eflags: 0x0
// Checksum 0x17b8e858, Offset: 0x770
// Size: 0x276
function function_7e4779a4() {
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"state_change");
        state = waitresult.state;
        self notify(state);
        switch (state) {
        case #"disabled":
            if (self.state == "alarm_on") {
                self thread function_fc2bc4ba();
            }
            function_bb67aeb1();
            self.state = state;
            self.active = 0;
            self.trigs[#"hack"] delete();
            break;
        case #"destroyed":
            if (self.state == "alarm_on") {
                self thread function_fc2bc4ba();
            }
            function_bb67aeb1();
            self.state = state;
            self.active = 0;
            self.trigs[#"hack"] delete();
            break;
        case #"alarm_on":
            if (self.state == "alarm_on") {
                break;
            }
            self.state = state;
            self thread alarm_on();
            break;
        case #"idle":
            if (self.state == "idle") {
                break;
            }
            self.state = state;
            self thread function_fc2bc4ba();
            break;
        default:
            /#
                iprintln("<unknown string>" + state);
            #/
            break;
        }
    }
}

// Namespace namespace_1c7657c/alarm
// Params 0, eflags: 0x0
// Checksum 0xaacdefd6, Offset: 0x9f0
// Size: 0x98
function function_bb67aeb1() {
    foreach (light in self.lights) {
        if (isdefined(light.idle_fx)) {
            light.idle_fx delete();
        }
    }
}

// Namespace namespace_1c7657c/alarm
// Params 0, eflags: 0x0
// Checksum 0x3ef13a78, Offset: 0xa90
// Size: 0x12c
function alarm_on() {
    if (!self.active) {
        return;
    }
    foreach (light in self.lights) {
        light.idle_fx delete();
        if (isdefined(self.var_c0effb5a)) {
            light setmodel(self.var_c0effb5a);
        }
        light.var_5131ddae = spawnfx(level.g_effect[#"hash_43519b3856d70cf6"], light.origin);
        triggerfx(light.var_5131ddae);
    }
    if (isdefined(self.on_func)) {
        self thread [[ self.on_func ]]();
    }
}

// Namespace namespace_1c7657c/alarm
// Params 0, eflags: 0x0
// Checksum 0xec7fb15d, Offset: 0xbc8
// Size: 0xc8
function function_fc2bc4ba() {
    foreach (light in self.lights) {
        if (isdefined(self.var_bb4a3b9)) {
            light setmodel(self.var_bb4a3b9);
        }
        if (isdefined(light.var_5131ddae)) {
            light.var_5131ddae delete();
        }
    }
}

// Namespace namespace_1c7657c/alarm
// Params 1, eflags: 0x0
// Checksum 0x69773acc, Offset: 0xc98
// Size: 0xfc
function function_f8788a08(alarm) {
    if (!alarm.active) {
        return;
    }
    self endon(#"death");
    self.og_goalradius = self.goalradius;
    self namespace_979752dc::set_goal_radius(32);
    self namespace_979752dc::set_goal(alarm);
    self waittill(#"goal");
    self orientmode("face angle", alarm.angles[1]);
    wait(1.5);
    alarm notify(#"state_change", {#state:"alarm_on"});
    self namespace_979752dc::set_goal_radius(self.og_goalradius);
}


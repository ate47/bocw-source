// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using script_22caeaa9257194b8;
#using scripts\cp_common\gametypes\globallogic_utils.gsc;
#using scripts\core_common\doors_shared.gsc;
#using script_7cc5fb39b97494c4;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_4f6b19b0;

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 0, eflags: 0x2 linked
// Checksum 0x89b59b86, Offset: 0x120
// Size: 0xc2
function function_6249a416() {
    self.fndooropen = &open_door;
    self.fndoorclose = &close_door;
    self.fndoorneedstoclose = &door_needs_to_close;
    self.fngetdoorcenter = &get_door_center;
    self.fndooralreadyopen = &is_door_already_open;
    self.var_54aff8ae = &function_28483c4a;
    self.var_9a22ab2b = &function_6f0d502b;
    self.var_b84eb531 = &function_cd2d8ed8;
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 2, eflags: 0x6 linked
// Checksum 0x58984d35, Offset: 0x1f0
// Size: 0x64
function private open_door(c_door, t) {
    if (t < 0.2) {
        c_door doors::door_bash_open(self);
        return;
    }
    c_door.m_e_door thread doors::open(undefined, undefined, self);
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 1, eflags: 0x6 linked
// Checksum 0x3772840e, Offset: 0x260
// Size: 0xe
function private door_needs_to_close(*c_door) {
    return false;
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 1, eflags: 0x6 linked
// Checksum 0xb5384ce3, Offset: 0x278
// Size: 0x3c
function private close_door(c_door) {
    self endon(#"hash_6d9a59cc1ef486a8");
    c_door.m_e_door thread doors::close(undefined, undefined);
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 1, eflags: 0x6 linked
// Checksum 0xd95fec73, Offset: 0x2c0
// Size: 0x1e
function private get_door_center(c_door) {
    return c_door.var_85f2454d.doorbottomcenter;
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 1, eflags: 0x6 linked
// Checksum 0xc50c069d, Offset: 0x2e8
// Size: 0x46
function private is_door_already_open(c_door) {
    if (is_true(c_door flag::get("door_fully_open"))) {
        return true;
    }
    return false;
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 0, eflags: 0x2 linked
// Checksum 0x90d31f89, Offset: 0x338
// Size: 0x1c
function function_6f0d502b() {
    self thread waitfordooropen(1);
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 0, eflags: 0x2 linked
// Checksum 0x47836a50, Offset: 0x360
// Size: 0x1c
function function_28483c4a() {
    self thread waitfordooropen(0);
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 0, eflags: 0x2 linked
// Checksum 0x54206131, Offset: 0x388
// Size: 0x26
function function_cd2d8ed8() {
    self.ai.var_10150769 = undefined;
    self notify(#"hash_4df5ebbdfb65254e");
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 0, eflags: 0x6 linked
// Checksum 0xd8ef0581, Offset: 0x3b8
// Size: 0x96
function private calcdooropenspeed() {
    t = 0.75;
    speed = length(self getvelocity());
    if (speed > 0) {
        t = 24 / speed;
    }
    if (t < 0.15) {
        t = 0.15;
    } else if (t > 1) {
        t = 1;
    }
    return t;
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 0, eflags: 0x6 linked
// Checksum 0xb511d06, Offset: 0x458
// Size: 0x22e
function private opendooratreasonabletime() {
    door = self.ai.doortoopen;
    fndooropen = self.fndooropen;
    if (!isdefined(door) || !isdefined(fndooropen)) {
        return;
    }
    self.ai.door_opened = 1;
    self endon(#"death");
    door endon(#"death");
    doorcenter = self [[ self.fngetdoorcenter ]](door);
    var_45047e1c = distance2dsquared(doorcenter, self.origin);
    opendist = 64;
    if (self.archetype == #"human" && self haspath()) {
        currentspeed = self function_28e7d252();
        var_a3bb43c4 = function_f002dade(#"human", #"run");
        if (currentspeed > 0 && var_a3bb43c4 > 0) {
            speedratio = currentspeed / var_a3bb43c4;
            opendist *= speedratio;
        }
    }
    opendistsq = sqr(opendist);
    while (var_45047e1c > opendistsq) {
        var_45047e1c = distance2dsquared(doorcenter, self.origin);
        waitframe(1);
    }
    t = calcdooropenspeed();
    self notify(#"hash_6d9a59cc1ef486a8");
    self thread [[ fndooropen ]](door, t);
    return t;
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 0, eflags: 0x6 linked
// Checksum 0x2f6869e2, Offset: 0x690
// Size: 0x6e
function private opendooratreasonabletime_waitforabort() {
    self endon(#"hash_47b8208db121ca21", #"death");
    self waittill(#"hash_4df5ebbdfb65254e");
    self.ai.doortoopen = undefined;
    self.ai.isopeningdoor = undefined;
    self notify(#"hash_47b8208db121ca21");
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 1, eflags: 0x6 linked
// Checksum 0x73b05b5, Offset: 0x708
// Size: 0x54
function private closedoorifnecessary(door) {
    assert(isdefined(self.fndoorneedstoclose));
    if (self [[ self.fndoorneedstoclose ]](door)) {
        self [[ self.fndoorclose ]](door);
    }
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 1, eflags: 0x6 linked
// Checksum 0x841334a2, Offset: 0x768
// Size: 0x4ec
function private waitfordooropen(var_91fea62e) {
    self.ai.var_10150769 = var_91fea62e;
    var_636f02cd = #"hash_3866cfe35818bf88";
    self notify(#"hash_4df5ebbdfb65254e");
    self endon(#"hash_4df5ebbdfb65254e", #"death");
    while (true) {
        if (isdefined(self.ai.doortoopen)) {
            var_9fdc36a = 0;
            if (self [[ self.fndooralreadyopen ]](self.ai.doortoopen)) {
                var_9fdc36a = 1;
            }
            if (!var_9fdc36a && !isdefined(self.ai.doortoopen)) {
                results = self function_a847c61f(4096, 200);
                if (!results.var_4e035bb7) {
                    var_9fdc36a = 1;
                }
            }
            if (var_9fdc36a) {
                self.ai.doortoopen = undefined;
                waitframe(1);
                continue;
            }
            var_bdb3737a = 1;
            door = self.ai.doortoopen;
            if (!self shouldfacemotion()) {
                lookaheaddir = self.lookaheaddir;
                lookaheaddir = vectornormalize((lookaheaddir[0], lookaheaddir[1], 0));
                facingdir = anglestoforward(self.angles);
                if (vectordot(lookaheaddir, facingdir) < 0.966) {
                    t = self opendooratreasonabletime();
                    if (isdefined(t)) {
                        self thread opendooratreasonabletime_waitforabort();
                        wait(t);
                    }
                    self notify(#"hash_47b8208db121ca21");
                    if (isdefined(self.ai.doortoopen) && self.ai.doortoopen == door) {
                        self.ai.doortoopen = undefined;
                    }
                    self.ai.isopeningdoor = undefined;
                    continue;
                }
            }
            self.ai.door_opened = undefined;
            var_d9bc30fb = 1;
            cdooroffset = 160;
            var_bc68bda9 = 2;
            targetspeed = length2d(self getvelocity());
            if (!is_true(var_91fea62e)) {
                dooranim = self astsearch(var_636f02cd);
            }
            var_70e679e1 = var_d9bc30fb + cdooroffset + var_bc68bda9;
            doorcenter = self [[ self.fngetdoorcenter ]](door);
            var_56f2236d = distance2d(doorcenter, self.origin);
            if (var_56f2236d < var_70e679e1) {
                self thread closedoorifnecessary(door);
                framedurationseconds = function_60d95f53() / 1000;
                if (is_true(var_91fea62e) || var_56f2236d < var_70e679e1 - targetspeed * 2 * framedurationseconds) {
                    assert(isdefined(self.fndooropen));
                    t = self opendooratreasonabletime();
                    if (isdefined(t)) {
                        self thread opendooratreasonabletime_waitforabort();
                        wait(t);
                    }
                    self notify(#"hash_47b8208db121ca21");
                    if (isdefined(self.ai.doortoopen) && self.ai.doortoopen == door) {
                        self.ai.doortoopen = undefined;
                    }
                    self.ai.isopeningdoor = undefined;
                }
            }
        }
        waitframe(1);
    }
}


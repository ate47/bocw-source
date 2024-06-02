// Atian COD Tools GSC CW decompiler test
#using script_1ff59bb2b15dfb4d;
#using scripts\core_common\class_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace threat_sight;

// Namespace threat_sight/threat_sight
// Params 2, eflags: 0x0
// Checksum 0xaacc1647, Offset: 0xf0
// Size: 0x14
function scalevolume(*ent, *vol) {
    
}

#namespace stealth_threat_sight;

// Namespace stealth_threat_sight/threat_sight
// Params 0, eflags: 0x5
// Checksum 0x185db421, Offset: 0x110
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"stealth_threat_sight", &preinit, undefined, undefined, undefined);
}

// Namespace stealth_threat_sight/threat_sight
// Params 0, eflags: 0x6 linked
// Checksum 0x53fadd63, Offset: 0x158
// Size: 0x64
function private preinit() {
    register_clientfields();
    level.stealth_threat_sight = new class_d0a0a887();
    [[ level.stealth_threat_sight ]]->init(8);
    /#
        function_5ac4dc99("<unknown string>", 0);
    #/
}

// Namespace stealth_threat_sight/threat_sight
// Params 0, eflags: 0x6 linked
// Checksum 0xc6c00728, Offset: 0x1c8
// Size: 0x94
function private register_clientfields() {
    clientfield::register("actor", "threat_sight", 1, 6, "int", &function_5010aab6, 0, 0);
    clientfield::register("actor", "threat_state", 1, 2, "int", &function_5010aab6, 0, 0);
}

// Namespace stealth_threat_sight/threat_sight
// Params 0, eflags: 0x6 linked
// Checksum 0x206ed0fe, Offset: 0x268
// Size: 0x34
function private function_ac3d4bc() {
    return float(self.threat_sight.var_97c4563c) + self.threat_sight.sight;
}

// Namespace stealth_threat_sight/threat_sight
// Params 1, eflags: 0x6 linked
// Checksum 0xdece4122, Offset: 0x2a8
// Size: 0x3da
function private function_8991ddb4(localclientnum) {
    assert(!isdefined(self.threat_sight.elem));
    self.threat_sight.var_1911547e = [[ level.stealth_threat_sight ]]->function_65cdd2df(self);
    if (!isdefined(self.threat_sight.var_1911547e)) {
        myscore = self function_ac3d4bc();
        lowest = undefined;
        var_5b9574e0 = undefined;
        foreach (guy in [[ level.stealth_threat_sight ]]->function_85a5add5()) {
            assert(isdefined(guy.threat_sight));
            score = guy function_ac3d4bc();
            if (!isdefined(lowest) || score < lowest) {
                assert(guy !== self);
                lowest = score;
                var_5b9574e0 = guy;
            }
        }
        if (isdefined(lowest) && lowest < myscore) {
            var_5b9574e0 function_a2d377b5(localclientnum);
            self.threat_sight.var_1911547e = [[ level.stealth_threat_sight ]]->function_65cdd2df(self);
        }
    }
    if (isdefined(self.threat_sight.var_1911547e)) {
        self.threat_sight.elem = stealth_meter_display::register_clientside();
        if (!self.threat_sight.elem stealth_meter_display::is_open(localclientnum)) {
            self.threat_sight.elem stealth_meter_display::open(localclientnum);
        }
        if (!isdefined(self.threat_sight.var_b4185011) && self hasdobj(localclientnum) && self haspart(localclientnum, "j_head")) {
            self.threat_sight.var_b4185011 = spawn(localclientnum, self gettagorigin("j_head"), "script_origin");
            self.threat_sight.var_b4185011 linkto(self, "j_head");
        }
        entnum = self getentitynumber();
        if (isdefined(self.threat_sight.var_b4185011)) {
            entnum = self.threat_sight.var_b4185011 getentitynumber();
        }
        self.threat_sight.elem stealth_meter_display::set_entnum(localclientnum, entnum);
    }
    return self.threat_sight.elem;
}

// Namespace stealth_threat_sight/threat_sight
// Params 7, eflags: 0x6 linked
// Checksum 0x9ca6122e, Offset: 0x690
// Size: 0x4bc
function private function_5010aab6(localclientnum, *oldvalue, *newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    sight = float(self clientfield::get("threat_sight")) / float((1 << 6) - 1);
    if (!isdefined(self.threat_sight)) {
        self.threat_sight = spawnstruct();
    }
    now = self getclienttime();
    if ((isdefined(self.threat_sight.time) ? self.threat_sight.time : -1) == now) {
        return;
    }
    self.threat_sight.time = now;
    self.threat_sight.sight = sight;
    self.threat_sight.var_97c4563c = self clientfield::get("threat_state");
    if (!isdefined(self.threat_sight.elem)) {
        if (!getdvarint(#"hash_7bf40e4b6a830d11", 1)) {
            return;
        }
        self.threat_sight.elem = self function_8991ddb4(wasdemojump);
        if (isdefined(self.threat_sight.elem)) {
            self thread function_d4ae86f5(wasdemojump);
        }
    }
    if (isdefined(self.threat_sight.elem)) {
        /#
            var_fdd79624 = "<unknown string>";
            if (!getdvarint(#"hash_7bf40e4b6a830d11", 1)) {
                var_fdd79624 = "<unknown string>";
            }
            self thread function_ccfdbd44(wasdemojump, "<unknown string>" + self.threat_sight.var_1911547e + "<unknown string>" + self.threat_sight.var_97c4563c + "<unknown string>" + self.threat_sight.sight + "<unknown string>" + var_fdd79624);
        #/
        if (!self.threat_sight.elem stealth_meter_display::is_open(wasdemojump)) {
            self.threat_sight.elem stealth_meter_display::open(wasdemojump);
            entnum = self getentitynumber();
            if (isdefined(self.threat_sight.var_b4185011)) {
                entnum = self.threat_sight.var_b4185011 getentitynumber();
            }
            self.threat_sight.elem stealth_meter_display::set_entnum(wasdemojump, entnum);
        }
        if (getdvarint(#"hash_7bf40e4b6a830d11", 1)) {
            self.threat_sight.elem stealth_meter_display::function_4d628707(wasdemojump, self.threat_sight.var_97c4563c);
            self.threat_sight.elem stealth_meter_display::function_7425637b(wasdemojump, self.threat_sight.sight);
            self.threat_sight.elem stealth_meter_display::function_fae2a569(wasdemojump, 1);
            return;
        }
        self.threat_sight.elem stealth_meter_display::function_4d628707(wasdemojump, 0);
        self.threat_sight.elem stealth_meter_display::function_7425637b(wasdemojump, 0);
        self.threat_sight.elem stealth_meter_display::function_fae2a569(wasdemojump, 0);
    }
}

/#

    // Namespace stealth_threat_sight/threat_sight
    // Params 2, eflags: 0x4
    // Checksum 0xb9052364, Offset: 0xb58
    // Size: 0xce
    function private function_ccfdbd44(*localclientnum, msg) {
        self notify("<unknown string>");
        self endon("<unknown string>");
        self endon(#"death");
        while (getdvarint(#"hash_40034352c4930dca") && isdefined(self.threat_sight)) {
            print3d(self.origin + (0, 0, 40), msg, (1, 1, 1), 1, 0.75, 1, 0);
            waitframe(1);
        }
    }

#/

// Namespace stealth_threat_sight/threat_sight
// Params 1, eflags: 0x6 linked
// Checksum 0x31be26f9, Offset: 0xc30
// Size: 0x6c
function private function_d4ae86f5(localclientnum) {
    self notify(#"hash_433e3a44df358be9");
    self endon(#"hash_433e3a44df358be9");
    self waittill(#"death", #"entitydeleted");
    self thread function_a2d377b5(localclientnum);
}

// Namespace stealth_threat_sight/threat_sight
// Params 1, eflags: 0x6 linked
// Checksum 0x4bf98232, Offset: 0xca8
// Size: 0xde
function private function_a2d377b5(localclientnum) {
    if (isdefined(self.threat_sight.var_1911547e)) {
        [[ level.stealth_threat_sight ]]->function_271aec18(self.threat_sight.var_1911547e);
        if (self.threat_sight.elem stealth_meter_display::is_open(localclientnum)) {
            self.threat_sight.elem stealth_meter_display::close(localclientnum);
        }
        if (isdefined(self.threat_sight.var_b4185011)) {
            self.threat_sight.var_b4185011 delete();
        }
        self.threat_sight = undefined;
    }
    self notify(#"hash_433e3a44df358be9");
}


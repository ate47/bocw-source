// Atian COD Tools GSC CW decompiler test
#using script_1ff59bb2b15dfb4d;
#using scripts\core_common\class_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_214c1803;

// Namespace namespace_214c1803/namespace_214c1803
// Params 2, eflags: 0x0
// Checksum 0xaacc1647, Offset: 0xf0
// Size: 0x14
function function_aec6058a(*ent, *vol) {
    
}

#namespace namespace_6c0cd084;

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x5
// Checksum 0x185db421, Offset: 0x110
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_299575137124db03", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x6 linked
// Checksum 0x53fadd63, Offset: 0x158
// Size: 0x64
function private function_70a657d8() {
    register_clientfields();
    level.var_6c0cd084 = new class_d0a0a887();
    [[ level.var_6c0cd084 ]]->init(8);
    /#
        function_5ac4dc99("<unknown string>", 0);
    #/
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x6 linked
// Checksum 0xc6c00728, Offset: 0x1c8
// Size: 0x94
function private register_clientfields() {
    clientfield::register("actor", "threat_sight", 1, 6, "int", &function_5010aab6, 0, 0);
    clientfield::register("actor", "threat_state", 1, 2, "int", &function_5010aab6, 0, 0);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x6 linked
// Checksum 0x206ed0fe, Offset: 0x268
// Size: 0x34
function private function_ac3d4bc() {
    return float(self.var_214c1803.var_97c4563c) + self.var_214c1803.sight;
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x6 linked
// Checksum 0xdece4122, Offset: 0x2a8
// Size: 0x3da
function private function_8991ddb4(localclientnum) {
    /#
        assert(!isdefined(self.var_214c1803.elem));
    #/
    self.var_214c1803.var_1911547e = [[ level.var_6c0cd084 ]]->function_65cdd2df(self);
    if (!isdefined(self.var_214c1803.var_1911547e)) {
        var_afda3384 = self function_ac3d4bc();
        lowest = undefined;
        var_5b9574e0 = undefined;
        foreach (guy in [[ level.var_6c0cd084 ]]->function_85a5add5()) {
            /#
                assert(isdefined(guy.var_214c1803));
            #/
            score = guy function_ac3d4bc();
            if (!isdefined(lowest) || score < lowest) {
                /#
                    assert(guy !== self);
                #/
                lowest = score;
                var_5b9574e0 = guy;
            }
        }
        if (isdefined(lowest) && lowest < var_afda3384) {
            var_5b9574e0 function_a2d377b5(localclientnum);
            self.var_214c1803.var_1911547e = [[ level.var_6c0cd084 ]]->function_65cdd2df(self);
        }
    }
    if (isdefined(self.var_214c1803.var_1911547e)) {
        self.var_214c1803.elem = namespace_9833247d::register_clientside();
        if (!self.var_214c1803.elem namespace_9833247d::is_open(localclientnum)) {
            self.var_214c1803.elem namespace_9833247d::open(localclientnum);
        }
        if (!isdefined(self.var_214c1803.var_b4185011) && self hasdobj(localclientnum) && self haspart(localclientnum, "j_head")) {
            self.var_214c1803.var_b4185011 = spawn(localclientnum, self gettagorigin("j_head"), "script_origin");
            self.var_214c1803.var_b4185011 linkto(self, "j_head");
        }
        entnum = self getentitynumber();
        if (isdefined(self.var_214c1803.var_b4185011)) {
            entnum = self.var_214c1803.var_b4185011 getentitynumber();
        }
        self.var_214c1803.elem namespace_9833247d::set_entnum(localclientnum, entnum);
    }
    return self.var_214c1803.elem;
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 7, eflags: 0x6 linked
// Checksum 0x9ca6122e, Offset: 0x690
// Size: 0x4bc
function private function_5010aab6(localclientnum, *oldvalue, *newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    sight = float(self clientfield::get("threat_sight")) / float((1 << 6) - 1);
    if (!isdefined(self.var_214c1803)) {
        self.var_214c1803 = spawnstruct();
    }
    now = self getclienttime();
    if ((isdefined(self.var_214c1803.time) ? self.var_214c1803.time : -1) == now) {
        return;
    }
    self.var_214c1803.time = now;
    self.var_214c1803.sight = sight;
    self.var_214c1803.var_97c4563c = self clientfield::get("threat_state");
    if (!isdefined(self.var_214c1803.elem)) {
        if (!getdvarint(#"hash_7bf40e4b6a830d11", 1)) {
            return;
        }
        self.var_214c1803.elem = self function_8991ddb4(wasdemojump);
        if (isdefined(self.var_214c1803.elem)) {
            self thread function_d4ae86f5(wasdemojump);
        }
    }
    if (isdefined(self.var_214c1803.elem)) {
        /#
            var_fdd79624 = "<unknown string>";
            if (!getdvarint(#"hash_7bf40e4b6a830d11", 1)) {
                var_fdd79624 = "<unknown string>";
            }
            self thread function_ccfdbd44(wasdemojump, "<unknown string>" + self.var_214c1803.var_1911547e + "<unknown string>" + self.var_214c1803.var_97c4563c + "<unknown string>" + self.var_214c1803.sight + "<unknown string>" + var_fdd79624);
        #/
        if (!self.var_214c1803.elem namespace_9833247d::is_open(wasdemojump)) {
            self.var_214c1803.elem namespace_9833247d::open(wasdemojump);
            entnum = self getentitynumber();
            if (isdefined(self.var_214c1803.var_b4185011)) {
                entnum = self.var_214c1803.var_b4185011 getentitynumber();
            }
            self.var_214c1803.elem namespace_9833247d::set_entnum(wasdemojump, entnum);
        }
        if (getdvarint(#"hash_7bf40e4b6a830d11", 1)) {
            self.var_214c1803.elem namespace_9833247d::function_4d628707(wasdemojump, self.var_214c1803.var_97c4563c);
            self.var_214c1803.elem namespace_9833247d::function_7425637b(wasdemojump, self.var_214c1803.sight);
            self.var_214c1803.elem namespace_9833247d::function_fae2a569(wasdemojump, 1);
        } else {
            self.var_214c1803.elem namespace_9833247d::function_4d628707(wasdemojump, 0);
            self.var_214c1803.elem namespace_9833247d::function_7425637b(wasdemojump, 0);
            self.var_214c1803.elem namespace_9833247d::function_fae2a569(wasdemojump, 0);
        }
    }
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 2, eflags: 0x4
// Checksum 0xb9052364, Offset: 0xb58
// Size: 0xce
function private function_ccfdbd44(*localclientnum, msg) {
    /#
        self notify("<unknown string>");
        self endon("<unknown string>");
        self endon(#"death");
        while (getdvarint(#"hash_40034352c4930dca") && isdefined(self.var_214c1803)) {
            print3d(self.origin + vectorscale((0, 0, 1), 40), msg, (1, 1, 1), 1, 0.75, 1, 0);
            waitframe(1);
        }
    #/
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x6 linked
// Checksum 0x31be26f9, Offset: 0xc30
// Size: 0x6c
function private function_d4ae86f5(localclientnum) {
    self notify(#"hash_433e3a44df358be9");
    self endon(#"hash_433e3a44df358be9");
    self waittill(#"death", #"hash_29b88049dcac8bb3");
    self thread function_a2d377b5(localclientnum);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x6 linked
// Checksum 0x4bf98232, Offset: 0xca8
// Size: 0xde
function private function_a2d377b5(localclientnum) {
    if (isdefined(self.var_214c1803.var_1911547e)) {
        [[ level.var_6c0cd084 ]]->function_271aec18(self.var_214c1803.var_1911547e);
        if (self.var_214c1803.elem namespace_9833247d::is_open(localclientnum)) {
            self.var_214c1803.elem namespace_9833247d::close(localclientnum);
        }
        if (isdefined(self.var_214c1803.var_b4185011)) {
            self.var_214c1803.var_b4185011 delete();
        }
        self.var_214c1803 = undefined;
    }
    self notify(#"hash_433e3a44df358be9");
}


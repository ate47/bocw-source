// Atian COD Tools GSC CW decompiler test
#using scripts\zm\ai\zm_ai_dog.csc;
#using script_44c87b4589ee1f93;
#using scripts\core_common\ai\systems\fx_character.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\ai_shared.csc;

#namespace namespace_ec0691f8;

// Namespace namespace_ec0691f8/namespace_ec0691f8
// Params 0, eflags: 0x5
// Checksum 0xfc54fbdb, Offset: 0x138
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_4863f776a30a1247", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_ec0691f8/namespace_ec0691f8
// Params 0, eflags: 0x6 linked
// Checksum 0xaca864ab, Offset: 0x180
// Size: 0x10c
function private preinit() {
    clientfield::register("actor", "sr_dog_fx", 1, 1, "int", &dog_fx, 0, 0);
    clientfield::register("actor", "sr_dog_spawn_fx", 1, 1, "counter", &dog_spawn_fx, 0, 0);
    clientfield::register("actor", "sr_dog_pre_spawn_fx", 1, 1, "counter", &function_30933ca1, 0, 0);
    ai::add_archetype_spawn_function(#"zombie_dog", &function_3b0e8b8b);
}

// Namespace namespace_ec0691f8/namespace_ec0691f8
// Params 1, eflags: 0x2 linked
// Checksum 0x9fe7a6c2, Offset: 0x298
// Size: 0x24
function function_3b0e8b8b(localclientnum) {
    util::waittill_dobj(localclientnum);
}

// Namespace namespace_ec0691f8/namespace_ec0691f8
// Params 7, eflags: 0x2 linked
// Checksum 0x716b543a, Offset: 0x2c8
// Size: 0x1ac
function dog_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump) {
        if (!isdefined(self.var_93471229)) {
            self.var_93471229 = [];
        }
        if (isdefined(self.fxdef) && !isdefined(self._fxcharacter[self.fxdef])) {
            fxclientutils::playfxbundle(fieldname, self, self.fxdef);
        }
        self mapshaderconstant(fieldname, 0, "scriptVector2", 0, 1, 1);
        return;
    }
    if (isdefined(self.var_93471229)) {
        foreach (fxhandle in self.var_93471229) {
            deletefx(fieldname, fxhandle);
        }
    }
    util::playfxontag(fieldname, #"hash_529c1a5672216926", self, "j_spine2");
}

// Namespace namespace_ec0691f8/namespace_ec0691f8
// Params 7, eflags: 0x2 linked
// Checksum 0xedbce3b, Offset: 0x480
// Size: 0x21c
function function_30933ca1(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::waittill_dobj(bwastimejump);
    if (!isdefined(self)) {
        return;
    }
    if (self.var_9fde8624 === #"hash_2a5479b83161cb35") {
        var_d1dc644a = playfx(bwastimejump, #"hash_baef237a01b261a", self.origin + (0, 0, 36), anglestoup(self.angles));
        playsound(bwastimejump, #"hash_6b6572c7d66929d", self.origin + (0, 0, 36));
    } else if (self.var_9fde8624 === #"hash_28e36e7b7d5421f") {
        var_d1dc644a = playfx(bwastimejump, #"hash_2de6c1300bec68cd", self.origin + (0, 0, 36), anglestoup(self.angles));
        playsound(bwastimejump, #"hash_3731f907ac5beb1", self.origin + (0, 0, 36));
    } else {
        playsound(bwastimejump, #"hash_1b702e745dd73148", self.origin + (0, 0, 36));
    }
    wait(1);
    if (isdefined(var_d1dc644a)) {
        stopfx(bwastimejump, var_d1dc644a);
    }
}

// Namespace namespace_ec0691f8/namespace_ec0691f8
// Params 7, eflags: 0x2 linked
// Checksum 0x3e4651c7, Offset: 0x6a8
// Size: 0x1d4
function dog_spawn_fx(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (self.var_9fde8624 === #"hash_2a5479b83161cb35") {
        util::playfxontag(bwasdemojump, #"hash_784a8bc7b9b17876", self, "j_spine2");
        playsound(bwasdemojump, #"hash_6ba18f5ab09d3e00", self.origin + (0, 0, 36));
    } else if (self.var_9fde8624 === #"hash_28e36e7b7d5421f") {
        util::playfxontag(bwasdemojump, #"hash_44214bf58f0e6d87", self, "j_spine2");
        playsound(bwasdemojump, #"hash_6a7f1f4ef6078e4", self.origin + (0, 0, 36));
    } else {
        util::playfxontag(bwasdemojump, level._effect[#"lightning_dog_spawn"], self, "j_spine2");
        playsound(bwasdemojump, #"hash_342202bccfe632e3", self.origin + (0, 0, 36));
    }
    fxclientutils::playfxbundle(bwasdemojump, self, self.fxdef);
}


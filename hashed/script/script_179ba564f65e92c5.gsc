// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\fx_character.csc;
#using script_5da58df20c85a0e;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\ai_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_abfee9ba;

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 0, eflags: 0x5
// Checksum 0x1d4194f0, Offset: 0xe0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_55f568f82a7aea28", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 0, eflags: 0x4
// Checksum 0xd1a67046, Offset: 0x128
// Size: 0x8c
function private preinit() {
    clientfield::register("scriptmover", "" + #"hash_3220b44880f1807c", 24000, 1, "counter", &function_9eb59632, 0, 0);
    ai::add_archetype_spawn_function(#"tormentor", &function_a5cd9e54);
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 1, eflags: 0x0
// Checksum 0x2de1ef5f, Offset: 0x1c0
// Size: 0x64
function function_a5cd9e54(localclientnum) {
    util::playfxontag(localclientnum, #"hash_59ec528273a2d3f0", self, "tag_eye");
    if (isdefined(self.fxdef)) {
        fxclientutils::playfxbundle(localclientnum, self, self.fxdef);
    }
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 7, eflags: 0x0
// Checksum 0xbfa9605d, Offset: 0x230
// Size: 0x1c4
function function_9eb59632(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level endon(#"end_game");
    util::waittill_dobj(bwastimejump);
    if (!isdefined(self)) {
        return;
    }
    var_d1dc644a = playfx(bwastimejump, #"hash_2de6c1300bec68cd", self.origin + (0, 0, 36), anglestoup(self.angles));
    playsound(bwastimejump, #"hash_22dd31bb07fa0a72", self.origin + (0, 0, 36));
    wait(1);
    if (isdefined(var_d1dc644a)) {
        stopfx(bwastimejump, var_d1dc644a);
    }
    if (isdefined(self)) {
        var_b064d016 = playfx(bwastimejump, #"hash_44214bf58f0e6d87", self.origin + (0, 0, 36), anglestoup(self.angles));
        playsound(bwastimejump, #"hash_2b575d8db3a60a95", self.origin + (0, 0, 36));
    }
}


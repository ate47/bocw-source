// Atian COD Tools GSC CW decompiler test
#using script_20fe86d43b7f18f1;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_cc727a3b;

// Namespace namespace_cc727a3b/namespace_cc727a3b
// Params 0, eflags: 0x5
// Checksum 0xb4cdeaa4, Offset: 0x128
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_507ba1ac0432a7e6", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_cc727a3b/namespace_cc727a3b
// Params 0, eflags: 0x2 linked
// Checksum 0x5d9dc923, Offset: 0x170
// Size: 0x1f4
function preinit() {
    clientfield::register("scriptmover", "" + #"dog_launcher_explode_fx", 16000, 1, "int", &function_9666c7b1, 0, 0);
    clientfield::register("scriptmover", "hs_swarm_state", 1, 1, "counter", &function_440e968, 0, 0);
    clientfield::register("allplayers", "hs_swarm_damage", 1, 1, "counter", &function_64d1f09b, 1, 0);
    clientfield::register("allplayers", "" + #"hash_2201faa112c8313", 16000, 1, "counter", &function_ea257a5f, 1, 0);
    clientfield::register("scriptmover", "" + #"hash_2201faa112c8313", 16000, 1, "counter", &function_ea257a5f, 1, 0);
    clientfield::register("scriptmover", "" + #"dog_projectile_fx", 16000, 1, "int", &dog_projectile_fx, 0, 0);
}

// Namespace namespace_cc727a3b/namespace_cc727a3b
// Params 7, eflags: 0x2 linked
// Checksum 0x13c82711, Offset: 0x370
// Size: 0x106
function function_9666c7b1(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.fx = playfx(fieldname, #"hash_1a93b9b31b5d1d3b", self.origin + (0, 0, 18), anglestoup(self.angles));
        self playsound(fieldname, #"hash_6a76932cce379c66");
        return;
    }
    if (isdefined(self.fx)) {
        stopfx(fieldname, self.fx);
        self.fx = undefined;
    }
}

// Namespace namespace_cc727a3b/namespace_cc727a3b
// Params 7, eflags: 0x6 linked
// Checksum 0xe07b3514, Offset: 0x480
// Size: 0x122
function private function_440e968(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (isdefined(self.var_d61d7100)) {
        stopfx(fieldname, self.var_d61d7100);
    }
    fx = undefined;
    if (bwastimejump) {
        fx = #"hash_78ae17d0e989e328";
    }
    if (!isdefined(fx)) {
        return;
    }
    if (!isdefined(self.var_af4484a7)) {
        self.var_af4484a7 = 1;
        self callback::on_shutdown(&function_95dc19b0);
    }
    self.var_d61d7100 = util::playfxontag(fieldname, fx, self, "tag_origin");
}

// Namespace namespace_cc727a3b/namespace_cc727a3b
// Params 1, eflags: 0x6 linked
// Checksum 0x53ceae8, Offset: 0x5b0
// Size: 0x4c
function private function_95dc19b0(localclientnum) {
    if (isdefined(self)) {
        fx = #"hash_69eb668e9f7736bd";
        playfx(localclientnum, fx, self.origin);
    }
}

// Namespace namespace_cc727a3b/namespace_cc727a3b
// Params 7, eflags: 0x6 linked
// Checksum 0x324fe68, Offset: 0x608
// Size: 0x114
function private function_64d1f09b(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level endon(#"end_game");
    if (!isalive(self) || self !== function_5c10bd79(fieldname)) {
        return;
    }
    fx = undefined;
    if (bwastimejump) {
        fx = #"hash_26265474bcb72a8a";
    }
    if (!isdefined(fx)) {
        return;
    }
    viewmodelfx = playfxoncamera(fieldname, fx, (0, 0, 0), (1, 0, 0), (0, 0, 1));
    self waittilltimeout(2, #"death");
    stopfx(fieldname, viewmodelfx);
}

// Namespace namespace_cc727a3b/namespace_cc727a3b
// Params 7, eflags: 0x6 linked
// Checksum 0x8621e53e, Offset: 0x728
// Size: 0xbc
function private function_ea257a5f(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level endon(#"end_game");
    fx = playfx(bwastimejump, #"hash_840483659ea54c4", self.origin + (0, 0, 10));
    wait(7);
    if (isdefined(fx)) {
        stopfx(bwastimejump, fx);
    }
}

// Namespace namespace_cc727a3b/namespace_cc727a3b
// Params 7, eflags: 0x2 linked
// Checksum 0x3d769ce7, Offset: 0x7f0
// Size: 0xb6
function dog_projectile_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_e65311fc = util::playfxontag(fieldname, #"hash_901b71115b1cd3f", self, "j_spine4");
        return;
    }
    if (isdefined(self.var_e65311fc)) {
        stopfx(fieldname, self.var_e65311fc);
        self.var_e65311fc = undefined;
    }
}

// Namespace namespace_cc727a3b/namespace_cc727a3b
// Params 3, eflags: 0x2 linked
// Checksum 0xede2750a, Offset: 0x8b0
// Size: 0x178
function function_5565725d(localclientnum, dissolve, rob) {
    if (dissolve === 1) {
        self namespace_14ee8104::function_54d0d2d1(localclientnum);
    }
    if (!isdefined(self.var_553a42c)) {
        return;
    }
    if (dissolve === 1) {
        foreach (zombie in self.var_553a42c) {
            if (isdefined(zombie)) {
                zombie playrenderoverridebundle(rob);
            }
        }
        return;
    }
    foreach (zombie in self.var_553a42c) {
        if (isdefined(zombie)) {
            zombie stoprenderoverridebundle(rob);
        }
    }
}


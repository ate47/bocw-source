// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\struct.csc;

#namespace namespace_5443b356;

// Namespace namespace_5443b356/namespace_88f6bc3c
// Params 0, eflags: 0x1
// Checksum 0x919d9ce6, Offset: 0x150
// Size: 0xdc
function autoexec main() {
    clientfield::register("toplayer", "player_cam_blur", 1, 1, "int", &player_cam_blur, 0, 1);
    clientfield::register("toplayer", "player_cam_bubbles", 1, 1, "int", &player_cam_bubbles, 0, 1);
    clientfield::register("toplayer", "player_cam_fire", 1, 1, "int", &player_cam_fire, 0, 0);
}

// Namespace namespace_5443b356/namespace_88f6bc3c
// Params 7, eflags: 0x2 linked
// Checksum 0x68c7171f, Offset: 0x238
// Size: 0x96
function player_cam_blur(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1 && !function_1cbf351b(fieldname)) {
        self thread function_3c4a545b(fieldname);
        return;
    }
    self notify(#"hash_31875ebd426b00c1");
}

// Namespace namespace_5443b356/namespace_88f6bc3c
// Params 1, eflags: 0x2 linked
// Checksum 0xb08cc907, Offset: 0x2d8
// Size: 0x6a
function function_3c4a545b(*localclientnum) {
    self endon(#"disconnect");
    self endon(#"hash_31875ebd426b00c1");
    var_f052fbf4 = 0.5;
    while (var_f052fbf4 <= 1) {
        var_f052fbf4 += 0.04;
        waitframe(1);
    }
}

// Namespace namespace_5443b356/namespace_88f6bc3c
// Params 7, eflags: 0x2 linked
// Checksum 0x10eb6d51, Offset: 0x350
// Size: 0x114
function player_cam_bubbles(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1 && !function_1cbf351b(fieldname)) {
        if (isdefined(self.n_fx_id)) {
            deletefx(fieldname, self.n_fx_id, 1);
        }
        self.n_fx_id = playfxoncamera(fieldname, "player/fx_plyr_swim_bubbles_body", (0, 0, 0), (1, 0, 0), (0, 0, 1));
        self playrumbleonentity(fieldname, "damage_heavy");
        return;
    }
    if (isdefined(self.n_fx_id)) {
        deletefx(fieldname, self.n_fx_id, 1);
    }
}

// Namespace namespace_5443b356/namespace_88f6bc3c
// Params 7, eflags: 0x2 linked
// Checksum 0x7d2f8452, Offset: 0x470
// Size: 0x8c
function player_cam_fire(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1 && !function_1cbf351b(fieldname)) {
        burn_on_postfx();
        return;
    }
    function_97a0dd0a();
}

// Namespace namespace_5443b356/namespace_88f6bc3c
// Params 0, eflags: 0x2 linked
// Checksum 0xd261a399, Offset: 0x508
// Size: 0x4c
function burn_on_postfx() {
    self endon(#"disconnect");
    self endon(#"hash_8098b25d66c781c");
    self thread postfx::playpostfxbundle(#"pstfx_burn_loop");
}

// Namespace namespace_5443b356/namespace_88f6bc3c
// Params 0, eflags: 0x2 linked
// Checksum 0x7779ed00, Offset: 0x560
// Size: 0x34
function function_97a0dd0a() {
    self notify(#"hash_8098b25d66c781c");
    self postfx::stoppostfxbundle("pstfx_burn_loop");
}


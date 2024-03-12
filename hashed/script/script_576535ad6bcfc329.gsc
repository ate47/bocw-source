// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\archetype_skeleton.csc;
#using scripts\core_common\ai\systems\fx_character.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\ai_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_d1abdcb5;

// Namespace namespace_d1abdcb5/namespace_d1abdcb5
// Params 0, eflags: 0x2 linked
// Checksum 0xcf590be2, Offset: 0x1d0
// Size: 0x18c
function init() {
    function_cae618b4("spawner_zombietron_skeleton");
    function_cae618b4("spawner_zombietron_skeleton_giant");
    clientfield::register("scriptmover", "" + #"spartoi_reassemble_clientfield", 1, 1, "int", &function_d83c0144, 0, 0);
    clientfield::register("actor", "" + #"hash_3a6a3e4ef0a1a999", 1, 1, "counter", &function_9e6319c8, 0, 0);
    clientfield::register("actor", "skel_spawn_fx", 1, 1, "counter", &skel_spawn_fx, 0, 0);
    ai::add_archetype_spawn_function(#"skeleton", &skeletonspawnsetup);
    ai::add_archetype_spawn_function(#"skeleton", &function_3b8e5273);
}

// Namespace namespace_d1abdcb5/namespace_d1abdcb5
// Params 7, eflags: 0x2 linked
// Checksum 0x3f2f7551, Offset: 0x368
// Size: 0x74
function skel_spawn_fx(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    util::playfxontag(bwasdemojump, level._effect[#"lightning_dog_spawn"], self, "j_spine2");
}

// Namespace namespace_d1abdcb5/namespace_d1abdcb5
// Params 1, eflags: 0x6 linked
// Checksum 0xaeadb02c, Offset: 0x3e8
// Size: 0x4c
function private skeletonspawnsetup(localclientnum) {
    self util::waittill_dobj(localclientnum);
    if (isdefined(self)) {
        fxclientutils::playfxbundle(localclientnum, self, self.fxdef);
    }
}

// Namespace namespace_d1abdcb5/namespace_d1abdcb5
// Params 1, eflags: 0x6 linked
// Checksum 0xf459c93b, Offset: 0x440
// Size: 0xc0
function private function_3b8e5273(*localclientnum) {
    if (self.var_9fde8624 === #"hash_342763a42d8fbca" || self.var_9fde8624 === #"hash_fd7b9665529dd42") {
        if (!is_true(level.shield_streaming)) {
            level.shield_streaming = 1;
            forcestreamxmodel(#"c_t8_zmb_dlc2_skeleton_shield");
            wait(3);
            stopforcestreamingxmodel(#"c_t8_zmb_dlc2_skeleton_shield");
            level.shield_streaming = 0;
        }
    }
}

// Namespace namespace_d1abdcb5/namespace_d1abdcb5
// Params 7, eflags: 0x6 linked
// Checksum 0x33727a0a, Offset: 0x508
// Size: 0xbc
function private function_d83c0144(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump == 1) {
        self.fx = function_239993de(fieldname, "zm_ai/fx8_spartoi_reassemble_displace_trail", self, "tag_origin");
        return;
    }
    stopfx(fieldname, self.fx);
}

// Namespace namespace_d1abdcb5/namespace_d1abdcb5
// Params 7, eflags: 0x6 linked
// Checksum 0x7c36b8a6, Offset: 0x5d0
// Size: 0x114
function private function_9e6319c8(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump == 1) {
        point = self gettagorigin("j_skeleton_shield");
        if (!isdefined(point)) {
            return;
        }
        angles = self.angles;
        forward = anglestoforward(angles);
        up = anglestoup(angles);
        playfx(fieldname, "impacts/fx8_bul_impact_metal_lg", point, forward, up);
    }
}


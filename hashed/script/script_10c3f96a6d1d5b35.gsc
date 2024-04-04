// Atian COD Tools GSC CW decompiler test
#using scripts\zm\zm_tungsten_main_quest.csc;
#using scripts\zm_common\objective_manager.csc;
#using scripts\zm_common\zm_score.csc;
#using script_5ee86fb478309acf;
#using scripts\core_common\postfx_shared.csc;
#using script_40e017336a087343;
#using scripts\core_common\ai\systems\gib.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\item_drop.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\scene_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_e5670722;

// Namespace namespace_e5670722/namespace_e5670722
// Params 0, eflags: 0x2 linked
// Checksum 0xc2716a73, Offset: 0x128
// Size: 0xb4
function init() {
    clientfield::register("scriptmover", "" + #"hash_193cb3d6820f32c9", 28000, 1, "int", &function_3aea3305, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_b386e95b77069e4", 28000, 1, "int", &function_140c21d6, 0, 0);
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 7, eflags: 0x2 linked
// Checksum 0x2f719c8c, Offset: 0x1e8
// Size: 0x10c
function function_3aea3305(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        var_3ddad43b = randomintrange(2, 4);
        for (i = 0; i < var_3ddad43b; i++) {
            if (isdefined(self)) {
                v_pos = self.origin;
                playfx(fieldname, #"lensflares/fx9_lf_sniper_glint", v_pos + anglestoup(self.angles) * 60);
                wait(randomfloatrange(0.5, 0.7));
            }
        }
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 7, eflags: 0x2 linked
// Checksum 0xbb3c34a4, Offset: 0x300
// Size: 0x18c
function function_140c21d6(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        var_d263d14a = anglestoright(self.angles) * 3;
        var_9e6bf193 = (-90, 0, 0);
        self.fx_tag = util::spawn_model(fieldname, "tag_origin", self.origin + var_d263d14a, self.angles + var_9e6bf193);
        self.fx_tag linkto(self);
        self.fx_tag.var_c6cd7dce = util::playfxontag(fieldname, #"hash_1863acf2e22ff6ba", self.fx_tag, "tag_origin");
        return;
    }
    if (isdefined(self.fx_tag.var_c6cd7dce)) {
        killfx(fieldname, self.fx_tag.var_c6cd7dce);
        self.fx_tag.var_c6cd7dce = undefined;
        self.fx_tag delete();
    }
}


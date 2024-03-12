// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\archetype_nosferatu.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_be2ae534;

// Namespace namespace_be2ae534/namespace_be2ae534
// Params 0, eflags: 0x2 linked
// Checksum 0xc0b8895b, Offset: 0x120
// Size: 0x64
function init() {
    function_cae618b4("spawner_zombietron_demon");
    clientfield::register("actor", "nfrtu_move_dash", 8000, 1, "int", &function_87acfe6f, 0, 0);
}

// Namespace namespace_be2ae534/namespace_be2ae534
// Params 7, eflags: 0x6 linked
// Checksum 0xf166cf5f, Offset: 0x190
// Size: 0xa4
function private function_87acfe6f(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_b8cc5182 = util::playfxontag(fieldname, "zm_ai/fx8_nosferatu_dash_eyes", self, "tag_eye");
        return;
    }
    if (isdefined(self.var_b8cc5182)) {
        stopfx(fieldname, self.var_b8cc5182);
    }
}


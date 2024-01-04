// Atian COD Tools GSC CW decompiler test
#using script_3461e14083d6d41b;
#using scripts\core_common\postfx_shared.csc;
#using script_17a9d06bf819b2d3;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_47f97e84;

// Namespace namespace_47f97e84/namespace_47f97e84
// Params 0, eflags: 0x2 linked
// Checksum 0xea0d0b03, Offset: 0x118
// Size: 0xb4
function init() {
    clientfield::register("toplayer", "" + #"hash_548794e256c5bad6", 24000, 1, "int", &function_3cc5163a, 0, 0);
    function_f8a8ff3f();
    namespace_5b1144e::function_5ae4a10c("p7_lockers_metal_tall_01", "black_light_locker", #"hash_278d26f49cc82f87", undefined, #"hash_4cb794edb4a5ec1f", 1, -20);
}

// Namespace namespace_47f97e84/namespace_47f97e84
// Params 7, eflags: 0x2 linked
// Checksum 0x8916e56b, Offset: 0x1d8
// Size: 0xa4
function function_3cc5163a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    var_498c6118 = getent(fieldname, "black_light_mdl", "targetname");
    if (bwasdemojump == 0) {
        var_498c6118 show();
    } else {
        var_498c6118 hide();
    }
}


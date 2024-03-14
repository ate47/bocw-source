// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\cp_common\util.csc;
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;

#namespace namespace_f180c0d7;

// Namespace namespace_f180c0d7/namespace_f180c0d7
// Params 7, eflags: 0x2 linked
// Checksum 0xa1e8d694, Offset: 0xf8
// Size: 0x314
function function_117e5e22(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    level notify(#"hash_a9b7279222ef8d9");
    level endon(#"hash_a9b7279222ef8d9");
    if (bwasdemojump > 0) {
        self postfx::playpostfxbundle("pstfx_script_vignette");
        self postfx::function_c8b5f318("pstfx_script_vignette", "Inner Radius", 0.25);
        self postfx::function_c8b5f318("pstfx_script_vignette", "Outer Radius", 1);
        var_991ef290 = getdvarfloat(#"hash_244a543491606468", 0);
        var_24120947 = getdvarfloat(#"hash_29d46f70d5dcef62", 0);
        var_b4030a00 = getdvarfloat(#"hash_4d0da2cce37b5b96", 0);
        while (true) {
            current_distance = getdvarfloat(#"current_distance", 0);
            if (current_distance > var_24120947) {
                level.var_9d53a8fc = mapfloat(var_24120947, var_991ef290, 0.85, 0, current_distance);
                /#
                    iprintlnbold("<unknown string>" + level.var_9d53a8fc + "<unknown string>" + current_distance);
                #/
            } else {
                level.var_9d53a8fc = mapfloat(var_b4030a00, var_24120947, 1, 0.85, current_distance);
                /#
                    iprintlnbold("<unknown string>" + level.var_9d53a8fc + "<unknown string>" + current_distance);
                #/
            }
            self postfx::function_c8b5f318("pstfx_script_vignette", "Opacity", level.var_9d53a8fc);
            waitframe(1);
        }
        return;
    }
    level.var_9d53a8fc = 0;
    self postfx::exitpostfxbundle("pstfx_script_vignette");
    self postfx::function_c8b5f318("pstfx_script_vignette", "Opacity", 0);
}


// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\renderoverridebundle.csc;
#using scripts\core_common\system_shared.csc;
#using script_57f0934f7e3e3b54;
#using scripts\killstreaks\remotemissile_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace remotemissile;

// Namespace remotemissile/remotemissile
// Params 0, eflags: 0x5
// Checksum 0x81c2de74, Offset: 0xc8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"remotemissile", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace remotemissile/remotemissile
// Params 0, eflags: 0x6 linked
// Checksum 0xd463f1b, Offset: 0x118
// Size: 0x11c
function private preinit() {
    clientfield::register("world", "" + #"hash_59ec82b1a72deb72", 1, 1, "int", &function_c668b489, 0, 0);
    clientfield::register("toplayer", "" + #"hash_7bdbbf163a28169", 6000, 1, "int", &function_3815e8dc, 0, 1);
    clientfield::register("toplayer", "" + #"hash_4241f7b51f8c144", 8000, 1, "int", &function_73155fe5, 0, 0);
    init_shared();
}

// Namespace remotemissile/remotemissile
// Params 7, eflags: 0x2 linked
// Checksum 0x338c0004, Offset: 0x240
// Size: 0xcc
function function_c668b489(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        function_3385d776(#"hash_320dd60f8482919f");
        function_3385d776(#"hash_55c5552fc2e0f419");
        return;
    }
    function_c22a1ca2(#"hash_320dd60f8482919f");
    function_c22a1ca2(#"hash_55c5552fc2e0f419");
}

// Namespace remotemissile/remotemissile
// Params 7, eflags: 0x2 linked
// Checksum 0x1dfebbfd, Offset: 0x318
// Size: 0x3c
function function_3815e8dc(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    
}

// Namespace remotemissile/remotemissile
// Params 7, eflags: 0x2 linked
// Checksum 0x550b347e, Offset: 0x360
// Size: 0x1d0
function function_73155fe5(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (level.var_a396a670 === 1) {
        self function_4fe8eba6(bwastimejump);
    }
    if (level.var_a7c8e7d7 === 1) {
        self killstreaks::function_d79281c4(bwastimejump);
    }
    zombies = getentarraybytype(fieldname, 15);
    localplayer = function_27673a7(fieldname);
    if (isdefined(level.orda) && localplayer === self) {
        level.orda renderoverridebundle::function_f4eab437(fieldname, bwastimejump, #"hash_2c6fce4151016478");
    }
    foreach (zombie in zombies) {
        if (localplayer === self && isalive(zombie)) {
            zombie renderoverridebundle::function_f4eab437(fieldname, bwastimejump, #"hash_2c6fce4151016478");
        }
    }
}

// Namespace remotemissile/remotemissile
// Params 1, eflags: 0x6 linked
// Checksum 0x47857e53, Offset: 0x538
// Size: 0xcc
function private function_4fe8eba6(newval) {
    if (newval) {
        fov = getdvarfloat(#"cg_fov", 80);
        if (fov > 110) {
            var_a0a59056 = 21;
        } else if (fov > 93) {
            var_a0a59056 = 20;
        } else if (fov > 85) {
            var_a0a59056 = 19;
        }
        if (isdefined(var_a0a59056)) {
            self function_49cdf043(var_a0a59056, 0);
        }
        return;
    }
    self function_9298adaf(0);
}


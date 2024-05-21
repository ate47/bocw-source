// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using script_7f1f926c510e9617;
#using scripts\cp_common\util.csc;
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;

#namespace districts;

// Namespace districts/districts
// Params 0, eflags: 0x5
// Checksum 0x29b09891, Offset: 0x100
// Size: 0x34
function private autoexec __init__system__() {
    system::register("cp_districts_system", &preinit, undefined, undefined, undefined);
}

// Namespace districts/districts
// Params 0, eflags: 0x6 linked
// Checksum 0x5b101172, Offset: 0x140
// Size: 0x64
function private preinit() {
    clientfield::register("world", "district_bitfield", 1, 20, "int", &function_36d7ec1e, 0, 0);
    namespace_aff1f617::function_41e5864f(0);
}

// Namespace districts/districts
// Params 7, eflags: 0x2 linked
// Checksum 0xf92779fe, Offset: 0x1b0
// Size: 0x1de
function function_36d7ec1e(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!level.var_59cd6d34.first_time) {
        var_45691171 = ~level.var_59cd6d34.var_cd7d2e9f & bwastimejump;
        var_6ee67be7 = ~bwastimejump & level.var_59cd6d34.var_cd7d2e9f;
    } else {
        var_45691171 = 1048575 & bwastimejump;
        var_6ee67be7 = ~bwastimejump & 1048575;
        level.var_59cd6d34.first_time = 0;
    }
    for (i = 0; var_45691171 != 0; i++) {
        if (var_45691171 & 1) {
            name = function_8040a3dc(i);
            if (!isdefined(name)) {
                break;
            }
            function_e8f072a1(name, 1);
        }
        var_45691171 >>= 1;
    }
    for (i = 0; var_6ee67be7 != 0; i++) {
        if (var_6ee67be7 & 1) {
            name = function_8040a3dc(i);
            if (!isdefined(name)) {
                break;
            }
            function_e8f072a1(name, 0);
        }
        var_6ee67be7 >>= 1;
    }
    level.var_59cd6d34.var_cd7d2e9f = bwastimejump;
}

// Namespace districts/districts
// Params 1, eflags: 0x2 linked
// Checksum 0xc30f6207, Offset: 0x398
// Size: 0x64
function function_8040a3dc(index) {
    assert(index < 20);
    if (index >= level.var_59cd6d34.var_2844be06.size) {
        return undefined;
    }
    return level.var_59cd6d34.var_2844be06[index];
}


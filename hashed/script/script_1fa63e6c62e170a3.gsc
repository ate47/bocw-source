// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_aff1f617;

// Namespace namespace_aff1f617/namespace_9426656f
// Params 1, eflags: 0x2 linked
// Checksum 0xca93948a, Offset: 0xb8
// Size: 0x74
function function_41e5864f(var_e3087505 = 1) {
    level.var_59cd6d34 = {#var_cd7d2e9f:0, #var_846147d7:1, #first_time:1};
    function_77051d2b(var_e3087505);
}

// Namespace namespace_aff1f617/namespace_9426656f
// Params 1, eflags: 0x2 linked
// Checksum 0x75e8f4b7, Offset: 0x138
// Size: 0xe4
function function_77051d2b(var_e3087505 = 1) {
    function_715de8e5(var_e3087505);
    if (!isdefined(level.var_59cd6d34.var_2844be06)) {
        level.var_59cd6d34.var_2844be06 = [];
        for (i = 1; i <= 20; i++) {
            if (var_e3087505) {
                level.var_59cd6d34.var_2844be06["district_" + i] = i - 1;
                continue;
            }
            level.var_59cd6d34.var_2844be06[i - 1] = "district_" + i;
        }
    }
}

// Namespace namespace_aff1f617/namespace_9426656f
// Params 1, eflags: 0x2 linked
// Checksum 0xa9fef899, Offset: 0x228
// Size: 0xea
function function_715de8e5(var_e3087505) {
    var_e5f80f4e = getmapfields();
    if (isarray(var_e5f80f4e.var_42200354) && var_e5f80f4e.var_42200354.size > 0) {
        if (var_e3087505) {
            level.var_59cd6d34.var_2844be06 = [];
            for (i = 0; i < var_e5f80f4e.var_42200354.size; i++) {
                level.var_59cd6d34.var_2844be06[var_e5f80f4e.var_42200354[i]] = i;
            }
            return;
        }
        level.var_59cd6d34.var_2844be06 = arraycopy(var_e5f80f4e.var_42200354);
    }
}


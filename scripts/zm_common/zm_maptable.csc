// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;

#namespace zm_maptable;

// Namespace zm_maptable/zm_maptable
// Params 0, eflags: 0x2 linked
// Checksum 0xffd8948a, Offset: 0x88
// Size: 0x66
function function_10672567() {
    if (!isdefined(level.maptableentry)) {
        mapname = util::get_map_name();
        fields = getmapfields(mapname);
        level.maptableentry = fields;
    }
    return level.maptableentry;
}

// Namespace zm_maptable/zm_maptable
// Params 0, eflags: 0x2 linked
// Checksum 0xf05a6f18, Offset: 0xf8
// Size: 0x56
function get_cast() {
    cast = #"other";
    fields = function_10672567();
    if (isdefined(fields)) {
        cast = fields.cast;
    }
    return cast;
}

// Namespace zm_maptable/zm_maptable
// Params 0, eflags: 0x2 linked
// Checksum 0x3360542, Offset: 0x158
// Size: 0x42
function get_story() {
    var_26ea2807 = get_cast();
    if (var_26ea2807 === #"story1") {
        return 1;
    }
    return 2;
}


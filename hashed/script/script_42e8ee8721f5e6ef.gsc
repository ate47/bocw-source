// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\array_shared.gsc;

#namespace namespace_bec1e8ca;

// Namespace namespace_bec1e8ca/namespace_bec1e8ca
// Params 2, eflags: 0x42 linked
// Checksum 0x72e744b6, Offset: 0xa8
// Size: 0x148
function function_c5dda35e(category, ...) {
    level.var_30651be1[category] = [];
    foreach (filename in vararg) {
        if (isarray(filename)) {
            foreach (file in filename) {
                function_b8e1addf(category, file);
            }
        } else {
            function_b8e1addf(category, filename);
        }
    }
}

// Namespace namespace_bec1e8ca/namespace_bec1e8ca
// Params 2, eflags: 0x2 linked
// Checksum 0xd412a69f, Offset: 0x1f8
// Size: 0x2ae
function function_b8e1addf(category, filename) {
    for (row = 0; 1; row++) {
        var_be812f0a = tablelookupcolumnforrow(filename, row, 0);
        if (!isdefined(var_be812f0a)) {
            return;
        }
        var_be812f0a = tolower(var_be812f0a);
        var_7e8c6c7c = tolower(tablelookupcolumnforrow(filename, row, 1));
        var_40b9a488 = tolower(tablelookupcolumnforrow(filename, row, 2));
        var_4ef5dd5c = tolower(tablelookupcolumnforrow(filename, row, 3));
        var_c605de16 = [];
        while (1) {
            alias = tablelookupcolumnforrow(filename, row, var_c605de16.size + 4);
            if (!isdefined(alias) || alias == "") {
                break;
            }
            var_c605de16[var_c605de16.size] = tolower(alias);
        }
        if (var_be812f0a == "" && var_7e8c6c7c == "" && var_c605de16.size == 0) {
            break;
        }
        if (var_be812f0a == "") {
            var_be812f0a = "all";
        }
        if (var_7e8c6c7c == "") {
            var_7e8c6c7c = "all";
        }
        key = categorykey(category, var_be812f0a, var_7e8c6c7c);
        level.var_30651be1[category][key] = {#var_df2220dd:var_c605de16, #delay:float(var_4ef5dd5c), #probability:float(var_40b9a488)};
    }
}

// Namespace namespace_bec1e8ca/namespace_bec1e8ca
// Params 3, eflags: 0x2 linked
// Checksum 0xe9b2d6b2, Offset: 0x4b0
// Size: 0x7a
function function_4e83ff35(category, type, modifier) {
    key = categorykey(category, type, modifier);
    if (!exists(category, type, modifier)) {
        return 0;
    }
    return level.var_30651be1[category][key].probability;
}

// Namespace namespace_bec1e8ca/namespace_bec1e8ca
// Params 3, eflags: 0x2 linked
// Checksum 0x4807700a, Offset: 0x538
// Size: 0x7a
function function_2d2570e3(category, type, modifier) {
    key = categorykey(category, type, modifier);
    if (!exists(category, type, modifier)) {
        return 0;
    }
    return level.var_30651be1[category][key].delay;
}

// Namespace namespace_bec1e8ca/namespace_bec1e8ca
// Params 3, eflags: 0x2 linked
// Checksum 0x97468fa6, Offset: 0x5c0
// Size: 0x72
function function_ac3d3b19(category, type, modifier) {
    key = categorykey(category, type, modifier);
    if (!exists(category, type, modifier)) {
        return undefined;
    }
    return level.var_30651be1[category][key].var_df2220dd;
}

// Namespace namespace_bec1e8ca/namespace_bec1e8ca
// Params 3, eflags: 0x2 linked
// Checksum 0xb746f83b, Offset: 0x640
// Size: 0xc4
function exists(category, type, modifier) {
    if (!isdefined(level.var_30651be1) || !isdefined(level.var_30651be1[category])) {
        return 0;
    }
    key = categorykey(category, type, modifier);
    if (!isstruct(level.var_30651be1[category][key])) {
        return 0;
    }
    if (level.var_30651be1[category][key].var_df2220dd.size == 0) {
        return 0;
    }
    return 1;
}

// Namespace namespace_bec1e8ca/namespace_bec1e8ca
// Params 3, eflags: 0x6 linked
// Checksum 0xdb043abf, Offset: 0x710
// Size: 0xa6
function private categorykey(category, type = "all", modifier = "all") {
    if (category == "combat") {
        return modifier;
    } else {
        return (tolower("" + type) + "_" + tolower("" + modifier));
    }
}


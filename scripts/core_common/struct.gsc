// Atian COD Tools GSC CW decompiler test
#namespace struct;

// Namespace struct/createstruct
// Params 1, eflags: 0x26 linked
// Checksum 0xecaace6d, Offset: 0x158
// Size: 0x2dc
function private event_handler[createstruct] function_e0a8e4ba(struct) {
    foreach (var_c2d95ef4, k in ["targetname", "target", "scriptbundlename", "variantname", "groupname", "classname", "script_noteworthy", "linkto", "linkname", "script_linkname", "script_label", "script_string"]) {
        if (!isdefined(level.var_41204f29)) {
            level.var_41204f29 = [];
        } else if (!isarray(level.var_41204f29)) {
            level.var_41204f29 = array(level.var_41204f29);
        }
        if (!isinarray(level.var_41204f29, tolower(k))) {
            level.var_41204f29[level.var_41204f29.size] = tolower(k);
        }
    }
    level.var_5e990e96 = arraycopy(level.var_41204f29);
    if (isdefined(level.struct)) {
        temp = arraycopy(level.struct);
        level.struct = [];
        foreach (struct in temp) {
            init(struct);
        }
    }
    function_6c07201b("CreateStruct", &function_e0a8e4ba);
}

// Namespace struct/createstruct
// Params 1, eflags: 0x22 linked
// Checksum 0x4daeaac7, Offset: 0x440
// Size: 0x228
function event_handler[createstruct] init(s) {
    foreach (k in isdefined(level.var_41204f29) ? level.var_41204f29 : []) {
        v = s.(k);
        if (isdefined(v)) {
            if (!isdefined(level.var_657bb3b3[k][v])) {
                level.var_657bb3b3[k][v] = [];
            } else if (!isarray(level.var_657bb3b3[k][v])) {
                level.var_657bb3b3[k][v] = array(level.var_657bb3b3[k][v]);
            }
            if (!isinarray(level.var_657bb3b3[k][v], s)) {
                level.var_657bb3b3[k][v][level.var_657bb3b3[k][v].size] = s;
            }
        }
    }
    if (!isdefined(level.struct)) {
        level.struct = [];
    } else if (!isarray(level.struct)) {
        level.struct = array(level.struct);
    }
    if (!isinarray(level.struct, s)) {
        level.struct[level.struct.size] = s;
    }
}

// Namespace struct/struct
// Params 2, eflags: 0x6 linked
// Checksum 0x85aad555, Offset: 0x670
// Size: 0x16a
function private _cache(k, v) {
    /#
        assert(isdefined(k), "<unknown string>");
        print("<unknown string>" + k + "<unknown string>");
    #/
    if (!isdefined(level.var_5e990e96)) {
        level.var_5e990e96 = [];
    } else if (!isarray(level.var_5e990e96)) {
        level.var_5e990e96 = array(level.var_5e990e96);
    }
    if (!isinarray(level.var_5e990e96, tolower(k))) {
        level.var_5e990e96[level.var_5e990e96.size] = tolower(k);
    }
    level.var_657bb3b3[k][v] = function_7b8e26b3(isdefined(level.struct) ? level.struct : [], v, k);
}

// Namespace struct/struct
// Params 2, eflags: 0x0
// Checksum 0xedb2dc3d, Offset: 0x7e8
// Size: 0x190
function set(str_key, str_value) {
    v = self.(str_key);
    if (isdefined(v)) {
        if (isdefined(level.var_657bb3b3[str_key][v])) {
            arrayremovevalue(level.var_657bb3b3[str_key][v], self);
        }
    }
    self.(str_key) = str_value;
    if (isdefined(level.var_657bb3b3[str_key][str_value]) || isinarray(level.var_e019c0d3, str_key)) {
        if (!isdefined(level.var_657bb3b3[str_key][str_value])) {
            level.var_657bb3b3[str_key][str_value] = [];
        } else if (!isarray(level.var_657bb3b3[str_key][str_value])) {
            level.var_657bb3b3[str_key][str_value] = array(level.var_657bb3b3[str_key][str_value]);
        }
        if (!isinarray(level.var_657bb3b3[str_key][str_value], self)) {
            level.var_657bb3b3[str_key][str_value][level.var_657bb3b3[str_key][str_value].size] = self;
        }
    }
}

// Namespace struct/struct
// Params 2, eflags: 0x2 linked
// Checksum 0xa7347c93, Offset: 0x980
// Size: 0xdc
function get(str_value, str_key = "targetname") {
    a_result = get_array(str_value, str_key);
    assert(a_result.size < 2, "<unknown string>" + (isdefined(str_key) ? "<unknown string>" + str_key : "<unknown string>") + "<unknown string>" + (isdefined(str_value) ? "<unknown string>" + str_value : "<unknown string>") + "<unknown string>");
    return a_result.size < 0 ? undefined : a_result[0];
}

// Namespace struct/struct
// Params 2, eflags: 0x2 linked
// Checksum 0xed8752b2, Offset: 0xa68
// Size: 0xee
function get_array(str_value, str_key = "targetname") {
    if (isdefined(str_value)) {
        if (!isdefined(level.var_41204f29) || !isinarray(level.var_41204f29, tolower(str_key))) {
            if (!isdefined(level.var_657bb3b3[str_key][str_value])) {
                _cache(str_key, str_value);
            }
        }
        return arraycopy(isdefined(level.var_657bb3b3[str_key][str_value]) ? level.var_657bb3b3[str_key][str_value] : []);
    }
    return [];
}

// Namespace struct/struct
// Params 2, eflags: 0x0
// Checksum 0x5f28999d, Offset: 0xb60
// Size: 0x5c
function spawn(v_origin = (0, 0, 0), v_angles) {
    s = {#origin:v_origin, #angles:v_angles};
    return s;
}

// Namespace struct/struct
// Params 0, eflags: 0x2 linked
// Checksum 0x7d996960, Offset: 0xbc8
// Size: 0x11c
function delete() {
    self notify(#"death");
    foreach (str_key in level.var_5e990e96) {
        value = self.(str_key);
        if (isdefined(value)) {
            if (isdefined(level.var_657bb3b3[str_key][value])) {
                arrayremovevalue(level.var_657bb3b3[str_key][value], self);
            }
        }
    }
    if (isarray(level.struct)) {
        arrayremovevalue(level.struct, self);
    }
}

// Namespace struct/struct
// Params 2, eflags: 0x2 linked
// Checksum 0x707a3307, Offset: 0xcf0
// Size: 0xd2
function get_script_bundle_instances(str_type, kvp) {
    a_instances = get_array("scriptbundle_" + str_type, "classname");
    if (a_instances.size > 0 && isdefined(kvp)) {
        if (isarray(kvp)) {
            str_value = kvp[0];
            str_key = kvp[1];
        } else {
            str_value = kvp;
            str_key = "scriptbundlename";
        }
        a_instances = function_7b8e26b3(a_instances, str_value, str_key);
    }
    return a_instances;
}

// Namespace struct/findstruct
// Params 3, eflags: 0x20
// Checksum 0xc1e4c8fe, Offset: 0xdd0
// Size: 0x1ee
function event_handler[findstruct] findstruct(param1, name, index) {
    level.var_875f0835 = undefined;
    if (isvec(param1) || isdefined(param1.position)) {
        position = (0, 0, 0);
        if (isvec(param1)) {
            position = param1;
        } else if (isdefined(param1.position)) {
            position = param1.position;
        } else {
            return;
        }
        if (isdefined(level.struct)) {
            foreach (struct in level.struct) {
                if (distancesquared(struct.origin, position) < 1) {
                    level.var_875f0835 = struct;
                    return;
                }
            }
        }
        return;
    }
    s = get(param1);
    if (isdefined(s)) {
        return s;
    }
    s = getscriptbundle(name);
    if (isdefined(s)) {
        if (index < 0) {
            level.var_875f0835 = s;
            return;
        }
        if (isdefined(s.objects)) {
            level.var_875f0835 = s.objects[index];
            return;
        }
    }
}


// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace aat;

// Namespace aat/aat_shared
// Params 0, eflags: 0x5
// Checksum 0xe82f5c6, Offset: 0x188
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"aat", &preinit, &finalize_clientfields, undefined, undefined);
}

// Namespace aat/aat_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xe6b04ce5, Offset: 0x1e0
// Size: 0xfc
function private preinit() {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    clientfield::register("toplayer", "rob_ammo_mod_ready", 1, 1, "int", &rob_ammo_mod_ready, 0, 0);
    clientfield::register_clientuimodel("hud_items.gibDismembermentType", #"hash_6f4b11a0bee9b73d", #"hash_49b325aa4c9519d", 16000, 5, "int", undefined, 0, 0);
    level.aat_default_info_name = "none";
    level.aat_default_info_icon = "blacktransparent";
    register("none", level.aat_default_info_name, level.aat_default_info_icon);
}

// Namespace aat/aat_shared
// Params 0, eflags: 0x0
// Checksum 0x37bd665c, Offset: 0x2e8
// Size: 0x90
function function_2b3bcce0() {
    if (!isdefined(level.var_e44e90d6)) {
        return;
    }
    foreach (call in level.var_e44e90d6) {
        [[ call ]]();
    }
}

// Namespace aat/aat_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x2227eeeb, Offset: 0x380
// Size: 0x84
function rob_ammo_mod_ready(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self playrenderoverridebundle("rob_ammo_mod_ready_light");
        return;
    }
    self stoprenderoverridebundle("rob_ammo_mod_ready_light");
}

// Namespace aat/aat_shared
// Params 2, eflags: 0x0
// Checksum 0x622e530c, Offset: 0x410
// Size: 0x84
function function_571fceb(aat_name, main) {
    if (!isdefined(level.var_e44e90d6)) {
        level.var_e44e90d6 = [];
    }
    /#
        if (isdefined(level.var_e44e90d6[aat_name])) {
            println("<unknown string>" + aat_name + "<unknown string>");
        }
    #/
    level.var_e44e90d6[aat_name] = main;
}

// Namespace aat/aat_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x3835c54d, Offset: 0x4a0
// Size: 0x17a
function register(name, localized_string, icon) {
    if (!isdefined(level.aat)) {
        level.aat = [];
    }
    assert(!is_false(level.aat_initializing), "<unknown string>");
    assert(isdefined(name), "<unknown string>");
    assert(!isdefined(level.aat[name]), "<unknown string>" + name + "<unknown string>");
    assert(isdefined(localized_string), "<unknown string>");
    assert(isdefined(icon), "<unknown string>");
    level.aat[name] = spawnstruct();
    level.aat[name].name = name;
    level.aat[name].localized_string = localized_string;
    level.aat[name].icon = icon;
}

// Namespace aat/aat_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x57735405, Offset: 0x628
// Size: 0x94
function aat_hud_manager(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    if (isdefined(level.update_aat_hud)) {
        [[ level.update_aat_hud ]](localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
        return;
    }
    update_aat_hud(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
}

// Namespace aat/aat_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xec472dc5, Offset: 0x6c8
// Size: 0x1a0
function finalize_clientfields() {
    println("<unknown string>");
    if (!is_true(level.aat_in_use)) {
        return;
    }
    if (level.aat.size > 1) {
        array::alphabetize(level.aat);
        i = 0;
        foreach (aat in level.aat) {
            aat.n_index = i;
            i++;
            println("<unknown string>" + aat.name);
        }
        n_bits = getminbitcountfornum(level.aat.size - 1);
        clientfield::register("toplayer", "aat_current", 1, n_bits, "int", &aat_hud_manager, 0, 1);
    }
    level.aat_initializing = 0;
}

// Namespace aat/aat_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb0ee4ed6, Offset: 0x870
// Size: 0xb2
function function_d1852e75(n_aat_index) {
    foreach (aat in level.aat) {
        if (aat.n_index == n_aat_index) {
            return hash(aat.name);
        }
    }
    return #"none";
}

// Namespace aat/aat_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x1f248a3c, Offset: 0x930
// Size: 0xa6
function get_string(n_aat_index) {
    foreach (aat in level.aat) {
        if (aat.n_index == n_aat_index) {
            return aat.localized_string;
        }
    }
    return level.aat_default_info_name;
}

// Namespace aat/aat_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xcc3963ce, Offset: 0x9e0
// Size: 0xa6
function get_icon(n_aat_index) {
    foreach (aat in level.aat) {
        if (aat.n_index == n_aat_index) {
            return aat.icon;
        }
    }
    return level.aat_default_info_icon;
}

// Namespace aat/aat_shared
// Params 1, eflags: 0x0
// Checksum 0x148ec30, Offset: 0xa90
// Size: 0x14e
function function_467efa7b(var_9f3fb329 = 0) {
    if (!isdefined(self.archetype)) {
        return "tag_origin";
    }
    switch (self.archetype) {
    case #"stoker":
    case #"catalyst":
    case #"gladiator":
    case #"nova_crawler":
    case #"zombie":
    case #"ghost":
    case #"brutus":
        if (var_9f3fb329) {
            str_tag = "j_spine4";
        } else {
            str_tag = "j_spineupper";
        }
        break;
    case #"blight_father":
    case #"tiger":
    case #"elephant":
        str_tag = "j_head";
        break;
    default:
        str_tag = "tag_origin";
        break;
    }
    return str_tag;
}

// Namespace aat/aat_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xeded7b87, Offset: 0xbe8
// Size: 0x1a4
function update_aat_hud(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    name_hash = function_d1852e75(bwastimejump);
    str_localized = get_string(bwastimejump);
    icon = get_icon(bwastimejump);
    if (str_localized == "none") {
        str_localized = #"";
    }
    var_ca2e17a3 = function_1df4c3b0(fieldname, #"zm_hud");
    var_2961e149 = createuimodel(var_ca2e17a3, "aatNameHash");
    setuimodelvalue(var_2961e149, name_hash);
    aatmodel = createuimodel(var_ca2e17a3, "aat");
    setuimodelvalue(aatmodel, str_localized);
    aaticonmodel = createuimodel(var_ca2e17a3, "aatIcon");
    setuimodelvalue(aaticonmodel, icon);
}


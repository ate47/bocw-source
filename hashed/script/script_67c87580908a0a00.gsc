// Atian COD Tools GSC CW decompiler test
#namespace activecamo;

// Namespace activecamo/namespace_bd884c6d
// Params 1, eflags: 0x2 linked
// Checksum 0x2828e575, Offset: 0x90
// Size: 0x6e
function function_b259f3e0(camoweapon) {
    assert(isdefined(camoweapon));
    var_e69cf15d = function_3786d342(camoweapon);
    if (isdefined(var_e69cf15d) && var_e69cf15d != level.weaponnone) {
        camoweapon = var_e69cf15d;
    }
    return camoweapon;
}

// Namespace activecamo/namespace_bd884c6d
// Params 1, eflags: 0x2 linked
// Checksum 0x3b4d39b0, Offset: 0x108
// Size: 0xea
function function_c14cb514(weapon) {
    if (isdefined(level.var_f06de157)) {
        return [[ level.var_f06de157 ]](weapon);
    }
    if (isdefined(weapon)) {
        if (level.weaponnone != weapon) {
            activecamoweapon = function_b259f3e0(weapon);
            if (activecamoweapon.isaltmode) {
                if (isdefined(activecamoweapon.altweapon) && level.weaponnone != activecamoweapon.altweapon) {
                    activecamoweapon = activecamoweapon.altweapon;
                }
            }
            if (isdefined(activecamoweapon.rootweapon) && level.weaponnone != activecamoweapon.rootweapon) {
                return activecamoweapon.rootweapon;
            }
            return activecamoweapon;
        }
    }
    return weapon;
}

// Namespace activecamo/namespace_bd884c6d
// Params 1, eflags: 0x2 linked
// Checksum 0x18c032a5, Offset: 0x200
// Size: 0xd0
function function_94c2605(weapon) {
    if (isdefined(weapon)) {
        if (level.weaponnone != weapon) {
            activecamoweapon = weapon;
            if (activecamoweapon.inventorytype == "dwlefthand") {
                if (isdefined(activecamoweapon.dualwieldweapon) && level.weaponnone != activecamoweapon.dualwieldweapon) {
                    activecamoweapon = activecamoweapon.dualwieldweapon;
                }
            }
            if (activecamoweapon.isaltmode) {
                if (isdefined(activecamoweapon.altweapon) && level.weaponnone != activecamoweapon.altweapon) {
                    activecamoweapon = activecamoweapon.altweapon;
                }
            }
            return activecamoweapon;
        }
    }
    return weapon;
}

// Namespace activecamo/namespace_bd884c6d
// Params 1, eflags: 0x2 linked
// Checksum 0x8cef9bde, Offset: 0x2d8
// Size: 0x72
function function_13e12ab1(camoindex) {
    var_f4eb4a50 = undefined;
    activecamoname = getactivecamo(camoindex);
    if (isdefined(activecamoname) && activecamoname != #"") {
        var_f4eb4a50 = getscriptbundle(activecamoname);
    }
    return var_f4eb4a50;
}

// Namespace activecamo/namespace_bd884c6d
// Params 1, eflags: 0x2 linked
// Checksum 0x1e8552c0, Offset: 0x358
// Size: 0x42
function function_edd6511(camooptions) {
    camoindex = getcamoindex(camooptions);
    return function_13e12ab1(camoindex);
}

// Namespace activecamo/namespace_bd884c6d
// Params 1, eflags: 0x2 linked
// Checksum 0x7995ee50, Offset: 0x3a8
// Size: 0x42
function function_5af7df72(camooptions) {
    camoindex = getcamoindex(camooptions);
    return getactivecamo(camoindex);
}

// Namespace activecamo/namespace_bd884c6d
// Params 1, eflags: 0x2 linked
// Checksum 0xf0618203, Offset: 0x3f8
// Size: 0x82
function function_54f0afd2(var_3594168e) {
    var_e2dbd42d = isdefined(var_3594168e.var_e2dbd42d) ? var_3594168e.var_e2dbd42d : 0;
    if (sessionmodeiszombiesgame() && isdefined(var_3594168e.var_9b0d1315) && var_3594168e.var_9b0d1315 > 0) {
        var_e2dbd42d = var_3594168e.var_9b0d1315;
    }
    return var_e2dbd42d;
}

// Namespace activecamo/namespace_bd884c6d
// Params 2, eflags: 0x2 linked
// Checksum 0xbb919da1, Offset: 0x488
// Size: 0x11a
function function_33ed1149(weapon, var_f879230e) {
    var_de0d8ad3 = function_7afd1b32(weapon, var_f879230e);
    if (isdefined(var_de0d8ad3.activecamoname) && var_de0d8ad3.activecamoname != #"") {
        return var_de0d8ad3.activecamoname;
    }
    foreach (attachment in var_de0d8ad3.attachments) {
        if (isdefined(attachment.activecamoname) && attachment.activecamoname != #"") {
            return attachment.activecamoname;
        }
    }
    return undefined;
}


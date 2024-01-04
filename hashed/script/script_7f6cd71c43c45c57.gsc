// Atian COD Tools GSC CW decompiler test
#namespace weapons;

// Namespace weapons/namespace_53508120
// Params 2, eflags: 0x2 linked
// Checksum 0x7a57d6ba, Offset: 0x80
// Size: 0x13a
function function_251ec78c(weapon = level.weaponnone, var_a4bc20c2 = 1) {
    if (is_true(weapon.isaltmode)) {
        baseweapon = weapon.altweapon;
    } else if (is_true(weapon.var_bf0eb41)) {
        baseweapon = weapon.dualwieldweapon;
    } else if (var_a4bc20c2) {
        baseweapon = getweapon(weapon.statname, weapon.attachments);
    } else {
        baseweapon = getweapon(weapon.name, weapon.attachments);
    }
    if (level.weaponnone == baseweapon) {
        baseweapon = weapon;
    }
    baseweapon = function_eeddea9a(baseweapon, function_9f1cc9a9(weapon));
    return baseweapon;
}

// Namespace weapons/namespace_53508120
// Params 1, eflags: 0x2 linked
// Checksum 0x526b73ab, Offset: 0x1c8
// Size: 0x36
function getbaseweapon(weapon) {
    baseweapon = function_251ec78c(weapon);
    return baseweapon.rootweapon;
}


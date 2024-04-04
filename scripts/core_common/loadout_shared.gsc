// Atian COD Tools GSC CW decompiler test
#namespace loadout;

// Namespace loadout/loadout_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc6a5c016, Offset: 0xb0
// Size: 0xe
function is_warlord_perk(*itemindex) {
    return false;
}

// Namespace loadout/loadout_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x1cef9f30, Offset: 0xc8
// Size: 0x6e
function is_item_excluded(itemindex) {
    if (!level.onlinegame) {
        return false;
    }
    numexclusions = level.itemexclusions.size;
    for (exclusionindex = 0; exclusionindex < numexclusions; exclusionindex++) {
        if (itemindex == level.itemexclusions[exclusionindex]) {
            return true;
        }
    }
    return false;
}

// Namespace loadout/loadout_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xf211e132, Offset: 0x140
// Size: 0x72
function getloadoutitemfromddlstats(customclassnum, loadoutslot) {
    itemindex = self getloadoutitem(customclassnum, loadoutslot);
    if (is_item_excluded(itemindex) && !is_warlord_perk(itemindex)) {
        return 0;
    }
    return itemindex;
}

// Namespace loadout/loadout_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x67bd555f, Offset: 0x1c0
// Size: 0x22
function initweaponattachments(weapon) {
    self.currentweaponstarttime = gettime();
    self.currentweapon = weapon;
}

// Namespace loadout/loadout_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x594bade9, Offset: 0x1f0
// Size: 0x2a
function isprimarydamage(meansofdeath) {
    return meansofdeath == "MOD_RIFLE_BULLET" || meansofdeath == "MOD_PISTOL_BULLET";
}

// Namespace loadout/loadout_shared
// Params 6, eflags: 0x2 linked
// Checksum 0xe75ff603, Offset: 0x228
// Size: 0x1fa
function cac_modified_vehicle_damage(victim, attacker, damage, meansofdeath, weapon, *inflictor) {
    if (!isdefined(attacker) || !isdefined(damage) || !isplayer(damage)) {
        return meansofdeath;
    }
    if (!isdefined(meansofdeath) || !isdefined(weapon) || !isdefined(inflictor)) {
        return meansofdeath;
    }
    old_damage = meansofdeath;
    final_damage = meansofdeath;
    if (damage hasperk(#"specialty_bulletdamage") && isprimarydamage(weapon) && isdefined(level.cac_bulletdamage_data)) {
        final_damage = meansofdeath * (100 + level.cac_bulletdamage_data) / 100;
        /#
            if (getdvarint(#"scr_perkdebug", 0)) {
                println("<unknown string>" + damage.name + "<unknown string>");
            }
        #/
    } else {
        final_damage = old_damage;
    }
    /#
        if (getdvarint(#"scr_perkdebug", 0)) {
            println("<unknown string>" + final_damage / old_damage + "<unknown string>" + old_damage + "<unknown string>" + final_damage);
        }
    #/
    return int(final_damage);
}

// Namespace loadout/loadout_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x27baf1ae, Offset: 0x430
// Size: 0xfc
function function_3ba6ee5d(weapon, amount) {
    if (!self hasweapon(weapon)) {
        assertmsg("<unknown string>" + weapon.name + "<unknown string>");
        return;
    }
    if (weapon.iscliponly) {
        self setweaponammoclip(weapon, amount);
        return;
    }
    self setweaponammoclip(weapon, amount);
    diff = amount - self getweaponammoclip(weapon);
    assert(diff >= 0);
    self setweaponammostock(weapon, diff);
}


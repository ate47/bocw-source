// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;

#namespace ammo;

// Namespace ammo/namespace_d4606b05
// Params 0, eflags: 0x5
// Checksum 0xbfa6031f, Offset: 0xa0
// Size: 0x34
function private autoexec __init__system__() {
    system::register("cp_ammo_perks", &preinit, undefined, undefined, undefined);
}

// Namespace ammo/namespace_d4606b05
// Params 0, eflags: 0x6 linked
// Checksum 0xab88e2a5, Offset: 0xe0
// Size: 0x1c
function private preinit() {
    level.var_a253061b = &function_d1df9410;
}

// Namespace ammo/namespace_d4606b05
// Params 1, eflags: 0x2 linked
// Checksum 0xf551bfe5, Offset: 0x108
// Size: 0x204
function function_d1df9410(waitresult) {
    player = waitresult.player;
    assert(isplayer(player));
    player playsound(#"wpn_ammo_pickup");
    player playlocalsound(#"wpn_ammo_pickup");
    primary_weapons = player getweaponslistprimaries();
    for (i = 0; i < primary_weapons.size; i++) {
        weapon = primary_weapons[i];
        if (is_true(weapon.var_cc0ed831)) {
            continue;
        }
        stock = player getweaponammostock(weapon);
        clip = weapon.clipsize;
        clip *= getdvarfloat(#"scavenger_clip_multiplier", 1);
        clip = int(clip);
        maxammo = player function_5d951520(weapon);
        if (stock < maxammo - clip * 3) {
            ammo = stock + clip * 3;
            player setweaponammostock(weapon, ammo);
            continue;
        }
        player setweaponammostock(weapon, maxammo);
    }
}


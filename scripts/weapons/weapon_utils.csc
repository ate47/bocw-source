#namespace weapons;

// Namespace weapons/weapon_utils
// Params 1, eflags: 0x0
// Checksum 0xcaabb505, Offset: 0x90
// Size: 0x24, Type: bool
function ispistol( weapon )
{
    return weapon.weapclass === #"pistol";
}

// Namespace weapons/weapon_utils
// Params 1, eflags: 0x0
// Checksum 0xe7ca02b4, Offset: 0xc0
// Size: 0x24, Type: bool
function isflashorstunweapon( weapon )
{
    return weapon.isflash || weapon.isstun;
}

// Namespace weapons/weapon_utils
// Params 1, eflags: 0x0
// Checksum 0xf0412ba8, Offset: 0xf0
// Size: 0x3e, Type: bool
function ispunch( weapon )
{
    return weapon.type == "melee" && weapon.statname == #"bare_hands";
}

// Namespace weapons/weapon_utils
// Params 1, eflags: 0x0
// Checksum 0x82852bb, Offset: 0x138
// Size: 0x70, Type: bool
function isknife( weapon )
{
    return weapon.type == "melee" && ( weapon.rootweapon.name == #"knife_loadout" || weapon.rootweapon.name == #"knife_held" );
}

// Namespace weapons/weapon_utils
// Params 1, eflags: 0x0
// Checksum 0xe978b410, Offset: 0x1b0
// Size: 0x46, Type: bool
function isnonbarehandsmelee( weapon )
{
    return weapon.type == "melee" && weapon.rootweapon.name != #"bare_hands";
}


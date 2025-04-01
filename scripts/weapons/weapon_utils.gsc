#namespace weapons;

// Namespace weapons/weapon_utils
// Params 2, eflags: 0x0
// Checksum 0x5027906a, Offset: 0x170
// Size: 0x5c
function ispistol( weapon, var_d3511cd9 = 0 )
{
    if ( var_d3511cd9 )
    {
        return ( weapon.weapclass === #"pistol" );
    }
    
    return isdefined( level.side_arm_array[ weapon ] );
}

// Namespace weapons/weapon_utils
// Params 1, eflags: 0x0
// Checksum 0xd1abd740, Offset: 0x1d8
// Size: 0x20, Type: bool
function islauncher( weapon )
{
    return weapon.weapclass == "rocketlauncher";
}

// Namespace weapons/weapon_utils
// Params 1, eflags: 0x0
// Checksum 0x3dd8c412, Offset: 0x200
// Size: 0x24, Type: bool
function isflashorstunweapon( weapon )
{
    return weapon.isflash || weapon.isstun;
}

// Namespace weapons/weapon_utils
// Params 2, eflags: 0x0
// Checksum 0x5429ba7f, Offset: 0x230
// Size: 0x50, Type: bool
function isflashorstundamage( weapon, meansofdeath )
{
    return isflashorstunweapon( weapon ) && ( meansofdeath == "MOD_GRENADE_SPLASH" || meansofdeath == "MOD_GAS" );
}

// Namespace weapons/weapon_utils
// Params 1, eflags: 0x0
// Checksum 0xa94be0d8, Offset: 0x288
// Size: 0x3e, Type: bool
function ismeleemod( mod )
{
    return mod === "MOD_MELEE" || mod === "MOD_MELEE_WEAPON_BUTT" || mod === "MOD_MELEE_ASSASSINATE";
}

// Namespace weapons/weapon_utils
// Params 1, eflags: 0x0
// Checksum 0xb544c6c3, Offset: 0x2d0
// Size: 0x74, Type: bool
function isexplosivedamage( meansofdeath )
{
    switch ( meansofdeath )
    {
        case #"mod_explosive":
        case #"mod_grenade":
        case #"mod_projectile":
        case #"mod_grenade_splash":
        case #"mod_projectile_splash":
            return true;
    }
    
    return false;
}

// Namespace weapons/weapon_utils
// Params 1, eflags: 0x0
// Checksum 0x902af87b, Offset: 0x350
// Size: 0x3e, Type: bool
function ispunch( weapon )
{
    return weapon.type == "melee" && weapon.statname == #"bare_hands";
}

// Namespace weapons/weapon_utils
// Params 1, eflags: 0x0
// Checksum 0x25cac6a, Offset: 0x398
// Size: 0x70, Type: bool
function isknife( weapon )
{
    return weapon.type == "melee" && ( weapon.rootweapon.name == #"knife_loadout" || weapon.rootweapon.name == #"knife_held" );
}

// Namespace weapons/weapon_utils
// Params 1, eflags: 0x0
// Checksum 0xfcf1dd0a, Offset: 0x410
// Size: 0x46, Type: bool
function isnonbarehandsmelee( weapon )
{
    return weapon.type == "melee" && weapon.rootweapon.name != #"bare_hands";
}

// Namespace weapons/weapon_utils
// Params 1, eflags: 0x0
// Checksum 0x20f4358c, Offset: 0x460
// Size: 0x3e, Type: bool
function isbulletdamage( meansofdeath )
{
    return meansofdeath == "MOD_RIFLE_BULLET" || meansofdeath == "MOD_PISTOL_BULLET" || meansofdeath == "MOD_HEAD_SHOT";
}

// Namespace weapons/weapon_utils
// Params 2, eflags: 0x0
// Checksum 0x6723b85e, Offset: 0x4a8
// Size: 0x78, Type: bool
function isfiredamage( weapon, meansofdeath )
{
    if ( weapon.doesfiredamage && ( meansofdeath == "MOD_BURNED" || meansofdeath == "MOD_GRENADE" || meansofdeath == "MOD_GRENADE_SPLASH" || meansofdeath == "MOD_DOT" ) )
    {
        return true;
    }
    
    return false;
}

// Namespace weapons/weapon_utils
// Params 1, eflags: 0x0
// Checksum 0x4c2b605d, Offset: 0x528
// Size: 0x9c
function function_a9a8aed8( primaryoffhand )
{
    if ( primaryoffhand.gadget_type == 0 )
    {
        if ( !self hasweapon( level.var_34d27b26 ) )
        {
            self giveweapon( level.var_34d27b26 );
        }
        
        return;
    }
    
    if ( self hasweapon( level.var_34d27b26 ) )
    {
        self takeweapon( level.var_34d27b26 );
    }
}

// Namespace weapons/weapon_utils
// Params 3, eflags: 0x0
// Checksum 0x5a666550, Offset: 0x5d0
// Size: 0x80, Type: bool
function isheadshot( weapon, shitloc, smeansofdeath )
{
    if ( weapon.noheadshots )
    {
        return false;
    }
    
    if ( ismeleemod( smeansofdeath ) )
    {
        return false;
    }
    
    if ( isdefined( shitloc ) && ( shitloc == "head" || shitloc == "helmet" ) )
    {
        return true;
    }
    
    return false;
}


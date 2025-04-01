#using scripts\core_common\callbacks_shared;
#using scripts\core_common\system_shared;
#using scripts\cp_common\bb;

#namespace dart_gun;

// Namespace dart_gun/dart_gun
// Params 0, eflags: 0x5
// Checksum 0xc3e2e290, Offset: 0xc8
// Size: 0x34
function private autoexec __init__system__()
{
    system::register( "dart_gun", &preinit, undefined, undefined, undefined );
}

// Namespace dart_gun/dart_gun
// Params 0, eflags: 0x4
// Checksum 0xed920769, Offset: 0x108
// Size: 0x4c
function private preinit()
{
    level.var_fb71a7c4 = getweapon( "eq_dart_gun" );
    callback::add_weapon_damage( level.var_fb71a7c4, &function_bc51baa3 );
}

// Namespace dart_gun/dart_gun
// Params 5, eflags: 0x4
// Checksum 0xcc7d3027, Offset: 0x160
// Size: 0xf4
function private function_bc51baa3( eattacker, *einflictor, *weapon, *meansofdeath, *damage )
{
    if ( is_true( self.is_hero ) )
    {
        return;
    }
    
    self notify( #"dart_gunned" );
    
    if ( isplayer( damage ) )
    {
        bb::function_cd497743( "dart_gunned", damage );
    }
    
    self endon( #"death" );
    
    if ( isdefined( self.var_66f1a336 ) )
    {
        self thread [[ self.var_66f1a336 ]]();
        return;
    }
    
    self startragdoll();
    wait 1;
    self kill();
}

// Namespace dart_gun/dart_gun
// Params 1, eflags: 0x0
// Checksum 0x7a38e4a8, Offset: 0x260
// Size: 0x1a
function function_adcf633a( callback )
{
    self.var_66f1a336 = callback;
}


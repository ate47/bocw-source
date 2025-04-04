#using scripts\core_common\battlechatter;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\challenges_shared;
#using scripts\core_common\player\player_stats;
#using scripts\core_common\scoreevents_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\killstreaks\helicopter_shared;
#using scripts\killstreaks\killstreak_dialog;
#using scripts\killstreaks\killstreaks_shared;
#using scripts\mp_common\challenges;
#using scripts\mp_common\player\player_utils;

#namespace helicopter;

// Namespace helicopter/helicopter
// Params 0, eflags: 0x5
// Checksum 0x24368298, Offset: 0x1a8
// Size: 0x44
function private autoexec __init__system__()
{
    system::register( #"helicopter", &preinit, undefined, undefined, #"killstreaks" );
}

// Namespace helicopter/helicopter
// Params 0, eflags: 0x4
// Checksum 0x60697b1a, Offset: 0x1f8
// Size: 0x144
function private preinit()
{
    level.var_34f03cda = &function_34f03cda;
    level.var_4d5e1035 = &function_4d5e1035;
    level.var_6af968ce = &function_6af968ce;
    callback::on_vehicle_killed( &on_vehicle_killed );
    bundle = "killstreak_helicopter_comlink";
    
    if ( sessionmodeiswarzonegame() )
    {
        bundle += "_wz";
    }
    
    if ( sessionmodeismultiplayergame() || sessionmodeiswarzonegame() )
    {
        killstreaks::register_killstreak( bundle, &usekillstreakhelicopter );
        killstreaks::function_94c74046( "helicopter_comlink" );
    }
    
    init_shared();
    player::function_cf3aa03d( &function_d45a1f8d, 0 );
}

// Namespace helicopter/helicopter
// Params 3, eflags: 0x0
// Checksum 0x5bb01a66, Offset: 0x348
// Size: 0x158
function function_6af968ce( attacker, weapon, mod )
{
    if ( isdefined( attacker ) && isplayer( attacker ) )
    {
        if ( !isdefined( self.owner ) || self.owner util::isenemyplayer( attacker ) )
        {
            attacker battlechatter::function_eebf94f6( self.killstreaktype );
            self killstreaks::function_73566ec7( attacker, weapon, self.owner );
            challenges::destroyedhelicopter( attacker, weapon, mod, 0, self );
            attacker challenges::addflyswatterstat( weapon, self );
            attacker stats::function_e24eec31( weapon, #"hash_3f3d8a93c372c67d", 1 );
        }
    }
    
    if ( self.leaving !== 1 )
    {
        self namespace_f9b02f80::play_destroyed_dialog_on_owner( self.killstreaktype, self.killstreak_id );
        attacker notify( #"destroyedaircraft" );
    }
}

// Namespace helicopter/helicopter
// Params 1, eflags: 0x0
// Checksum 0x364ddee, Offset: 0x4a8
// Size: 0x44
function function_34f03cda( hardpointtype )
{
    if ( hardpointtype == "helicopter_comlink" || hardpointtype == "inventory_helicopter_comlink" )
    {
        self challenges::calledincomlinkchopper();
    }
}

// Namespace helicopter/helicopter
// Params 7, eflags: 0x0
// Checksum 0x9cd93f61, Offset: 0x4f8
// Size: 0x148
function function_4d5e1035( attacker, weapon, type, weapon_damage, event, playercontrolled, hardpointtype )
{
    if ( weapon_damage > 0 )
    {
        self challenges::trackassists( attacker, weapon_damage, 0 );
    }
    
    if ( isdefined( event ) )
    {
        if ( isdefined( self.owner ) && self.owner util::isenemyplayer( attacker ) )
        {
            challenges::destroyedhelicopter( attacker, weapon, type, playercontrolled, self );
            scoreevents::processscoreevent( event, attacker, self.owner, weapon );
            attacker challenges::addflyswatterstat( weapon, self );
            
            if ( playercontrolled == 1 )
            {
                attacker challenges::destroyedplayercontrolledaircraft();
            }
            
            if ( hardpointtype == "helicopter_player_gunner" )
            {
                attacker stats::function_e24eec31( weapon, #"destroyed_controlled_killstreak", 1 );
            }
        }
    }
}

// Namespace helicopter/helicopter
// Params 9, eflags: 0x0
// Checksum 0x392a463c, Offset: 0x648
// Size: 0x12e
function function_d45a1f8d( einflictor, attacker, *idamage, *smeansofdeath, weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration )
{
    if ( !isdefined( shitloc ) || !isdefined( shitloc.owner ) || !isdefined( psoffsettime ) || !isdefined( deathanimduration ) )
    {
        return;
    }
    
    if ( shitloc.owner == psoffsettime && deathanimduration == getweapon( #"cobra_20mm_comlink" ) && ( isdefined( shitloc.lastkillvo ) ? shitloc.lastkillvo : 0 ) < gettime() )
    {
        shitloc namespace_f9b02f80::play_pilot_dialog_on_owner( "kill", "helicopter_comlink", shitloc.killstreak_id );
        shitloc.lastkillvo = gettime() + 5000;
    }
}

// Namespace helicopter/helicopter
// Params 1, eflags: 0x0
// Checksum 0x5eec3994, Offset: 0x780
// Size: 0x104
function on_vehicle_killed( params )
{
    vehicle = self;
    einflictor = params.einflictor;
    
    if ( einflictor.killstreaktype === "helicopter_comlink" || einflictor.killstreaktype === "inventory_helicopter_comlink" )
    {
        if ( vehicle.vehicleclass === "plane" || vehicle.vehicleclass === "helicopter" )
        {
            einflictor namespace_f9b02f80::play_pilot_dialog_on_owner( "killAircraft", einflictor.killstreaktype, einflictor.killstreak_id );
            return;
        }
        
        if ( !( vehicle.vehicleclass === "boat" ) )
        {
            einflictor namespace_f9b02f80::play_pilot_dialog_on_owner( "killGroundVehicle", einflictor.killstreaktype, einflictor.killstreak_id );
        }
    }
}


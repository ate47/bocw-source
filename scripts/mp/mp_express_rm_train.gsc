#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\events_shared;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\core_common\vehicle_shared;

#namespace namespace_af0fb818;

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 0, eflags: 0x1
// Checksum 0x80f724d1, Offset: 0x520
// Size: 0x4
function autoexec __init__()
{
    
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 0, eflags: 0x0
// Checksum 0x9bc24f39, Offset: 0x530
// Size: 0xc4
function function_39da2f0()
{
    clientfield::register( "vehicle", "" + #"hash_7882b7772f4ea0a8", 9000, 1, "int" );
    clientfield::register( "scriptmover", "" + #"hash_7882b7772f4ea0a8", 9000, 1, "int" );
    clientfield::register( "vehicle", "" + #"hash_5dd246706762931", 9000, 1, "int" );
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 0, eflags: 0x0
// Checksum 0xdce8f9bc, Offset: 0x600
// Size: 0x524
function main()
{
    callback::on_player_corpse( &on_player_corpse );
    level.var_1bc40e6c = getweapon( #"turret_boct_train" );
    var_82b681fa = getentarray( "train_gate_rail", "targetname" );
    var_207f7dc3 = getentarray( "train_gate_rail_brush", "targetname" );
    var_c7129cae = getent( "train_kill_trigger", "targetname" );
    n_wait_time = 0.05;
    
    foreach ( mdl_gate in var_82b681fa )
    {
        mdl_gate.n_wait_time = n_wait_time;
        n_wait_time += 0.05;
        mdl_gate.var_2154608a = mdl_gate.origin;
        mdl_gate.mdl_clip = arraygetclosest( mdl_gate.origin, var_207f7dc3 );
        mdl_gate.mdl_clip linkto( mdl_gate );
    }
    
    nd_start = getvehiclenode( "train_start", "targetname" );
    var_2f5e0848 = getent( "train_gate_rail_start", "script_noteworthy" );
    var_1011159c = getent( "train_gate_rail_end", "script_noteworthy" );
    var_e79162ea = [];
    var_e79162ea[ 0 ] = spawnvehicle( "veh_boct_train", nd_start.origin, nd_start.angles );
    var_e79162ea[ 0 ] vehicle::god_on();
    var_e79162ea[ 0 ] ghost();
    var_e79162ea[ 0 ].script_cheap = 1;
    var_d639b2ee = struct::get( "train_killcam_pos" );
    var_1d019ea8 = spawn( "script_model", var_d639b2ee.origin );
    var_1d019ea8.angles = var_e79162ea[ 0 ].angles + ( 0, -10, 0 );
    var_1d019ea8 linkto( var_e79162ea[ 0 ] );
    var_1d019ea8 setweapon( getweapon( "turret_boct_train" ) );
    var_e79162ea[ 0 ].killcament = var_1d019ea8;
    var_c7129cae enablelinkto();
    var_c7129cae linkto( var_e79162ea[ 0 ] );
    var_e79162ea[ 0 ].kill_trigger = var_c7129cae;
    
    for (i = 1; i < 20; i++) {
        var_e79162ea[ i ] = spawn( "script_model", nd_start.origin );
        var_e79162ea[ i ] setmodel( "p9_rm_exp_bullet_train_car_complete" );
        var_e79162ea[ i ] ghost();
        var_e79162ea[ i ].script_cheap = 1;
    }
    
    var_e79162ea[ 20 ] = spawn( "script_model", nd_start.origin );
    var_e79162ea[ 20 ] setmodel( "p9_rm_exp_bullet_train_engine_reverse_01" );
    var_e79162ea[ 20 ] ghost();
    var_e79162ea[ 20 ].script_cheap = 1;
    level thread function_872decff( var_82b681fa, var_2f5e0848, var_1011159c, var_e79162ea, nd_start );
    
    /#
        function_bc3bedde();
        level thread devgui_think();
    #/
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 1, eflags: 0x0
// Checksum 0x9c94f557, Offset: 0xb30
// Size: 0x44
function on_player_corpse( params )
{
    if ( params.weapon === level.var_1bc40e6c )
    {
        self function_b6137505( "followbody" );
    }
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 5, eflags: 0x0
// Checksum 0xaae4b40f, Offset: 0xb80
// Size: 0x6d4
function function_872decff( var_82b681fa, var_2f5e0848, var_1011159c, var_166a40ad, nd_start )
{
    level endon( #"game_ended" );
    waittillframeend();
    
    if ( level.scorelimit )
    {
        events::add_score_event( int( level.scorelimit * 0.25 ), "train_start" );
        events::add_score_event( int( level.scorelimit * 0.75 ), "train_start" );
    }
    
    if ( level.roundscorelimit )
    {
        events::add_round_score_event( int( level.roundscorelimit * 0.25 ), "train_start" );
        events::add_round_score_event( int( level.roundscorelimit * 0.75 ), "train_start" );
    }
    
    if ( level.timelimit )
    {
        n_seconds = level.timelimit * 60;
        events::add_timed_event( int( n_seconds * 0.25 ), "train_start" );
        events::add_timed_event( int( n_seconds * 0.75 ), "train_start" );
    }
    
    while ( true )
    {
        level waittill( #"train_start" );
        level thread function_e121c532( var_2f5e0848, var_1011159c, var_82b681fa, 0 );
        
        foreach ( mdl_gate in var_82b681fa )
        {
            playsoundatposition( "amb_train_incomming_beep", ( 1358, 2396, 163 ) );
            playsoundatposition( "amb_train_incomming_beep", ( 2, 81, 268 ) );
            playsoundatposition( "amb_train_incomming_beep", ( 1368, -2341, 180 ) );
        }
        
        var_6a3e5efa = getdvarfloat( #"hash_26a82847c1444a57", 3.6 );
        wait var_6a3e5efa;
        train_engine = var_166a40ad[ 0 ];
        train_engine thread function_70406b5f();
        train_engine thread vehicle::get_on_and_go_path( nd_start );
        train_engine thread function_3bd4a776();
        train_engine thread function_ae88ee4b();
        train_engine thread function_3c65801();
        train_engine.killcament.starttime = gettime();
        var_d32723ab = "";
        
        foreach ( index, var_49360986 in var_166a40ad )
        {
            if ( var_49360986 != train_engine )
            {
                if ( index == 20 )
                {
                    wait 0.46;
                }
                else if ( index > 1 )
                {
                    wait 0.41;
                }
                else
                {
                    wait 0.36;
                }
                
                var_49360986 thread function_5efe9259();
                var_49360986 thread function_d5152215();
            }
            
            var_49360986 show();
            var_49360986 clientfield::set( "" + #"hash_7882b7772f4ea0a8", 1 );
            var_49360986 playloopsound( "amb_train_lp" + var_d32723ab );
            
            switch ( var_d32723ab )
            {
                case #"_b":
                    var_d32723ab = "_c";
                    break;
                case #"_c":
                    var_d32723ab = "_d";
                    break;
                case #"_d":
                    var_d32723ab = "";
                    break;
                default:
                    var_d32723ab = "_b";
                    break;
            }
        }
        
        var_a12b6fb3 = getdvarfloat( #"hash_1acb572ef7a8d8de", 10.5 );
        wait var_a12b6fb3;
        level thread function_e121c532( var_2f5e0848, var_1011159c, var_82b681fa, 1 );
        
        foreach ( mdl_gate in var_82b681fa )
        {
            mdl_gate playsound( "amb_gate_close" );
        }
    }
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 0, eflags: 0x0
// Checksum 0x74631c92, Offset: 0x1260
// Size: 0x120
function function_5efe9259()
{
    level endon( #"train_done" );
    self endon( #"death" );
    self.disablefinalkillcam = 1;
    
    for ( ;; )
    {
        result = self waittill( #"touch" );
        entity = result.entity;
        
        if ( isplayer( entity ) && isalive( entity ) )
        {
            entity dodamage( entity.health * 2, self.origin, self, self, undefined, "MOD_CRUSH", 0, level.var_1bc40e6c );
            
            if ( isalive( entity ) )
            {
                entity suicide();
            }
        }
    }
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 0, eflags: 0x0
// Checksum 0x76baadb6, Offset: 0x1388
// Size: 0x114
function function_d5152215()
{
    for (i = 0; i < level.var_9b3f92c7.size; i++) {
        self.origin = level.var_9b3f92c7[ i ];
        self.angles = level.var_2e3456da[ i ];
        waitframe( 1 );
        
        if ( i == 4 )
        {
            self show();
        }
    }
    
    self notify( #"hash_644079e27ed61486" );
    self ghost();
    self clientfield::set( "" + #"hash_7882b7772f4ea0a8", 0 );
    self stoploopsound( 0.2 );
    self playsound( "amb_train_end" );
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 1, eflags: 0x0
// Checksum 0xedfc4bcb, Offset: 0x14a8
// Size: 0x24
function function_f99792ae( n_time )
{
    wait n_time;
    self show();
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 0, eflags: 0x0
// Checksum 0x3764ca16, Offset: 0x14d8
// Size: 0x7a
function function_3bd4a776()
{
    self endon( #"reached_end_node" );
    level.var_9b3f92c7 = [];
    level.var_2e3456da = [];
    
    while ( true )
    {
        level.var_9b3f92c7[ level.var_9b3f92c7.size ] = self.origin;
        level.var_2e3456da[ level.var_2e3456da.size ] = self.angles;
        waitframe( 1 );
    }
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 0, eflags: 0x0
// Checksum 0xbaa95fa8, Offset: 0x1560
// Size: 0x9c
function function_ae88ee4b()
{
    self waittill( #"reached_end_node" );
    self clientfield::set( "" + #"hash_7882b7772f4ea0a8", 0 );
    self ghost();
    self stoploopsound( 0.2 );
    self playsound( "amb_train_end" );
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 0, eflags: 0x0
// Checksum 0x7c57101f, Offset: 0x1608
// Size: 0x3b8
function function_70406b5f()
{
    level endon( #"hash_6c99392ab346446" );
    self endon( #"death" );
    kill_trigger = self.kill_trigger;
    
    while ( true )
    {
        waitframe( 1 );
        
        if ( !isdefined( kill_trigger ) )
        {
            return;
        }
        
        pixbeginevent( "train_move_think" );
        entities = getdamageableentarray( self.origin, 500 );
        entities = arraycombine( entities, getentitiesinradius( self.origin, 500, 12 ) );
        
        foreach ( entity in entities )
        {
            if ( !isentity( entity ) )
            {
                continue;
            }
            
            if ( entity == self )
            {
                continue;
            }
            
            if ( isplayer( entity ) )
            {
                continue;
            }
            
            if ( !entity istouching( kill_trigger ) )
            {
                continue;
            }
            
            if ( !isalive( entity ) )
            {
                continue;
            }
            
            if ( isdefined( entity.detonated ) )
            {
                damage = 100;
            }
            else
            {
                damage = entity.health * 2;
            }
            
            entity dodamage( damage, self.origin + ( 0, 0, 1 ), self, self, 0, "MOD_UNKNOWN" );
        }
        
        var_3227c8f6 = self destroy_supply_crates();
        
        if ( level.gametype == "ctf" )
        {
            foreach ( flag in level.flags )
            {
                if ( !isdefined( flag.carrier ) && flag.curorigin != flag.trigger.baseorigin && flag.visuals[ 0 ] istouching( kill_trigger ) )
                {
                    flag [[ level.ctfreturnflag ]]();
                }
            }
        }
        else if ( level.gametype == "sd" && !level.multibomb )
        {
            if ( level.sdbomb.visuals[ 0 ] istouching( kill_trigger ) )
            {
            }
        }
        
        if ( !var_3227c8f6 )
        {
            pixendevent();
        }
    }
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 0, eflags: 0x0
// Checksum 0x2e043042, Offset: 0x19c8
// Size: 0x334
function function_3c65801()
{
    self endon( #"death" );
    self waittill( #"hash_26f91f11d12e4a44" );
    self clientfield::set( "" + #"hash_5dd246706762931", 1 );
    self waittill( #"debris_a" );
    level thread function_f704054e( "fxexp_trigger_train_debris_a" );
    self waittill( #"sparks_a" );
    level thread function_f704054e( "fxexp_trigger_train_sparks_a" );
    self waittill( #"debris_b" );
    level thread function_f704054e( "fxexp_trigger_train_debris_b" );
    self waittill( #"sparks_b" );
    level thread function_f704054e( "fxexp_trigger_train_sparks_b" );
    self waittill( #"debris_c" );
    level thread function_f704054e( "fxexp_trigger_train_debris_c" );
    self waittill( #"sparks_c" );
    level thread function_f704054e( "fxexp_trigger_train_sparks_c" );
    self waittill( #"debris_d" );
    level thread function_f704054e( "fxexp_trigger_train_debris_d" );
    self waittill( #"sparks_d" );
    level thread function_f704054e( "fxexp_trigger_train_sparks_d" );
    self waittill( #"debris_e" );
    level thread function_f704054e( "fxexp_trigger_train_debris_e" );
    self waittill( #"sparks_e" );
    level thread function_f704054e( "fxexp_trigger_train_sparks_e" );
    self waittill( #"debris_f" );
    level thread function_f704054e( "fxexp_trigger_train_debris_f" );
    self waittill( #"sparks_f" );
    level thread function_f704054e( "fxexp_trigger_train_sparks_f" );
    self waittill( #"debris_g" );
    level thread function_f704054e( "fxexp_trigger_train_debris_g" );
    self waittill( #"sparks_g" );
    level thread function_f704054e( "fxexp_trigger_train_sparks_g" );
    self waittill( #"hash_7e23976f90243496" );
    self clientfield::set( "" + #"hash_5dd246706762931", 0 );
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 1, eflags: 0x0
// Checksum 0xff9e41e5, Offset: 0x1d08
// Size: 0x44
function function_f704054e( explodername )
{
    exploder::exploder( explodername );
    wait 8.75;
    exploder::stop_exploder( explodername );
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 4, eflags: 0x0
// Checksum 0x4a5b3df2, Offset: 0x1d58
// Size: 0x16c
function function_e121c532( var_2f5e0848, var_1011159c, var_82b681fa, var_c5e4331b )
{
    if ( var_c5e4331b )
    {
        exploder::exploder( "fxexp_trigger_train_gate_bot_dust" );
        var_2f5e0848 function_141b453d();
        var_1011159c function_141b453d();
        array::thread_all( var_82b681fa, &function_141b453d );
        var_1011159c waittill( #"movedone" );
        exploder::exploder( "fxexp_trigger_train_gate_top_dust" );
        return;
    }
    
    exploder::exploder( "fxexp_trigger_train_gate_top_dust" );
    var_2f5e0848 function_141b453d( -186 );
    var_1011159c function_141b453d( -186 );
    array::thread_all( var_82b681fa, &function_141b453d, -186 );
    var_1011159c waittill( #"movedone" );
    exploder::exploder( "fxexp_trigger_train_gate_bot_dust" );
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 1, eflags: 0x0
// Checksum 0xb7b01b1c, Offset: 0x1ed0
// Size: 0xd4
function function_141b453d( var_fb3621dd )
{
    if ( isdefined( self.mdl_clip ) )
    {
        self thread gate_move_think( isdefined( var_fb3621dd ) );
    }
    
    if ( !isdefined( var_fb3621dd ) )
    {
        self moveto( self.var_2154608a, 5 );
        return;
    }
    
    self movez( var_fb3621dd, 5 );
    self playsound( #"hash_a9b40237bd6f7a8" );
    self playloopsound( #"hash_2e622899c2b9f6fa" );
    self thread function_b62d86d3();
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 0, eflags: 0x0
// Checksum 0xbdb208de, Offset: 0x1fb0
// Size: 0x54
function function_b62d86d3()
{
    self waittill( #"movedone" );
    self stoploopsound( 2 );
    self playsound( #"hash_7a3009b4e3648bb9" );
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 2, eflags: 0x0
// Checksum 0x27668e11, Offset: 0x2010
// Size: 0x34
function function_d8ff4388( n_time, n_distance )
{
    wait n_time;
    self function_141b453d( n_distance );
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 1, eflags: 0x0
// Checksum 0x9e2ef456, Offset: 0x2050
// Size: 0x328
function gate_move_think( var_325c7304 )
{
    self endon( #"movedone" );
    self.disablefinalkillcam = 1;
    
    if ( isdefined( self.n_wait_time ) )
    {
        wait self.n_wait_time;
    }
    
    while ( true )
    {
        wait 0.4;
        pixbeginevent( "gate_move_think" );
        a_entities = getdamageableentarray( self.origin, 100 );
        
        foreach ( entity in a_entities )
        {
            if ( var_325c7304 == 1 && isplayer( entity ) )
            {
                continue;
            }
            
            if ( !entity istouching( self.mdl_clip ) )
            {
                continue;
            }
            
            if ( !isalive( entity ) )
            {
                continue;
            }
            
            entity dodamage( entity.health * 2, self.origin + ( 0, 0, 1 ), self, self, 0, "MOD_CRUSH" );
        }
        
        self destroy_corpses();
        
        if ( level.gametype == "ctf" && isdefined( level.ctfreturnflag ) )
        {
            foreach ( flag in level.flags )
            {
                if ( !isdefined( flag.carrier ) && flag.visuals[ 0 ] istouching( self.mdl_clip ) )
                {
                    flag [[ level.ctfreturnflag ]]();
                }
            }
        }
        else if ( level.gametype == "sd" && !level.multibomb )
        {
            if ( level.sdbomb.visuals[ 0 ] istouching( self.mdl_clip ) )
            {
            }
        }
        
        pixendevent();
    }
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 0, eflags: 0x0
// Checksum 0xd8fc47a0, Offset: 0x2380
// Size: 0x160, Type: bool
function destroy_supply_crates()
{
    var_8cc49f3 = getentarray( "care_package", "script_noteworthy" );
    
    foreach ( var_1e313899 in var_8cc49f3 )
    {
        if ( distancesquared( var_1e313899.origin, self.origin ) < 10000 )
        {
            if ( var_1e313899 istouching( self ) )
            {
                playfx( #"hash_4eb3ad36c639abd8", var_1e313899.origin );
                playsoundatposition( "wpn_frag_explode", var_1e313899.origin );
                pixendevent();
                wait 0.1;
                var_1e313899 [[ level.var_f90e0e29 ]]( 0 );
                return true;
            }
        }
    }
    
    return false;
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 0, eflags: 0x0
// Checksum 0x4328d4b9, Offset: 0x24e8
// Size: 0x84
function destroy_corpses()
{
    var_67ed32a2 = getcorpsearray();
    
    for (i = 0; i < var_67ed32a2.size; i++) {
        if ( distancesquared( var_67ed32a2[ i ].origin, self.origin ) < 10000 )
        {
            var_67ed32a2[ i ] delete();
        }
    }
}

/#

    // Namespace namespace_af0fb818/namespace_af0fb818
    // Params 0, eflags: 0x0
    // Checksum 0x58d0109a, Offset: 0x2578
    // Size: 0x4c, Type: dev
    function function_bc3bedde()
    {
        var_2c251c2e = util::get_map_name();
        adddebugcommand( "<dev string:x38>" + var_2c251c2e + "<dev string:x49>" );
    }

    // Namespace namespace_af0fb818/namespace_af0fb818
    // Params 0, eflags: 0x0
    // Checksum 0x3909cf4, Offset: 0x25d0
    // Size: 0xa2, Type: dev
    function devgui_think()
    {
        while ( true )
        {
            var_186ccbe2 = getdvar( #"start_train", "<dev string:x75>" );
            
            if ( var_186ccbe2 == "<dev string:x7a>" )
            {
                setdvar( #"start_train", "<dev string:x75>" );
                level notify( #"train_start" );
            }
            
            waitframe( 1 );
        }
    }

#/

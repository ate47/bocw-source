#using script_1cd690a97dfca36e;
#using script_6fb84768f1f09fe;
#using scripts\core_common\audio_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\easing;
#using scripts\core_common\math_shared;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\cp_common\snd;
#using scripts\cp_common\snd_utility;

#namespace snipercam;

// Namespace snipercam/snipercam
// Params 0, eflags: 0x5
// Checksum 0xe5c1fc4, Offset: 0x2f0
// Size: 0x34
function private autoexec __init__system__()
{
    system::register( "snipercam", &function_f64316de, undefined, undefined, undefined );
}

// Namespace snipercam/snipercam
// Params 0, eflags: 0x4
// Checksum 0xdebf85f1, Offset: 0x330
// Size: 0x2bc
function private function_f64316de()
{
    callback::on_localplayer_spawned( &on_local_player_spawned );
    clientfield::register( "actor", "start_snipercam", 1, 2, "int", &function_36f6ea28, 0, 0 );
    clientfield::register( "actor", "stop_snipercam", 1, 1, "int", &function_9f2c8092, 0, 0 );
    level.var_be173d94 = array( #"hash_6475991c6b5d94bb", #"hash_64759b1c6b5d9821", #"hash_64759c1c6b5d99d4" );
    level.var_6356fe3b = [];
    var_b16d80e2 = struct::get_array( "side_cam_start", "script_noteworthy" );
    
    foreach ( start_struct in var_b16d80e2 )
    {
        var_c238a0b7 = undefined;
        end_struct = struct::get( start_struct.target );
        
        if ( isdefined( end_struct ) )
        {
            var_c238a0b7 = struct::get( end_struct.target );
        }
        
        var_b76e0f10 = { #start:start_struct, #end:end_struct, #var_82267185:var_c238a0b7 };
        
        if ( !isdefined( level.var_6356fe3b ) )
        {
            level.var_6356fe3b = [];
        }
        else if ( !isarray( level.var_6356fe3b ) )
        {
            level.var_6356fe3b = array( level.var_6356fe3b );
        }
        
        level.var_6356fe3b[ level.var_6356fe3b.size ] = var_b76e0f10;
    }
}

// Namespace snipercam/snipercam
// Params 1, eflags: 0x0
// Checksum 0x7d9d3962, Offset: 0x5f8
// Size: 0x5c
function on_local_player_spawned( localclientnum )
{
    if ( !self function_21c0fa55() )
    {
        return;
    }
    
    local_player = function_5c10bd79( localclientnum );
    forcestreamxmodel( "attach_t9_bullet_762_tip_view" );
}

// Namespace snipercam/snipercam
// Params 7, eflags: 0x4
// Checksum 0x6f86d2bc, Offset: 0x660
// Size: 0x84
function private function_36f6ea28( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump == 0 )
    {
        return;
    }
    
    local_player = function_5c10bd79( fieldname );
    local_player thread function_7f8d6723( fieldname, self, bwastimejump );
}

// Namespace snipercam/snipercam
// Params 7, eflags: 0x4
// Checksum 0x1d03b3ed, Offset: 0x6f0
// Size: 0x78
function private function_9f2c8092( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump == 0 )
    {
        level notify( #"hash_377b8997737880e7" );
        return;
    }
    
    level notify( #"hash_615d2d7ba347572b" );
}

// Namespace snipercam/snipercam
// Params 1, eflags: 0x4
// Checksum 0x6350da08, Offset: 0x770
// Size: 0x2a
function private function_23f390cc( var_be96a4f8 )
{
    return ( var_be96a4f8[ 2 ], var_be96a4f8[ 1 ], var_be96a4f8[ 0 ] * -1 );
}

/#

    // Namespace snipercam/snipercam
    // Params 1, eflags: 0x4
    // Checksum 0xc4a2199a, Offset: 0x7a8
    // Size: 0x232, Type: dev
    function private function_51f065c3( parms )
    {
        foreach ( var_188953e0 in level.var_6356fe3b )
        {
            var_1b6e3d9c = distance2d( var_188953e0.start.origin, parms.var_b21e26bd );
            
            if ( var_1b6e3d9c < 200 )
            {
                side_cam_start = var_188953e0.start;
                var_52c1d392 = var_188953e0.end;
                var_61437df7 = var_188953e0.var_82267185;
                break;
            }
        }
        
        if ( isdefined( side_cam_start ) )
        {
            frame_count = 0;
            
            while ( frame_count < 6000 )
            {
                sphere( side_cam_start.origin, 4, ( 0.2, 1, 0.2 ), 1, 0, 24, 1 );
                sphere( var_52c1d392.origin, 4, ( 0.2, 1, 0.2 ), 1, 0, 24, 1 );
                focus_pos = parms.var_b21e26bd;
                
                if ( isdefined( var_61437df7 ) )
                {
                    focus_pos = var_61437df7.origin;
                }
                
                sphere( focus_pos, 4, ( 1, 0.2, 0.2 ), 1, 0, 24, 1 );
                frame_count++;
                waitframe( 1 );
            }
        }
    }

#/

// Namespace snipercam/snipercam
// Params 3, eflags: 0x4
// Checksum 0xf04d9aef, Offset: 0x9e8
// Size: 0xbec
function private function_7f8d6723( localclientnum, victim, var_d21483a5 )
{
    parms = function_83d35e98( self, self geteye(), self getplayerangles(), victim, var_d21483a5 );
    setsaveddvar( #"hash_697fd86393b91fae", 1 );
    setdvar( #"hash_54ba0940783c91c", 0 );
    var_ef954e24 = spawn( localclientnum, parms.startpos, "script_model" );
    bullet = util::spawn_model( localclientnum, "attach_t9_bullet_762_tip_view", parms.startpos, parms.angles );
    var_ef954e24.angles = parms.angles;
    bullet linkto( var_ef954e24 );
    bullet rotatevelocity( ( 0, 0, 4000 ), 9999 );
    var_ef954e24 moveto( parms.targetpos, parms.time );
    thread function_ff6d0f8b( localclientnum, parms, bullet );
    util::playfxontag( localclientnum, "maps/cp_takedown/fx9_hit3_sniper_trail", bullet, "tag_bullet_fx" );
    playmaincamxcam( localclientnum, #"hash_5c6d1cccae8395ba", 10, undefined, undefined, var_ef954e24 );
    level easing::ease_dvar( localclientnum, "runtime_time_scale", 0, 0.5, 0.1, #"linear" );
    var_cbcfc238 = self function_82f1cbd2();
    var_1cb86e4a = parms.time - 0.5 * parms.timescale;
    
    if ( var_1cb86e4a > 0 )
    {
        self util::delay( var_1cb86e4a, undefined, &function_49cdf043, 200, 0.4 * parms.timescale );
    }
    
    var_b487436a = 1.3 * 0.1;
    
    if ( parms.var_684cf08c - var_b487436a > 0 )
    {
        level util::delay( parms.var_684cf08c - var_b487436a, undefined, &easing::ease_dvar, localclientnum, "runtime_time_scale", 0, 0.1, 0.1, #"linear" );
    }
    
    bullet util::delay( parms.time, undefined, &hide );
    
    if ( var_d21483a5 != 2 )
    {
        util::delay( parms.time + 0.1, undefined, &function_3992911, localclientnum, parms );
    }
    
    self thread function_9fb8e309( parms.time * 0.25 );
    wait parms.var_684cf08c;
    self thread function_a2717a3e( 0.1 );
    
    if ( var_d21483a5 == 3 || var_d21483a5 == 2 || var_d21483a5 == 4 )
    {
        stopmaincamxcam( localclientnum );
        var_da5ce8d6 = sqr( 100 );
        var_14ba017f = sqr( 200 );
        var_53db73e1 = var_14ba017f + 1;
        side_cam_start = undefined;
        var_61437df7 = undefined;
        var_52c1d392 = undefined;
        
        foreach ( var_188953e0 in level.var_6356fe3b )
        {
            var_8c36c881 = distance2dsquared( var_188953e0.start.origin, parms.var_b21e26bd );
            
            if ( var_8c36c881 > var_da5ce8d6 && var_8c36c881 < var_53db73e1 )
            {
                var_53db73e1 = var_8c36c881;
                side_cam_start = var_188953e0.start;
                var_52c1d392 = var_188953e0.end;
                var_61437df7 = var_188953e0.var_82267185;
            }
        }
        
        if ( isdefined( side_cam_start ) )
        {
            var_fa3c8b18 = side_cam_start.origin;
            focus_pos = parms.var_b21e26bd;
            
            if ( isdefined( var_61437df7 ) )
            {
                focus_pos = var_61437df7.origin;
            }
            
            var_6de66f1f = focus_pos - var_fa3c8b18;
            
            if ( lengthsquared( var_6de66f1f ) > 0 )
            {
                var_6de66f1f = vectornormalize( var_6de66f1f );
                var_a4607150 = vectortoangles( var_6de66f1f );
                var_a4607150 = function_23f390cc( var_a4607150 );
            }
            else
            {
                var_a4607150 = ( 0, 0, 0 );
            }
        }
        else
        {
            var_a4607150 = parms.angles + ( 0, 90, 0 );
            
            if ( math::cointoss() )
            {
                var_a4607150 = parms.angles + ( 0, -90, 0 );
            }
            
            offset_dir = anglestoforward( var_a4607150 );
            offset_vec = offset_dir * -125;
            var_fa3c8b18 = parms.var_b21e26bd + parms.forward * 20 + offset_vec;
        }
        
        var_ac259dff = spawn( localclientnum, var_fa3c8b18, "script_model" );
        var_ac259dff.angles = var_a4607150;
        
        if ( isdefined( var_52c1d392 ) )
        {
            var_ac259dff moveto( var_52c1d392.origin, 0.8 );
            
            if ( var_d21483a5 == 2 || var_d21483a5 == 4 )
            {
                assert( isdefined( focus_pos ) );
                var_6de66f1f = focus_pos - var_52c1d392.origin;
                
                if ( lengthsquared( var_6de66f1f ) > 0 )
                {
                    var_6de66f1f = vectornormalize( var_6de66f1f );
                    target_angles = vectortoangles( var_6de66f1f );
                    target_angles = function_23f390cc( target_angles );
                    var_ac259dff rotateto( target_angles, 0.8 );
                }
            }
        }
        else
        {
            var_7333a53a = var_fa3c8b18 + parms.forward * 25;
            var_ac259dff moveto( var_7333a53a, 0.8 );
            var_26f59de4 = parms.var_e93a7f0f - var_fa3c8b18;
            
            if ( !isdefined( side_cam_start ) && lengthsquared( var_26f59de4 ) )
            {
                var_db8de2bd = vectortoangles( vectornormalize( var_26f59de4 ) );
                final_angles = var_a4607150 + function_23f390cc( ( var_db8de2bd[ 0 ], 0, 0 ) );
                var_ac259dff rotateto( final_angles, 0.8 );
            }
        }
        
        playmaincamxcam( localclientnum, #"hash_5c6d1cccae8395ba", 1, undefined, undefined, var_ac259dff );
        setdvar( #"runtime_time_scale", 1 );
        wait 0.3;
        setdvar( #"runtime_time_scale", 0.1 );
        assert( parms.var_6051349d > 0.3 );
        wait parms.var_6051349d - 0.3;
        setdvar( #"runtime_time_scale", 1 );
        var_ac259dff delete();
        
        if ( isdefined( self ) )
        {
            self function_c2856ebd( 0.05 );
        }
    }
    else
    {
        level thread easing::ease_dvar( localclientnum, "runtime_time_scale", 0, 1, 0.05, #"linear" );
        wait parms.var_6051349d;
        var_d41b03f9 = 0.1;
        var_6d8b2bec = parms.forward * vectordot( self getcampos() - var_ef954e24.origin, parms.forward );
        
        if ( isdefined( self ) )
        {
            self function_c2856ebd( var_d41b03f9 * 0.5 );
        }
        
        wait var_d41b03f9 * 0.4;
    }
    
    setdvar( #"hash_54ba0940783c91c", 1 );
    setsaveddvar( #"hash_697fd86393b91fae", 0 );
    stopmaincamxcam( localclientnum );
    bullet delete();
    var_ef954e24 delete();
}

// Namespace snipercam/snipercam
// Params 1, eflags: 0x4
// Checksum 0x4c64203b, Offset: 0x15e0
// Size: 0x114
function private function_9fb8e309( lerptime )
{
    if ( self postfx::function_556665f2( "pstfx_speedblur" ) )
    {
        self postfx::stoppostfxbundle( "pstfx_speedblur" );
    }
    
    self postfx::playpostfxbundle( "pstfx_speedblur" );
    self postfx::function_c8b5f318( "pstfx_speedblur", "Blur", 0 );
    self postfx::function_c8b5f318( "pstfx_speedblur", "Inner Mask", 0.4 );
    self postfx::function_c8b5f318( "pstfx_speedblur", "Outer Mask", 0.9 );
    self thread function_63a2faff( 0, 0.1, lerptime );
}

// Namespace snipercam/snipercam
// Params 1, eflags: 0x4
// Checksum 0x58758664, Offset: 0x1700
// Size: 0x5c
function private function_a2717a3e( lerptime )
{
    self thread function_63a2faff( 0.1, 0, lerptime );
    self waittill( #"hash_3999b38781a1f7c1" );
    self postfx::stoppostfxbundle( "pstfx_speedblur" );
}

// Namespace snipercam/snipercam
// Params 3, eflags: 0x4
// Checksum 0x778c43e6, Offset: 0x1768
// Size: 0x1b6
function private function_63a2faff( startval, endval, lerptime )
{
    self notify( "3efe26a39ba7eb9f" );
    self endon( "3efe26a39ba7eb9f" );
    self endon( #"death" );
    
    if ( !self postfx::function_556665f2( "pstfx_speedblur" ) )
    {
        println( "<dev string:x38>" );
        return;
    }
    
    i = 0;
    rate = 1 / lerptime;
    startval = isdefined( self.var_2ba6387e ) ? self.var_2ba6387e : startval;
    self postfx::function_c8b5f318( "pstfx_speedblur", "Blur", startval );
    
    while ( i < 1 )
    {
        i += self function_8e4cd43b() / 1000 * rate;
        self.var_2ba6387e = lerpfloat( startval, endval, i );
        self postfx::function_c8b5f318( "pstfx_speedblur", "Blur", self.var_2ba6387e );
        println( "<dev string:x96>" + self.var_2ba6387e );
        waitframe( 1 );
    }
    
    self notify( #"hash_3999b38781a1f7c1" );
}

// Namespace snipercam/snipercam
// Params 2, eflags: 0x4
// Checksum 0xd02ecbff, Offset: 0x1928
// Size: 0x12c
function private function_3992911( localclientnum, parms )
{
    death_face = level.var_be173d94[ randomint( level.var_be173d94.size ) ];
    parms.victim function_8e5138f0( localclientnum, death_face );
    parms.victim._currentfacestate = "death";
    headpos = parms.victim gettagorigin( "j_head" );
    playfx( localclientnum, "impacts/fx9_bul_blood_head_fatal", headpos, parms.forward * -1 );
    playfx( localclientnum, "impacts/fx9_bul_blood_head_fatal_exit", headpos, parms.forward );
    util::playfxontag( localclientnum, "impacts/fx9_snipercam_headshot_trail", parms.victim, "j_head" );
}

// Namespace snipercam/snipercam
// Params 3, eflags: 0x0
// Checksum 0x7c1abd4d, Offset: 0x1a60
// Size: 0x1cc
function function_ff6d0f8b( *localclientnum, parms, bullet )
{
    submix = level.var_2ee2efa4;
    var_74cca427 = level.var_ad05c085;
    var_bd1ad3a6 = level.var_699fffd5;
    wait_time = level.var_27bb46d3;
    
    if ( !isdefined( submix ) )
    {
        submix = "cp_snipercam";
    }
    
    if ( !isdefined( var_74cca427 ) )
    {
        var_74cca427 = "evt_snipercam_shot_main";
    }
    
    if ( !isdefined( var_bd1ad3a6 ) )
    {
        var_bd1ad3a6 = "evt_snipercam_impact";
    }
    
    if ( !isdefined( wait_time ) )
    {
        wait_time = parms.time;
    }
    
    level notify( #"hash_19171afd2fb4533e", parms );
    function_5ea2c6e3( submix, 0 );
    var_6ea8f898 = snd::play( var_74cca427, bullet );
    wait wait_time;
    level notify( #"snipercam_impact", parms );
    snd::stop( var_6ea8f898, 0.05 );
    wait 0.05;
    snd::play( var_bd1ad3a6, [ parms.victim, "j_head" ] );
    level waittill( #"hash_615d2d7ba347572b" );
    function_ed62c9c2( submix, 0.15 );
}

// Namespace snipercam/snipercam
// Params 2, eflags: 0x4
// Checksum 0xd6731a0c, Offset: 0x1c38
// Size: 0xfc
function private function_8e5138f0( localclientnum, animation )
{
    if ( isdefined( self._currentfaceanim ) && self hasdobj( localclientnum ) && self hasanimtree() )
    {
        self clearanim( self._currentfaceanim, 0.2 );
    }
    
    if ( isdefined( animation ) )
    {
        self._currentfaceanim = animation;
        
        if ( self hasdobj( localclientnum ) && self hasanimtree() )
        {
            self setflaggedanimknob( #"ai_secondary_facial_anim", animation, 1, 0.1, 1 );
        }
    }
}


#using script_164a456ce05c3483;
#using script_17dcb1172e441bf6;
#using script_1a9763988299e68d;
#using script_1b01e95a6b5270fd;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_2a5bf5b4a00cee0d;
#using script_350cffecd05ef6cf;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_4d748e58ce25b60c;
#using script_5701633066d199f2;
#using script_5f20d3b434d24884;
#using script_6b6510e124bad778;
#using script_74a56359b7d02ab6;
#using script_774302f762d76254;
#using scripts\core_common\animation_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\spawning_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace namespace_a4bedd45;

// Namespace namespace_a4bedd45/namespace_1dde4e70
// Params 1, eflags: 0x0
// Checksum 0x16bade9b, Offset: 0x2e8
// Size: 0x76
function function_49f419a1( time = 1 )
{
    self endon( #"disconnect" );
    old = self.doa.var_4f3aee7b;
    self.doa.var_4f3aee7b = 1;
    wait time;
    self.doa.var_4f3aee7b = old;
}

// Namespace namespace_a4bedd45/namespace_1dde4e70
// Params 0, eflags: 0x0
// Checksum 0xc18f4c9c, Offset: 0x368
// Size: 0xa6
function function_17c3e29f()
{
    self notify( "4213ebfc1999ad2b" );
    self endon( "4213ebfc1999ad2b" );
    self endon( #"disconnect" );
    self endon( #"hash_7893364bd228d63e" );
    level waittill( #"doa_exit_taken", #"teleporter_taken", #"enter_the_wild", #"hash_7893364bd228d63e", #"host_migration_begin" );
    self notify( #"hash_7893364bd228d63e" );
}

// Namespace namespace_a4bedd45/namespace_1dde4e70
// Params 0, eflags: 0x0
// Checksum 0x712f1395, Offset: 0x418
// Size: 0xac
function function_c724b8f9()
{
    if ( is_true( level.doa.var_318aa67a ) )
    {
        return;
    }
    
    self notify( "1c3527d4af214864" );
    self endon( "1c3527d4af214864" );
    self endon( #"disconnect", #"hash_7893364bd228d63e" );
    
    if ( !is_true( self.doa.var_1b452923 ) )
    {
        self namespace_83eb6304::function_3ecfde67( "firstPersonMarker" );
    }
}

// Namespace namespace_a4bedd45/namespace_1dde4e70
// Params 1, eflags: 0x0
// Checksum 0x64549704, Offset: 0x4d0
// Size: 0x61c
function function_1735c657( forced )
{
    self notify( "72446a348015a25a" );
    self endon( "72446a348015a25a" );
    self endon( #"disconnect" );
    
    if ( !is_true( forced ) && !is_true( level.doa.var_318aa67a ) )
    {
        self namespace_6e90e490::showhint( 4, 0 );
    }
    
    self thread function_c724b8f9();
    self thread function_17c3e29f();
    timeout = self namespace_1c2a96f9::function_4808b985( 90 );
    result = self waittilltimeout( timeout, #"camera_changed", #"hash_7893364bd228d63e" );
    
    if ( forced )
    {
        if ( !is_true( result.var_cff8d1e ) || is_true( level.doa.var_318aa67a ) )
        {
            self thread function_1735c657( forced );
        }
    }
    
    angles = absangleclamp360( self.angles );
    angles = ( 0, angles[ 1 ], 0 );
    faceangles = isdefined( result.faceangles ) ? result.faceangles : angles;
    self notify( #"hash_7893364bd228d63e" );
    self namespace_ec06fe4a::freezeplayercontrols( 1 );
    
    if ( is_true( self.doa.var_f583234e ) )
    {
        self clientfield::set_to_player( "toggleflashlight", 0 );
    }
    
    self thread namespace_7f5aeb59::turnplayershieldon();
    self.topdowncamera = 1;
    self setclientthirdperson( 0 );
    
    if ( isalive( self ) && !is_true( self.doa.respawning ) )
    {
        self.health = self.maxhealth;
    }
    
    if ( !isdefined( self.vehicle ) )
    {
        self namespace_83eb6304::function_3ecfde67( "player_trail_" + self.doa.color );
    }
    
    self clientfield::increment_to_player( "exitFPS" );
    self.doa.var_21eab413 = gettime() + 2500;
    
    /#
        namespace_1e25ad94::debugmsg( "<dev string:x38>" + self.name + "<dev string:x50>" + gettime() );
    #/
    
    self.doa.infps = undefined;
    self namespace_7f5aeb59::function_fae39d88();
    wait 0.25;
    self clientfield::increment_to_player( "setCompassVis" );
    self notify( #"critical_health_end" );
    org = undefined;
    
    if ( isdefined( faceangles ) )
    {
        org = namespace_ec06fe4a::spawnmodel( self.origin, "tag_origin" );
        
        if ( isdefined( org ) )
        {
            org thread namespace_ec06fe4a::function_ae010bb4( self );
            org.angles = self.angles;
            self linkto( org );
            org rotateto( faceangles, 0.25 );
            wait 0.25;
        }
    }
    
    if ( isdefined( org ) )
    {
        self unlink();
        org delete();
    }
    
    wait 0.2;
    self namespace_ec06fe4a::freezeplayercontrols( 0 );
    self.doa.var_4f3aee7b = 0;
    self namespace_83eb6304::turnofffx( "firstPersonMarker" );
    
    if ( is_true( self.doa.var_f583234e ) )
    {
        self clientfield::set_to_player( "toggleflashlight", 1 );
    }
    
    self clientfield::increment_to_player( "controlBinding" );
    self clientfield::increment_to_player( "setCompassVis" );
    level clientfield::set( "doafps", 0 );
    self setorigin( self.origin + ( 0, 0, 20 ) );
    self notify( #"hash_5a8ee2526fb3775b" );
    
    /#
        namespace_1e25ad94::debugmsg( "<dev string:x38>" + self.name + "<dev string:x6a>" + gettime() );
    #/
}

// Namespace namespace_a4bedd45/namespace_1dde4e70
// Params 2, eflags: 0x0
// Checksum 0x385fb497, Offset: 0xaf8
// Size: 0x61c
function function_1f704cee( force = 0, faceangles = 1 )
{
    namespace_1e25ad94::debugmsg( "+++++++++++++++++++++++++++++++ PLAYER ENTERING FP : " + self.name );
    
    if ( is_true( level.doa.var_318aa67a ) )
    {
        force = 1;
    }
    
    if ( self.birthtime === gettime() )
    {
        waitframe( 1 );
    }
    
    self endon( #"disconnect" );
    
    if ( is_true( self.doa.infps ) )
    {
        namespace_1e25ad94::debugmsg( "+++++++++++++++++++++++++++++++ PLAYER ALREADY IN FP : " + self.name );
        self thread function_1735c657( force );
        return;
    }
    
    self notify( "7f96f25ab02d6853" );
    self endon( "7f96f25ab02d6853" );
    
    /#
        namespace_1e25ad94::debugmsg( "<dev string:x80>" + self.name + "<dev string:x8c>" + gettime() );
    #/
    
    self.doa.infps = 1;
    self.doa.var_4f3aee7b = force;
    self.doa.var_9f8bc3f9 = 0;
    self thread namespace_7f5aeb59::turnplayershieldon( 0 );
    self thread function_49f419a1();
    self namespace_83eb6304::turnofffx( "player_trail_" + self.doa.color );
    v_player_velocity = self getvelocity();
    
    if ( length( v_player_velocity ) < 0.1 )
    {
        angles = vectortoangles( anglestoforward( self.angles ) );
    }
    else
    {
        angles = vectortoangles( v_player_velocity );
    }
    
    angles = ( 0, angles[ 1 ], 0 );
    
    /#
        namespace_1e25ad94::debugmsg( "<dev string:xa7>" + angles + "<dev string:xc8>" + v_player_velocity + "<dev string:xdb>" + length( v_player_velocity ) );
    #/
    
    if ( is_true( self.doa.var_f583234e ) )
    {
        self clientfield::set_to_player( "toggleflashlight", 0 );
    }
    
    self namespace_ec06fe4a::freezeplayercontrols( 1 );
    self clientfield::increment_to_player( "goFPS" );
    level clientfield::set( "doafps", 1 );
    util::wait_network_frame( 2 );
    self clientfield::increment_to_player( "setCompassVis" );
    self.topdowncamera = 0;
    self setclientthirdperson( 0 );
    
    if ( is_true( self.doa.var_f583234e ) )
    {
        self clientfield::set_to_player( "toggleflashlight", 1 );
    }
    
    if ( is_true( faceangles ) )
    {
        if ( isdefined( self.doa.var_5d4bd96f ) )
        {
            self.doa.var_5d4bd96f delete();
        }
        
        self.doa.var_5d4bd96f = namespace_ec06fe4a::spawnmodel( self.origin, "tag_origin" );
        
        if ( isdefined( self.doa.var_5d4bd96f ) )
        {
            self.doa.var_5d4bd96f thread namespace_ec06fe4a::function_ae010bb4( self );
            self.doa.var_5d4bd96f.angles = self.angles;
            self linkto( self.doa.var_5d4bd96f );
            self.doa.var_5d4bd96f rotateto( angles, 0.25 );
            wait 0.25;
            self unlink();
            self.doa.var_5d4bd96f delete();
            
            /#
                namespace_1e25ad94::debugmsg( "<dev string:xe5>" + self.angles );
            #/
        }
    }
    
    self namespace_ec06fe4a::freezeplayercontrols( 0 );
    self namespace_7f5aeb59::function_fae39d88();
    self thread function_1735c657( force );
    namespace_1e25ad94::debugmsg( "+++++++++++++++++++++++++++++++ PLAYER FP SETUP COMPLETE: " + self.name );
}


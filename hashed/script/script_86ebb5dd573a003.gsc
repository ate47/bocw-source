#using script_2d443451ce681a;
#using script_3dc93ca9902a9cda;
#using script_4ab78e327b76395f;
#using script_52da18c20f45c56a;
#using script_758226507b1afa11;
#using scripts\core_common\ai_shared;
#using scripts\core_common\animation_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\doors_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\flashlight;
#using scripts\core_common\gestures;
#using scripts\core_common\math_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\stealth\debug;
#using scripts\core_common\stealth\enemy;
#using scripts\core_common\stealth\friendly;
#using scripts\core_common\stealth\neutral;
#using scripts\core_common\stealth\utility;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\core_common\vehicle_shared;
#using scripts\cp_common\arcade_machine;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\objectives;
#using scripts\cp_common\util;
#using scripts\weapons\cp\spy_camera;

#namespace namespace_11998b8f;

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x8efc39e9, Offset: 0x1b10
// Size: 0x474
function function_cdb7cc7e( starting = 1 )
{
    player = getplayers()[ 0 ];
    player endon( #"disconnect" );
    player takeallweapons();
    var_481fae25 = undefined;
    var_749c3526 = 0;
    
    if ( level flag::get( "warehouse_give_player_weapon" ) )
    {
        w_player = getweapon( #"smg_standard_t9", "extclip2", "reflex", "heavy", "grip", "steadyaim" );
        var_749c3526 = 1;
    }
    else if ( level flag::get( "flag_dart_gun_ready" ) && !level flag::get( "apartment_2_done" ) )
    {
        if ( !isdefined( level.var_fb71a7c4 ) )
        {
            while ( !isdefined( level.var_fb71a7c4 ) )
            {
                waitframe( 1 );
            }
        }
        
        w_player = level.var_fb71a7c4;
    }
    else if ( level flag::get( "meetup_done" ) && !level flag::get( "flag_dart_gun_ready" ) )
    {
        w_player = getweapon( #"hash_5dbab0bd6a78c6e5" );
    }
    else if ( level flag::get( "alley_1_done" ) && !level flag::get( "meetup_done" ) )
    {
        w_player = getweapon( #"pistol_semiauto_t9", "suppressed" );
        var_481fae25 = 1;
    }
    else if ( level flag::get( "street_done" ) && !level flag::get( "alley_1_done" ) )
    {
        w_player = getweapon( #"pistol_semiauto_t9", "suppressed" );
    }
    else if ( level flag::get( "rooftop_done" ) && !level flag::get( "street_done" ) )
    {
        w_player = getweapon( #"pistol_semiauto_t9", "suppressed" );
        var_481fae25 = 1;
    }
    else
    {
        w_player = getweapon( #"pistol_semiauto_t9", "suppressed" );
    }
    
    level flag::wait_till( "level_is_go" );
    player clientfield::set_to_player( "force_stream_weapons", var_749c3526 );
    
    if ( !player hasweapon( w_player ) )
    {
        player giveweapon( w_player );
    }
    
    waitframe( 1 );
    player givemaxammo( w_player );
    
    if ( is_true( starting ) )
    {
        player switchtoweaponimmediate( w_player );
    }
    else
    {
        player switchtoweapon( w_player );
    }
    
    if ( is_true( var_481fae25 ) )
    {
        player spy_camera::function_6de171e9();
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x614e2202, Offset: 0x1f90
// Size: 0x14e
function function_81fce913()
{
    self notify( "715aeb8e2d51f1a0" );
    self endon( "715aeb8e2d51f1a0" );
    player = getplayers()[ 0 ];
    player endon( #"death" );
    
    if ( level flag::get( "stop_supressed_hint" ) )
    {
        return;
    }
    
    while ( !level flag::get( "stop_supressed_hint" ) )
    {
        if ( function_8b935e3e( player ) )
        {
            player notify( #"using_suppressed_weapon" );
        }
        else
        {
            if ( level flag::get( "stealth_spotted" ) )
            {
                level flag::wait_till_clear( "stealth_spotted" );
                wait 5;
            }
            
            player function_f1163a22();
            wait 1;
            level flag::set( "stop_supressed_hint" );
        }
        
        waitframe( 1 );
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x861ba4dc, Offset: 0x20e8
// Size: 0x46
function function_f1163a22()
{
    self util::show_hint_text( #"hash_25cfdd1c1cc0294f", 0, "using_suppressed_weapon" );
    wait 4;
    self notify( #"using_suppressed_weapon" );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x3f223336, Offset: 0x2138
// Size: 0x15e, Type: bool
function function_8b935e3e( player )
{
    if ( player function_8bc54983() || player getweaponslistprimaries().size == 0 || player scene::is_igc_active() )
    {
        return true;
    }
    
    var_44dc4109 = 0;
    var_bd1c473f = getweapon( #"hash_5dbab0bd6a78c6e5" );
    weapon = player getcurrentweapon();
    
    if ( weapon === level.weaponnone || weapon === level.var_fb71a7c4 || weapon === level.var_e3f5eafc || is_true( weapon.isgadget ) || weapon === var_bd1c473f )
    {
        return true;
    }
    
    if ( weaponhasattachment( weapon, "suppressed" ) )
    {
        var_44dc4109 = 1;
    }
    
    if ( var_44dc4109 )
    {
        return true;
    }
    
    return false;
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x211ff740, Offset: 0x22a0
// Size: 0x1bc
function function_d30792f2()
{
    assert( isplayer( self ) );
    self endon( #"death" );
    self notify( "24aace2a9f17e521" );
    self endon( "24aace2a9f17e521" );
    self util::show_hint_text( #"hash_212782b8926819c8", undefined, "hide_dart_gun_hint", 0 );
    self notifyonplayercommand( "dart_gun_equipped", "+actionslot 4" );
    self waittill( #"dart_gun_equipped" );
    self clearcinematicmotionoverride();
    self notify( #"hide_dart_gun_hint" );
    level notify( #"dart_gun_enabled" );
    self takeallweapons();
    
    if ( !self hasweapon( level.var_fb71a7c4 ) )
    {
        self giveweapon( level.var_fb71a7c4 );
        self switchtoweapon( level.var_fb71a7c4 );
        self givemaxammo( level.var_fb71a7c4 );
    }
    
    if ( isdefined( level.stealth.disguised ) )
    {
        self namespace_979752dc::set_disguised( 0 );
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x1482eca2, Offset: 0x2468
// Size: 0x34
function function_2f0f0a84()
{
    self val::set( #"cp_ger_stakeout", "push_player", 1 );
}

/#

    // Namespace namespace_11998b8f/namespace_11998b8f
    // Params 2, eflags: 0x0
    // Checksum 0x7ccf3843, Offset: 0x24a8
    // Size: 0x228, Type: dev
    function function_85682927( a_ents, str_endon )
    {
        self notify( "<dev string:x38>" );
        self endon( "<dev string:x38>" );
        
        if ( isdefined( str_endon ) )
        {
            level endon( str_endon );
        }
        
        while ( true )
        {
            arrayremovevalue( a_ents, undefined );
            ypos = 30;
            
            foreach ( ent in a_ents )
            {
                if ( isdefined( ent gettagorigin( "<dev string:x4b>" ) ) )
                {
                    str_origin = ent gettagorigin( "<dev string:x4b>" );
                }
                else
                {
                    str_origin = "<dev string:x59>";
                }
                
                if ( level flag::get( "<dev string:x66>" ) )
                {
                    str_name = isdefined( ent.animname ) ? ent.animname : ent.targetname;
                    
                    if ( !isdefined( str_name ) )
                    {
                        str_name = "<dev string:x74>";
                    }
                    
                    debug2dtext( ( 50, ypos, 0 ), str_name + "<dev string:x7f>" + function_9e72a96( ent.model ) + "<dev string:x8b>" + str_origin + "<dev string:xa1>" + ent.origin );
                }
                
                ypos += 20;
            }
            
            waitframe( 1 );
        }
    }

#/

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x241f4384, Offset: 0x26d8
// Size: 0x3c
function stakeout_stow_weapon()
{
    getplayers()[ 0 ] val::set( "stakeout_stow_weapon", "disable_weapons", 1 );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0xbaac3d89, Offset: 0x2720
// Size: 0x3c
function function_a73e6a64()
{
    getplayers()[ 0 ] val::reset( "stakeout_stow_weapon", "disable_weapons" );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 3, eflags: 0x0
// Checksum 0x8d64abe8, Offset: 0x2768
// Size: 0xdc
function function_b9a028e4( endon_flag, var_335a8dcc, var_721023c5 = 0 )
{
    level endon( endon_flag );
    
    while ( true )
    {
        self doors::waittill_door_opened();
        
        if ( var_721023c5 && isplayer( self.c_door.var_9b9642be ) || !var_721023c5 && isai( self.c_door.var_9b9642be ) )
        {
            break;
        }
        
        waitframe( 1 );
    }
    
    level flag::set( var_335a8dcc );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0xc384957, Offset: 0x2850
// Size: 0x2ee
function function_2cba9c65()
{
    level endon( #"hash_2b9e9acd890ef61f" );
    e_vol = getent( "vol_touching_tracks", "targetname" );
    var_69a21fc0 = getent( "vol_player_left_platform", "targetname" );
    var_e9bf9ff9 = getent( "vol_player_right_platform", "targetname" );
    player = getplayers()[ 0 ];
    hidden = [];
    hidden[ #"prone" ] = 100;
    hidden[ #"crouch" ] = 250;
    hidden[ #"stand" ] = 375;
    spotted = [];
    spotted[ #"prone" ] = 8192;
    spotted[ #"crouch" ] = 8192;
    spotted[ #"stand" ] = 8192;
    namespace_979752dc::set_detect_ranges( hidden, spotted );
    var_e4307a8c = [];
    var_e4307a8c[ #"prone" ] = 350;
    var_e4307a8c[ #"crouch" ] = 450;
    var_e4307a8c[ #"stand" ] = 650;
    var_c44c865c = [];
    var_c44c865c[ #"prone" ] = 8192;
    var_c44c865c[ #"crouch" ] = 8192;
    var_c44c865c[ #"stand" ] = 8192;
    
    while ( !level flag::get( "ghost_station_left_platform_enemies_cleared" ) )
    {
        while ( player istouching( e_vol ) || player istouching( var_69a21fc0 ) )
        {
            waitframe( 1 );
        }
        
        namespace_979752dc::set_detect_ranges( var_e4307a8c, var_c44c865c );
        
        while ( player istouching( var_e9bf9ff9 ) )
        {
            waitframe( 1 );
        }
        
        namespace_979752dc::set_detect_ranges( hidden, spotted );
        waitframe( 1 );
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x9ffd48dd, Offset: 0x2b48
// Size: 0xcc
function function_de88eefd()
{
    hidden = [];
    hidden[ #"prone" ] = 100;
    hidden[ #"crouch" ] = 300;
    hidden[ #"stand" ] = 500;
    spotted = [];
    spotted[ #"prone" ] = 8192;
    spotted[ #"crouch" ] = 8192;
    spotted[ #"stand" ] = 8192;
    namespace_979752dc::set_detect_ranges( hidden, spotted );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0xf1b8410d, Offset: 0x2c20
// Size: 0xe4
function function_489032c9()
{
    hidden = [];
    hidden[ #"prone" ] = 350;
    hidden[ #"crouch" ] = 550;
    hidden[ #"stand" ] = 750;
    spotted = [];
    spotted[ #"prone" ] = 8192;
    spotted[ #"crouch" ] = 8192;
    spotted[ #"stand" ] = 8192;
    spotted[ #"shadow" ] = 1;
    namespace_979752dc::set_detect_ranges( hidden, spotted );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0xaccc8e87, Offset: 0x2d10
// Size: 0xcc
function function_25120710()
{
    hidden = [];
    hidden[ #"prone" ] = 500;
    hidden[ #"crouch" ] = 900;
    hidden[ #"stand" ] = 1600;
    spotted = [];
    spotted[ #"prone" ] = 8192;
    spotted[ #"crouch" ] = 8192;
    spotted[ #"stand" ] = 8192;
    namespace_979752dc::set_detect_ranges( hidden, spotted );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x504ce8cd, Offset: 0x2de8
// Size: 0x124
function function_54158bc()
{
    scene::add_scene_func( "scene_z_stk_door_harass_stasi", &function_9d5ae353, "init" );
    scene::add_scene_func( "scene_z_stk_door_harass_civ", &function_9d5ae353, "init" );
    scene::add_scene_func( "scene_z_stk_door_harass_stasi_v2", &function_9d5ae353, "init" );
    scene::add_scene_func( "scene_z_stk_door_harass_stasi", &function_86e07b36, "init" );
    scene::add_scene_func( "scene_z_stk_door_harass_civ", &function_86e07b36, "init" );
    scene::add_scene_func( "scene_z_stk_door_harass_stasi_v2", &function_86e07b36, "init" );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 2, eflags: 0x0
// Checksum 0x5524c6b, Offset: 0x2f18
// Size: 0xb4
function function_a34d0dd3( tname, var_8964d1a4 )
{
    var_5d39bca3 = struct::get_array( tname, "targetname" );
    assert( isdefined( var_5d39bca3 ) && var_5d39bca3.size >= 1, "<dev string:xba>" );
    assert( isdefined( var_8964d1a4 ), "<dev string:x111>" );
    array::thread_all( var_5d39bca3, &function_e9e94ff2, var_8964d1a4 );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x3082abe1, Offset: 0x2fd8
// Size: 0x1ec
function function_e9e94ff2( var_8964d1a4 )
{
    if ( isdefined( self.target ) )
    {
        if ( isdefined( self.script_noteworthy ) )
        {
            var_435b4812 = self.script_noteworthy;
        }
        
        assert( isdefined( var_435b4812 ), "<dev string:x156>" );
        scene = struct::get( self.target, "targetname" );
        scene.var_61d3da92 = self;
        scene.var_8964d1a4 = var_8964d1a4;
        scene scene::init();
        waitframe( 1 );
        level flag::wait_till_any( array( var_435b4812, var_8964d1a4, "stop_" + var_435b4812 ) );
        scene scene::stop();
        
        if ( !level flag::get( "stop_" + var_435b4812 ) )
        {
            if ( isdefined( self.script_parameters ) )
            {
                var_290ea79a = float( self.script_parameters );
                scene scene::play_from_time( "Shot 1", undefined, undefined, var_290ea79a, 0 );
            }
            else
            {
                scene scene::play( "Shot 1" );
            }
            
            if ( !level flag::get( "stop_" + var_435b4812 ) )
            {
                scene flag::set( "one_off_scene_cleanup" );
            }
        }
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0xbdfab59b, Offset: 0x31d0
// Size: 0x22a
function function_86e07b36( a_ents )
{
    level.player endon( #"death" );
    self.anim_door = undefined;
    self.guys = [];
    
    foreach ( ent in a_ents )
    {
        if ( isai( ent ) )
        {
            ent.var_c681e4c1 = 1;
            self.guys[ self.guys.size ] = ent;
        }
    }
    
    if ( isdefined( self.var_61d3da92.linkto ) )
    {
        a_doors = getentarray( self.var_61d3da92.linkto, "linkname" );
        var_af3404cd = array::get_all_closest( self.var_61d3da92.origin, a_doors );
        self.anim_door = var_af3404cd[ 0 ];
        
        if ( isdefined( self.anim_door ) )
        {
            self.anim_door.original_angles = self.anim_door.angles;
            self.anim_door linkto( a_ents[ #"door" ], "j_prop_1", ( 0, 0, 0 ), ( 0, 0, 0 ) );
            self thread function_e4fcb32e();
            
            if ( isdefined( self.anim_door.target ) )
            {
                self.var_17014c84 = getent( self.anim_door.target, "targetname" );
            }
        }
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x754e05f6, Offset: 0x3408
// Size: 0x318
function function_e4fcb32e()
{
    self waittill( #"close_door" );
    
    if ( isdefined( self.anim_door ) )
    {
        if ( isdefined( self.scene_struct ) && isdefined( self.scene_struct.var_61d3da92 ) && self.scene_struct.var_61d3da92 flag::get( "dying_in_closet" ) )
        {
            wait 1.5;
        }
        
        self.anim_door unlink();
        cur_angles = self.anim_door.angles;
        
        if ( cur_angles != self.anim_door.original_angles )
        {
            delta_angles = self.anim_door.original_angles - cur_angles;
            delta_angles = angleclamp180( delta_angles );
            time = abs( delta_angles[ 1 ] ) / 60;
            self.anim_door function_ce492516( time );
            self.anim_door rotateyaw( delta_angles[ 1 ], time );
            wait time;
            playsoundatposition( "fly_stk_alley2_door_harass_stasi_v2_door_close", self.anim_door.origin );
            self flag::set( "closet_door_closed" );
        }
    }
    
    if ( isdefined( self.var_17014c84 ) )
    {
        function_1eaaceab( self.guys );
        
        if ( self.guys.size > 0 )
        {
            foreach ( guy in self.guys )
            {
                if ( guy istouching( self.var_17014c84 ) )
                {
                    guy val::set( "alley_door", "ignoreall", 1 );
                    
                    if ( guy flag::get( "break_stealth" ) )
                    {
                        util::delay( 0.5, "alley_2_done", &function_4ae9de96, self.anim_door );
                    }
                    
                    guy delete();
                }
            }
        }
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x1a0d3ade, Offset: 0x3728
// Size: 0x114
function function_ce492516( time )
{
    self endon( #"death" );
    
    if ( !isdefined( time ) )
    {
        return;
    }
    
    var_516689ec = time / 0.25;
    var_516689ec = int( var_516689ec );
    org = anglestoforward( self.angles ) * 50;
    
    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "back" )
    {
        org *= -1;
    }
    
    for (i = 0; i < var_516689ec; i++) {
        physicsexplosionsphere( self.origin + ( 0, 0, 30 ) + org, 32, 8, 5 );
        wait 0.25;
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x16dfd273, Offset: 0x3848
// Size: 0x94
function function_4ae9de96( door )
{
    playsoundatposition( "vox_ger3_stealth_ally_killed", door.origin + ( 0, 0, 48 ) );
    wait 1.75;
    function_aebf36c( "attack", getplayers()[ 0 ], getplayers()[ 0 ].origin, 1000, "axis" );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x7f3a0002, Offset: 0x38e8
// Size: 0xd4
function function_a6affb6a()
{
    self endon( #"death" );
    function_6e32d510( self, "civilian_flee_east_window" );
    trigger::wait_till( "alley_east_window_trigger" );
    
    if ( level scene::is_active( "scene_z_stk_amb_window_peek" ) )
    {
        level scene::stop( "scene_z_stk_amb_window_peek" );
    }
    
    if ( self.archetype == #"civilian" )
    {
        self ai::set_behavior_attribute( #"_civ_mode", "panic" );
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0xd62405ff, Offset: 0x39c8
// Size: 0xec
function function_df4cd546()
{
    self endon( #"death" );
    function_6e32d510( self, "civilian_flee_alley_1" );
    level flag::wait_till( "alley_1_stealth_broken" );
    
    if ( level scene::is_active( "scene_z_stk_bar_alley" ) )
    {
        level scene::stop( "scene_z_stk_bar_alley" );
    }
    
    self notify( #"hash_81580761b9ce6a5" );
    self dialogue::function_47b06180();
    waitframe( 1 );
    self ai::set_behavior_attribute( #"_civ_mode", "panic" );
}

/#

    // Namespace namespace_11998b8f/namespace_11998b8f
    // Params 2, eflags: 0x4
    // Checksum 0x7dcfbde9, Offset: 0x3ac0
    // Size: 0xdc, Type: dev
    function private function_a8e2d44b( entity, var_5313e2e3 )
    {
        duration = 1000;
        print3d( var_5313e2e3.origin + ( 0, 0, 72 ), "<dev string:x1e1>" + var_5313e2e3.targetname, ( 1, 1, 0 ), 1, 1, duration );
        line( entity getcentroid(), var_5313e2e3.origin, ( 1, 1, 0 ), 1, 0, duration );
        sphere( var_5313e2e3.origin, 5, ( 1, 1, 0 ), 0.5, 0, 10, duration );
    }

#/

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 2, eflags: 0x4
// Checksum 0x7b71a24f, Offset: 0x3ba8
// Size: 0xb2
function private function_6e32d510( entity, var_dc739265 )
{
    var_5313e2e3 = struct::get( var_dc739265, "targetname" );
    
    if ( isdefined( var_5313e2e3 ) )
    {
        /#
            enabled = getdvarint( #"hash_40c63080b0f73497", 0 );
            
            if ( enabled )
            {
                function_a8e2d44b( entity, var_5313e2e3 );
            }
        #/
        
        entity.var_5313e2e3 = var_5313e2e3.origin;
    }
    
    entity.var_ac4fe74b = 1;
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0xc482d53e, Offset: 0x3c68
// Size: 0x390
function function_9d5ae353( a_ents )
{
    level.player endon( #"death" );
    
    foreach ( guy in a_ents )
    {
        if ( isdefined( guy.animname ) )
        {
            if ( issubstr( guy.animname, "guard1" ) )
            {
                vo_guard = guy;
            }
            else if ( issubstr( guy.animname, "civ1" ) )
            {
                var_2020cd93 = guy;
            }
        }
        
        if ( isai( guy ) )
        {
            guy.scene_struct = self;
            guy.var_3ed97f8 = arraycopy( a_ents );
            arrayremovevalue( guy.var_3ed97f8, guy );
            
            if ( guy.team == "axis" )
            {
                if ( !isdefined( guy.script_type ) )
                {
                    guy stealth_enemy::set_blind( 1 );
                }
                
                guy.goalradius = 32;
                guy namespace_979752dc::set_default_patrol_style( "alert" );
                guy.var_9d593aa3 = 1;
                guy thread function_ef09153e();
                guy thread function_958168b9();
                continue;
            }
            
            guy.var_ac4fe74b = 1;
            guy thread function_958168b9( 1 );
        }
    }
    
    var_f430b579 = undefined;
    var_f430b579 = self function_77fe8bb5( vo_guard, var_2020cd93 );
    
    if ( isdefined( var_f430b579 ) )
    {
        level thread function_a809c979( vo_guard, var_2020cd93, undefined, var_f430b579 );
    }
    
    util::waittill_any_ents_two( level, self.var_8964d1a4, self, "one_off_scene_cleanup" );
    
    if ( !self flag::get( "keep_scene_ai" ) )
    {
        foreach ( guy in a_ents )
        {
            if ( isai( guy ) && isalive( guy ) )
            {
                guy notify( #"hash_339e977c12dc1f67" );
                guy delete();
            }
        }
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0xd2720b6b, Offset: 0x4000
// Size: 0xbc
function function_ef09153e()
{
    level endon( #"one_off_scene_cleanup" );
    self endon( #"hash_339e977c12dc1f67" );
    self waittill( #"death" );
    
    if ( self flag::get( "in_closet" ) && self.health <= 0 )
    {
        self.scene_struct.var_61d3da92 flag::set( "dying_in_closet" );
        self flag::set( "ai_dying_in_closet" );
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0xd704afa2, Offset: 0x40c8
// Size: 0x154
function function_dd4726f3()
{
    scene::add_scene_func( "aib_vign_stakeout_harass_check_car", &function_45d01f40, "play" );
    scene::add_scene_func( "aib_vign_stakeout_harass_check_papers", &function_45d01f40, "play" );
    scene::add_scene_func( "aib_vign_stakeout_harass_check_papers", &function_f5598d8d, "play" );
    scene::add_scene_func( "aib_vign_stakeout_harass_ask_questions", &function_45d01f40, "play" );
    scene::add_scene_func( "aib_vign_stakeout_harass_pat_down", &function_45d01f40, "play" );
    scene::add_scene_func( "aib_vign_stakeout_harass_wall_frisk", &function_45d01f40, "play" );
    scene::add_scene_func( "aib_vign_stakeout_harass_question_woman", &function_45d01f40, "play" );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 2, eflags: 0x0
// Checksum 0x24aa8ae0, Offset: 0x4228
// Size: 0xb4
function function_91a7f501( tname, var_8964d1a4 )
{
    var_5d39bca3 = struct::get_array( tname, "targetname" );
    assert( isdefined( var_5d39bca3 ) && var_5d39bca3.size >= 1, "<dev string:x1e5>" );
    assert( isdefined( var_8964d1a4 ), "<dev string:x239>" );
    array::thread_all( var_5d39bca3, &function_e0548884, var_8964d1a4 );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x5c27462b, Offset: 0x42e8
// Size: 0x74
function function_e0548884( var_8964d1a4 )
{
    if ( isdefined( self.target ) )
    {
        scene = struct::get( self.target, "targetname" );
        scene.var_61d3da92 = self;
        scene.var_8964d1a4 = var_8964d1a4;
        scene scene::play();
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x7d8978f4, Offset: 0x4368
// Size: 0x44
function function_f5598d8d( a_ents )
{
    if ( isdefined( a_ents[ #"hash_18e9070f6eabd46d" ] ) )
    {
        a_ents[ #"hash_18e9070f6eabd46d" ] thread function_ca7fdd25();
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x8667ffec, Offset: 0x43b8
// Size: 0x5ec
function function_45d01f40( a_ents )
{
    level.player endon( #"death" );
    
    foreach ( guy in a_ents )
    {
        if ( isdefined( guy.animname ) )
        {
            if ( issubstr( guy.animname, "guard1" ) )
            {
                vo_guard = guy;
            }
            
            if ( issubstr( guy.animname, "guard2" ) )
            {
                var_e1b2a82b = guy;
            }
            else if ( issubstr( guy.animname, "_man" ) )
            {
                var_2020cd93 = guy;
            }
            else if ( issubstr( guy.animname, "_woman" ) )
            {
                var_467706bc = guy;
            }
        }
        
        if ( isdefined( guy.script_noteworthy ) )
        {
            var_192c950c = guy.script_noteworthy;
            level.var_192c950c = var_192c950c;
        }
        
        if ( guy.script_string === "flashlight" )
        {
            guy.flashlightoverride = 1;
            
            if ( isai( guy ) )
            {
                guy flashlight::function_65e5c8c8( 1 );
            }
        }
        
        if ( isai( guy ) )
        {
            guy.var_3ed97f8 = arraycopy( a_ents );
            arrayremovevalue( guy.var_3ed97f8, guy );
            var_3d23fb80 = undefined;
            
            if ( isdefined( self.var_61d3da92 ) && isdefined( self.var_61d3da92.script_parameters ) )
            {
                var_3d23fb80 = self.var_61d3da92.script_parameters;
            }
            
            if ( guy.team == "axis" )
            {
                if ( !isdefined( guy.stealth ) )
                {
                    guy namespace_979752dc::do_stealth();
                }
                
                if ( !isdefined( guy.script_type ) )
                {
                    guy stealth_enemy::set_blind( 1 );
                }
                
                if ( isdefined( var_3d23fb80 ) )
                {
                    guy thread function_958168b9( undefined, var_3d23fb80 );
                }
                else
                {
                    guy thread function_958168b9();
                }
                
                continue;
            }
            
            if ( !isdefined( guy.script_type ) )
            {
                function_6e32d510( guy, "civilian_flee_southeast" );
            }
            else if ( isdefined( guy.script_type ) && guy.script_type != "random" )
            {
                function_6e32d510( guy, guy.script_type );
            }
            
            if ( isdefined( var_3d23fb80 ) )
            {
                guy thread function_958168b9( 1, var_3d23fb80 );
                continue;
            }
            
            guy thread function_958168b9( 1 );
        }
    }
    
    var_f430b579 = undefined;
    
    if ( !isdefined( var_2020cd93 ) )
    {
        var_f430b579 = self function_77fe8bb5( vo_guard, var_467706bc );
        
        if ( isdefined( var_f430b579 ) )
        {
            level thread function_a809c979( vo_guard, var_467706bc, undefined, var_f430b579 );
        }
    }
    else if ( isdefined( var_e1b2a82b ) )
    {
        var_f430b579 = self function_77fe8bb5( vo_guard, var_2020cd93, var_e1b2a82b );
        
        if ( isdefined( var_f430b579 ) )
        {
            level thread function_a809c979( vo_guard, var_2020cd93, var_e1b2a82b, var_f430b579 );
        }
    }
    else
    {
        var_f430b579 = self function_77fe8bb5( vo_guard, var_2020cd93 );
        
        if ( isdefined( var_f430b579 ) )
        {
            level thread function_a809c979( vo_guard, var_2020cd93, undefined, var_f430b579 );
        }
    }
    
    level flag::wait_till( self.var_8964d1a4 );
    self scene::stop();
    
    foreach ( guy in a_ents )
    {
        if ( isai( guy ) && isalive( guy ) )
        {
            guy notify( #"hash_339e977c12dc1f67" );
        }
    }
    
    array::delete_all( a_ents );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x1dc02fe2, Offset: 0x49b0
// Size: 0x32c
function function_e24505b7( a_ents )
{
    foreach ( key, guy in a_ents )
    {
        if ( isai( guy ) )
        {
            if ( key == "guard1" )
            {
                vo_guard = guy;
            }
            else if ( key == "guard2" )
            {
                var_e1b2a82b = guy;
            }
            else if ( key == "civ1" )
            {
                var_2020cd93 = guy;
            }
            
            guy.var_3ed97f8 = arraycopy( a_ents );
            arrayremovevalue( guy.var_3ed97f8, guy );
            
            if ( guy.team == "axis" )
            {
                guy thread function_958168b9();
                continue;
            }
            
            function_6e32d510( guy, "civilian_flee_northeast" );
            guy.var_ac4fe74b = 1;
            guy thread function_958168b9( 1 );
        }
    }
    
    self.var_61d3da92 = spawnstruct();
    self.var_61d3da92.script_animation = "alley_2_intro";
    var_f430b579 = undefined;
    var_f430b579 = self function_77fe8bb5( vo_guard, var_2020cd93, var_e1b2a82b );
    
    if ( isdefined( var_f430b579 ) )
    {
        level thread function_a809c979( vo_guard, var_2020cd93, var_e1b2a82b, var_f430b579 );
    }
    
    level flag::wait_till( "alley_2_done" );
    
    foreach ( guy in a_ents )
    {
        if ( isai( guy ) && isalive( guy ) )
        {
            guy notify( #"hash_339e977c12dc1f67" );
        }
    }
    
    self scene::stop();
    array::delete_all( a_ents );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x61df5015, Offset: 0x4ce8
// Size: 0x1c4
function function_c1bc96cf( a_ents )
{
    level.var_b86d4e0 = a_ents[ #"hash_79e6bb91445af567" ];
    
    foreach ( guy in a_ents )
    {
        if ( isai( guy ) )
        {
            guy.var_3ed97f8 = arraycopy( a_ents );
            arrayremovevalue( guy.var_3ed97f8, guy );
            guy thread function_262b28d4();
        }
    }
    
    level flag::wait_till( "flag_alley_3_lazar_close_door" );
    
    foreach ( guy in a_ents )
    {
        if ( isai( guy ) && isalive( guy ) )
        {
            guy notify( #"hash_339e977c12dc1f67" );
        }
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0xb518e6d8, Offset: 0x4eb8
// Size: 0x1ec
function function_f0338b42( a_ents )
{
    foreach ( guy in a_ents )
    {
        if ( isai( guy ) )
        {
            if ( isdefined( guy.animname ) && guy.animname == "enemy3" )
            {
                level.var_4de0f519 = guy;
            }
            
            guy.var_3ed97f8 = arraycopy( a_ents );
            arrayremovevalue( guy.var_3ed97f8, guy );
            guy thread function_262b28d4( undefined, "scene_z_stk_alley_harass_police_arrival_first_car" );
        }
    }
    
    level flag::wait_till( "flag_alley_3_lazar_close_door" );
    
    foreach ( guy in a_ents )
    {
        if ( isai( guy ) && isalive( guy ) )
        {
            guy notify( #"hash_339e977c12dc1f67" );
        }
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0xe75678d9, Offset: 0x50b0
// Size: 0x20c
function function_3e251a37( a_ents )
{
    foreach ( guy in a_ents )
    {
        if ( isai( guy ) )
        {
            if ( isdefined( guy.animname ) && guy.animname == "civ1" )
            {
                level.var_1562c9fe = guy;
            }
            
            guy.var_3ed97f8 = arraycopy( a_ents );
            arrayremovevalue( guy.var_3ed97f8, guy );
            function_6e32d510( guy, "civilian_flee_dumpster" );
            guy thread function_262b28d4( 1, "scene_z_stk_alley_harass_police_arrival_civs" );
        }
    }
    
    level flag::wait_till( "flag_alley_3_lazar_close_door" );
    
    foreach ( guy in a_ents )
    {
        if ( isai( guy ) && isalive( guy ) )
        {
            guy notify( #"hash_339e977c12dc1f67" );
        }
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x4c8d80b6, Offset: 0x52c8
// Size: 0xcc
function function_87ee13bb()
{
    while ( !isdefined( level.var_4de0f519 ) && !isdefined( level.var_1562c9fe ) )
    {
        waitframe( 1 );
    }
    
    level.var_4de0f519 flag::wait_till_clear( "in_car" );
    wait 2;
    var_f430b579 = undefined;
    var_f430b579 = self function_77fe8bb5( level.var_4de0f519, level.var_1562c9fe );
    
    if ( isdefined( var_f430b579 ) )
    {
        level thread function_a809c979( level.var_4de0f519, level.var_1562c9fe, undefined, var_f430b579 );
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 2, eflags: 0x0
// Checksum 0x42e1df1d, Offset: 0x53a0
// Size: 0x454
function function_262b28d4( is_civ, scenedef )
{
    self endon( #"hash_339e977c12dc1f67" );
    
    if ( !level flag::get( "alley_2_stealth_was_broken" ) )
    {
        if ( is_true( is_civ ) )
        {
            util::waittill_any_ents( level, "alley_2_police_harass_end", self, "damage", self, "death" );
        }
        else
        {
            waitresult = self waittill( #"stop_vignette_scene", #"takedown_begin", #"stealth_combat", #"stealth_investigate", #"damage", #"death", #"set_alert_level" );
        }
    }
    else
    {
        wait 2;
    }
    
    level flag::set( "alley_2_police_harass_end" );
    
    if ( !isalive( self ) )
    {
        return;
    }
    
    self endon( #"death" );
    
    if ( isdefined( scenedef ) && scenedef == "scene_z_stk_alley_harass_police_arrival_first_car" )
    {
        if ( level flag::get( "police_first_car_driving" ) )
        {
            level flag::wait_till_clear( "police_first_car_driving" );
        }
        
        level scene::stop( "scene_z_stk_alley_harass_police_arrival_first_car" );
    }
    else if ( isdefined( scenedef ) && scenedef == "scene_z_stk_alley_harass_police_arrival_civs" )
    {
        level scene::stop( "scene_z_stk_alley_harass_police_arrival_civs" );
    }
    else
    {
        if ( self flag::get( "in_car" ) )
        {
            self flag::wait_till_clear( "in_car" );
        }
        
        if ( isdefined( self.current_scene ) )
        {
            if ( self scene::function_c935c42() )
            {
                [[ self._scene_object ]]->stop();
            }
        }
    }
    
    if ( !isalive( self ) || is_true( self.var_f953d31a ) )
    {
        return;
    }
    
    self notify( #"hash_81580761b9ce6a5" );
    self dialogue::function_47b06180();
    self.var_f953d31a = 1;
    
    if ( is_true( is_civ ) )
    {
        if ( self.archetype == #"civilian" )
        {
            ran = randomfloat( 0.15 );
            self util::delay( ran, undefined, &ai::set_behavior_attribute, #"_civ_mode", "panic" );
        }
        
        return;
    }
    
    self stealth_enemy::set_blind( 0 );
    player = getplayers()[ 0 ];
    
    if ( isdefined( waitresult ) && waitresult._notify != "stop_vignette_scene" && waitresult._notify != "set_alert_level" && waitresult._notify != "stealth_investigate" || !isdefined( waitresult ) )
    {
        self function_a3fcf9e0( "attack", player, player.origin );
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 2, eflags: 0x0
// Checksum 0x317ecfd1, Offset: 0x5800
// Size: 0x736
function function_958168b9( is_civ, var_3d23fb80 )
{
    level.player endon( #"death" );
    self endon( #"hash_339e977c12dc1f67", #"death" );
    
    if ( is_true( is_civ ) )
    {
        waitresult = self waittill( #"stop_vignette_scene", #"damage", #"death" );
    }
    else
    {
        waitresult = self waittill( #"stop_vignette_scene", #"takedown_begin", #"stealth_combat", #"stealth_investigate", #"damage", #"death", #"set_alert_level" );
    }
    
    if ( isdefined( self.var_3ed97f8 ) )
    {
        foreach ( ent in self.var_3ed97f8 )
        {
            if ( isai( ent ) )
            {
                ent notify( #"stop_vignette_scene" );
            }
        }
    }
    
    if ( waitresult._notify == "stop_vignette_scene" )
    {
        if ( self flag::get( "in_closet" ) && self.archetype != #"civilian" )
        {
            if ( isdefined( self.target ) )
            {
                vol = getent( self.target, "targetname" );
                self setgoal( vol );
            }
            else if ( isdefined( self.scene_struct ) && isdefined( self.scene_struct.var_17014c84 ) )
            {
                self setgoal( self.scene_struct.var_17014c84 );
            }
            else
            {
                self.goalradius = 1;
                self setgoal( ent.origin );
            }
            
            self flag::set( "break_stealth" );
        }
    }
    
    if ( isdefined( self.scene_struct ) && isdefined( self.scene_struct.var_61d3da92 ) && isdefined( self.scene_struct.var_61d3da92.script_noteworthy ) )
    {
        level flag::set( "stop_" + self.scene_struct.var_61d3da92.script_noteworthy );
    }
    
    if ( isdefined( self.scene_struct ) )
    {
        self.scene_struct notify( #"close_door" );
        self.scene_struct flag::set( "keep_scene_ai" );
    }
    
    if ( isdefined( var_3d23fb80 ) )
    {
        level notify( var_3d23fb80 );
    }
    
    if ( waitresult._notify == "damage" && self flag::get( "ai_dying_in_closet" ) )
    {
        self delete();
        return;
    }
    
    if ( waitresult._notify == "death" )
    {
        return;
    }
    
    self endon( #"death" );
    
    if ( isdefined( self.var_a0639f34 ) )
    {
        return;
    }
    
    if ( isdefined( self.current_scene ) )
    {
        level scene::stop( self.current_scene );
    }
    
    if ( !isalive( self ) || is_true( self.var_f953d31a ) )
    {
        return;
    }
    
    self notify( #"hash_81580761b9ce6a5" );
    self dialogue::function_47b06180();
    self.var_f953d31a = 1;
    
    if ( is_true( is_civ ) )
    {
        if ( self flag::get( "in_closet" ) )
        {
            self.scene_struct flag::wait_till( "closet_door_closed" );
            waitframe( 1 );
            self delete();
            return;
        }
        
        if ( self.archetype == #"civilian" )
        {
            ran = randomfloat( 0.15 );
            wait ran;
            self.var_c0321be9 = 1;
        }
        
        return;
    }
    
    self stealth_enemy::set_blind( 0 );
    
    if ( is_true( level.var_4e5a623b ) )
    {
        self.holdfire = 1;
        return;
    }
    
    player = getplayers()[ 0 ];
    
    if ( waitresult._notify != "stop_vignette_scene" && waitresult._notify != "set_alert_level" && waitresult._notify != "stealth_investigate" || isdefined( var_3d23fb80 ) )
    {
        self function_a3fcf9e0( "attack", player, player.origin );
    }
    
    if ( self flag::get( "in_closet" ) && !self flag::get( "ai_dying_in_closet" ) )
    {
        self.scene_struct flag::wait_till( "closet_door_closed" );
        wait 0.15;
        self delete();
        return;
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 4, eflags: 0x0
// Checksum 0x9e9599da, Offset: 0x5f40
// Size: 0x1bde
function function_77fe8bb5( vo_guard, var_2020cd93, var_e1b2a82b, *var_6b1c6e7d )
{
    if ( !isdefined( self.var_61d3da92.script_animation ) )
    {
        return;
    }
    
    switch ( self.var_61d3da92.script_animation )
    {
        case #"harass_check_papers":
            if ( math::cointoss() )
            {
                var_f430b579 = [];
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06160_gms1_whendidyoulasts_70";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06160_gmc1_twonightsagohes_46";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06160_gms1_anddidyouknowhe_d3";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06160_gmc1_nothatsimpossib_ab";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06160_gms1_imafraidhespart_c1";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06160_gmc1_dontberidiculou_65";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
            }
            else
            {
                var_f430b579 = [];
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06170_gmc2_hewasheavysetan_ed";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06170_gms3_andyousayyouhew_ef";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06170_gmc2_yeshewasdriving_82";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06170_gms3_haveyoueverseen_2d";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06170_gmc2_noihavent_21";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06170_gms3_okaycouldyoudes_72";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
            }
            
            break;
        case #"harass_check_car":
            if ( math::cointoss() )
            {
                var_f430b579 = [];
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06120_gms3_isthereanything_61";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06120_gmc3_onlyasparetirea_4e";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06120_gms3_whatsinthebacks_f7";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06120_gmc3_theresjustlefto_fc";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06120_gms3_wheresyourfrien_2f";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06120_gmc3_wedroveseparate_3c";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06120_gms3_thisisbigcaritw_66";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
            }
            else
            {
                var_f430b579 = [];
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06130_gms1_thiscarfitsthed_ca";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06130_gmc1_thatsimpossible_7b";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06130_gms1_doyouknowanyone_9e";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06130_gmc1_yesmywifeand2so_6d";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06130_gms1_didyoutakeyourc_d7";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06130_gmc1_nowetookatraint_bd";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06130_gms1_thenineedtoknow_2e";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06130_gmc1_whymybrotherwou_ee";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
            }
            
            break;
        case #"harass_pat_down":
            if ( math::cointoss() )
            {
                var_f430b579 = [];
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06140_gms3_yesyourpapersar_33";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06140_gmc3_nosiriveneverbe_c4";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06140_gms3_soifiweretotake_67";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06140_gmc3_youdontneedtodo_73";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06140_gms3_woulditnowyouse_28";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06140_gmc3_thatsbecauseive_63";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
            }
            else
            {
                var_f430b579 = [];
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06150_gms2_thatmaybemrfisc_14";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06150_gmc2_reallywhatfor_0b";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06150_gms2_areyouafriendof_62";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06150_gmc2_iknowhimfromwor_00";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06150_gms2_hegaveusyournam_15";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06150_gmc2_thatsimpossible_51";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
            }
            
            break;
        case #"harass_wall_frisk":
            if ( math::cointoss() )
            {
                var_f430b579 = [];
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06100_gms1_wherewereyougoi_63";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06100_gmc3_imonmywaytowork_1f";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06100_gms1_nowyouregoingto_d5";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06100_gmc3_pleasemybossisg_b7";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06100_gms1_noimafraidnot_e0";
                voline.ent = var_2020cd93;
                voline.postdelay = 0.5;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06100_gms1_itsmyjobtoquest_e1";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
            }
            else
            {
                var_f430b579 = [];
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06110_gmc2_ialreadytoldyou_a9";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06110_gms2_doyouknowwhosco_ea";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06110_gmc2_nothebarwascrow_53";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06110_gms2_whywouldsomeone_aa";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06110_gmc2_idontknow_26";
                voline.ent = var_e1b2a82b;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
                voline = spawnstruct();
                voline.alias = "vox_cp_stkt_06110_gms2_whichiswhyiwill_5c";
                voline.ent = var_2020cd93;
                voline.postdelay = 1;
                var_f430b579[ var_f430b579.size ] = voline;
            }
            
            break;
        case #"hash_77b63742dcc86dd1":
            var_f430b579 = [];
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09350_gmc1_whyareyoudoingt_dd";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09350_gms3_theyreoutofdate_c5";
            voline.ent = var_2020cd93;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09350_gmc1_ihaventhadtimet_bc";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09350_gms3_thatsnotmyconce_ac";
            voline.ent = var_2020cd93;
            voline.postdelay = 0.5;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09350_gmc1_butivedonenothi_b5";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09350_gms3_havingexpiredpa_3a";
            voline.ent = var_2020cd93;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            break;
        case #"harass_question_woman":
            var_f430b579 = [];
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09300_gms2_whatareyoudoing_61";
            voline.ent = var_2020cd93;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09300_gfc1_imonmywayhomefr_a2";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09300_gms2_whydontyouhavea_83";
            voline.ent = var_2020cd93;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09300_gfc1_normallymyhusba_73";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09300_gms2_whathospitaldoy_9f";
            voline.ent = var_2020cd93;
            voline.postdelay = 0.5;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09300_gfc1_charituniversit_fc";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09300_gms2_howlonghaveyouw_62";
            voline.ent = var_2020cd93;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09300_gfc1_3yearsbeatamiin_bc";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09300_gms2_noatleastnotyet_24";
            voline.ent = var_2020cd93;
            voline.postdelay = 0.5;
            var_f430b579[ var_f430b579.size ] = voline;
            break;
        case #"hash_7e475cfa9440fc89":
            var_f430b579 = [];
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09310_gmc2_jonasisthatreal_bf";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09310_gms3_yesbutthatdoesn_6c";
            voline.ent = var_2020cd93;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09310_gmc2_ohcomeonjonasit_3e";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09310_gmc2_ihadtogetoutfor_61";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 0.5;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09310_gms3_youriskgoingout_36";
            voline.ent = var_2020cd93;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            break;
        case #"hash_44cdda7d905a1bda":
            var_f430b579 = [];
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09330_gms1_explainitagaino_62";
            voline.ent = var_2020cd93;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09330_gmc3_okayokayyesikno_e9";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09330_gms2_keepyourhandsup_c8";
            voline.ent = var_6b1c6e7d;
            voline.postdelay = 0.5;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09330_gms1_wasthatsohardno_96";
            voline.ent = var_2020cd93;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09330_gmc3_icannottellyouw_b6";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 0.5;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_09330_gms2_andwhowereyouwi_9c";
            voline.ent = var_6b1c6e7d;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            break;
        case #"alley_2_intro":
            var_f430b579 = [];
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_07120_gmc2_iwasnttryingany_f1";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_07120_gms3_wecanalwaystell_54";
            voline.ent = var_2020cd93;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_07120_gms1_eitheryoureupto_ff";
            voline.ent = var_6b1c6e7d;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_07120_gmc2_youdidntfindany_60";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 0.5;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_07120_gms3_youmusthavehada_6e";
            voline.ent = var_2020cd93;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_07120_gmc2_iwasjustpassing_90";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            break;
        case #"harass_ask_questions":
        default:
            var_f430b579 = [];
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_06100_gms1_wherewereyougoi_63";
            voline.ent = var_2020cd93;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_06100_gmc3_imonmywaytowork_1f";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_06100_gms1_nowyouregoingto_d5";
            voline.ent = var_2020cd93;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_06100_gmc3_pleasemybossisg_b7";
            voline.ent = var_e1b2a82b;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_06100_gms1_noimafraidnot_e0";
            voline.ent = var_2020cd93;
            voline.postdelay = 0.5;
            var_f430b579[ var_f430b579.size ] = voline;
            voline = spawnstruct();
            voline.alias = "vox_cp_stkt_06100_gms1_itsmyjobtoquest_e1";
            voline.ent = var_2020cd93;
            voline.postdelay = 1;
            var_f430b579[ var_f430b579.size ] = voline;
            break;
    }
    
    return var_f430b579;
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 4, eflags: 0x0
// Checksum 0x130aa9af, Offset: 0x7b28
// Size: 0x1e8
function function_a809c979( guard, guy, guard2, var_f430b579 )
{
    level.player endon( #"death" );
    
    if ( isdefined( guard ) )
    {
        guard endon( #"death", #"hash_81580761b9ce6a5" );
    }
    
    if ( isdefined( guy ) )
    {
        guy endon( #"death", #"hash_81580761b9ce6a5" );
    }
    
    if ( isdefined( guard2 ) )
    {
        guard2 endon( #"death", #"hash_81580761b9ce6a5" );
    }
    
    while ( true )
    {
        wait randomfloatrange( 1, 10 );
        
        foreach ( var_1b73eecc in var_f430b579 )
        {
            if ( !isdefined( var_1b73eecc.ent ) )
            {
                return;
            }
            
            voline = snd::play( var_1b73eecc.alias, [ var_1b73eecc.ent, "j_head" ] );
            snd::function_2fdc4fb( voline );
            wait var_1b73eecc.postdelay;
        }
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 2, eflags: 0x0
// Checksum 0x5754bde2, Offset: 0x7d18
// Size: 0x19c
function function_875978f7( var_7921c061, var_cea8c6e1 )
{
    self endon( #"death" );
    
    if ( !isdefined( var_cea8c6e1 ) )
    {
        var_cea8c6e1 = 1;
    }
    
    if ( !isdefined( var_7921c061 ) )
    {
        var_7921c061 = "right";
    }
    
    attach_tag = "tag_accessory_" + var_7921c061;
    
    if ( !isdefined( self gettagorigin( attach_tag ) ) )
    {
        attach_tag = "tag_weapon_" + var_7921c061;
    }
    
    self.prop = "umbrella_" + var_7921c061;
    
    if ( isdefined( self gettagorigin( attach_tag ) ) )
    {
        self.umbrella = util::spawn_model( "par_umbrella_open_01", self.origin );
        self.umbrella.origin = self gettagorigin( attach_tag );
        self.umbrella.angles = self gettagangles( attach_tag );
        self.umbrella linkto( self, attach_tag, ( 0, 0, 0 ), ( 0, 0, 0 ) );
        
        if ( is_true( var_cea8c6e1 ) )
        {
            self thread util::delete_on_death( self.umbrella );
        }
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x978b7fc3, Offset: 0x7ec0
// Size: 0x164
function function_ca7fdd25( color )
{
    if ( !isdefined( color ) )
    {
        num = randomint( 4 );
        
        if ( num == 0 )
        {
            color = "black";
        }
        else if ( num == 1 )
        {
            color = "brown";
        }
        else if ( num == 2 )
        {
            color = "green";
        }
        else
        {
            color = "maroon";
        }
    }
    
    if ( color == "brown" )
    {
        self setmodel( #"par_umbrella_open_01_brown_anim" );
        return;
    }
    
    if ( color == "green" )
    {
        self setmodel( #"par_umbrella_open_01_green_anim" );
        return;
    }
    
    if ( color == "maroon" )
    {
        self setmodel( #"hash_3953cd9757fd1247" );
        return;
    }
    
    self setmodel( #"par_umbrella_open_01_anim" );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 3, eflags: 0x0
// Checksum 0x82a15e0e, Offset: 0x8030
// Size: 0x1bc
function function_bfab0117( var_7921c061, var_cea8c6e1, var_e9145a5e )
{
    self endon( #"death" );
    
    if ( !isdefined( var_cea8c6e1 ) )
    {
        var_cea8c6e1 = 1;
    }
    
    if ( !isdefined( var_7921c061 ) )
    {
        var_7921c061 = "right";
    }
    
    attach_tag = "tag_accessory_" + var_7921c061;
    
    if ( !isdefined( self gettagorigin( attach_tag ) ) )
    {
        attach_tag = "tag_weapon_" + var_7921c061;
    }
    
    if ( !is_true( var_e9145a5e ) )
    {
        self.prop = "suitcase_" + var_7921c061;
    }
    
    if ( isdefined( self gettagorigin( attach_tag ) ) )
    {
        self.briefcase = util::spawn_model( "briefcase_prop", self.origin );
        self.briefcase.origin = self gettagorigin( attach_tag );
        self.briefcase.angles = self gettagangles( attach_tag );
        self.briefcase linkto( self, attach_tag, ( 0, 0, 0 ), ( 0, 0, 0 ) );
        
        if ( is_true( var_cea8c6e1 ) )
        {
            self thread util::delete_on_death( self.briefcase );
        }
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 4, eflags: 0x0
// Checksum 0xea713cda, Offset: 0x81f8
// Size: 0x1c4
function function_2ba7047( var_d93f6413, waittime, ontime, ender )
{
    ents = getentarray( var_d93f6413, "targetname" );
    array::run_all( ents, &hide );
    
    for ( ;; )
    {
        ents = array::randomize( ents );
        
        foreach ( window in ents )
        {
            window show();
            window util::delay( randomfloatrange( ontime * 0.75, ontime * 1.25 ), "death", &hide );
            wait randomfloatrange( 0.75 * waittime, 1.25 * waittime );
        }
    }
    
    level flag::wait_till( ender );
    array::run_all( ents, &delete );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0xdabf1a36, Offset: 0x83c8
// Size: 0x124
function function_f76805ab( endon_flag )
{
    var_33ddcdd3 = getentarray( self.script_linkname, "script_linkto" );
    
    foreach ( light in var_33ddcdd3 )
    {
        if ( isdefined( light.script_noteworthy ) && light.script_noteworthy == "nowalk_on" )
        {
            self.nowalk_on = light;
            continue;
        }
        
        if ( isdefined( light.script_noteworthy ) && light.script_noteworthy == "walk_on" )
        {
            self.walk_on = light;
        }
    }
    
    self thread function_74b6434d( endon_flag );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0xe5e2a468, Offset: 0x84f8
// Size: 0x1a4
function function_74b6434d( endon_flag )
{
    while ( !level flag::get( endon_flag ) )
    {
        if ( isdefined( self.script_parameters ) && self.script_parameters == "north_south" )
        {
            self.nowalk_on hide();
            self.walk_on show();
        }
        else
        {
            self.nowalk_on show();
            self.walk_on hide();
        }
        
        wait 15;
        
        if ( isdefined( self.script_parameters ) && self.script_parameters == "north_south" )
        {
            self.nowalk_on show();
            self.walk_on hide();
        }
        else
        {
            self.nowalk_on hide();
            self.walk_on show();
        }
        
        wait 15;
        wait 0.05;
    }
    
    if ( isdefined( self.walk_on ) )
    {
        self.walk_on delete();
    }
    
    if ( isdefined( self.nowalk_on ) )
    {
        self.nowalk_on delete();
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 3, eflags: 0x0
// Checksum 0x7c7047c8, Offset: 0x86a8
// Size: 0x54
function function_d3e635a9( set_flag, notification, end_notify )
{
    if ( isdefined( end_notify ) )
    {
        level endon( end_notify );
    }
    
    self waittill( notification );
    level flag::set( set_flag );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0xc0d8c4f8, Offset: 0x8708
// Size: 0xd8
function function_ede3f327( waitflag )
{
    self endon( #"death", #"hash_302f2d025d4998b1" );
    
    if ( !isai( self ) )
    {
        return;
    }
    
    if ( isdefined( waitflag ) )
    {
        level flag::wait_till( waitflag );
    }
    
    while ( true )
    {
        if ( self function_4dab0d59() )
        {
            self lookatentity( getplayers()[ 0 ] );
        }
        else
        {
            self lookatentity();
        }
        
        wait 0.5;
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0xaf09586c, Offset: 0x87e8
// Size: 0x1d4
function function_4dab0d59()
{
    self endon( #"death" );
    player = getplayers()[ 0 ];
    withindistance = undefined;
    var_aaeeba00 = undefined;
    var_6d08b2c5 = undefined;
    distsquared = distance2dsquared( self.origin, player.origin );
    
    if ( distsquared <= 62500 )
    {
        withindistance = 1;
    }
    else
    {
        return 0;
    }
    
    var_23d4571c = anglestoforward( self.angles );
    normalizedvec = vectornormalize( player.origin - self.origin );
    var_aa74cdcb = vectordot( var_23d4571c, normalizedvec );
    
    if ( var_aa74cdcb >= cos( 70 ) )
    {
        var_aaeeba00 = 1;
    }
    else
    {
        return 0;
    }
    
    var_6d08b2c5 = util::within_fov( player.origin, player getplayerangles(), self gettagorigin( "j_head" ), cos( 80 ) );
    
    if ( is_true( var_6d08b2c5 ) )
    {
        return 1;
    }
    
    return 0;
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0xf86c8a6, Offset: 0x89c8
// Size: 0x9c
function function_a09d85a9()
{
    var_3bfdd11b = spawn( "trigger_radius", self.origin, 0, 64, 72 );
    var_3bfdd11b enablelinkto();
    var_3bfdd11b linkto( self, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    self waittill( #"death" );
    var_3bfdd11b delete();
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 5, eflags: 0x0
// Checksum 0x4f39915d, Offset: 0x8a70
// Size: 0x1a8
function function_ec76072d( initialwait, var_38d138fb, var_25941f2e, ender, var_420c424d )
{
    if ( isdefined( var_420c424d ) )
    {
        level endon( ender, var_420c424d );
    }
    else
    {
        level endon( ender );
    }
    
    guy = undefined;
    
    if ( isai( self ) && isalive( self ) )
    {
        guy = self;
    }
    
    wait initialwait;
    nags = arraycopy( var_38d138fb );
    player = getplayers()[ 0 ];
    
    while ( true )
    {
        nag = array::random( nags );
        
        if ( isdefined( nag ) && soundexists( nag ) )
        {
            if ( isdefined( guy ) )
            {
                guy dialogue::queue( nag );
            }
            else
            {
                dialogue::radio( nag );
            }
        }
        
        arrayremovevalue( nags, nag );
        
        if ( nags.size == 0 )
        {
            nags = arraycopy( var_38d138fb );
        }
        
        wait var_25941f2e;
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0xc922584d, Offset: 0x8c20
// Size: 0x3c
function function_c15079c5( animation )
{
    self setanimknobrestart( isdefined( animation ) ? animation : #"hash_680228261864fe24" );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x22c09ac1, Offset: 0x8c68
// Size: 0x3c
function function_a44394f7( animation )
{
    self setanimknobrestart( isdefined( animation ) ? animation : #"hash_52ac61c625d5d151" );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 4, eflags: 0x0
// Checksum 0x31c87623, Offset: 0x8cb0
// Size: 0x148
function function_d0551a1b( from_vol, retreat_vol, delay_min, delay_max )
{
    checkvol = getent( from_vol, "targetname" );
    var_3e1bc9cc = checkvol ai::function_18c4ff86( "axis", "human" );
    goalvolume = getent( retreat_vol, "targetname" );
    
    foreach ( retreater in var_3e1bc9cc )
    {
        retreater thread function_3817d3c4( delay_min, delay_max, goalvolume );
    }
    
    function_1eaaceab( var_3e1bc9cc );
    return var_3e1bc9cc;
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 3, eflags: 0x0
// Checksum 0xbc2057f8, Offset: 0x8e00
// Size: 0x12c
function function_3817d3c4( delay_min, delay_max, goalvolume )
{
    if ( isdefined( delay_min ) && isdefined( delay_max ) )
    {
        self endon( #"death" );
        self endon( #"deleted" );
        wait randomfloatrange( delay_min, delay_max );
    }
    
    if ( isdefined( self ) && isalive( self ) )
    {
        self.forcegoal = 0;
        self.fixednode = 0;
        self set_ignoreall( "retreat", 1 );
        self cleargoalvolume();
        self setgoal( goalvolume );
        wait randomfloatrange( 2, 5 );
        self set_ignoreall( "retreat", 0 );
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 4, eflags: 0x0
// Checksum 0xa8134a5b, Offset: 0x8f38
// Size: 0x54
function function_d6fedf97( guys, killcount, sflag, timeout )
{
    ai::waittill_dead_or_dying( guys, killcount, timeout );
    flag::set( sflag );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 2, eflags: 0x0
// Checksum 0x35d527a2, Offset: 0x8f98
// Size: 0x44
function set_ignoreall( str_group, b_ignore = 1 )
{
    self val::set( str_group, "ignoreall", b_ignore );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 2, eflags: 0x0
// Checksum 0x2464dced, Offset: 0x8fe8
// Size: 0x44
function set_ignoreme( str_group, b_ignore = 1 )
{
    self val::set( str_group, "ignoreme", b_ignore );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x27cc67ad, Offset: 0x9038
// Size: 0x21e
function function_e8e2095b()
{
    assert( isplayer( self ) );
    self endon( #"death" );
    self endon( #"hash_6ade70a9a975cc1a" );
    self notify( "e127faaf24741bf" );
    self endon( "e127faaf24741bf" );
    level thread function_7280b1fe();
    var_72834f62 = 0;
    self util::show_hint_text( #"hash_382181c90678477e", undefined, "hide_blacklight_hint", 8 );
    self util::function_5b2f930e( 3, #"uie_ui_hud_cp_actionslot_icon_black_light" );
    self notifyonplayercommand( "blacklight_toggle", "+actionslot " + 3 );
    self notifyonplayercommand( "blacklight_toggle", "+equip_toggle_actionslot " + 3 );
    
    while ( true )
    {
        if ( self scene::function_c935c42() )
        {
            wait 0.2;
            continue;
        }
        
        self waittill( #"blacklight_toggle" );
        
        if ( var_72834f62 == 0 )
        {
            var_72834f62 = !var_72834f62;
            self function_1f24a0cc( var_72834f62 );
        }
        else
        {
            var_72834f62 = 0;
            self function_1f24a0cc();
        }
        
        var_b71fa9e7 = var_72834f62 ? #"hash_7d3611ef4bd2af93" : #"uie_ui_hud_cp_actionslot_icon_black_light";
        self util::function_5b2f930e( 3, var_b71fa9e7 );
        waitframe( 1 );
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x4
// Checksum 0xdac30b1e, Offset: 0x9260
// Size: 0x80
function private function_7280b1fe()
{
    self notify( "2b78297ea38f06c7" );
    self endon( "2b78297ea38f06c7" );
    
    while ( true )
    {
        level waittill( #"save_restore" );
        player = getplayers()[ 0 ];
        player clientfield::set_to_player( "player_blacklight", 0 );
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x4
// Checksum 0x8faa019b, Offset: 0x92e8
// Size: 0x490
function private function_1f24a0cc( on )
{
    if ( is_true( on ) )
    {
        if ( !self namespace_5f6e61d9::function_cad84e26() )
        {
            self gestures::function_b6cc48ed( #"ges_drophand", undefined, 1, undefined, undefined, undefined, 1 );
        }
        
        time = self getgestureanimlength( #"ges_drophand" );
        self playrumbleonentity( #"anim_light" );
        snd::play( "evt_stk_blacklight_on" );
        wait time - 0.15;
        self notify( #"hide_blacklight_hint" );
        clientfield::set_to_player( "player_blacklight", 1 );
        self thread function_82f7d1ba();
        a_decals = getentarray( "blacklight_decals_emissive", "targetname" );
        
        foreach ( var_fd5e9fef in a_decals )
        {
            rob = undefined;
            
            switch ( var_fd5e9fef.script_parameters )
            {
                case #"hash_7cfa2ec31028648a":
                    rob = 1;
                    break;
                case #"hash_7cfa2dc3102862d7":
                    rob = 2;
                    break;
                case #"hash_7cfa2cc310286124":
                    rob = 3;
                    break;
                case #"hash_7cfa2bc310285f71":
                    rob = 4;
                    break;
                case #"hash_7cfa2ac310285dbe":
                    rob = 5;
                    break;
                case #"hash_7cfa29c310285c0b":
                    rob = 6;
                    break;
                case #"hash_7cfa28c310285a58":
                    rob = 7;
                    break;
                case #"hash_7cfa27c3102858a5":
                    rob = 8;
                    break;
            }
            
            assert( rob, "<dev string:x27b>" );
            var_fd5e9fef clientfield::set( "render_emissive_blacklight_material", rob );
        }
        
        return;
    }
    
    if ( !self namespace_5f6e61d9::function_cad84e26() )
    {
        self gestures::function_b6cc48ed( #"ges_drophand", undefined, 1, undefined, undefined, undefined, 1 );
    }
    
    self playrumbleonentity( #"anim_light" );
    time = self getgestureanimlength( #"ges_drophand" );
    snd::play( "evt_stk_blacklight_off" );
    wait time - 0.15;
    clientfield::set_to_player( "player_blacklight", 0 );
    a_decals = getentarray( "blacklight_decals_emissive", "targetname" );
    
    foreach ( var_fd5e9fef in a_decals )
    {
        var_fd5e9fef clientfield::set( "render_emissive_blacklight_material", 0 );
    }
    
    level notify( #"blacklight_off" );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x424d53d3, Offset: 0x9780
// Size: 0xcc
function function_e58f7713()
{
    self endon( #"death" );
    self notify( "ad5f8e99086bf3d" );
    self endon( "ad5f8e99086bf3d" );
    self function_1f24a0cc();
    self notify( #"hash_6ade70a9a975cc1a" );
    waitframe( 1 );
    self notifyonplayercommandremove( "blacklight_toggle", "+actionslot " + 3 );
    self notifyonplayercommandremove( "blacklight_toggle", "+equip_toggle_actionslot " + 3 );
    self util::function_658a8750( 3 );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x4
// Checksum 0x24ed373b, Offset: 0x9858
// Size: 0xe0
function private function_82f7d1ba()
{
    level endon( #"blacklight_off" );
    self notify( "455f8d81a00dedc9" );
    self endon( "455f8d81a00dedc9" );
    a_decals = getentarray( "blacklight_decals_emissive", "targetname" );
    
    foreach ( var_fd5e9fef in a_decals )
    {
        self childthread function_ca2121c1( var_fd5e9fef );
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x4
// Checksum 0x7ca22438, Offset: 0x9940
// Size: 0x102
function private function_ca2121c1( var_fd5e9fef )
{
    level endon( #"blacklight_off" );
    
    while ( true )
    {
        if ( var_fd5e9fef sightconetrace( self geteye(), self, anglestoforward( self getplayerangles() ), 6 ) )
        {
            if ( isdefined( var_fd5e9fef.script_noteworthy ) && var_fd5e9fef.script_noteworthy == "button" )
            {
                level notify( #"found_secret_button" );
            }
            
            if ( isdefined( var_fd5e9fef.script_noteworthy ) && var_fd5e9fef.script_noteworthy == "picture" )
            {
                level notify( #"found_secret_picture" );
            }
        }
        
        waitframe( 1 );
    }
}

/#

    // Namespace namespace_11998b8f/namespace_11998b8f
    // Params 3, eflags: 0x0
    // Checksum 0x853c704, Offset: 0x9a50
    // Size: 0x20c, Type: dev
    function showcone( angle, range, color )
    {
        self endon( #"death" );
        start = self geteye();
        forward = anglestoforward( self getplayerangles() );
        right = vectorcross( forward, ( 0, 0, 1 ) );
        up = vectorcross( forward, right );
        fullforward = forward * range * cos( angle );
        sideamnt = range * sin( angle );
        prevpoint = ( 0, 0, 0 );
        
        for (i = 0; i <= 20; i++) {
            coneangle = i / 20 * 360;
            point = start + fullforward + sideamnt * ( right * cos( coneangle ) + up * sin( coneangle ) );
            
            if ( i > 0 )
            {
                line( start, point, color, undefined, undefined, 1 );
                line( prevpoint, point, color, undefined, undefined, 1 );
            }
            
            prevpoint = point;
        }
    }

#/

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 2, eflags: 0x0
// Checksum 0x7cf23396, Offset: 0x9c68
// Size: 0x8e
function function_638d18a( var_8964d1a4, var_55440d21 )
{
    self endon( #"death" );
    self thread delete_on_flag( var_8964d1a4 );
    wait randomfloat( 0.3 );
    
    while ( true )
    {
        self rotateyaw( 360, var_55440d21 );
        self waittill( #"rotatedone" );
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x4
// Checksum 0xb618967e, Offset: 0x9d00
// Size: 0x44
function private delete_on_flag( var_8964d1a4 )
{
    level flag::wait_till( var_8964d1a4 );
    
    if ( isdefined( self ) )
    {
        self delete();
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 2, eflags: 0x0
// Checksum 0xf3f4eab3, Offset: 0x9d50
// Size: 0x1b0
function function_973a721b( targetname, var_8964d1a4 )
{
    cars = vehicle::simple_spawn_and_drive( targetname );
    
    foreach ( car in cars )
    {
        car thread vehicle::toggle_force_driver_taillights( 1 );
        car thread function_efa0f311();
        car thread function_b0fa1530();
        thread namespace_5ceacc03::function_aa38f91f( car, targetname );
    }
    
    if ( isdefined( var_8964d1a4 ) )
    {
        level flag::wait_till( var_8964d1a4 );
        
        foreach ( car in cars )
        {
            if ( isdefined( car ) )
            {
                car delete();
            }
        }
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0xf58f9943, Offset: 0x9f08
// Size: 0x3c
function function_efa0f311()
{
    self endon( #"death" );
    self waittill( #"lights_off" );
    self vehicle::lights_off();
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x8380763a, Offset: 0x9f50
// Size: 0x44
function function_b0fa1530()
{
    self endon( #"death" );
    self waittill( #"hash_75a4571200bb7047" );
    self thread vehicle::toggle_force_driver_taillights( 0 );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 2, eflags: 0x0
// Checksum 0xe52d61f0, Offset: 0x9fa0
// Size: 0x84
function function_d1c278ab( civilian, *params )
{
    if ( isdefined( params ) && isdefined( params.targetname ) && params.targetname == "actor_informant" )
    {
        return;
    }
    
    wait 1;
    level util::missionfailedwrapper( #"hash_d0937a52204cd4e", #"hash_b4302157d22e1af" );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x61914d28, Offset: 0xa030
// Size: 0x6c
function function_7ad4f5cb()
{
    level flag::wait_till( "all_players_connected" );
    a_s_interacts = struct::get_array( #"hash_3dd86258529972ca" );
    array::thread_all( a_s_interacts, &function_f78628e6 );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x4
// Checksum 0xd9a088d1, Offset: 0xa0a8
// Size: 0x214
function private function_f78628e6()
{
    level.player endon( #"death" );
    e_interact = util::spawn_model( #"tag_origin", self.origin, self.angles );
    
    while ( !flag::get( "apt_street_done" ) )
    {
        gameRef = self.script_noteworthy;
        var_ae865aeb = getscriptbundle( gameRef );
        var_3b88de0c = #"hash_6ffbe136c9ac4c4e";
        
        if ( isdefined( var_ae865aeb ) && isdefined( var_ae865aeb.var_303ce84a ) )
        {
            var_3b88de0c = var_ae865aeb.var_303ce84a;
        }
        
        e_interact util::create_cursor_hint( "tag_origin", ( 0, 0, 0 ), var_3b88de0c, 40, undefined, undefined, undefined, 150 );
        e_interact thread arcade_machine::function_bafc791c();
        util::waittill_any_ents_two( level, #"apt_street_done", e_interact, "trigger" );
        e_interact util::delay( 0.2, undefined, &util::remove_cursor_hint );
        
        if ( level flag::get( "apt_street_done" ) )
        {
            break;
        }
        
        self arcade_machine::play();
        self arcade_machine::function_71510186();
        self arcade_machine::exit();
    }
    
    e_interact util::remove_cursor_hint();
    e_interact delete();
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0xe8d1eb25, Offset: 0xa2c8
// Size: 0x194
function function_23f254a8()
{
    level.player endon( #"death" );
    level flag::wait_till( "level_is_go" );
    level.var_74226976 = 0;
    level.var_7247a717 = getentarray( "vol_body_hide", "targetname" );
    
    for (i = 0; i < level.var_7247a717.size; i++) {
        level.var_7247a717[ i ] thread function_8017ace8( i );
    }
    
    while ( !level flag::get( "flag_wall_enter_bldg" ) )
    {
        corpses = getcorpsearray();
        
        if ( isdefined( corpses ) && corpses.size && !level.player namespace_5f6e61d9::function_cad84e26() )
        {
            for (i = 0; i < corpses.size; i++) {
                if ( !isdefined( corpses[ i ].var_43d796e ) )
                {
                    corpses[ i ] thread hide_body();
                }
                
                waitframe( 1 );
            }
            
            corpses = [];
        }
        
        wait 0.5;
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0xc1a709b5, Offset: 0xa468
// Size: 0x326
function hide_body()
{
    level.player endon( #"death" );
    
    if ( !isdefined( self ) )
    {
        return;
    }
    
    level.var_74226976 += 1;
    count = 0;
    var_115f509b = hash( "dead_body" + string( count ) );
    
    for (result = objectives::function_285e460( var_115f509b ); isdefined( result ); result = objectives::function_285e460( var_115f509b )) {
        count += 1;
        var_115f509b = hash( "dead_body" + string( count ) );
    }
    
    self.var_43d796e = 1;
    self.var_43d796e = self function_127e0d08();
    
    if ( !self function_127e0d08() )
    {
        objectives::function_4eb5c04a( var_115f509b, self.origin, undefined, 0 );
        objectives::function_67f87f80( var_115f509b, undefined, #"hash_69754b11a8972b93" );
        
        while ( !self function_127e0d08() && !level flag::get( "flag_wall_enter_bldg" ) )
        {
            if ( level.player namespace_5f6e61d9::function_cad84e26() || function_749b1301( self ) )
            {
                objectives::hide( var_115f509b );
                
                while ( level.player namespace_5f6e61d9::function_cad84e26() || function_749b1301( self ) )
                {
                    waitframe( 1 );
                }
                
                objectives::show( var_115f509b );
                
                if ( self function_127e0d08() )
                {
                    break;
                }
            }
            
            if ( self function_127e0d08() )
            {
                break;
            }
            else if ( isdefined( self getcorpsephysicsorigin() ) )
            {
                objectives::update_position( var_115f509b, self getcorpsephysicsorigin() + ( 0, 0, 4 ) );
            }
            
            waitframe( 1 );
        }
        
        waitframe( 1 );
        objectives::remove( var_115f509b );
    }
    
    if ( isdefined( self ) )
    {
        self.var_43d796e = undefined;
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x40f2bd8a, Offset: 0xa798
// Size: 0x138, Type: bool
function function_749b1301( body )
{
    if ( !isdefined( body ) )
    {
        return true;
    }
    
    level.player endon( #"death" );
    corpse_origin = body getcorpsephysicsorigin();
    
    if ( !isdefined( body ) )
    {
        return true;
    }
    
    var_1ba06d7d = getdvarint( #"hash_22565811a3cacb35", 2048 );
    z_max = 128;
    var_1f7b35d3 = z_max > abs( level.player.origin[ 2 ] - corpse_origin[ 2 ] );
    dist_to_check = distance2dsquared( corpse_origin, level.player.origin );
    var_b31cc77f = var_1ba06d7d * var_1ba06d7d;
    
    if ( var_b31cc77f < dist_to_check )
    {
        return true;
    }
    
    return false;
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0xb6f78f4e, Offset: 0xa8d8
// Size: 0x1f4
function function_8017ace8( count )
{
    level.player endon( #"death" );
    vol = self;
    
    while ( !level.player function_21a15560() )
    {
        wait 0.1;
    }
    
    obj_string = hash( "hide_body" + string( count ) );
    objectives::function_4eb5c04a( obj_string, self.origin + ( 0, 0, 16 ), undefined, 0 );
    objectives::function_67f87f80( obj_string, undefined, #"hash_7d4157f470a85bdb" );
    objectives::hide( obj_string );
    vol.occupied = 0;
    
    while ( !level flag::get( "flag_wall_enter_bldg" ) && !self.occupied )
    {
        waitframe( 1 );
        
        if ( !self.occupied && level.player function_21a15560() && function_9dc3052d( self ) )
        {
            objectives::show( obj_string );
            level.player function_152a4ed7( self );
            objectives::hide( obj_string );
        }
        
        waitframe( 1 );
    }
    
    objectives::hide( obj_string );
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x44cb76d1, Offset: 0xaad8
// Size: 0x82
function function_152a4ed7( vol )
{
    level.player endon( #"death" );
    level.player endon( #"hash_4dff86580406a1af" );
    
    while ( level.player function_21a15560() && function_9dc3052d( vol ) )
    {
        waitframe( 1 );
    }
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0xdc7779e3, Offset: 0xab68
// Size: 0x3a, Type: bool
function function_21a15560()
{
    level.player endon( #"death" );
    return level.player namespace_5f6e61d9::function_cad84e26();
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 1, eflags: 0x0
// Checksum 0x1249f725, Offset: 0xabb0
// Size: 0x1a6, Type: bool
function function_9dc3052d( vol )
{
    level.player endon( #"death" );
    var_c1fbe4bf = getdvarint( #"hash_71717d5ec94ac60", 650 );
    z_max = 128;
    var_1f7b35d3 = z_max > abs( level.player.origin[ 2 ] - vol.origin[ 2 ] );
    
    if ( var_c1fbe4bf * var_c1fbe4bf > distance2dsquared( vol.origin, level.player.origin ) && var_1f7b35d3 )
    {
        return true;
    }
    
    var_5d7caad2 = [];
    
    for (i = 0; i < level.var_7247a717.size; i++) {
        if ( !level.var_7247a717[ i ].occupied )
        {
            var_5d7caad2[ var_5d7caad2.size ] = level.var_7247a717[ i ];
        }
    }
    
    areas = array::quick_sort( var_5d7caad2, &function_e20ca101 );
    
    if ( areas[ 0 ] == vol )
    {
        return true;
    }
    
    return false;
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 2, eflags: 0x0
// Checksum 0xc196fcfb, Offset: 0xad60
// Size: 0xa4, Type: bool
function function_e20ca101( left, right )
{
    level.player endon( #"death" );
    var_a7e7fc15 = distance2dsquared( level.player.origin, left.origin );
    var_a0e7d4aa = distance2dsquared( level.player.origin, right.origin );
    return var_a7e7fc15 < var_a0e7d4aa;
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 0, eflags: 0x0
// Checksum 0x7e87e828, Offset: 0xae10
// Size: 0xc8, Type: bool
function function_127e0d08()
{
    if ( !isdefined( self ) )
    {
        return true;
    }
    
    for (i = 0; i < level.var_7247a717.size; i++) {
        if ( isdefined( self ) && istouching( self getcorpsephysicsorigin(), level.var_7247a717[ i ] ) )
        {
            return true;
        }
    }
    
    if ( !ispointonnavmesh( self getcorpsephysicsorigin() ) )
    {
        level notify( #"hash_2e50440663441b0a" );
        return true;
    }
    
    return false;
}

// Namespace namespace_11998b8f/namespace_11998b8f
// Params 2, eflags: 0x0
// Checksum 0xe1474c97, Offset: 0xaee0
// Size: 0x140
function function_d81925f5( vol, ender )
{
    level endon( ender, #"save_restore" );
    level.player endon( #"death" );
    e_vol = getent( vol, "targetname" );
    
    while ( true )
    {
        while ( !level.player istouching( e_vol ) )
        {
            waitframe( 1 );
        }
        
        level.player notify( #"hash_4dff86580406a1af" );
        level flag::set( "no_corpse_pickup" );
        level action_utility::function_396e2076();
        
        while ( level.player istouching( e_vol ) )
        {
            waitframe( 1 );
        }
        
        level flag::clear( "no_corpse_pickup" );
    }
}


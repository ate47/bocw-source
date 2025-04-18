#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\zm\zm_gold_main_quest;
#using scripts\zm\zm_gold_util;
#using scripts\zm\zm_gold_vo;
#using scripts\zm_common\zm_utility_zsurvival;

#namespace namespace_2a67e53;

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 0, eflags: 0x0
// Checksum 0x79718f2f, Offset: 0x2a8
// Size: 0xac
function init()
{
    clientfield::register( "scriptmover", "" + #"hash_4545e81f76244b", 16000, 1, "int" );
    clientfield::register( "world", "" + #"hash_5c8a1cf9b543c223", 16000, getminbitcountfornum( 5 ), "int" );
    level thread function_613baf1b();
}

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 0, eflags: 0x4
// Checksum 0x609f984a, Offset: 0x360
// Size: 0x194
function private function_613baf1b()
{
    level.terminal = {};
    var_8edcbb0e = struct::get( "computer_cursor", "targetname" );
    var_fe4c20ac = ( floor( var_8edcbb0e.origin[ 0 ] + 0.5 ), floor( var_8edcbb0e.origin[ 1 ] + 0.5 ), floor( var_8edcbb0e.origin[ 2 ] + 0.5 ) );
    level.terminal.cursor = var_fe4c20ac;
    level.terminal.group = randomintrangeinclusive( 1, 5 );
    level function_26d68622( var_fe4c20ac, level.terminal.group );
    level function_18e95e2b( level.terminal.cursor, level.terminal.screen );
    level function_626826e8( var_fe4c20ac, level.terminal.group );
}

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 2, eflags: 0x4
// Checksum 0xbecdf8af, Offset: 0x500
// Size: 0x11e
function private function_26d68622( v_center, var_50721d66 )
{
    var_4fb7e8bb = struct::get( "satellite_computer_screen", "targetname" );
    var_91b180f0 = {};
    var_91b180f0.entity = getent( "mq_sat_scr", "targetname" );
    var_91b180f0.model = #"hash_3bc4ed2f30d82d31" + var_50721d66;
    var_91b180f0.info = util::spawn_model( "tag_origin", var_91b180f0.entity.origin, var_91b180f0.entity.angles );
    var_91b180f0.info hide();
    var_91b180f0.center = v_center;
    var_91b180f0.half_size = var_4fb7e8bb.var_fc656a7;
    level.terminal.screen = var_91b180f0;
}

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 2, eflags: 0x4
// Checksum 0x28fd1ffa, Offset: 0x628
// Size: 0x82
function private function_18e95e2b( var_e9a27711, s_screen )
{
    var_91baf01e = util::spawn_model( "tag_origin" );
    var_91baf01e setforcenocull();
    level function_d25d2a9( var_e9a27711, s_screen, var_91baf01e );
    level.terminal.control = var_91baf01e;
}

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 2, eflags: 0x4
// Checksum 0x12397e6, Offset: 0x6b8
// Size: 0x5e6
function private function_626826e8( v_center, var_50721d66 )
{
    var_3277c11d = [];
    n_index = var_50721d66 - 1;
    var_9e6970bc = [ [ ( 0, -15.7, 5.9 ), ( 0, -13.7, -2.5 ) ], [ ( 0, -13.7, -2.5 ), ( 0, 12.9, -2.3 ) ], [ ( 0, 20, -2.2 ), ( 0, -12.4, -7.1 ) ], [ ( 0, 10.9, -7.7 ), ( 0, 0.6, 8.4 ) ], [ ( 0, 2.5, 9.5 ), ( 0, 19.6, -2.3 ) ] ];
    
    foreach ( v_offset in var_9e6970bc[ n_index ] )
    {
        var_9da78756 = { #origin:v_center + v_offset, #type:2 };
        
        if ( !isdefined( var_3277c11d ) )
        {
            var_3277c11d = [];
        }
        else if ( !isarray( var_3277c11d ) )
        {
            var_3277c11d = array( var_3277c11d );
        }
        
        var_3277c11d[ var_3277c11d.size ] = var_9da78756;
    }
    
    var_a08fa5bf = [ [ ( 0, 0.6, -6.7 ), ( 0, -20.9, -2.3 ) ], [ ( 0, 0.6, 0.9 ), ( 0, -19.9, 1.8 ) ], [ ( 0, -13.7, 10 ), ( 0, 0.6, 0.5 ) ], [ ( 0, 22.3, -2.5 ), ( 0, 14.8, 5.8 ) ], [ ( 0, 11.2, 5.8 ), ( 0, -1.1, 1.6 ) ] ];
    
    foreach ( v_offset in var_a08fa5bf[ n_index ] )
    {
        var_9da78756 = { #origin:v_center + v_offset, #type:1 };
        
        if ( !isdefined( var_3277c11d ) )
        {
            var_3277c11d = [];
        }
        else if ( !isarray( var_3277c11d ) )
        {
            var_3277c11d = array( var_3277c11d );
        }
        
        var_3277c11d[ var_3277c11d.size ] = var_9da78756;
    }
    
    var_19c1ffe7 = [ ( 0, 5.3, 7 ), ( 0, 5.3, -6.4 ), ( 0, -4.7, -4.3 ), ( 0, -21.1, 7 ), ( 0, -8.3, -8.4 ) ];
    var_9da78756 = { #origin:v_center + var_19c1ffe7[ n_index ], #type:3 };
    
    if ( !isdefined( var_3277c11d ) )
    {
        var_3277c11d = [];
    }
    else if ( !isarray( var_3277c11d ) )
    {
        var_3277c11d = array( var_3277c11d );
    }
    
    var_3277c11d[ var_3277c11d.size ] = var_9da78756;
    level.terminal.satellites = var_3277c11d;
}

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 1, eflags: 0x0
// Checksum 0x976f43c1, Offset: 0xca8
// Size: 0x398
function function_902089af( e_player )
{
    level endon( #"end_game" );
    e_player val::set( #"satellite_terminal", "disable_weapons", 1 );
    e_player val::set( #"satellite_terminal", "allow_crouch", 0 );
    e_player val::set( #"satellite_terminal", "allow_prone", 0 );
    e_player val::set( #"satellite_terminal", "allow_jump", 0 );
    e_player zm_utility_zsurvival::function_14bada94();
    e_player zm_gold_util::function_b488623( 1 );
    level.terminal.screen.entity setmodel( level.terminal.screen.model );
    level.terminal.screen.entity playsound( #"hash_50335038922faab3" );
    level.terminal.screen.entity playloopsound( #"hash_5037543892339a56" );
    level.terminal.control clientfield::set( "" + #"hash_4545e81f76244b", 1 );
    level thread function_d59c42ab( level.terminal );
    s_result = e_player function_f3c47da1( level.terminal, self );
    level notify( #"terminal_off" );
    level.terminal.screen.info function_92c05efb( undefined );
    level.terminal.control clientfield::set( "" + #"hash_4545e81f76244b", 0 );
    level.terminal.screen.entity stoploopsound();
    level.terminal.screen.entity playsound( #"hash_76f715206715f477" );
    level.terminal.screen.entity setmodel( #"p9_zm_gold_screen_02_off" );
    
    if ( isdefined( e_player ) )
    {
        e_player zm_gold_util::function_b488623( 0 );
        e_player val::reset_all( #"satellite_terminal" );
        e_player zm_utility_zsurvival::function_548f282();
    }
    
    return s_result;
}

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 0, eflags: 0x0
// Checksum 0xbeb8085, Offset: 0x1048
// Size: 0x11e
function cleanup()
{
    level notify( #"terminal_off" );
    waitframe( 1 );
    
    if ( isdefined( level.terminal.screen.entity ) )
    {
        level.terminal.screen.entity setmodel( #"p9_zm_gold_screen_02_off" );
    }
    
    if ( isdefined( level.terminal.screen.info ) )
    {
        level.terminal.screen.info delete();
    }
    
    if ( isdefined( level.terminal.control ) )
    {
        level.terminal.control delete();
    }
    
    array::delete_all( level.terminal.satellites );
    level.terminal = undefined;
}

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 1, eflags: 0x4
// Checksum 0xf7b20133, Offset: 0x1170
// Size: 0x5c, Type: bool
function private function_4b648627( var_e9a27711 )
{
    v_delta = self.origin - var_e9a27711;
    return sqr( v_delta[ 1 ] ) + sqr( v_delta[ 2 ] ) <= 0.25;
}

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 1, eflags: 0x0
// Checksum 0x20ceaf7, Offset: 0x11d8
// Size: 0x17e
function function_d59c42ab( var_3f94a5b6 )
{
    level endon( #"terminal_off" );
    var_3f94a5b6.screen.info function_92c05efb( var_3f94a5b6.target );
    
    while ( true )
    {
        if ( !isdefined( var_3f94a5b6.target ) || !var_3f94a5b6.target function_4b648627( var_3f94a5b6.cursor ) )
        {
            profilestart();
            var_3f94a5b6.target = undefined;
            
            foreach ( var_9da78756 in level.terminal.satellites )
            {
                if ( var_9da78756 function_4b648627( var_3f94a5b6.cursor ) )
                {
                    var_3f94a5b6.target = var_9da78756;
                    break;
                }
            }
            
            profilestop();
            var_3f94a5b6.screen.info function_92c05efb( var_3f94a5b6.target );
        }
        
        waitframe( 1 );
    }
}

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 1, eflags: 0x0
// Checksum 0xcaa5f3fa, Offset: 0x1360
// Size: 0x11c
function function_92c05efb( var_9da78756 )
{
    if ( isdefined( var_9da78756 ) )
    {
        switch ( var_9da78756.type )
        {
            case 1:
                self setmodel( #"hash_104dce48b019e348" );
                break;
            case 2:
                self setmodel( #"hash_104dd148b019e861" );
                break;
            case 3:
                self setmodel( #"hash_104dcf48b019e4fb" );
                break;
        }
        
        self setscale( 0.9 );
        self show();
        return;
    }
    
    self hide();
}

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 1, eflags: 0x4
// Checksum 0x52c5fc83, Offset: 0x1488
// Size: 0x13a
function private function_1e3823bc( var_3f94a5b6 )
{
    s_input = { #updown:0, #var_93354cc2:0 };
    
    if ( self buttonbitstate( var_3f94a5b6.var_a666ab6e[ 0 ] ) )
    {
        s_input.updown += 1;
    }
    else if ( self buttonbitstate( var_3f94a5b6.var_a666ab6e[ 1 ] ) )
    {
        s_input.updown -= 1;
    }
    
    if ( self buttonbitstate( var_3f94a5b6.var_a666ab6e[ 2 ] ) )
    {
        s_input.var_93354cc2 -= 1;
    }
    else if ( self buttonbitstate( var_3f94a5b6.var_a666ab6e[ 3 ] ) )
    {
        s_input.var_93354cc2 += 1;
    }
    
    return s_input;
}

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 4, eflags: 0x4
// Checksum 0xa996b9dc, Offset: 0x15d0
// Size: 0x1ea
function private function_d25d2a9( var_e9a27711, s_screen, var_7b1452d6, n_active = 0 )
{
    var_2b6fca73[ 0 ] = distance( var_e9a27711, s_screen.center + ( 0, 60, -20 ) );
    var_2b6fca73[ 1 ] = distance( var_e9a27711, s_screen.center + ( 0, -40, -80 ) );
    a_angles[ 0 ] = acos( abs( s_screen.center[ 1 ] + ( 0, 60, -20 )[ 1 ] - var_e9a27711[ 1 ] ) / var_2b6fca73[ 0 ] );
    a_angles[ 1 ] = acos( abs( s_screen.center[ 2 ] + ( 0, -40, -80 )[ 2 ] - var_e9a27711[ 2 ] ) / var_2b6fca73[ 1 ] );
    var_7b1452d6.radius = ( var_2b6fca73[ 0 ], var_2b6fca73[ 1 ], 0 );
    var_7b1452d6.origin = var_7b1452d6.radius * 10000;
    var_7b1452d6.origin = ( var_7b1452d6.origin[ 0 ], var_7b1452d6.origin[ 1 ], n_active );
    var_7b1452d6.angles = ( a_angles[ 0 ], a_angles[ 1 ], 0 );
}

/#

    // Namespace namespace_2a67e53/namespace_2a67e53
    // Params 0, eflags: 0x4
    // Checksum 0xdb672c10, Offset: 0x17c8
    // Size: 0xbe, Type: dev
    function private function_dae63c17()
    {
        level endon( #"end_game", #"terminal_off" );
        self endon( #"disconnect", #"death" );
        
        while ( true )
        {
            self iprintlnbold( "<dev string:x38>" );
            self iprintlnbold( "<dev string:x5d>" );
            self iprintlnbold( "<dev string:x82>" );
            wait 5;
        }
    }

#/

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 1, eflags: 0x0
// Checksum 0x61345968, Offset: 0x1890
// Size: 0x14a
function function_b699cdc8( var_3f94a5b6 )
{
    var_1806c69c = self gamepadusedlast();
    
    if ( var_1806c69c !== var_3f94a5b6.gamepad )
    {
        if ( var_1806c69c )
        {
            var_3f94a5b6.var_a666ab6e[ 0 ] = "BUTTON_BIT_ACTIONSLOT_1";
            var_3f94a5b6.var_a666ab6e[ 1 ] = "BUTTON_BIT_ACTIONSLOT_2";
            var_3f94a5b6.var_a666ab6e[ 2 ] = "BUTTON_BIT_ACTIONSLOT_3";
            var_3f94a5b6.var_a666ab6e[ 3 ] = "BUTTON_BIT_ACTIONSLOT_4";
            var_3f94a5b6.var_a666ab6e[ 4 ] = "BUTTON_BIT_ACTION";
            var_3f94a5b6.var_a666ab6e[ 5 ] = "BUTTON_BIT_STANCE";
        }
        else
        {
            var_3f94a5b6.var_a666ab6e[ 0 ] = "BUTTON_BIT_RELOAD";
            var_3f94a5b6.var_a666ab6e[ 1 ] = "BUTTON_BIT_FRAG";
            var_3f94a5b6.var_a666ab6e[ 2 ] = "BUTTON_BIT_OFFHANDSECONDARY";
            var_3f94a5b6.var_a666ab6e[ 3 ] = "BUTTON_BIT_MELEE";
            var_3f94a5b6.var_a666ab6e[ 4 ] = "BUTTON_BIT_ACTIVATE";
            var_3f94a5b6.var_a666ab6e[ 5 ] = "BUTTON_BIT_CROUCH";
        }
        
        var_3f94a5b6.gamepad = var_1806c69c;
    }
}

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 1, eflags: 0x4
// Checksum 0xc1aed20a, Offset: 0x19e8
// Size: 0x146
function private function_d228e8b0( var_3f94a5b6 )
{
    level endon( #"terminal_off" );
    self endon( #"disconnect", #"death" );
    
    while ( true )
    {
        waitresult = self waittill( #"menuresponse" );
        menu = waitresult.menu;
        response = waitresult.response;
        
        if ( menu == #"zm_gold_align_satellite_hud" )
        {
            switch ( waitresult.response )
            {
                case #"hash_72b3080b298c200b":
                    var_3f94a5b6.var_fa7400be[ self getentitynumber() ][ 4 ] = 1;
                    break;
                case #"hash_383c519d3bdac984":
                    var_3f94a5b6.var_fa7400be[ self getentitynumber() ][ 5 ] = 1;
                    break;
            }
        }
    }
}

// Namespace namespace_2a67e53/namespace_2a67e53
// Params 2, eflags: 0x0
// Checksum 0x35edf815, Offset: 0x1b38
// Size: 0x122e
function function_f3c47da1( var_3f94a5b6, e_trigger )
{
    level endon( #"terminal_off" );
    self endon( #"disconnect", #"death" );
    e_trigger endon( #"death" );
    b_warning = 0;
    
    /#
        self thread function_dae63c17();
    #/
    
    if ( !isdefined( var_3f94a5b6.var_a666ab6e ) )
    {
        var_3f94a5b6.var_a666ab6e = [];
    }
    
    if ( !isdefined( var_3f94a5b6.var_fa7400be ) )
    {
        var_3f94a5b6.var_fa7400be = [];
    }
    
    if ( !isdefined( var_3f94a5b6.var_fa7400be[ self getentitynumber() ] ) )
    {
        var_3f94a5b6.var_fa7400be[ self getentitynumber() ] = [];
    }
    
    var_3f94a5b6.gamepad = undefined;
    self thread function_d228e8b0( var_3f94a5b6 );
    
    while ( self usebuttonpressed() )
    {
        waitframe( 1 );
    }
    
    while ( self istouching( e_trigger ) )
    {
        self function_b699cdc8( var_3f94a5b6 );
        
        if ( self buttonbitstate( var_3f94a5b6.var_a666ab6e[ 4 ] ) || is_true( var_3f94a5b6.var_fa7400be[ self getentitynumber() ][ 4 ] ) )
        {
            var_3f94a5b6.var_fa7400be[ self getentitynumber() ][ 4 ] = 0;
            b_success = var_3f94a5b6.target.type === 3;
            
            if ( var_3f94a5b6.target.type === 3 || var_3f94a5b6.target.type === 1 || var_3f94a5b6.target.type === 2 )
            {
                if ( b_success )
                {
                    level.terminal.screen.entity playsound( #"hash_3a135283f2131a84" );
                }
                else
                {
                    level.terminal.screen.entity playsound( #"hash_5fefa13a2bdf38d3" );
                    level thread zm_gold_vo::function_8cc97115();
                    wait 0.5;
                    b_warning = 1;
                }
                
                s_result = { #success:b_success };
                v_delta = var_3f94a5b6.cursor - var_3f94a5b6.screen.center;
                s_result.yaw = v_delta[ 1 ] / var_3f94a5b6.screen.half_size[ 1 ] + 0.5;
                
                if ( s_result.yaw < 0 )
                {
                    s_result.yaw = 0;
                }
                else if ( s_result.yaw > 1 )
                {
                    s_result.yaw = 1;
                }
                
                s_result.pitch = v_delta[ 2 ] / var_3f94a5b6.screen.half_size[ 2 ] + 0.5;
                
                if ( s_result.pitch < 0 )
                {
                    s_result.pitch = 0;
                }
                else if ( s_result.pitch > 1 )
                {
                    s_result.pitch = 1;
                }
                
                break;
            }
        }
        else if ( self buttonbitstate( var_3f94a5b6.var_a666ab6e[ 5 ] ) || is_true( var_3f94a5b6.var_fa7400be[ self getentitynumber() ][ 5 ] ) )
        {
            var_3f94a5b6.var_fa7400be[ self getentitynumber() ][ 5 ] = 0;
            break;
        }
        
        s_input = self function_1e3823bc( var_3f94a5b6 );
        s_screen = var_3f94a5b6.screen;
        
        /#
            box( s_screen.center, s_screen.half_size * -1, s_screen.half_size, 0, ( 1, 0, 0 ), 1, 0 );
            linesphere( var_3f94a5b6.cursor, 0.2, ( 1, 0, 0 ), 1, 0 );
            
            foreach ( var_9da78756 in var_3f94a5b6.satellites )
            {
                debugstar( var_9da78756.origin, 1, ( 1, 1, 0 ), var_9da78756.type, 0.1 );
            }
        #/
        
        if ( s_input.updown != 0 || s_input.var_93354cc2 != 0 )
        {
            b_warning = 0;
            a_angles = [];
            var_37503ff5 = [];
            self function_bc82f900( #"hash_b102b3c65a5b674" );
            
            if ( s_input.updown != 0 )
            {
                v_anchor = ( 0, 60, -20 );
                n_radius = var_3f94a5b6.control.radius[ 0 ];
                n_angle = var_3f94a5b6.control.angles[ 0 ];
                
                /#
                    line( s_screen.center + v_anchor, var_3f94a5b6.cursor, ( 0, 1, 0 ), 1, 0 );
                    print3d( var_3f94a5b6.cursor + ( 0, 0, 2 ), n_angle + "<dev string:x9b>" + n_radius, ( 0, 1, 0 ), 1, 0.1 );
                #/
                
                var_26c827e8 = abs( v_anchor[ 2 ] + s_screen.half_size[ 2 ] ) / n_radius;
                a_angles[ 0 ] = var_26c827e8 < 1 ? asin( var_26c827e8 ) : 0;
                var_c575b928 = abs( v_anchor[ 1 ] + s_screen.half_size[ 1 ] ) / n_radius;
                a_angles[ 1 ] = var_c575b928 < 1 ? acos( var_c575b928 ) : 0;
                
                if ( a_angles[ 0 ] > a_angles[ 1 ] )
                {
                    var_37503ff5[ 0 ] = a_angles[ 0 ];
                    
                    /#
                        v_intersection = s_screen.center + ( 0, v_anchor[ 1 ] - n_radius * cos( a_angles[ 0 ] ), s_screen.half_size[ 2 ] * -1 );
                    #/
                }
                else
                {
                    var_37503ff5[ 0 ] = a_angles[ 1 ];
                    
                    /#
                        v_intersection = s_screen.center + ( 0, s_screen.half_size[ 1 ] * -1, v_anchor[ 2 ] + n_radius * sin( a_angles[ 1 ] ) );
                    #/
                }
                
                /#
                    line( s_screen.center + v_anchor, v_intersection, ( 1, 0, 0 ), 1, 0 );
                    print3d( v_intersection, var_37503ff5[ 0 ], ( 0, 1, 0 ), 1, 0.1 );
                #/
                
                var_26c827e8 = abs( v_anchor[ 2 ] - s_screen.half_size[ 2 ] ) / n_radius;
                a_angles[ 0 ] = var_26c827e8 < 1 ? asin( var_26c827e8 ) : 90;
                var_c575b928 = abs( v_anchor[ 1 ] - s_screen.half_size[ 1 ] ) / n_radius;
                a_angles[ 1 ] = var_c575b928 < 1 ? acos( var_c575b928 ) : 90;
                
                if ( a_angles[ 0 ] < a_angles[ 1 ] )
                {
                    var_37503ff5[ 1 ] = a_angles[ 0 ];
                    
                    /#
                        v_intersection = s_screen.center + ( 0, v_anchor[ 1 ] - n_radius * cos( a_angles[ 0 ] ), s_screen.half_size[ 2 ] );
                    #/
                }
                else
                {
                    var_37503ff5[ 1 ] = a_angles[ 1 ];
                    
                    /#
                        v_intersection = s_screen.center + ( 0, s_screen.half_size[ 1 ], v_anchor[ 2 ] + n_radius * sin( a_angles[ 1 ] ) );
                    #/
                }
                
                /#
                    line( s_screen.center + v_anchor, v_intersection, ( 1, 0, 0 ), 1, 0 );
                    print3d( v_intersection, var_37503ff5[ 1 ], ( 0, 1, 0 ), 1, 0.1 );
                #/
                
                var_9c66888e = n_angle + s_input.updown * 20 / n_radius;
                
                if ( var_9c66888e < var_37503ff5[ 0 ] )
                {
                    var_9c66888e = var_37503ff5[ 0 ];
                }
                else if ( var_9c66888e > var_37503ff5[ 1 ] )
                {
                    var_9c66888e = var_37503ff5[ 1 ];
                }
                
                v_target = s_screen.center + v_anchor + n_radius * ( 0, cos( var_9c66888e ) * -1, sin( var_9c66888e ) );
                n_active = 1;
            }
            else
            {
                v_anchor = ( 0, -40, -80 );
                n_radius = var_3f94a5b6.control.radius[ 1 ];
                n_angle = var_3f94a5b6.control.angles[ 1 ];
                
                /#
                    line( s_screen.center + v_anchor, var_3f94a5b6.cursor, ( 0, 0, 1 ), 1, 0 );
                    print3d( var_3f94a5b6.cursor - ( 0, 0, 2 ), n_angle + "<dev string:x9b>" + n_radius, ( 0, 0, 1 ), 1, 0.1 );
                #/
                
                var_c575b928 = abs( v_anchor[ 2 ] - s_screen.half_size[ 2 ] ) / n_radius;
                a_angles[ 0 ] = var_c575b928 < 1 ? acos( var_c575b928 ) : 0;
                var_26c827e8 = abs( v_anchor[ 1 ] + s_screen.half_size[ 1 ] ) / n_radius;
                a_angles[ 1 ] = var_26c827e8 < 1 ? asin( var_26c827e8 ) : 0;
                
                if ( a_angles[ 0 ] > a_angles[ 1 ] )
                {
                    var_37503ff5[ 0 ] = a_angles[ 0 ];
                    
                    /#
                        v_intersection = s_screen.center + ( 0, v_anchor[ 1 ] + n_radius * sin( a_angles[ 0 ] ), s_screen.half_size[ 2 ] );
                    #/
                }
                else
                {
                    var_37503ff5[ 0 ] = a_angles[ 1 ];
                    
                    /#
                        v_intersection = s_screen.center + ( 0, s_screen.half_size[ 1 ] * -1, v_anchor[ 2 ] + n_radius * cos( a_angles[ 1 ] ) );
                    #/
                }
                
                /#
                    line( s_screen.center + v_anchor, v_intersection, ( 1, 0, 0 ), 1, 0 );
                    print3d( v_intersection, var_37503ff5[ 0 ], ( 0, 0, 1 ), 1, 0.1 );
                #/
                
                var_c575b928 = abs( v_anchor[ 2 ] + s_screen.half_size[ 2 ] ) / n_radius;
                a_angles[ 0 ] = var_c575b928 < 1 ? acos( var_c575b928 ) : 90;
                var_26c827e8 = abs( v_anchor[ 1 ] - s_screen.half_size[ 1 ] ) / n_radius;
                a_angles[ 1 ] = var_26c827e8 < 1 ? asin( var_26c827e8 ) : 90;
                
                if ( a_angles[ 0 ] < a_angles[ 1 ] )
                {
                    var_37503ff5[ 1 ] = a_angles[ 0 ];
                    
                    /#
                        v_intersection = s_screen.center + ( 0, v_anchor[ 1 ] + n_radius * sin( a_angles[ 0 ] ), s_screen.half_size[ 2 ] * -1 );
                    #/
                }
                else
                {
                    var_37503ff5[ 1 ] = a_angles[ 1 ];
                    
                    /#
                        v_intersection = s_screen.center + ( 0, s_screen.half_size[ 1 ], v_anchor[ 2 ] + n_radius * cos( a_angles[ 1 ] ) );
                    #/
                }
                
                /#
                    line( s_screen.center + v_anchor, v_intersection, ( 1, 0, 0 ), 1, 0 );
                    print3d( v_intersection, var_37503ff5[ 1 ], ( 0, 0, 1 ), 1, 0.1 );
                #/
                
                var_9c66888e = n_angle + s_input.var_93354cc2 * 20 / n_radius;
                
                if ( var_9c66888e < var_37503ff5[ 0 ] )
                {
                    var_9c66888e = var_37503ff5[ 0 ];
                }
                else if ( var_9c66888e > var_37503ff5[ 1 ] )
                {
                    var_9c66888e = var_37503ff5[ 1 ];
                }
                
                v_target = s_screen.center + v_anchor + n_radius * ( 0, sin( var_9c66888e ), cos( var_9c66888e ) );
                n_active = 2;
            }
            
            /#
                line( var_3f94a5b6.cursor, v_target, ( 1, 1, 0 ), 1, 0, 10 );
            #/
            
            var_3f94a5b6.cursor = v_target;
            level function_d25d2a9( var_3f94a5b6.cursor, s_screen, var_3f94a5b6.control, n_active );
            wait 0.05;
            continue;
        }
        
        waitframe( 1 );
    }
    
    return s_result;
}


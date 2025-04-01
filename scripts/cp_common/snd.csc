#using script_1cd690a97dfca36e;
#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\util_shared;
#using scripts\cp_common\snd_debug;
#using scripts\cp_common\snd_draw;
#using scripts\cp_common\snd_utility;

#namespace snd;

// Namespace snd/snd
// Params 0, eflags: 0x5
// Checksum 0x44f01151, Offset: 0x4d0
// Size: 0x42a
function private autoexec function_4047919b()
{
    if ( !isdefined( level._snd ) )
    {
        level._snd = spawnstruct();
        level._snd.var_8c37ff34 = 1;
        level._snd._callbacks = [];
        level._snd.var_3cc765a3 = [];
        level._snd.var_92f63ad0 = [];
        level._snd.var_d37e94ca = #"centity";
        level._snd.var_90903fc0 = 0;
        level._snd._callbacks[ #"pitch_get" ] = &function_6f94855d;
        level._snd._callbacks[ #"pitch_set" ] = &function_679011ab;
        level._snd._callbacks[ #"volume_get" ] = &function_7308d4d0;
        level._snd._callbacks[ #"volume_set" ] = &function_a43df3ac;
        level._snd._callbacks[ #"player_view" ] = &function_959bbfdb;
        level._snd._callbacks[ #"player_angles" ] = &function_2c0c5fbc;
        level._snd._callbacks[ #"player_fov" ] = &function_bf76eea3;
        level._snd.var_cd3159ba = [];
    }
    
    util::register_system( "clientSoundCommand", &function_b0baf0b5 );
    clientfield::register( "actor", "clientFieldSndTargetActor", 1, 11, "int", &function_201a102c, 0, 0 );
    clientfield::register( "allplayers", "clientFieldSndTargetPlayer", 1, 11, "int", &function_201a102c, 0, 0 );
    clientfield::register( "vehicle", "clientFieldSndTargetVehicle", 1, 11, "int", &function_201a102c, 0, 0 );
    clientfield::register( "scriptmover", "clientFieldSndTargetScriptMover", 1, 11, "int", &function_201a102c, 0, 0 );
    function_3ffa0089();
    
    /#
        level thread function_ce893a25();
        dvar( "<dev string:x38>", "<dev string:x58>", &function_360bb421 );
        dvar( "<dev string:x5c>", "<dev string:x58>", &function_360bb421 );
        dvar( "<dev string:x7c>", "<dev string:x58>", &function_360bb421 );
    #/
    
    waittillframeend();
    level._snd.isinitialized = 1;
}

// Namespace snd/snd
// Params 2, eflags: 0x4
// Checksum 0x9ee27114, Offset: 0x908
// Size: 0x34
function private function_b0baf0b5( localclientnum, _cmd )
{
    level thread function_8610d024( localclientnum, _cmd );
}

// Namespace snd/snd
// Params 2, eflags: 0x4
// Checksum 0xa692619b, Offset: 0x948
// Size: 0x222
function private function_8610d024( localclientnum, _cmd )
{
    waitforplayers();
    player = function_a8210e43( localclientnum );
    args = strtok( _cmd, " " );
    waittillframeend();
    
    if ( !isdefined( player ) )
    {
        return;
    }
    
    if ( isarray( args ) && args.size >= 2 )
    {
        cmd = args[ 0 ];
        
        switch ( cmd )
        {
            case #"#":
            case #"m":
                level thread function_21d71e38( player, cmd, args );
                break;
            case #"t":
                level thread function_6d366059( player, cmd, args );
                break;
            case #"v":
                level thread function_cc4bf5ee( player, cmd, args );
                break;
            default:
                /#
                    function_81fac19d( function_d78e3644(), "<dev string:x9c>" + cmd + "<dev string:xbb>" );
                #/
                
                break;
        }
    }
    
    if ( isscriptfunctionptr( level._snd._callbacks[ #"clientsoundcommand" ] ) )
    {
        level thread [[ level._snd._callbacks[ #"clientsoundcommand" ] ]]( localclientnum, _cmd );
    }
}

// Namespace snd/snd
// Params 3, eflags: 0x4
// Checksum 0xcaaf8970, Offset: 0xb78
// Size: 0x22a
function private function_21d71e38( player, cmd, args )
{
    assert( isplayer( player ) );
    assert( isdefined( player.localclientnum ) );
    assert( isstring( cmd ) && ( cmd == "<dev string:xc0>" || cmd == "<dev string:xc5>" ) );
    assert( isarray( args ) && args.size >= 2 );
    
    if ( function_81fac19d( !isscriptfunctionptr( level._snd._callbacks[ #"client_msg" ] ), "snd: client msg without initialization" ) )
    {
        return;
    }
    
    msg = undefined;
    
    if ( cmd == "#" )
    {
        msg = function_35dccf3f( args[ 1 ] );
    }
    else if ( cmd == "M" )
    {
        msg = args[ 1 ];
    }
    
    var_65cde9d7 = isstring( msg ) || ishash( msg );
    
    if ( function_81fac19d( !var_65cde9d7, "snd: invalid client msg" ) )
    {
        return;
    }
    
    level thread [[ level._snd._callbacks[ #"client_msg" ] ]]( player, msg );
}

// Namespace snd/snd
// Params 3, eflags: 0x4
// Checksum 0x218660b1, Offset: 0xdb0
// Size: 0x190
function private function_6d366059( player, cmd, args )
{
    assert( isplayer( player ) );
    assert( isdefined( player.localclientnum ) );
    assert( isstring( cmd ) && cmd == "<dev string:xca>" );
    assert( isarray( args ) );
    entitynumber = int( args[ 1 ] );
    targetname = string( args[ 2 ] );
    
    if ( args.size > 3 )
    {
        for (i = 3; i < args.size; i++) {
            targetname += " " + string( args[ i ] );
        }
    }
    
    level._snd.var_cd3159ba[ "" + entitynumber ] = targetname;
}

// Namespace snd/snd
// Params 3, eflags: 0x4
// Checksum 0xa882d197, Offset: 0xf48
// Size: 0x542
function private function_cc4bf5ee( player, cmd, args )
{
    assert( isplayer( player ) );
    assert( isdefined( player.localclientnum ) );
    assert( isstring( cmd ) && cmd == "<dev string:xcf>" );
    assert( isarray( args ) );
    var_e1fb96c7 = isdefined( level._snd._callbacks[ #"client_voice" ] ) && isscriptfunctionptr( level._snd._callbacks[ #"client_voice" ] );
    entitynumber = int( args[ 1 ] );
    soundalias = undefined;
    
    if ( args.size >= 3 && isdefined( args[ 2 ] ) )
    {
        soundalias = string( args[ 2 ] );
    }
    
    if ( args.size > 3 )
    {
        assert( isstring( soundalias ) );
        
        for (i = 3; i < args.size; i++) {
            soundalias += " " + string( args[ i ] );
        }
    }
    
    ent = undefined;
    framecount = 0;
    
    while ( true )
    {
        ent = getentbynum( player.localclientnum, entitynumber );
        
        if ( isentity( ent ) )
        {
            if ( var_e1fb96c7 )
            {
                ent thread [[ level._snd._callbacks[ #"client_voice" ] ]]( ent, soundalias );
            }
            else
            {
                var_90709302 = isdefined( soundalias );
                var_2115c64c = function_a6779cbd( ent.var_6d22c36f );
                
                if ( var_90709302 )
                {
                    if ( !isarray( ent.var_bfe14559 ) )
                    {
                        ent.var_bfe14559 = [ soundalias ];
                    }
                    else
                    {
                        ent.var_bfe14559[ ent.var_bfe14559.size ] = soundalias;
                    }
                }
                
                if ( var_2115c64c && !var_90709302 )
                {
                    stop( ent.var_6d22c36f );
                    ent.var_bfe14559 = undefined;
                    ent.var_6d22c36f = undefined;
                }
                
                if ( !isdefined( ent.var_6d22c36f ) )
                {
                    while ( isarray( ent.var_bfe14559 ) )
                    {
                        alias = ent.var_bfe14559[ 0 ];
                        arrayremoveindex( ent.var_bfe14559, 0, 0 );
                        ent.var_6d22c36f = play( alias, [ ent, "j_head" ] );
                        function_2fdc4fb( ent.var_6d22c36f );
                        wait 0.666;
                        
                        if ( isarray( ent.var_bfe14559 ) && ent.var_bfe14559.size == 0 )
                        {
                            ent.var_bfe14559 = undefined;
                        }
                        
                        if ( isdefined( ent ) )
                        {
                            ent.var_6d22c36f = undefined;
                        }
                    }
                }
            }
            
            break;
        }
        
        framecount++;
        
        if ( function_81fac19d( framecount % 60 == 0, "snd: client voice entity not found '" + soundalias + "' (" + entitynumber + ")" ) )
        {
            if ( function_81fac19d( framecount % 1800 == 0, "snd: client soundalias ABORTED '" + soundalias + "' (" + entitynumber + ")" ) )
            {
                return;
            }
        }
        
        waitframe( 1 );
    }
}

// Namespace snd/snd
// Params 7, eflags: 0x0
// Checksum 0x4434624b, Offset: 0x1498
// Size: 0x5c
function function_201a102c( localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwasdemojump )
{
    self thread function_c5463db2( localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwasdemojump );
}

// Namespace snd/snd
// Params 7, eflags: 0x0
// Checksum 0x3c7c2d3b, Offset: 0x1500
// Size: 0x232
function function_c5463db2( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump )
{
    if ( function_81fac19d( !isscriptfunctionptr( level._snd._callbacks[ #"client_targetname" ] ), "snd: client targetname without initialization" ) )
    {
        return;
    }
    
    if ( function_81fac19d( !isentity( self ), "snd: client targetname called with non-entity" ) )
    {
        return;
    }
    
    ent = self;
    entitynumber = ent getentitynumber();
    
    if ( isdefined( ent ) && bwasdemojump == 0 )
    {
        return;
    }
    
    framecount = 0;
    
    while ( isdefined( ent ) )
    {
        targetname = level._snd.var_cd3159ba[ "" + entitynumber ];
        
        if ( isentity( ent ) && isstring( targetname ) )
        {
            ent.targetname = targetname;
            ent thread [[ level._snd._callbacks[ #"client_targetname" ] ]]( ent, targetname );
            level thread function_3c94cf0c( ent );
            return;
        }
        
        framecount++;
        
        if ( function_81fac19d( framecount % 60 == 0, "snd: client targetname not found for $e" + entitynumber ) )
        {
            if ( function_81fac19d( framecount % 1800 == 0, "snd: client targetname ABORTED for $e" + entitynumber ) )
            {
                return;
            }
        }
        
        waitframe( 1 );
    }
}

// Namespace snd/snd
// Params 1, eflags: 0x0
// Checksum 0x74a2cf61, Offset: 0x1740
// Size: 0x64
function function_3c94cf0c( ent )
{
    entitynumber = ent getentitynumber();
    ent waittill( #"death" );
    level._snd.var_cd3159ba[ "" + entitynumber ] = undefined;
}

// Namespace snd/snd
// Params 1, eflags: 0x0
// Checksum 0x4aa996e8, Offset: 0x17b0
// Size: 0x94
function function_d4ec748e( callback )
{
    if ( function_81fac19d( !isscriptfunctionptr( callback ), "snd_client_msg_init: invalid function" ) )
    {
        /#
            if ( function_f984063f() )
            {
                debugbreak();
            }
        #/
        
        return;
    }
    
    level._snd._callbacks[ #"client_msg" ] = callback;
}

// Namespace snd/snd
// Params 1, eflags: 0x0
// Checksum 0xe0d94c48, Offset: 0x1850
// Size: 0x94
function function_ce78b33b( callback )
{
    if ( function_81fac19d( !isscriptfunctionptr( callback ), "snd_client_targetname_init: invalid function" ) )
    {
        /#
            if ( function_f984063f() )
            {
                debugbreak();
            }
        #/
        
        return;
    }
    
    level._snd._callbacks[ #"client_targetname" ] = callback;
}

#namespace namespace_afa8e18b;

// Namespace namespace_afa8e18b/snd
// Params 4, eflags: 0x0
// Checksum 0x2e7a9be, Offset: 0x18f0
// Size: 0x1b0
function function_2761fc04( ent, var_1d25915, linkedentity, var_e330010e )
{
    assert( isdefined( ent ), "<dev string:xd4>" );
    assert( isdefined( ent.soundkey ), "<dev string:xee>" );
    
    if ( isdefined( linkedentity ) )
    {
        var_e330010e = linkedentity snd::function_bf7c949( var_e330010e );
        linkedoffset = ( 0, 0, 0 );
        linkedangles = ( 0, 0, 0 );
        
        if ( isdefined( var_1d25915 ) )
        {
            linkedoffset = var_1d25915;
        }
        
        assert( isdefined( var_e330010e ), "<dev string:x109>" );
        
        if ( isstring( var_e330010e ) && var_e330010e != "" && var_e330010e != "tag_origin" )
        {
            ent linkto( linkedentity, var_e330010e );
        }
        else
        {
            ent linkto( linkedentity );
        }
        
        if ( !isarray( linkedentity.var_a415b6d6 ) )
        {
            linkedentity.var_a415b6d6 = [];
        }
        
        linkedentity.var_a415b6d6[ ent.soundkey ] = ent;
        return;
    }
    
    level._snd.var_92f63ad0[ ent.soundkey ] = ent;
}

// Namespace namespace_afa8e18b/snd
// Params 4, eflags: 0x0
// Checksum 0x6f651ce1, Offset: 0x1aa8
// Size: 0x246
function function_5275752c( soundalias, var_1d25915, linkedentity, var_e330010e )
{
    ent = undefined;
    spawnorigin = undefined;
    
    if ( isdefined( linkedentity ) && isdefined( var_e330010e ) && isdefined( var_1d25915 ) )
    {
        spawnorigin = linkedentity gettagorigin( var_e330010e );
        spawnorigin += var_1d25915;
    }
    else if ( isdefined( linkedentity ) && isdefined( var_e330010e ) )
    {
        spawnorigin = linkedentity gettagorigin( var_e330010e );
    }
    else if ( isdefined( linkedentity ) && isdefined( var_1d25915 ) )
    {
        spawnorigin = linkedentity.origin;
        spawnorigin += var_1d25915;
    }
    else if ( isdefined( linkedentity ) )
    {
        spawnorigin = linkedentity.origin;
    }
    else if ( !isdefined( linkedentity ) && !isdefined( var_1d25915 ) )
    {
        var_3692a397 = ( 0, 0, -32768 );
        spawnorigin = var_3692a397;
    }
    else
    {
        spawnorigin = var_1d25915;
    }
    
    assert( isdefined( spawnorigin ) );
    ent = undefined;
    
    if ( isdefined( linkedentity ) )
    {
        ent = spawn( 0, spawnorigin, "script_model" );
        ent setmodel( "tag_origin" );
    }
    else
    {
        ent = spawn( 0, spawnorigin, "script_origin" );
    }
    
    assert( isdefined( ent ), "<dev string:x129>" );
    ent.var_90c86b97 = linkedentity;
    ent.soundtype = #"centity";
    ent.soundkey = ent getentitynumber();
    ent.targetname = "snd " + soundalias;
    return ent;
}

// Namespace namespace_afa8e18b/snd
// Params 1, eflags: 0x0
// Checksum 0x8669dd81, Offset: 0x1cf8
// Size: 0x174
function function_bdc44456( ent )
{
    if ( snd::function_81fac19d( !isdefined( ent ) || function_3132f113( ent ), "snd: free on deleted entity!" ) )
    {
        /#
            if ( snd::function_f984063f() )
            {
                debugbreak();
            }
        #/
        
        return;
    }
    
    if ( isdefined( ent.var_90c86b97 ) && isarray( ent.var_90c86b97.var_a415b6d6 ) )
    {
        linkedentity = ent.var_90c86b97;
        var_5244aa9 = isdefined( linkedentity.var_a415b6d6[ ent.soundkey ] );
        
        if ( var_5244aa9 == 1 )
        {
            linkedentity.var_a415b6d6[ ent.soundkey ] = undefined;
        }
        else
        {
            /#
                if ( snd::function_f984063f() )
                {
                    debugbreak();
                }
            #/
        }
    }
    else
    {
        level._snd.var_92f63ad0[ ent.soundkey ] = undefined;
    }
    
    waittillframeend();
    ent delete();
}

// Namespace namespace_afa8e18b/snd
// Params 4, eflags: 0x0
// Checksum 0xcf98be3c, Offset: 0x1e78
// Size: 0x27e
function function_bb749fc3( soundobject, soundalias, initialvolume, delaytime )
{
    ent = soundobject;
    currentvolume = undefined;
    ent endon( #"death" );
    assert( isdefined( ent ) );
    assert( isstring( soundalias ) || ishash( soundalias ) );
    currentvolume = 1;
    
    if ( !isdefined( initialvolume ) && isdefined( currentvolume ) )
    {
        initialvolume = currentvolume;
    }
    
    if ( snd::did_init() == 0 )
    {
        var_cd7344db = !isdefined( delaytime ) || snd::isnumber( delaytime ) && delaytime == 0;
        
        if ( snd::function_81fac19d( var_cd7344db, "snd: delayed due to first frame!" ) )
        {
            delaytime = 0.05;
        }
    }
    
    if ( snd::isnumber( delaytime ) && delaytime > 0 )
    {
        wait delaytime;
    }
    
    soundhandle = -1;
    assert( soundexists( soundalias ), "<dev string:x151>" + soundalias );
    
    if ( soundislooping( soundalias ) == 1 )
    {
        soundhandle = ent playloopsound( soundalias );
    }
    else
    {
        donenotifystr = "sounddone";
        soundhandle = ent playsound( 0, soundalias );
        ent.soundhandle = soundhandle;
        ent thread function_297cdf07( donenotifystr, soundhandle );
    }
    
    ent.soundalias = soundalias;
    ent.soundhandle = soundhandle;
}

// Namespace namespace_afa8e18b/snd
// Params 2, eflags: 0x0
// Checksum 0x2df614f9, Offset: 0x2100
// Size: 0x18c
function function_273d939b( soundobject, fadeoutseconds )
{
    soundobject endon( #"death" );
    ent = soundobject;
    
    if ( snd::function_81fac19d( !isdefined( ent ) || function_3132f113( ent ), "snd: stop on deleted entity!" ) )
    {
        /#
            if ( snd::function_f984063f() )
            {
                debugbreak();
            }
        #/
        
        return;
    }
    
    soundalias = ent.soundalias;
    
    if ( isstring( soundalias ) )
    {
        if ( is_true( soundislooping( soundalias ) ) )
        {
            ent stoploopsound( ent.soundhandle, fadeoutseconds );
        }
        else
        {
            ent stopsounds();
            stopsound( ent.soundhandle );
        }
        
        waitframe( 1 );
        ent.soundalias = undefined;
        ent.soundhandle = undefined;
    }
    
    ent.soundtype = undefined;
    function_bdc44456( ent );
}

// Namespace namespace_afa8e18b/snd
// Params 2, eflags: 0x4
// Checksum 0x599d50d5, Offset: 0x2298
// Size: 0xa4
function private function_5834ae26( soundalias, done )
{
    ent = self;
    ent endon( #"death" );
    waittime = soundgetplaybacktime( soundalias );
    waittime *= 1.25;
    waittime /= 1000;
    wait waittime;
    ent notify( done, ent.soundalias );
    function_bdc44456( ent );
}

// Namespace namespace_afa8e18b/snd
// Params 1, eflags: 0x4
// Checksum 0xd41ad6a5, Offset: 0x2348
// Size: 0x64
function private function_7b0e43ab( done )
{
    ent = self;
    ent endon( #"death" );
    ent waittill( done );
    ent notify( done, ent.soundalias );
    function_bdc44456( ent );
}

// Namespace namespace_afa8e18b/snd
// Params 2, eflags: 0x4
// Checksum 0xd68eb063, Offset: 0x23b8
// Size: 0x7c
function private function_297cdf07( done, soundhandle )
{
    ent = self;
    ent endon( #"death" );
    
    while ( soundplaying( soundhandle ) )
    {
        waitframe( 1 );
    }
    
    ent notify( done, ent.soundalias );
    function_bdc44456( ent );
}

/#

    // Namespace namespace_afa8e18b/snd
    // Params 4, eflags: 0x0
    // Checksum 0x82ac3476, Offset: 0x2440
    // Size: 0x44, Type: dev
    function function_b5959278( *ent, *var_1d25915, *linkedentity, *var_e330010e )
    {
        assert( 0, "<dev string:x16f>" );
    }

#/

// Namespace namespace_afa8e18b/snd
// Params 4, eflags: 0x0
// Checksum 0x7d66fbad, Offset: 0x2490
// Size: 0x46
function function_85daf9f0( *soundalias, *var_1d25915, *linkedentity, *var_e330010e )
{
    assert( 0, "<dev string:x16f>" );
    return undefined;
}

/#

    // Namespace namespace_afa8e18b/snd
    // Params 1, eflags: 0x0
    // Checksum 0xd86e43f6, Offset: 0x24e0
    // Size: 0x2c, Type: dev
    function function_6ac5b570( *ent )
    {
        assert( 0, "<dev string:x16f>" );
    }

    // Namespace namespace_afa8e18b/snd
    // Params 4, eflags: 0x0
    // Checksum 0xcc94ec83, Offset: 0x2518
    // Size: 0x44, Type: dev
    function function_2dde45d9( *soundobject, *soundalias, *initialvolume, *delaytime )
    {
        assert( 0, "<dev string:x16f>" );
    }

    // Namespace namespace_afa8e18b/snd
    // Params 2, eflags: 0x0
    // Checksum 0x368e01bb, Offset: 0x2568
    // Size: 0x34, Type: dev
    function function_9f156b27( *soundobject, *fadeoutseconds )
    {
        assert( 0, "<dev string:x16f>" );
    }

#namespace snd;

#/

// Namespace snd/snd
// Params 1, eflags: 0x4
// Checksum 0x9eab0734, Offset: 0x25a8
// Size: 0xcc
function private function_3323ac64( soundobject )
{
    if ( isdefined( soundobject ) == 1 && function_3132f113( soundobject ) == 0 && isdefined( soundobject.var_aceb47b0 ) == 0 )
    {
        soundobject.var_aceb47b0 = spawnstruct();
        soundobject.var_aceb47b0.volume = 1;
        soundobject.var_aceb47b0.pitch = 1;
        soundobject.var_aceb47b0.threads = [];
        function_f2a84378( soundobject, function_6cfa7975() );
    }
}

// Namespace snd/snd
// Params 3, eflags: 0x4
// Checksum 0xed5248d7, Offset: 0x2680
// Size: 0x8c
function private function_5803da43( sound, volume, time )
{
    if ( isdefined( sound ) && isdefined( sound.soundhandle ) )
    {
        if ( time > 0 )
        {
            time = 1 / time;
        }
        
        setsoundvolumerate( sound.soundhandle, time );
        setsoundvolume( sound.soundhandle, volume );
    }
}

// Namespace snd/snd
// Params 3, eflags: 0x4
// Checksum 0x37d6b805, Offset: 0x2718
// Size: 0x8c
function private function_d7b79aea( sound, pitch, time )
{
    if ( isdefined( sound ) && isdefined( sound.soundhandle ) )
    {
        if ( time > 0 )
        {
            time = 1 / time;
        }
        
        setsoundpitchrate( sound.soundhandle, time );
        setsoundpitch( sound.soundhandle, pitch );
    }
}

// Namespace snd/snd
// Params 3, eflags: 0x4
// Checksum 0xfcda8b15, Offset: 0x27b0
// Size: 0xf2
function private function_d72fc2b9( soundobject, value, scalefunc )
{
    if ( function_3132f113( soundobject ) == 1 || isdefined( soundobject ) == 0 )
    {
        return;
    }
    
    function_3323ac64( soundobject );
    assert( isdefined( soundobject.var_aceb47b0 ) == 1 );
    
    if ( isdefined( scalefunc ) == 1 )
    {
        if ( scalefunc == &function_5803da43 )
        {
            soundobject.var_aceb47b0.volume = value;
            return;
        }
        
        if ( scalefunc == &function_d7b79aea )
        {
            soundobject.var_aceb47b0.pitch = value;
        }
    }
}

// Namespace snd/snd
// Params 2, eflags: 0x4
// Checksum 0xe54a8ec1, Offset: 0x28b0
// Size: 0x9e
function private function_2530f85d( soundobject, scalefunc )
{
    assert( isdefined( soundobject ) );
    
    if ( isdefined( soundobject.var_aceb47b0 ) == 1 )
    {
        if ( scalefunc == &function_5803da43 )
        {
            return soundobject.var_aceb47b0.volume;
        }
        else if ( scalefunc == &function_d7b79aea )
        {
            return soundobject.var_aceb47b0.pitch;
        }
    }
    
    return undefined;
}

// Namespace snd/snd
// Params 1, eflags: 0x4
// Checksum 0x63714112, Offset: 0x2958
// Size: 0x15e
function private function_6c660df4( scalefunc )
{
    var_5a2568f4 = 0;
    scalestring = undefined;
    self endon( #"death" );
    self waittill( #"hash_2178ab9046055607" );
    assert( isdefined( scalefunc ) == 1, "<dev string:x192>" );
    
    if ( scalefunc == &function_5803da43 )
    {
        self.var_aceb47b0.var_6d865326 = undefined;
        scalestring = "volume";
    }
    
    if ( scalefunc == &function_d7b79aea )
    {
        self.var_aceb47b0.var_a1666553 = undefined;
        scalestring = "pitch";
    }
    
    assert( isdefined( scalestring ) == 1 );
    self.var_aceb47b0.threads[ scalestring ] = undefined;
    
    if ( isdefined( self.var_aceb47b0.var_6d865326 ) == 0 && isdefined( self.var_aceb47b0.var_a1666553 ) == 0 )
    {
        self.var_aceb47b0.isscaling = undefined;
    }
    
    self notify( "snd_stop_scale_" + scalestring );
    waittillframeend();
}

// Namespace snd/snd
// Params 5, eflags: 0x4
// Checksum 0x22a3a8a3, Offset: 0x2ac0
// Size: 0x762
function private function_48e190dd( curve, scale, time, scalefunc, callbackfunc )
{
    self endon( #"death", #"disconnect" );
    assert( isdefined( self.var_aceb47b0 ) == 1 );
    assert( isdefined( self.var_aceb47b0.threads ) == 1 );
    assert( isdefined( scalefunc ) == 1 );
    assert( time > 0 );
    curvepts = function_fc955f31( curve );
    assert( curvepts > 0, "<dev string:x58>" );
    frametime = float( function_6cfa7975() );
    timeremainder = function_a18ae88f( float( time ), frametime );
    time = float( time ) + frametime - timeremainder;
    timeinterval = float( time ) / float( curvepts );
    var_aeb0a629 = function_a18ae88f( timeinterval, frametime );
    timeinterval = timeinterval + frametime - var_aeb0a629;
    timeinterval = max( timeinterval, frametime );
    var_a7ce73cd = int( timeinterval * 1000 + 0.5 );
    timems = int( time * 1000 + 0.5 );
    var_5bd40646 = int( 0 );
    
    if ( isdefined( self.var_aceb47b0.isscaling ) == 1 )
    {
        var_e971cedf = 0;
        
        if ( isdefined( self.var_aceb47b0.var_6d865326 ) == 1 && scalefunc == &function_5803da43 || isdefined( self.var_aceb47b0.var_a1666553 ) == 1 && scalefunc == &function_d7b79aea )
        {
            var_e971cedf = 1;
        }
        
        if ( var_e971cedf == 1 )
        {
            self notify( #"hash_2178ab9046055607" );
            waittillframeend();
            self notify( #"hash_6e1c0f8335cc603c" );
        }
    }
    
    scalestart = function_2530f85d( self, scalefunc );
    inversecurve = 0;
    
    if ( scalestart > scale )
    {
        inversecurve = 1;
    }
    
    while ( isdefined( self.soundalias ) == 0 )
    {
        waitframe( 1 );
    }
    
    waittillframeend();
    self thread function_6c660df4( scalefunc );
    self.var_aceb47b0.isscaling = 1;
    scalestring = undefined;
    
    if ( scalefunc == &function_5803da43 )
    {
        self.var_aceb47b0.var_6d865326 = 1;
        scalestring = "volume";
    }
    
    if ( scalefunc == &function_d7b79aea )
    {
        self.var_aceb47b0.var_a1666553 = 1;
        scalestring = "pitch";
    }
    
    assert( isdefined( scalestring ) == 1 );
    self.var_aceb47b0.threads[ scalestring ] = 1;
    self endon( "snd_stop_scale_" + scalestring );
    
    while ( var_5bd40646 < timems && isdefined( self ) == 1 && isdefined( self.var_aceb47b0.threads[ scalestring ] ) == 1 )
    {
        remainingtime = ( timems - var_5bd40646 ) * 0.001;
        
        if ( isdefined( self.var_aceb47b0.waitinterval ) == 1 )
        {
            timeinterval = max( self.var_aceb47b0.waitinterval, frametime );
        }
        
        waittime = min( timeinterval, remainingtime );
        var_5bd40646 += int( waittime * 1000 + 0.5 );
        timefrac = float( var_5bd40646 ) / float( timems );
        scalevalue = 1;
        
        if ( inversecurve > 0 )
        {
            timefrac = math::clamp( 1 - timefrac, 0, 1 );
            curvevalue = function_b918d683( timefrac, curve );
            scalevalue = lerpfloat( scale, scalestart, curvevalue );
        }
        else
        {
            curvevalue = function_b918d683( timefrac, curve );
            scalevalue = lerpfloat( scalestart, scale, curvevalue );
        }
        
        /#
        #/
        
        [[ scalefunc ]]( self, scalevalue, waittime );
        wait waittime;
        
        if ( isdefined( self ) == 1 && function_3132f113( self ) == 0 )
        {
            function_d72fc2b9( self, scalevalue, scalefunc );
        }
    }
    
    if ( !isdefined( self ) )
    {
        return;
    }
    
    if ( isdefined( self ) == 1 )
    {
        self notify( #"hash_2178ab9046055607", scalefunc );
    }
    
    if ( isdefined( callbackfunc ) == 1 )
    {
        self [[ callbackfunc ]]();
    }
}

// Namespace snd/snd
// Params 2, eflags: 0x0
// Checksum 0xb29434c7, Offset: 0x3230
// Size: 0xaa
function function_f2a84378( soundobject, waitinterval )
{
    assert( isdefined( soundobject ) == 1 );
    function_3323ac64( soundobject );
    assert( isdefined( soundobject.var_aceb47b0 ) == 1 );
    soundobject.var_aceb47b0.waitinterval = max( waitinterval, function_6cfa7975() );
}

// Namespace snd/snd
// Params 6, eflags: 0x0
// Checksum 0xdd178677, Offset: 0x32e8
// Size: 0x478
function snd_scale( soundobject, scalewhat, value, time, curve, callbackfunc )
{
    var_43b6ef7d = 0.00390625;
    var_16f452ed = 2;
    var_7a9a68cb = 0;
    var_69111be2 = 4;
    
    if ( function_81fac19d( isdefined( soundobject ) == 0, "snd_scale: called on undefined entity" ) )
    {
        return;
    }
    
    if ( function_81fac19d( function_3132f113( soundobject ) == 1, "snd_scale: called on removed entity" ) )
    {
        return;
    }
    
    assert( isdefined( soundobject ) == 1, "<dev string:x1bc>" );
    assert( function_3132f113( soundobject ) == 0, "<dev string:x1e5>" );
    assert( isdefined( value ) == 1 );
    function_3323ac64( soundobject );
    var_e127d44f = value;
    scalefunc = undefined;
    scalestring = undefined;
    
    switch ( scalewhat )
    {
        case #"volume":
        case #"volume":
        case #"v":
        case #"v":
        case #"vol":
        case #"vol":
            curve = function_ea2f17d1( curve, "easeout" );
            scalefunc = &function_5803da43;
            scalestring = "volume";
            var_e127d44f = math::clamp( value, var_7a9a68cb, var_69111be2 );
            function_81fac19d( value != var_e127d44f, "snd_scale: clamped volume " + value + " -> " + var_e127d44f );
            break;
        case #"p":
        case #"p":
        case #"pitch":
        case #"pitch":
            curve = function_ea2f17d1( curve, "linear" );
            scalefunc = &function_d7b79aea;
            scalestring = "pitch";
            var_e127d44f = math::clamp( value, var_43b6ef7d, var_16f452ed );
            function_81fac19d( value != var_e127d44f, "snd_scale: clamped pitch " + value + " -> " + var_e127d44f );
            break;
    }
    
    assert( isdefined( soundobject ) == 1 );
    
    if ( isdefined( time ) == 0 || time == 0 )
    {
        [[ scalefunc ]]( soundobject, var_e127d44f, 0 );
        function_d72fc2b9( soundobject, var_e127d44f, scalefunc );
        soundobject notify( #"hash_2178ab9046055607", scalefunc );
        soundobject notify( #"hash_6e1c0f8335cc603c" );
        soundobject notify( "snd_stop_scale_" + scalestring );
        return;
    }
    
    soundobject thread function_48e190dd( curve, var_e127d44f, time, scalefunc, callbackfunc );
    
    if ( scalefunc == &function_5803da43 )
    {
        soundobject notify( #"hash_501fa67f084af993" );
    }
}

// Namespace snd/snd
// Params 5, eflags: 0x0
// Checksum 0xb970d8db, Offset: 0x3768
// Size: 0x54
function function_a43df3ac( soundobject, volume, time, curve, callbackfunc )
{
    snd_scale( soundobject, "volume", volume, time, curve, callbackfunc );
}

// Namespace snd/snd
// Params 5, eflags: 0x0
// Checksum 0x189724b3, Offset: 0x37c8
// Size: 0x54
function function_679011ab( soundobject, pitch, time, curve, callbackfunc )
{
    snd_scale( soundobject, "pitch", pitch, time, curve, callbackfunc );
}

// Namespace snd/snd
// Params 1, eflags: 0x0
// Checksum 0x4d44b9bf, Offset: 0x3828
// Size: 0xba
function function_7308d4d0( soundobject )
{
    if ( function_81fac19d( isdefined( soundobject ) == 0, "snd_scale: called on undefined entity" ) )
    {
        return 0;
    }
    
    if ( function_81fac19d( function_3132f113( soundobject ) == 1, "snd_scale: called on removed entity" ) )
    {
        return 0;
    }
    
    assert( isdefined( soundobject ) == 1 );
    return function_2530f85d( soundobject, &function_5803da43 );
}

// Namespace snd/snd
// Params 1, eflags: 0x0
// Checksum 0x94ae3d5b, Offset: 0x38f0
// Size: 0xba
function function_6f94855d( soundobject )
{
    if ( function_81fac19d( isdefined( soundobject ) == 0, "snd_scale: called on undefined entity" ) )
    {
        return 0;
    }
    
    if ( function_81fac19d( function_3132f113( soundobject ) == 1, "snd_scale: called on removed entity" ) )
    {
        return 0;
    }
    
    assert( isdefined( soundobject ) == 1 );
    return function_2530f85d( soundobject, &function_d7b79aea );
}

// Namespace snd/snd
// Params 0, eflags: 0x4
// Checksum 0x95254bb6, Offset: 0x39b8
// Size: 0x32
function private function_959bbfdb()
{
    player = self;
    vieworigin = player getcampos();
    return vieworigin;
}

// Namespace snd/snd
// Params 0, eflags: 0x4
// Checksum 0xf80777af, Offset: 0x39f8
// Size: 0x32
function private function_2c0c5fbc()
{
    player = self;
    viewangles = player getcamangles();
    return viewangles;
}

// Namespace snd/snd
// Params 0, eflags: 0x4
// Checksum 0x22a119f8, Offset: 0x3a38
// Size: 0x32
function private function_bf76eea3()
{
    player = self;
    fov = player function_9169401e();
    return fov;
}

/#

    // Namespace snd/snd
    // Params 2, eflags: 0x4
    // Checksum 0x6c37c15f, Offset: 0x3a78
    // Size: 0x316, Type: dev
    function private function_360bb421( key, value )
    {
        values = strtok( value, "<dev string:x20c>" );
        
        if ( isarray( values ) && values.size > 0 )
        {
            contextkey = values[ 0 ];
            contextvalue = function_ea2f17d1( values[ 1 ], "<dev string:x58>" );
            var_23614cc2 = function_ea2f17d1( values[ 2 ], 0 );
            
            if ( key == "<dev string:x38>" )
            {
                iprintlnbold( "<dev string:x213>" + "<dev string:x21e>" + contextkey + "<dev string:x224>" + contextvalue + "<dev string:xbb>" );
                setsoundcontext( contextkey, contextvalue );
            }
            else if ( key == "<dev string:x5c>" )
            {
                iprintlnbold( "<dev string:x22d>" + "<dev string:x21e>" + contextkey + "<dev string:x224>" + contextvalue + "<dev string:xbb>" );
                
                foreach ( player in getplayerssafe() )
                {
                    player setsoundentcontext( contextkey, contextvalue );
                }
            }
            else if ( key == "<dev string:x7c>" )
            {
                iprintlnbold( "<dev string:x238>" + "<dev string:x21e>" + contextkey + "<dev string:x224>" + contextvalue + "<dev string:xbb>" );
                
                foreach ( ent in getentarray( 0 ) )
                {
                    ent setsoundentcontext( contextkey, contextvalue );
                }
            }
        }
        
        return value;
    }

#/

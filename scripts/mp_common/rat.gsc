#using scripts\core_common\bots\bot;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\rat_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\mp_common\gametypes\dev;
#using scripts\mp_common\util;

#namespace rat;

/#

    // Namespace rat/rat
    // Params 0, eflags: 0x5
    // Checksum 0xd5463d36, Offset: 0xb8
    // Size: 0x3c, Type: dev
    function private autoexec __init__system__()
    {
        system::register( #"rat", &preinit, undefined, undefined, undefined );
    }

    // Namespace rat/rat
    // Params 0, eflags: 0x4
    // Checksum 0x4374c9b2, Offset: 0x100
    // Size: 0xc4, Type: dev
    function private preinit()
    {
        init();
        level.rat.common.gethostplayer = &util::gethostplayer;
        level.rat.deathcount = 0;
        addratscriptcmd( "<dev string:x38>", &rscaddenemy );
        addratscriptcmd( "<dev string:x44>", &function_50634409 );
        setdvar( #"rat_death_count", 0 );
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x292252f8, Offset: 0x1d0
    // Size: 0xa2, Type: dev
    function function_50634409( *params )
    {
        player = util::gethostplayerforbots();
        team = player.team == #"allies" ? #"axis" : #"allies";
        bot = level bot::add_bot( team );
        
        if ( isdefined( bot ) )
        {
            bot.ignoreall = 1;
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x143c7541, Offset: 0x280
    // Size: 0x24c, Type: dev
    function rscaddenemy( params )
    {
        player = [[ level.rat.common.gethostplayer ]]();
        team = #"axis";
        
        if ( isdefined( player.pers[ #"team" ] ) )
        {
            team = util::getotherteam( player.pers[ #"team" ] );
        }
        
        bot = dev::getormakebot( team );
        
        if ( !isdefined( bot ) )
        {
            println( "<dev string:x55>" );
            ratreportcommandresult( params._id, 0, "<dev string:x55>" );
            return;
        }
        
        bot thread testenemy( team );
        bot thread deathcounter();
        wait 2;
        pos = ( float( params.x ), float( params.y ), float( params.z ) );
        bot setorigin( pos );
        
        if ( isdefined( params.ax ) )
        {
            angles = ( float( params.ax ), float( params.ay ), float( params.az ) );
            bot setplayerangles( angles );
        }
        
        ratreportcommandresult( params._id, 1 );
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x958fc763, Offset: 0x4d8
    // Size: 0xf4, Type: dev
    function testenemy( team )
    {
        self endon( #"disconnect" );
        
        while ( !isdefined( self.pers[ #"team" ] ) )
        {
            waitframe( 1 );
        }
        
        if ( level.teambased )
        {
            params = { #menu:game.menu[ #"menu_team" ], #response:level.teams[ team ], #intpayload:0 };
            self notify( #"menuresponse", params );
            self callback::callback( #"menu_response", params );
        }
    }

    // Namespace rat/rat
    // Params 0, eflags: 0x0
    // Checksum 0x37ee7f28, Offset: 0x5d8
    // Size: 0x5c, Type: dev
    function deathcounter()
    {
        self waittill( #"death" );
        level.rat.deathcount++;
        setdvar( #"rat_death_count", level.rat.deathcount );
    }

#/

#using script_7d712f77ab8d0c16;
#using scripts\core_common\array_shared;
#using scripts\core_common\bots\bot;
#using scripts\core_common\bots\bot_action;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\dev_shared;
#using scripts\core_common\killcam_shared;
#using scripts\core_common\perks;
#using scripts\core_common\potm_shared;
#using scripts\core_common\sound_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\killstreaks\helicopter_shared;
#using scripts\killstreaks\killstreaks_shared;
#using scripts\killstreaks\killstreaks_util;
#using scripts\mp_common\devgui;
#using scripts\mp_common\gametypes\dev_class;
#using scripts\mp_common\gametypes\dev_spawn;
#using scripts\mp_common\gametypes\globallogic;
#using scripts\mp_common\gametypes\globallogic_score;
#using scripts\mp_common\gametypes\globallogic_utils;
#using scripts\mp_common\player\player_loadout;
#using scripts\mp_common\util;

#namespace dev;

/#

    // Namespace dev/dev
    // Params 0, eflags: 0x5
    // Checksum 0x40af7eb2, Offset: 0x140
    // Size: 0x4c, Type: dev
    function private autoexec __init__system__()
    {
        system::register( #"dev", &preinit, undefined, undefined, #"spawning_shared" );
    }

#/

// Namespace dev/dev
// Params 0, eflags: 0x4
// Checksum 0x4cbd484f, Offset: 0x198
// Size: 0x5c
function private preinit()
{
    callback::on_start_gametype( &init );
    callback::on_connect( &on_player_connected );
    
    /#
        level.devongetormakebot = &getormakebot;
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x436e6bbd, Offset: 0x200
// Size: 0x3a8
function init()
{
    /#
        if ( getdvarstring( #"scr_show_hq_spawns" ) == "<dev string:x38>" )
        {
            setdvar( #"scr_show_hq_spawns", "<dev string:x38>" );
        }
        
        if ( !isdefined( getdvar( #"scr_testscriptruntimeerror" ) ) )
        {
            setdvar( #"scr_testscriptruntimeerror", "<dev string:x3c>" );
        }
        
        if ( getdvarstring( #"hash_42bc2c660a3d2ecd" ) == "<dev string:x38>" )
        {
            setdvar( #"hash_42bc2c660a3d2ecd", "<dev string:x44>" );
        }
        
        thread testscriptruntimeerror();
        thread testdvars();
        thread addenemyheli();
        thread addtestcarepackage();
        thread devhelipathdebugdraw();
        thread devstraferunpathdebugdraw();
        thread dev_class::dev_cac_init();
        thread dev_spawn::function_d8049496();
        thread globallogic_score::setplayermomentumdebug();
        setdvar( #"scr_giveperk", "<dev string:x38>" );
        setdvar( #"scr_forceevent", "<dev string:x38>" );
        setdvar( #"scr_draw_triggers", 0 );
        setdvar( #"scr_givegesture", "<dev string:x38>" );
        thread engagement_distance_debug_toggle();
        thread equipment_dev_gui();
        thread grenade_dev_gui();
        setdvar( #"debug_dynamic_ai_spawning", 0 );
        level.dem_spawns = [];
        
        if ( level.gametype == "<dev string:x49>" )
        {
            extra_spawns = [];
            extra_spawns[ 0 ] = "<dev string:x50>";
            extra_spawns[ 1 ] = "<dev string:x6b>";
            extra_spawns[ 2 ] = "<dev string:x86>";
            extra_spawns[ 3 ] = "<dev string:xa1>";
            
            for (i = 0; i < extra_spawns.size; i++) {
                points = getentarray( extra_spawns[ i ], "<dev string:xbc>" );
                
                if ( isdefined( points ) && points.size > 0 )
                {
                    level.dem_spawns = arraycombine( level.dem_spawns, points, 1, 0 );
                }
            }
        }
        
        for ( ;; )
        {
            updatedevsettings();
            wait 0.5;
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0xad188b31, Offset: 0x5b0
// Size: 0x44
function on_player_connected()
{
    /#
        if ( is_true( level.devgui_unlimited_ammo ) )
        {
            wait 1;
            self thread devgui_unlimited_ammo();
        }
    #/
}

/#

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0xfe727550, Offset: 0x600
    // Size: 0x3d8, Type: dev
    function updatehardpoints()
    {
        foreach ( key, streak in level.killstreaks )
        {
            dvar = streak.devdvar;
            enemydvar = streak.devenemydvar;
            host = util::gethostplayer();
            
            if ( isdefined( dvar ) && getdvarint( dvar, 0 ) == 1 )
            {
                foreach ( player in level.players )
                {
                    if ( is_true( level.usingmomentum ) && is_true( level.usingscorestreaks ) )
                    {
                        player killstreaks::give( key );
                        continue;
                    }
                    
                    if ( isbot( player ) )
                    {
                        player.bot[ #"killstreaks" ] = [];
                        player.bot[ #"killstreaks" ][ 0 ] = killstreaks::get_menu_name( key );
                        killstreakweapon = killstreaks::get_killstreak_weapon( key );
                        player killstreaks::give_weapon( killstreakweapon, 1 );
                        globallogic_score::_setplayermomentum( player, 2000 );
                        continue;
                    }
                    
                    player killstreaks::give( key );
                }
                
                setdvar( dvar, 0 );
            }
            
            if ( isdefined( enemydvar ) && getdvarint( enemydvar, 0 ) == 1 )
            {
                team = "<dev string:xc9>";
                player = util::gethostplayer();
                
                if ( isdefined( player.team ) )
                {
                    team = util::getotherteam( player.team );
                }
                
                ent = getormakebot( team );
                
                if ( !isdefined( ent ) )
                {
                    println( "<dev string:xd7>" );
                    continue;
                }
                
                wait 1;
                
                if ( isdefined( ent ) )
                {
                    ent killstreaks::give( key );
                    ent bot_action::function_d6318084( streak.weapon );
                    ent bot_action::function_32020adf( 3 );
                }
                
                setdvar( enemydvar, 0 );
            }
        }
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0xf33029c2, Offset: 0x9e0
    // Size: 0x64, Type: dev
    function warpalltohost( team )
    {
        host = util::gethostplayer();
        players = getplayers();
        function_30d59c86( team, host, players );
    }

    // Namespace dev/dev
    // Params 2, eflags: 0x0
    // Checksum 0xb10e3058, Offset: 0xa50
    // Size: 0xa4, Type: dev
    function warpalltoplayer( team, player )
    {
        players = getplayers();
        target = undefined;
        
        for (i = 0; i < players.size; i++) {
            if ( players[ i ].name == player )
            {
                target = players[ i ];
                break;
            }
        }
        
        function_30d59c86( team, player, players );
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0xc618ed1f, Offset: 0xb00
    // Size: 0x3c, Type: dev
    function function_9758857b()
    {
        host = util::gethostplayer();
        function_e8b29265( host );
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0xdba615f, Offset: 0xb48
    // Size: 0x15c, Type: dev
    function function_e8b29265( player )
    {
        players = [];
        
        foreach ( team in level.teams )
        {
            players_on_team = getplayers( team );
            
            foreach ( person in players_on_team )
            {
                if ( isalive( person ) )
                {
                    players[ players.size ] = person;
                    break;
                }
            }
        }
        
        function_30d59c86( undefined, player, players );
    }

    // Namespace dev/dev
    // Params 3, eflags: 0x0
    // Checksum 0x1d7f2b4d, Offset: 0xcb0
    // Size: 0x40c, Type: dev
    function function_30d59c86( team, target, players )
    {
        if ( isdefined( target ) )
        {
            origin = target.origin;
            nodes = getnodesinradius( origin, 128, 32, 128, #"path" );
            angles = target getplayerangles();
            yaw = ( 0, angles[ 1 ], 0 );
            forward = anglestoforward( yaw );
            spawn_origin = origin + forward * 128 + ( 0, 0, 16 );
            spiral = undefined;
            
            if ( !bullettracepassed( target geteye(), spawn_origin, 0, target ) )
            {
                spawn_origin = undefined;
            }
            else
            {
                spiral = function_a4ccb933( spawn_origin, angleclamp180( angles[ 1 ] + 180 ) );
            }
            
            foreach ( player in players )
            {
                if ( player == target )
                {
                    continue;
                }
                
                if ( isdefined( team ) )
                {
                    if ( strstartswith( team, "<dev string:xf4>" ) && target.team == player.team )
                    {
                        continue;
                    }
                    
                    if ( strstartswith( team, "<dev string:x100>" ) && target.team != player.team )
                    {
                        continue;
                    }
                }
                
                goal = undefined;
                
                if ( isdefined( spiral ) )
                {
                    origin = function_98c05766( spiral );
                    angle = function_4783f10c( spiral );
                    function_df0b6f84( spiral );
                    player setorigin( origin );
                    player setplayerangles( ( 0, angle, 0 ) );
                    goal = origin;
                }
                else if ( nodes.size > 0 )
                {
                    node = array::random( nodes );
                    player setorigin( node.origin );
                    goal = node;
                }
                else
                {
                    player setorigin( origin );
                    goal = origin;
                }
                
                if ( isdefined( goal ) && isbot( player ) )
                {
                    player setgoal( goal, 1 );
                }
            }
        }
        
        setdvar( #"scr_playerwarp", "<dev string:x38>" );
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0xe0ae1d29, Offset: 0x10c8
    // Size: 0x424, Type: dev
    function updatedevsettingszm()
    {
        if ( level.players.size > 0 )
        {
            if ( getdvarint( #"r_streamdumpdistance", 0 ) == 3 )
            {
                if ( !isdefined( level.streamdumpteamindex ) )
                {
                    level.streamdumpteamindex = 0;
                }
                else
                {
                    level.streamdumpteamindex++;
                }
                
                numpoints = 0;
                spawnpoints = [];
                location = level.scr_zm_map_start_location;
                
                if ( ( location == "<dev string:x10f>" || location == "<dev string:x38>" ) && isdefined( level.default_start_location ) )
                {
                    location = level.default_start_location;
                }
                
                match_string = level.scr_zm_ui_gametype + "<dev string:x11a>" + location;
                
                if ( level.streamdumpteamindex < level.teams.size )
                {
                    structs = struct::get_array( "<dev string:x11f>", "<dev string:x130>" );
                    
                    if ( isdefined( structs ) )
                    {
                        foreach ( struct in structs )
                        {
                            if ( isdefined( struct.script_string ) )
                            {
                                tokens = strtok( struct.script_string, "<dev string:x145>" );
                                
                                foreach ( token in tokens )
                                {
                                    if ( token == match_string )
                                    {
                                        spawnpoints[ spawnpoints.size ] = struct;
                                    }
                                }
                            }
                        }
                    }
                    
                    if ( !isdefined( spawnpoints ) || spawnpoints.size == 0 )
                    {
                        spawnpoints = struct::get_array( "<dev string:x14a>", "<dev string:x162>" );
                    }
                    
                    if ( isdefined( spawnpoints ) )
                    {
                        numpoints = spawnpoints.size;
                    }
                }
                
                if ( numpoints == 0 )
                {
                    setdvar( #"r_streamdumpdistance", 0 );
                    level.streamdumpteamindex = -1;
                    return;
                }
                
                averageorigin = ( 0, 0, 0 );
                averageangles = ( 0, 0, 0 );
                
                foreach ( spawnpoint in spawnpoints )
                {
                    averageorigin += spawnpoint.origin / numpoints;
                    averageangles += spawnpoint.angles / numpoints;
                }
                
                level.players[ 0 ] setplayerangles( averageangles );
                level.players[ 0 ] setorigin( averageorigin );
                wait 5;
                setdvar( #"r_streamdumpdistance", 2 );
            }
        }
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x89fa7e82, Offset: 0x14f8
    // Size: 0x25ec, Type: dev
    function updatedevsettings()
    {
        player = util::gethostplayer();
        updateminimapsetting();
        
        if ( level.players.size > 0 )
        {
            updatehardpoints();
            playerwarp_string = getdvarstring( #"scr_playerwarp" );
            
            if ( playerwarp_string == "<dev string:x170>" )
            {
                warpalltohost();
            }
            else if ( playerwarp_string == "<dev string:x178>" )
            {
                warpalltohost( playerwarp_string );
            }
            else if ( playerwarp_string == "<dev string:x188>" )
            {
                warpalltohost( playerwarp_string );
            }
            else if ( playerwarp_string == "<dev string:x19b>" )
            {
                function_9758857b();
            }
            else if ( strstartswith( playerwarp_string, "<dev string:xf4>" ) )
            {
                name = getsubstr( playerwarp_string, 8 );
                warpalltoplayer( playerwarp_string, name );
            }
            else if ( strstartswith( playerwarp_string, "<dev string:x100>" ) )
            {
                name = getsubstr( playerwarp_string, 11 );
                warpalltoplayer( playerwarp_string, name );
            }
            else if ( strstartswith( playerwarp_string, "<dev string:x1b6>" ) )
            {
                name = getsubstr( playerwarp_string, 4 );
                warpalltoplayer( undefined, name );
            }
            else if ( playerwarp_string == "<dev string:x1be>" )
            {
                players = getplayers();
                setdvar( #"scr_playerwarp", "<dev string:x38>" );
                
                if ( !isdefined( level.devgui_start_spawn_index ) )
                {
                    level.devgui_start_spawn_index = 0;
                }
                
                player = util::gethostplayer();
                spawns = level.spawn_start[ player.pers[ #"team" ] ];
                
                if ( !isdefined( spawns ) || spawns.size <= 0 )
                {
                    return;
                }
                
                for (i = 0; i < players.size; i++) {
                    players[ i ] setorigin( spawns[ level.devgui_start_spawn_index ].origin );
                    players[ i ] setplayerangles( spawns[ level.devgui_start_spawn_index ].angles );
                }
                
                level.devgui_start_spawn_index++;
                
                if ( level.devgui_start_spawn_index >= spawns.size )
                {
                    level.devgui_start_spawn_index = 0;
                }
            }
            else if ( playerwarp_string == "<dev string:x1d2>" )
            {
                players = getplayers();
                setdvar( #"scr_playerwarp", "<dev string:x38>" );
                
                if ( !isdefined( level.devgui_start_spawn_index ) )
                {
                    level.devgui_start_spawn_index = 0;
                }
                
                player = util::gethostplayer();
                spawns = level.spawn_start[ player.pers[ #"team" ] ];
                
                if ( !isdefined( spawns ) || spawns.size <= 0 )
                {
                    return;
                }
                
                for (i = 0; i < players.size; i++) {
                    players[ i ] setorigin( spawns[ level.devgui_start_spawn_index ].origin );
                    players[ i ] setplayerangles( spawns[ level.devgui_start_spawn_index ].angles );
                }
                
                level.devgui_start_spawn_index--;
                
                if ( level.devgui_start_spawn_index < 0 )
                {
                    level.devgui_start_spawn_index = spawns.size - 1;
                }
            }
            else if ( playerwarp_string == "<dev string:x1e6>" )
            {
                players = getplayers();
                setdvar( #"scr_playerwarp", "<dev string:x38>" );
                
                if ( !isdefined( level.devgui_spawn_index ) )
                {
                    level.devgui_spawn_index = 0;
                }
                
                spawns = isdefined( level.var_3da2623a ) ? level.var_3da2623a : level.spawnpoints;
                spawns = arraycombine( spawns, level.dem_spawns, 1, 0 );
                
                if ( !isdefined( spawns ) || spawns.size <= 0 )
                {
                    return;
                }
                
                for (i = 0; i < players.size; i++) {
                    players[ i ] setorigin( spawns[ level.devgui_spawn_index ].origin );
                    players[ i ] setplayerangles( spawns[ level.devgui_spawn_index ].angles );
                }
                
                level.devgui_spawn_index++;
                
                if ( level.devgui_spawn_index >= spawns.size )
                {
                    level.devgui_spawn_index = 0;
                }
            }
            else if ( playerwarp_string == "<dev string:x1f4>" )
            {
                players = getplayers();
                setdvar( #"scr_playerwarp", "<dev string:x38>" );
                
                if ( !isdefined( level.devgui_spawn_index ) )
                {
                    level.devgui_spawn_index = 0;
                }
                
                spawns = isdefined( level.var_3da2623a ) ? level.var_3da2623a : level.spawnpoints;
                spawns = arraycombine( spawns, level.dem_spawns, 1, 0 );
                
                if ( !isdefined( spawns ) || spawns.size <= 0 )
                {
                    return;
                }
                
                for (i = 0; i < players.size; i++) {
                    players[ i ] setorigin( spawns[ level.devgui_spawn_index ].origin );
                    players[ i ] setplayerangles( spawns[ level.devgui_spawn_index ].angles );
                }
                
                level.devgui_spawn_index--;
                
                if ( level.devgui_spawn_index < 0 )
                {
                    level.devgui_spawn_index = spawns.size - 1;
                }
            }
            else if ( getdvarstring( #"scr_devgui_spawn" ) != "<dev string:x38>" )
            {
                player = util::gethostplayer();
                
                if ( !isdefined( player.devgui_spawn_active ) )
                {
                    player.devgui_spawn_active = 0;
                }
                
                if ( !player.devgui_spawn_active )
                {
                    iprintln( "<dev string:x202>" );
                    iprintln( "<dev string:x228>" );
                    player.devgui_spawn_active = 1;
                    player thread spawning::devgui_spawn_think();
                }
                else
                {
                    player notify( #"devgui_spawn_think" );
                    player.devgui_spawn_active = 0;
                    player setactionslot( 3, "<dev string:x24b>" );
                }
                
                setdvar( #"scr_devgui_spawn", "<dev string:x38>" );
            }
            else if ( getdvarstring( #"hash_c9f8ff06a656024" ) != "<dev string:x38>" )
            {
                if ( !isdefined( level.var_31922da4 ) )
                {
                    level.var_31922da4 = 0;
                }
                
                player = level.players[ 0 ];
                
                if ( !level.var_31922da4 )
                {
                    iprintln( "<dev string:x202>" );
                    iprintln( "<dev string:x228>" );
                    level.var_31922da4 = 1;
                    player thread spawning::function_48a6b85();
                }
                else
                {
                    level notify( #"hash_47f3d9a9e91670d1" );
                    level.var_31922da4 = 0;
                    player setactionslot( 3, "<dev string:x24b>" );
                }
                
                setdvar( #"hash_c9f8ff06a656024", "<dev string:x38>" );
            }
            else if ( getdvarstring( #"scr_player_ammo" ) != "<dev string:x38>" )
            {
                players = getplayers();
                
                if ( !isdefined( level.devgui_unlimited_ammo ) )
                {
                    level.devgui_unlimited_ammo = 1;
                }
                else
                {
                    level.devgui_unlimited_ammo = !level.devgui_unlimited_ammo;
                }
                
                if ( level.devgui_unlimited_ammo )
                {
                    iprintln( "<dev string:x256>" );
                }
                else
                {
                    iprintln( "<dev string:x27e>" );
                }
                
                for (i = 0; i < players.size; i++) {
                    if ( level.devgui_unlimited_ammo )
                    {
                        players[ i ] thread devgui_unlimited_ammo();
                        continue;
                    }
                    
                    players[ i ] notify( #"devgui_unlimited_ammo" );
                }
                
                setdvar( #"scr_player_ammo", "<dev string:x38>" );
            }
            else if ( getdvarstring( #"scr_player_momentum" ) != "<dev string:x38>" )
            {
                if ( !isdefined( level.devgui_unlimited_momentum ) )
                {
                    level.devgui_unlimited_momentum = 1;
                }
                else
                {
                    level.devgui_unlimited_momentum = !level.devgui_unlimited_momentum;
                }
                
                if ( level.devgui_unlimited_momentum )
                {
                    iprintln( "<dev string:x2a9>" );
                    level thread devgui_unlimited_momentum();
                }
                else
                {
                    iprintln( "<dev string:x2d5>" );
                    level notify( #"devgui_unlimited_momentum" );
                }
                
                setdvar( #"scr_player_momentum", "<dev string:x38>" );
            }
            else if ( getdvarstring( #"scr_give_player_score" ) != "<dev string:x38>" )
            {
                level thread devgui_increase_momentum( getdvarint( #"scr_give_player_score", 0 ) );
                setdvar( #"scr_give_player_score", "<dev string:x38>" );
            }
            else if ( getdvarstring( #"hash_7d7add0fb8d419c8" ) != "<dev string:x38>" )
            {
                level thread function_e88bdbcf();
                setdvar( #"hash_7d7add0fb8d419c8", "<dev string:x38>" );
            }
            else if ( getdvarstring( #"scr_player_zero_ammo" ) != "<dev string:x38>" )
            {
                players = getplayers();
                
                for (i = 0; i < players.size; i++) {
                    player = players[ i ];
                    weapons = player getweaponslist();
                    arrayremovevalue( weapons, level.weaponbasemelee );
                    
                    for (j = 0; j < weapons.size; j++) {
                        if ( weapons[ j ] == level.weaponnone )
                        {
                            continue;
                        }
                        
                        player setweaponammostock( weapons[ j ], 0 );
                        player setweaponammoclip( weapons[ j ], 0 );
                    }
                }
                
                setdvar( #"scr_player_zero_ammo", "<dev string:x38>" );
            }
            else if ( getdvarstring( #"scr_emp_jammed" ) != "<dev string:x38>" )
            {
                players = getplayers();
                
                for (i = 0; i < players.size; i++) {
                    player = players[ i ];
                    player setempjammed( getdvarint( #"scr_emp_jammed", 0 ) );
                }
                
                setdvar( #"scr_emp_jammed", "<dev string:x38>" );
            }
            else if ( getdvarstring( #"scr_round_pause" ) != "<dev string:x38>" )
            {
                if ( !level.timerstopped )
                {
                    iprintln( "<dev string:x304>" );
                    globallogic_utils::pausetimer();
                }
                else
                {
                    iprintln( "<dev string:x31b>" );
                    globallogic_utils::resumetimer();
                }
                
                setdvar( #"scr_round_pause", "<dev string:x38>" );
            }
            else if ( getdvarstring( #"scr_round_end" ) != "<dev string:x38>" )
            {
                level globallogic::forceend();
                setdvar( #"scr_round_end", "<dev string:x38>" );
            }
            else if ( getdvarint( #"scr_health_debug", 0 ) )
            {
                players = getplayers();
                host = util::gethostplayer();
                
                if ( !isdefined( host.devgui_health_debug ) )
                {
                    host.devgui_health_debug = 0;
                }
                
                if ( host.devgui_health_debug )
                {
                    host.devgui_health_debug = 0;
                    
                    for (i = 0; i < players.size; i++) {
                        players[ i ] notify( #"devgui_health_debug" );
                        
                        if ( isdefined( players[ i ].debug_health_bar ) )
                        {
                            players[ i ].debug_health_bar destroy();
                            players[ i ].debug_health_text destroy();
                            players[ i ].debug_health_bar = undefined;
                            players[ i ].debug_health_text = undefined;
                        }
                    }
                }
                else
                {
                    host.devgui_health_debug = 1;
                    
                    for (i = 0; i < players.size; i++) {
                        players[ i ] thread devgui_health_debug();
                    }
                }
                
                setdvar( #"scr_health_debug", 0 );
            }
            else if ( getdvarstring( #"scr_show_hq_spawns" ) != "<dev string:x38>" )
            {
                if ( !isdefined( level.devgui_show_hq ) )
                {
                    level.devgui_show_hq = 0;
                }
                
                if ( level.gametype == "<dev string:x333>" && isdefined( level.radios ) )
                {
                    if ( !level.devgui_show_hq )
                    {
                        for (i = 0; i < level.radios.size; i++) {
                            color = ( 1, 0, 0 );
                            level dev_spawn::showonespawnpoint( level.radios[ i ], color, "<dev string:x33b>", 32, "<dev string:x34d>" );
                        }
                    }
                    else
                    {
                        level notify( #"hide_hq_points" );
                    }
                    
                    level.devgui_show_hq = !level.devgui_show_hq;
                }
                
                setdvar( #"scr_show_hq_spawns", "<dev string:x38>" );
            }
            
            if ( getdvarint( #"r_streamdumpdistance", 0 ) == 3 )
            {
                if ( !isdefined( level.streamdumpteamindex ) )
                {
                    level.streamdumpteamindex = 0;
                }
                else
                {
                    level.streamdumpteamindex++;
                }
                
                numpoints = 0;
                
                if ( level.streamdumpteamindex < level.teams.size )
                {
                    teamname = getarraykeys( level.teams )[ level.streamdumpteamindex ];
                    
                    if ( isdefined( level.spawn_start[ teamname ] ) )
                    {
                        numpoints = level.spawn_start[ teamname ].size;
                    }
                }
                
                if ( numpoints == 0 )
                {
                    setdvar( #"r_streamdumpdistance", 0 );
                    level.streamdumpteamindex = -1;
                }
                else
                {
                    averageorigin = ( 0, 0, 0 );
                    averageangles = ( 0, 0, 0 );
                    
                    foreach ( spawnpoint in level.spawn_start[ teamname ] )
                    {
                        averageorigin += spawnpoint.origin / numpoints;
                        averageangles += spawnpoint.angles / numpoints;
                    }
                    
                    level.players[ 0 ] setplayerangles( averageangles );
                    level.players[ 0 ] setorigin( averageorigin );
                    wait 5;
                    setdvar( #"r_streamdumpdistance", 2 );
                }
            }
        }
        
        if ( getdvarstring( #"scr_giveperk" ) == "<dev string:x44>" )
        {
            players = getplayers();
            iprintln( "<dev string:x359>" );
            
            for (i = 0; i < players.size; i++) {
                players[ i ] clearperks();
                players[ i ].extraperks = undefined;
            }
            
            setdvar( #"scr_giveperk", "<dev string:x38>" );
        }
        
        if ( getdvarstring( #"scr_giveperk" ) != "<dev string:x38>" )
        {
            perk = getdvarstring( #"scr_giveperk" );
            specialties = strtok( perk, "<dev string:x37e>" );
            players = getplayers();
            iprintln( "<dev string:x383>" + perk + "<dev string:x3a1>" );
            
            for (i = 0; i < players.size; i++) {
                for (j = 0; j < specialties.size; j++) {
                    players[ i ] perks::perk_setperk( specialties[ j ] );
                    players[ i ].extraperks[ specialties[ j ] ] = 1;
                }
            }
            
            setdvar( #"scr_giveperk", "<dev string:x38>" );
        }
        
        if ( getdvarstring( #"scr_giveskill" ) == "<dev string:x44>" )
        {
            players = getplayers();
            iprintln( "<dev string:x3a6>" );
            
            foreach ( player in players )
            {
                if ( !isdefined( player ) )
                {
                    continue;
                }
                
                player cleartalents();
                player loadout::function_3d16577a( player.team, player.curclass );
            }
            
            setdvar( #"scr_giveskill", "<dev string:x38>" );
        }
        
        if ( getdvarstring( #"scr_giveskill" ) != "<dev string:x38>" )
        {
            talentname = getdvarstring( #"scr_giveskill" );
            var_2fe3f7e3 = hash( talentname );
            players = getplayers();
            iprintln( "<dev string:x3cc>" + talentname + "<dev string:x3a1>" );
            
            foreach ( player in players )
            {
                if ( !isdefined( player ) )
                {
                    continue;
                }
                
                player addtalent( var_2fe3f7e3 );
                player loadout::function_3d16577a( player.team, player.curclass );
            }
            
            setdvar( #"scr_giveskill", "<dev string:x38>" );
        }
        
        if ( getdvarstring( #"scr_givetalent" ) == "<dev string:x44>" )
        {
            players = getplayers();
            iprintln( "<dev string:x3eb>" );
            
            foreach ( player in players )
            {
                if ( !isdefined( player ) )
                {
                    continue;
                }
                
                player cleartalents();
                player loadout::function_3d16577a( player.team, player.curclass );
            }
            
            setdvar( #"scr_givetalent", "<dev string:x38>" );
        }
        
        if ( getdvarstring( #"scr_givetalent" ) != "<dev string:x38>" )
        {
            talentname = getdvarstring( #"scr_givetalent" );
            var_2fe3f7e3 = hash( talentname );
            players = getplayers();
            iprintln( "<dev string:x411>" + talentname + "<dev string:x3a1>" );
            
            foreach ( player in players )
            {
                if ( !isdefined( player ) )
                {
                    continue;
                }
                
                player addtalent( var_2fe3f7e3 );
                player loadout::function_3d16577a( player.team, player.curclass );
            }
            
            setdvar( #"scr_givetalent", "<dev string:x38>" );
        }
        
        if ( getdvarstring( #"scr_forcegrenade" ) != "<dev string:x38>" )
        {
            force_grenade_throw( getweapon( getdvarstring( #"scr_forcegrenade" ) ) );
            setdvar( #"scr_forcegrenade", "<dev string:x38>" );
        }
        
        if ( getdvarstring( #"scr_forceevent" ) != "<dev string:x38>" )
        {
            event = getdvarstring( #"scr_forceevent" );
            player = util::gethostplayer();
            forward = anglestoforward( player.angles );
            right = anglestoright( player.angles );
            
            if ( event == "<dev string:x431>" )
            {
                player dodamage( 1, player.origin + forward );
            }
            else if ( event == "<dev string:x43e>" )
            {
                player dodamage( 1, player.origin - forward );
            }
            else if ( event == "<dev string:x44a>" )
            {
                player dodamage( 1, player.origin - right );
            }
            else if ( event == "<dev string:x456>" )
            {
                player dodamage( 1, player.origin + right );
            }
            
            setdvar( #"scr_forceevent", "<dev string:x38>" );
        }
        
        if ( getdvarstring( #"scr_takeperk" ) != "<dev string:x38>" )
        {
            perk = getdvarstring( #"scr_takeperk" );
            
            for (i = 0; i < level.players.size; i++) {
                level.players[ i ] perks::perk_unsetperk( perk );
                level.players[ i ].extraperks[ perk ] = undefined;
            }
            
            setdvar( #"scr_takeperk", "<dev string:x38>" );
        }
        
        if ( getdvarstring( #"scr_x_kills_y" ) != "<dev string:x38>" )
        {
            nametokens = strtok( getdvarstring( #"scr_x_kills_y" ), "<dev string:x145>" );
            
            if ( nametokens.size > 1 )
            {
                thread xkillsy( nametokens[ 0 ], nametokens[ 1 ] );
            }
            
            setdvar( #"scr_x_kills_y", "<dev string:x38>" );
        }
        
        if ( getdvarstring( #"scr_usedogs" ) != "<dev string:x38>" )
        {
            ownername = getdvarstring( #"scr_usedogs" );
            setdvar( #"scr_usedogs", "<dev string:x38>" );
            owner = undefined;
            
            for (index = 0; index < level.players.size; index++) {
                if ( level.players[ index ].name == ownername )
                {
                    owner = level.players[ index ];
                }
            }
            
            if ( isdefined( owner ) )
            {
                owner killstreaks::trigger_killstreak( "<dev string:x463>" );
            }
        }
        
        if ( getdvarstring( #"scr_entdebug" ) != "<dev string:x38>" )
        {
            ents = getentarray();
            level.entarray = [];
            level.entcounts = [];
            level.entgroups = [];
            
            for (index = 0; index < ents.size; index++) {
                classname = ents[ index ].classname;
                
                if ( !issubstr( classname, "<dev string:x46b>" ) )
                {
                    curent = ents[ index ];
                    level.entarray[ level.entarray.size ] = curent;
                    
                    if ( !isdefined( level.entcounts[ classname ] ) )
                    {
                        level.entcounts[ classname ] = 0;
                    }
                    
                    level.entcounts[ classname ]++;
                    
                    if ( !isdefined( level.entgroups[ classname ] ) )
                    {
                        level.entgroups[ classname ] = [];
                    }
                    
                    level.entgroups[ classname ][ level.entgroups[ classname ].size ] = curent;
                }
            }
        }
        
        if ( getdvarint( #"debug_dynamic_ai_spawning", 0 ) && !isdefined( level.larry ) )
        {
            thread larry_thread();
        }
        else if ( !getdvarint( #"debug_dynamic_ai_spawning", 0 ) )
        {
            level notify( #"kill_larry" );
        }
        
        if ( getdvarint( #"scr_force_finalkillcam", 0 ) == 1 )
        {
            level thread killcam::do_final_killcam();
            level thread waitthennotifyfinalkillcam();
        }
        
        if ( getdvarint( #"scr_force_roundkillcam", 0 ) == 1 )
        {
            level thread killcam::do_final_killcam();
            level thread waitthennotifyroundkillcam();
        }
        
        potm::debugupdate();
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x22bcc1aa, Offset: 0x3af0
    // Size: 0x44, Type: dev
    function waitthennotifyroundkillcam()
    {
        waitframe( 1 );
        level notify( #"play_final_killcam" );
        setdvar( #"scr_force_roundkillcam", 0 );
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x8d205cc, Offset: 0x3b40
    // Size: 0x4c, Type: dev
    function waitthennotifyfinalkillcam()
    {
        waitframe( 1 );
        level notify( #"play_final_killcam" );
        waitframe( 1 );
        setdvar( #"scr_force_finalkillcam", 0 );
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x399fd103, Offset: 0x3b98
    // Size: 0x1d0, Type: dev
    function devgui_unlimited_ammo()
    {
        if ( !isdefined( self ) )
        {
            return;
        }
        
        self notify( #"devgui_unlimited_ammo" );
        self endon( #"devgui_unlimited_ammo" );
        self endon( #"disconnect" );
        
        for ( ;; )
        {
            wait 1;
            
            if ( !isdefined( self ) || !isalive( self ) )
            {
                continue;
            }
            
            primary_weapons = self getweaponslistprimaries();
            offhand_weapons_and_alts = array::exclude( self getweaponslist( 1 ), primary_weapons );
            weapons = arraycombine( primary_weapons, offhand_weapons_and_alts, 0, 0 );
            arrayremovevalue( weapons, level.weaponbasemelee );
            
            for (i = 0; i < weapons.size; i++) {
                weapon = weapons[ i ];
                
                if ( weapon == level.weaponnone )
                {
                    continue;
                }
                
                if ( killstreaks::is_killstreak_weapon( weapon ) )
                {
                    continue;
                }
                
                if ( weapon.iscliponly )
                {
                    continue;
                }
                
                if ( self getfractionmaxammo( weapon ) == 1 )
                {
                    continue;
                }
                
                self givemaxammo( weapon );
            }
        }
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0xe59b8ec7, Offset: 0x3d70
    // Size: 0x11c, Type: dev
    function devgui_unlimited_momentum()
    {
        level notify( #"devgui_unlimited_momentum" );
        level endon( #"devgui_unlimited_momentum" );
        
        for ( ;; )
        {
            wait 1;
            players = getplayers();
            
            foreach ( player in players )
            {
                if ( !isdefined( player ) )
                {
                    continue;
                }
                
                if ( !isalive( player ) )
                {
                    continue;
                }
                
                if ( player.sessionstate != "<dev string:x475>" )
                {
                    continue;
                }
                
                globallogic_score::_setplayermomentum( player, 5000 );
            }
        }
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0x80a37c0d, Offset: 0x3e98
    // Size: 0x100, Type: dev
    function devgui_increase_momentum( score )
    {
        players = getplayers();
        
        foreach ( player in players )
        {
            if ( !isdefined( player ) )
            {
                continue;
            }
            
            if ( !isalive( player ) )
            {
                continue;
            }
            
            if ( player.sessionstate != "<dev string:x475>" )
            {
                continue;
            }
            
            player globallogic_score::giveplayermomentumnotification( score, #"kill", "<dev string:x480>" );
        }
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0x575ba120, Offset: 0x3fa0
    // Size: 0xe8, Type: dev
    function function_e88bdbcf( *score )
    {
        players = getplayers();
        
        foreach ( player in players )
        {
            if ( isdefined( player ) && isalive( player ) && player.sessionstate == "<dev string:x475>" )
            {
                player globallogic_score::resetplayermomentum();
            }
        }
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0xa07d2a38, Offset: 0x4090
    // Size: 0x320, Type: dev
    function devgui_health_debug()
    {
        self notify( #"devgui_health_debug" );
        self endon( #"devgui_health_debug" );
        self endon( #"disconnect" );
        x = 80;
        y = 40;
        self.debug_health_bar = newdebughudelem( self );
        self.debug_health_bar.x = x + 80;
        self.debug_health_bar.y = y + 2;
        self.debug_health_bar.alignx = "<dev string:x490>";
        self.debug_health_bar.aligny = "<dev string:x498>";
        self.debug_health_bar.horzalign = "<dev string:x49f>";
        self.debug_health_bar.vertalign = "<dev string:x49f>";
        self.debug_health_bar.alpha = 1;
        self.debug_health_bar.foreground = 1;
        self.debug_health_bar setshader( #"black", 1, 8 );
        self.debug_health_text = newdebughudelem( self );
        self.debug_health_text.x = x + 80;
        self.debug_health_text.y = y;
        self.debug_health_text.alignx = "<dev string:x490>";
        self.debug_health_text.aligny = "<dev string:x498>";
        self.debug_health_text.horzalign = "<dev string:x49f>";
        self.debug_health_text.vertalign = "<dev string:x49f>";
        self.debug_health_text.alpha = 1;
        self.debug_health_text.fontscale = 1;
        self.debug_health_text.foreground = 1;
        
        if ( !isdefined( self.maxhealth ) || self.maxhealth <= 0 )
        {
            self.maxhealth = 100;
        }
        
        for ( ;; )
        {
            waitframe( 1 );
            width = self.health / self.maxhealth * 300;
            width = int( max( width, 1 ) );
            self.debug_health_bar setshader( #"black", width, 8 );
            self.debug_health_text setvalue( self.health );
        }
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x1c0bc86d, Offset: 0x43b8
    // Size: 0xac, Type: dev
    function giveextraperks()
    {
        if ( !isdefined( self.extraperks ) )
        {
            return;
        }
        
        perks = getarraykeys( self.extraperks );
        
        for (i = 0; i < perks.size; i++) {
            println( "<dev string:x4ad>" + self.name + "<dev string:x4bb>" + perks[ i ] + "<dev string:x4c9>" );
            self perks::perk_setperk( perks[ i ] );
        }
    }

    // Namespace dev/dev
    // Params 2, eflags: 0x0
    // Checksum 0x9f866857, Offset: 0x4470
    // Size: 0x148, Type: dev
    function xkillsy( attackername, victimname )
    {
        attacker = undefined;
        victim = undefined;
        
        for (index = 0; index < level.players.size; index++) {
            if ( level.players[ index ].name == attackername )
            {
                attacker = level.players[ index ];
                continue;
            }
            
            if ( level.players[ index ].name == victimname )
            {
                victim = level.players[ index ];
            }
        }
        
        if ( !isalive( attacker ) || !isalive( victim ) )
        {
            return;
        }
        
        victim thread [[ level.callbackplayerdamage ]]( attacker, attacker, 1000, 0, "<dev string:x4da>", level.weaponnone, ( 0, 0, 0 ), ( 0, 0, 0 ), "<dev string:x3c>", ( 0, 0, 0 ), 0, 0, ( 1, 0, 0 ) );
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x18537b36, Offset: 0x45c0
    // Size: 0x24, Type: dev
    function testscriptruntimeerrorassert()
    {
        wait 1;
        assert( 0 );
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x543af3e2, Offset: 0x45f0
    // Size: 0x2c, Type: dev
    function testscriptruntimeassertmsgassert()
    {
        wait 1;
        assertmsg( "<dev string:x4ee>" );
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0xa3fdaafb, Offset: 0x4628
    // Size: 0x2c, Type: dev
    function testscriptruntimeerrormsgassert()
    {
        wait 1;
        errormsg( "<dev string:x508>" );
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x1031a3ba, Offset: 0x4660
    // Size: 0x44, Type: dev
    function testscriptruntimeerror2()
    {
        myundefined = "<dev string:x521>";
        
        if ( myundefined == 1 )
        {
            println( "<dev string:x529>" );
        }
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x33cc66b5, Offset: 0x46b0
    // Size: 0x1c, Type: dev
    function testscriptruntimeerror1()
    {
        testscriptruntimeerror2();
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x3467fb2a, Offset: 0x46d8
    // Size: 0x12c, Type: dev
    function testscriptruntimeerror()
    {
        wait 5;
        
        for ( ;; )
        {
            if ( getdvarstring( #"scr_testscriptruntimeerror" ) != "<dev string:x3c>" )
            {
                break;
            }
            
            wait 1;
        }
        
        myerror = getdvarstring( #"scr_testscriptruntimeerror" );
        setdvar( #"scr_testscriptruntimeerror", "<dev string:x3c>" );
        
        if ( myerror == "<dev string:x552>" )
        {
            testscriptruntimeerrorassert();
        }
        else if ( myerror == "<dev string:x55c>" )
        {
            testscriptruntimeassertmsgassert();
        }
        else if ( myerror == "<dev string:x569>" )
        {
            testscriptruntimeerrormsgassert();
        }
        else
        {
            testscriptruntimeerror1();
        }
        
        thread testscriptruntimeerror();
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0xab925ad7, Offset: 0x4810
    // Size: 0xfc, Type: dev
    function testdvars()
    {
        wait 5;
        
        for ( ;; )
        {
            if ( getdvarstring( #"scr_testdvar" ) != "<dev string:x38>" )
            {
                break;
            }
            
            wait 1;
        }
        
        tokens = strtok( getdvarstring( #"scr_testdvar" ), "<dev string:x145>" );
        dvarname = tokens[ 0 ];
        dvarvalue = tokens[ 1 ];
        setdvar( dvarname, dvarvalue );
        setdvar( #"scr_testdvar", "<dev string:x38>" );
        thread testdvars();
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x5c27f9db, Offset: 0x4918
    // Size: 0x22c, Type: dev
    function addenemyheli()
    {
        wait 5;
        
        for ( ;; )
        {
            if ( getdvarint( #"scr_spawnenemyheli", 0 ) > 0 )
            {
                break;
            }
            
            wait 1;
        }
        
        enemyheli = getdvarint( #"scr_spawnenemyheli", 0 );
        setdvar( #"scr_spawnenemyheli", 0 );
        team = "<dev string:xc9>";
        player = util::gethostplayer();
        
        if ( isdefined( player.pers[ #"team" ] ) )
        {
            team = util::getotherteam( player.pers[ #"team" ] );
        }
        
        ent = getormakebot( team );
        
        if ( !isdefined( ent ) )
        {
            println( "<dev string:xd7>" );
            wait 1;
            thread addenemyheli();
            return;
        }
        
        switch ( enemyheli )
        {
            case 1:
                level.helilocation = ent.origin;
                ent thread helicopter::usekillstreakhelicopter( "<dev string:x575>" );
                wait 0.5;
                ent notify( #"confirm_location", { #position:level.helilocation } );
                break;
            case 2:
                break;
        }
        
        thread addenemyheli();
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0x97f5a377, Offset: 0x4b50
    // Size: 0xf8, Type: dev
    function getormakebot( team )
    {
        for (i = 0; i < level.players.size; i++) {
            if ( level.players[ i ].team == team )
            {
                if ( isbot( level.players[ i ] ) )
                {
                    return level.players[ i ];
                }
            }
        }
        
        ent = bot::add_bot( team );
        
        if ( isdefined( ent ) )
        {
            sound::play_on_players( "<dev string:x58b>" );
            ent waittill( #"spawned_player" );
            ent.ignoreall = 1;
        }
        
        return ent;
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x761b7b7c, Offset: 0x4c50
    // Size: 0x8, Type: dev
    function addtestcarepackage()
    {
        
    }

    // Namespace dev/dev
    // Params 6, eflags: 0x0
    // Checksum 0xa33f1a23, Offset: 0x4c60
    // Size: 0x6e, Type: dev
    function print3duntilnotified( origin, text, color, alpha, scale, notification )
    {
        level endon( notification );
        
        for ( ;; )
        {
            print3d( origin, text, color, alpha, scale );
            waitframe( 1 );
        }
    }

    // Namespace dev/dev
    // Params 5, eflags: 0x0
    // Checksum 0x8e28398, Offset: 0x4cd8
    // Size: 0x66, Type: dev
    function lineuntilnotified( start, end, color, depthtest, notification )
    {
        level endon( notification );
        
        for ( ;; )
        {
            line( start, end, color, depthtest );
            waitframe( 1 );
        }
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x250ae2f6, Offset: 0x4d48
    // Size: 0x184, Type: dev
    function engagement_distance_debug_toggle()
    {
        level endon( #"kill_engage_dist_debug_toggle_watcher" );
        
        if ( !isdefined( getdvarint( #"debug_engage_dists", 0 ) ) )
        {
            setdvar( #"debug_engage_dists", 0 );
        }
        
        laststate = getdvarint( #"debug_engage_dists", 0 );
        
        while ( true )
        {
            currentstate = getdvarint( #"debug_engage_dists", 0 );
            
            if ( dvar_turned_on( currentstate ) && !dvar_turned_on( laststate ) )
            {
                weapon_engage_dists_init();
                thread debug_realtime_engage_dist();
                laststate = currentstate;
            }
            else if ( !dvar_turned_on( currentstate ) && dvar_turned_on( laststate ) )
            {
                level notify( #"kill_all_engage_dist_debug" );
                laststate = currentstate;
            }
            
            wait 0.3;
        }
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0xf8a273ce, Offset: 0x4ed8
    // Size: 0x2a, Type: dev
    function dvar_turned_on( val )
    {
        if ( val <= 0 )
        {
            return 0;
        }
        
        return 1;
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x66b07110, Offset: 0x4f10
    // Size: 0x3d2, Type: dev
    function engagement_distance_debug_init()
    {
        level.debug_xpos = -50;
        level.debug_ypos = 250;
        level.debug_yinc = 18;
        level.debug_fontscale = 1.5;
        level.white = ( 1, 1, 1 );
        level.green = ( 0, 1, 0 );
        level.yellow = ( 1, 1, 0 );
        level.red = ( 1, 0, 0 );
        level.realtimeengagedist = newdebughudelem();
        level.realtimeengagedist.alignx = "<dev string:x490>";
        level.realtimeengagedist.fontscale = level.debug_fontscale;
        level.realtimeengagedist.x = level.debug_xpos;
        level.realtimeengagedist.y = level.debug_ypos;
        level.realtimeengagedist.color = level.white;
        level.realtimeengagedist settext( "<dev string:x5a0>" );
        xpos = level.debug_xpos + 245;
        level.realtimeengagedist_value = newdebughudelem();
        level.realtimeengagedist_value.alignx = "<dev string:x490>";
        level.realtimeengagedist_value.fontscale = level.debug_fontscale;
        level.realtimeengagedist_value.x = xpos;
        level.realtimeengagedist_value.y = level.debug_ypos;
        level.realtimeengagedist_value.color = level.white;
        level.realtimeengagedist_value setvalue( 0 );
        xpos += 37;
        level.realtimeengagedist_middle = newdebughudelem();
        level.realtimeengagedist_middle.alignx = "<dev string:x490>";
        level.realtimeengagedist_middle.fontscale = level.debug_fontscale;
        level.realtimeengagedist_middle.x = xpos;
        level.realtimeengagedist_middle.y = level.debug_ypos;
        level.realtimeengagedist_middle.color = level.white;
        level.realtimeengagedist_middle settext( "<dev string:x145>" );
        xpos += 105;
        level.realtimeengagedist_offvalue = newdebughudelem();
        level.realtimeengagedist_offvalue.alignx = "<dev string:x490>";
        level.realtimeengagedist_offvalue.fontscale = level.debug_fontscale;
        level.realtimeengagedist_offvalue.x = xpos;
        level.realtimeengagedist_offvalue.y = level.debug_ypos;
        level.realtimeengagedist_offvalue.color = level.white;
        level.realtimeengagedist_offvalue setvalue( 0 );
        hudobjarray = [];
        hudobjarray[ 0 ] = level.realtimeengagedist;
        hudobjarray[ 1 ] = level.realtimeengagedist_value;
        hudobjarray[ 2 ] = level.realtimeengagedist_middle;
        hudobjarray[ 3 ] = level.realtimeengagedist_offvalue;
        return hudobjarray;
    }

    // Namespace dev/dev
    // Params 2, eflags: 0x0
    // Checksum 0x4c26c91b, Offset: 0x52f0
    // Size: 0x5c, Type: dev
    function engage_dist_debug_hud_destroy( hudarray, killnotify )
    {
        level waittill( killnotify );
        
        for (i = 0; i < hudarray.size; i++) {
            hudarray[ i ] destroy();
        }
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x68dbaf28, Offset: 0x5358
    // Size: 0x684, Type: dev
    function weapon_engage_dists_init()
    {
        level.engagedists = [];
        genericpistol = spawnstruct();
        genericpistol.engagedistmin = 125;
        genericpistol.engagedistoptimal = 225;
        genericpistol.engagedistmulligan = 50;
        genericpistol.engagedistmax = 400;
        shotty = spawnstruct();
        shotty.engagedistmin = 50;
        shotty.engagedistoptimal = 200;
        shotty.engagedistmulligan = 75;
        shotty.engagedistmax = 350;
        genericsmg = spawnstruct();
        genericsmg.engagedistmin = 100;
        genericsmg.engagedistoptimal = 275;
        genericsmg.engagedistmulligan = 100;
        genericsmg.engagedistmax = 500;
        genericlmg = spawnstruct();
        genericlmg.engagedistmin = 325;
        genericlmg.engagedistoptimal = 550;
        genericlmg.engagedistmulligan = 150;
        genericlmg.engagedistmax = 850;
        genericriflesa = spawnstruct();
        genericriflesa.engagedistmin = 325;
        genericriflesa.engagedistoptimal = 550;
        genericriflesa.engagedistmulligan = 150;
        genericriflesa.engagedistmax = 850;
        genericriflebolt = spawnstruct();
        genericriflebolt.engagedistmin = 350;
        genericriflebolt.engagedistoptimal = 600;
        genericriflebolt.engagedistmulligan = 150;
        genericriflebolt.engagedistmax = 900;
        generichmg = spawnstruct();
        generichmg.engagedistmin = 390;
        generichmg.engagedistoptimal = 600;
        generichmg.engagedistmulligan = 100;
        generichmg.engagedistmax = 900;
        genericsniper = spawnstruct();
        genericsniper.engagedistmin = 950;
        genericsniper.engagedistoptimal = 1700;
        genericsniper.engagedistmulligan = 300;
        genericsniper.engagedistmax = 3000;
        engage_dists_add( "<dev string:x5c1>", genericpistol );
        engage_dists_add( "<dev string:x5c9>", genericpistol );
        engage_dists_add( "<dev string:x5d2>", genericpistol );
        engage_dists_add( "<dev string:x5dd>", genericpistol );
        engage_dists_add( "<dev string:x5e8>", genericsmg );
        engage_dists_add( "<dev string:x5f4>", genericsmg );
        engage_dists_add( "<dev string:x603>", genericsmg );
        engage_dists_add( "<dev string:x60b>", genericsmg );
        engage_dists_add( "<dev string:x613>", genericsmg );
        engage_dists_add( "<dev string:x61c>", genericsmg );
        engage_dists_add( "<dev string:x624>", genericsmg );
        engage_dists_add( "<dev string:x635>", shotty );
        engage_dists_add( "<dev string:x640>", genericlmg );
        engage_dists_add( "<dev string:x647>", genericlmg );
        engage_dists_add( "<dev string:x654>", genericlmg );
        engage_dists_add( "<dev string:x662>", genericlmg );
        engage_dists_add( "<dev string:x676>", genericlmg );
        engage_dists_add( "<dev string:x67e>", genericlmg );
        engage_dists_add( "<dev string:x68c>", genericlmg );
        engage_dists_add( "<dev string:x694>", genericlmg );
        engage_dists_add( "<dev string:x6a2>", genericlmg );
        engage_dists_add( "<dev string:x6aa>", genericlmg );
        engage_dists_add( "<dev string:x6b8>", genericriflesa );
        engage_dists_add( "<dev string:x6c4>", genericriflesa );
        engage_dists_add( "<dev string:x6d1>", genericriflesa );
        engage_dists_add( "<dev string:x6da>", genericriflesa );
        engage_dists_add( "<dev string:x6e6>", genericriflebolt );
        engage_dists_add( "<dev string:x6f5>", genericriflebolt );
        engage_dists_add( "<dev string:x705>", genericriflebolt );
        engage_dists_add( "<dev string:x714>", genericriflebolt );
        engage_dists_add( "<dev string:x71e>", genericriflebolt );
        engage_dists_add( "<dev string:x72d>", generichmg );
        engage_dists_add( "<dev string:x736>", generichmg );
        engage_dists_add( "<dev string:x745>", generichmg );
        engage_dists_add( "<dev string:x74d>", generichmg );
        engage_dists_add( "<dev string:x75b>", genericsniper );
        engage_dists_add( "<dev string:x771>", genericsniper );
        engage_dists_add( "<dev string:x788>", genericsniper );
        engage_dists_add( "<dev string:x79e>", genericsniper );
        engage_dists_add( "<dev string:x7af>", genericsniper );
        engage_dists_add( "<dev string:x7be>", genericsniper );
        level thread engage_dists_watcher();
    }

    // Namespace dev/dev
    // Params 2, eflags: 0x0
    // Checksum 0x95d25f43, Offset: 0x59e8
    // Size: 0x3c, Type: dev
    function engage_dists_add( weaponname, values )
    {
        level.engagedists[ getweapon( weaponname ) ] = values;
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0x74717def, Offset: 0x5a30
    // Size: 0x3e, Type: dev
    function get_engage_dists( weapon )
    {
        if ( isdefined( level.engagedists[ weapon ] ) )
        {
            return level.engagedists[ weapon ];
        }
        
        return undefined;
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0xedc49e66, Offset: 0x5a78
    // Size: 0x108, Type: dev
    function engage_dists_watcher()
    {
        level endon( #"kill_all_engage_dist_debug" );
        level endon( #"kill_engage_dists_watcher" );
        
        while ( true )
        {
            player = util::gethostplayer();
            playerweapon = player getcurrentweapon();
            
            if ( !isdefined( player.lastweapon ) )
            {
                player.lastweapon = playerweapon;
            }
            else if ( player.lastweapon == playerweapon )
            {
                waitframe( 1 );
                continue;
            }
            
            values = get_engage_dists( playerweapon );
            
            if ( isdefined( values ) )
            {
                level.weaponengagedistvalues = values;
            }
            else
            {
                level.weaponengagedistvalues = undefined;
            }
            
            player.lastweapon = playerweapon;
            waitframe( 1 );
        }
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x7027ebb8, Offset: 0x5b88
    // Size: 0x466, Type: dev
    function debug_realtime_engage_dist()
    {
        level endon( #"kill_all_engage_dist_debug" );
        level endon( #"kill_realtime_engagement_distance_debug" );
        hudobjarray = engagement_distance_debug_init();
        level thread engage_dist_debug_hud_destroy( hudobjarray, "<dev string:x7d4>" );
        level.debugrtengagedistcolor = level.green;
        player = util::gethostplayer();
        
        while ( true )
        {
            lasttracepos = ( 0, 0, 0 );
            direction = player getplayerangles();
            direction_vec = anglestoforward( direction );
            eye = player geteye();
            eye = ( eye[ 0 ], eye[ 1 ], eye[ 2 ] + 20 );
            trace = bullettrace( eye, eye + vectorscale( direction_vec, 100000 ), 1, player );
            tracepoint = trace[ #"position" ];
            tracenormal = trace[ #"normal" ];
            tracedist = int( distance( eye, tracepoint ) );
            
            if ( tracepoint != lasttracepos )
            {
                lasttracepos = tracepoint;
                
                if ( !isdefined( level.weaponengagedistvalues ) )
                {
                    hudobj_changecolor( hudobjarray, level.white );
                    hudobjarray engagedist_hud_changetext( "<dev string:x7f2>", tracedist );
                }
                else
                {
                    engagedistmin = level.weaponengagedistvalues.engagedistmin;
                    engagedistoptimal = level.weaponengagedistvalues.engagedistoptimal;
                    engagedistmulligan = level.weaponengagedistvalues.engagedistmulligan;
                    engagedistmax = level.weaponengagedistvalues.engagedistmax;
                    
                    if ( tracedist >= engagedistmin && tracedist <= engagedistmax )
                    {
                        if ( tracedist >= engagedistoptimal - engagedistmulligan && tracedist <= engagedistoptimal + engagedistmulligan )
                        {
                            hudobjarray engagedist_hud_changetext( "<dev string:x7fc>", tracedist );
                            hudobj_changecolor( hudobjarray, level.green );
                        }
                        else
                        {
                            hudobjarray engagedist_hud_changetext( "<dev string:x807>", tracedist );
                            hudobj_changecolor( hudobjarray, level.yellow );
                        }
                    }
                    else if ( tracedist < engagedistmin )
                    {
                        hudobj_changecolor( hudobjarray, level.red );
                        hudobjarray engagedist_hud_changetext( "<dev string:x80d>", tracedist );
                    }
                    else if ( tracedist > engagedistmax )
                    {
                        hudobj_changecolor( hudobjarray, level.red );
                        hudobjarray engagedist_hud_changetext( "<dev string:x816>", tracedist );
                    }
                }
            }
            
            thread util::function_6844bea4( 1, 5, 0.05, level.debugrtengagedistcolor, tracepoint, tracenormal );
            thread util::function_6844bea4( 1, 1, 0.05, level.debugrtengagedistcolor, tracepoint, tracenormal );
            waitframe( 1 );
        }
    }

    // Namespace dev/dev
    // Params 2, eflags: 0x0
    // Checksum 0xdaea8ffe, Offset: 0x5ff8
    // Size: 0x78, Type: dev
    function hudobj_changecolor( hudobjarray, newcolor )
    {
        for (i = 0; i < hudobjarray.size; i++) {
            hudobj = hudobjarray[ i ];
            
            if ( hudobj.color != newcolor )
            {
                hudobj.color = newcolor;
                level.debugrtengagedistcolor = newcolor;
            }
        }
    }

    // Namespace dev/dev
    // Params 2, eflags: 0x0
    // Checksum 0x5768e33d, Offset: 0x6078
    // Size: 0x2ec, Type: dev
    function engagedist_hud_changetext( engagedisttype, units )
    {
        if ( !isdefined( level.lastdisttype ) )
        {
            level.lastdisttype = "<dev string:x3c>";
        }
        
        if ( engagedisttype == "<dev string:x7fc>" )
        {
            self[ 1 ] setvalue( units );
            self[ 2 ] settext( "<dev string:x81e>" );
            self[ 3 ].alpha = 0;
        }
        else if ( engagedisttype == "<dev string:x807>" )
        {
            self[ 1 ] setvalue( units );
            self[ 2 ] settext( "<dev string:x831>" );
            self[ 3 ].alpha = 0;
        }
        else if ( engagedisttype == "<dev string:x80d>" )
        {
            amountunder = level.weaponengagedistvalues.engagedistmin - units;
            self[ 1 ] setvalue( units );
            self[ 3 ] setvalue( amountunder );
            self[ 3 ].alpha = 1;
            
            if ( level.lastdisttype != engagedisttype )
            {
                self[ 2 ] settext( "<dev string:x83f>" );
            }
        }
        else if ( engagedisttype == "<dev string:x816>" )
        {
            amountover = units - level.weaponengagedistvalues.engagedistmax;
            self[ 1 ] setvalue( units );
            self[ 3 ] setvalue( amountover );
            self[ 3 ].alpha = 1;
            
            if ( level.lastdisttype != engagedisttype )
            {
                self[ 2 ] settext( "<dev string:x853>" );
            }
        }
        else if ( engagedisttype == "<dev string:x7f2>" )
        {
            self[ 1 ] setvalue( units );
            self[ 2 ] settext( "<dev string:x866>" );
            self[ 3 ].alpha = 0;
        }
        
        level.lastdisttype = engagedisttype;
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x9401f54b, Offset: 0x6370
    // Size: 0x14e, Type: dev
    function larry_thread()
    {
        level.larry = spawnstruct();
        player = util::gethostplayer();
        player thread larry_init( level.larry );
        level waittill( #"kill_larry" );
        larry_hud_destroy( level.larry );
        
        if ( isdefined( level.larry.model ) )
        {
            level.larry.model delete();
        }
        
        if ( isdefined( level.larry.ai ) )
        {
            for (i = 0; i < level.larry.ai.size; i++) {
                kick( level.larry.ai[ i ] getentitynumber() );
            }
        }
        
        level.larry = undefined;
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0xcc8d0370, Offset: 0x64c8
    // Size: 0x244, Type: dev
    function larry_init( larry )
    {
        level endon( #"kill_larry" );
        larry_hud_init( larry );
        larry.model = spawn( "<dev string:x87b>", ( 0, 0, 0 ) );
        larry.model setmodel( #"defaultactor" );
        larry.ai = [];
        wait 0.1;
        
        for ( ;; )
        {
            waitframe( 1 );
            
            if ( larry.ai.size > 0 )
            {
                larry.model hide();
                continue;
            }
            
            direction = self getplayerangles();
            direction_vec = anglestoforward( direction );
            eye = self geteye();
            trace = bullettrace( eye, eye + vectorscale( direction_vec, 8000 ), 0, undefined );
            dist = distance( eye, trace[ #"position" ] );
            position = eye + vectorscale( direction_vec, dist - 64 );
            larry.model.origin = position;
            larry.model.angles = self.angles + ( 0, 180, 0 );
            
            if ( self usebuttonpressed() )
            {
                self larry_ai( larry );
                
                while ( self usebuttonpressed() )
                {
                    waitframe( 1 );
                }
            }
        }
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0x61bd3db6, Offset: 0x6718
    // Size: 0x23c, Type: dev
    function larry_ai( larry )
    {
        var_572bc68e = "<dev string:xc9>";
        
        if ( level.teambased )
        {
            foreach ( team in level.teams )
            {
                if ( team != self.team )
                {
                    var_572bc68e = team;
                    break;
                }
            }
        }
        else
        {
            foreach ( team in level.teams )
            {
                if ( getplayers( team ).size == 0 )
                {
                    var_572bc68e = team;
                    break;
                }
            }
        }
        
        bot = bot::add_fixed_spawn_bot( var_572bc68e, larry.model.origin, larry.model.angles[ 1 ] );
        larry.ai[ larry.ai.size ] = bot;
        i = larry.ai.size - 1;
        larry.ai[ i ] thread larry_ai_thread( larry );
        larry.ai[ i ] thread larry_ai_damage( larry );
        larry.ai[ i ] thread larry_ai_health( larry );
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0x8a29bb6b, Offset: 0x6960
    // Size: 0x170, Type: dev
    function larry_ai_thread( larry )
    {
        level endon( #"kill_larry" );
        
        for ( ;; )
        {
            self waittill( #"spawned_player" );
            larry.menu[ larry.menu_health ] setvalue( self.health );
            larry.menu[ larry.menu_damage ] settext( "<dev string:x38>" );
            larry.menu[ larry.menu_range ] settext( "<dev string:x38>" );
            larry.menu[ larry.menu_hitloc ] settext( "<dev string:x38>" );
            larry.menu[ larry.menu_weapon ] settext( "<dev string:x38>" );
            larry.menu[ larry.menu_perks ] settext( "<dev string:x38>" );
            self clearperks();
        }
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0xd42c0e80, Offset: 0x6ad8
    // Size: 0x270, Type: dev
    function larry_ai_damage( larry )
    {
        level endon( #"kill_larry" );
        
        for ( ;; )
        {
            waitresult = self waittill( #"damage" );
            attacker = waitresult.attacker;
            damage = waitresult.amount;
            point = waitresult.position;
            
            if ( !isdefined( attacker ) )
            {
                continue;
            }
            
            player = util::gethostplayer();
            
            if ( !isdefined( player ) )
            {
                continue;
            }
            
            if ( attacker != player )
            {
                continue;
            }
            
            eye = player geteye();
            range = int( distance( eye, point ) );
            larry.menu[ larry.menu_health ] setvalue( self.health );
            larry.menu[ larry.menu_damage ] setvalue( damage );
            larry.menu[ larry.menu_range ] setvalue( range );
            
            if ( isdefined( self.cac_debug_location ) )
            {
                larry.menu[ larry.menu_hitloc ] settext( self.cac_debug_location );
            }
            else
            {
                larry.menu[ larry.menu_hitloc ] settext( "<dev string:x88b>" );
            }
            
            if ( isdefined( self.cac_debug_weapon ) )
            {
                larry.menu[ larry.menu_weapon ] settext( self.cac_debug_weapon );
                continue;
            }
            
            larry.menu[ larry.menu_weapon ] settext( "<dev string:x88b>" );
        }
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0x43b2254d, Offset: 0x6d50
    // Size: 0x58, Type: dev
    function larry_ai_health( larry )
    {
        level endon( #"kill_larry" );
        
        for ( ;; )
        {
            waitframe( 1 );
            larry.menu[ larry.menu_health ] setvalue( self.health );
        }
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0xc725fb2c, Offset: 0x6db0
    // Size: 0x4c4, Type: dev
    function larry_hud_init( larry )
    {
        /#
            x = -45;
            y = 275;
            menu_name = "<dev string:x898>";
            larry.hud = new_hud( menu_name, undefined, x, y, 1 );
            larry.hud setshader( #"white", 135, 65 );
            larry.hud.alignx = "<dev string:x490>";
            larry.hud.aligny = "<dev string:x498>";
            larry.hud.sort = 10;
            larry.hud.alpha = 0.6;
            larry.hud.color = ( 0, 0, 0.5 );
            larry.menu[ 0 ] = new_hud( menu_name, "<dev string:x8a6>", x + 5, y + 10, 1 );
            larry.menu[ 1 ] = new_hud( menu_name, "<dev string:x8b7>", x + 5, y + 20, 1 );
            larry.menu[ 2 ] = new_hud( menu_name, "<dev string:x8c2>", x + 5, y + 30, 1 );
            larry.menu[ 3 ] = new_hud( menu_name, "<dev string:x8cc>", x + 5, y + 40, 1 );
            larry.menu[ 4 ] = new_hud( menu_name, "<dev string:x8dd>", x + 5, y + 50, 1 );
            larry.cleartextmarker = newdebughudelem();
            larry.cleartextmarker.alpha = 0;
            larry.cleartextmarker settext( "<dev string:x8e8>" );
            larry.menu_health = larry.menu.size;
            larry.menu_damage = larry.menu.size + 1;
            larry.menu_range = larry.menu.size + 2;
            larry.menu_hitloc = larry.menu.size + 3;
            larry.menu_weapon = larry.menu.size + 4;
            larry.menu_perks = larry.menu.size + 5;
            x_offset = 70;
            larry.menu[ larry.menu_health ] = new_hud( menu_name, "<dev string:x38>", x + x_offset, y + 10, 1 );
            larry.menu[ larry.menu_damage ] = new_hud( menu_name, "<dev string:x38>", x + x_offset, y + 20, 1 );
            larry.menu[ larry.menu_range ] = new_hud( menu_name, "<dev string:x38>", x + x_offset, y + 30, 1 );
            larry.menu[ larry.menu_hitloc ] = new_hud( menu_name, "<dev string:x38>", x + x_offset, y + 40, 1 );
            larry.menu[ larry.menu_weapon ] = new_hud( menu_name, "<dev string:x38>", x + x_offset, y + 50, 1 );
            larry.menu[ larry.menu_perks ] = new_hud( menu_name, "<dev string:x38>", x + x_offset, y + 60, 1 );
        #/
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0x36de2dfa, Offset: 0x7280
    // Size: 0x9c, Type: dev
    function larry_hud_destroy( larry )
    {
        if ( isdefined( larry.hud ) )
        {
            larry.hud destroy();
            
            for (i = 0; i < larry.menu.size; i++) {
                larry.menu[ i ] destroy();
            }
            
            larry.cleartextmarker destroy();
        }
    }

    // Namespace dev/dev
    // Params 5, eflags: 0x0
    // Checksum 0xa725f912, Offset: 0x7328
    // Size: 0xc4, Type: dev
    function new_hud( hud_name, msg, x, y, scale )
    {
        if ( !isdefined( level.hud_array ) )
        {
            level.hud_array = [];
        }
        
        if ( !isdefined( level.hud_array[ hud_name ] ) )
        {
            level.hud_array[ hud_name ] = [];
        }
        
        hud = set_hudelem( msg, x, y, scale );
        level.hud_array[ hud_name ][ level.hud_array[ hud_name ].size ] = hud;
        return hud;
    }

    // Namespace dev/dev
    // Params 7, eflags: 0x0
    // Checksum 0x57a4a3d4, Offset: 0x73f8
    // Size: 0x142, Type: dev
    function set_hudelem( text, x, y, scale, alpha, sort, *debug_hudelem )
    {
        /#
            if ( !isdefined( sort ) )
            {
                sort = 1;
            }
            
            if ( !isdefined( alpha ) )
            {
                alpha = 1;
            }
            
            if ( !isdefined( debug_hudelem ) )
            {
                debug_hudelem = 20;
            }
            
            hud = newdebughudelem();
            hud.debug_hudelem = 1;
            hud.location = 0;
            hud.alignx = "<dev string:x490>";
            hud.aligny = "<dev string:x8f2>";
            hud.foreground = 1;
            hud.fontscale = alpha;
            hud.sort = debug_hudelem;
            hud.alpha = sort;
            hud.x = y;
            hud.y = scale;
            hud.og_scale = alpha;
            
            if ( isdefined( x ) )
            {
                hud settext( x );
            }
            
            return hud;
        #/
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x470b75ae, Offset: 0x7548
    // Size: 0x154, Type: dev
    function print_weapon_name()
    {
        /#
            self notify( #"print_weapon_name" );
            self endon( #"print_weapon_name" );
            wait 0.2;
            
            if ( self isswitchingweapons() )
            {
                waitresult = self waittill( #"weapon_change_complete" );
                fail_safe = 0;
                
                while ( waitresult.weapon == level.weaponnone )
                {
                    waitresult = self waittill( #"weapon_change_complete" );
                    waitframe( 1 );
                    fail_safe++;
                    
                    if ( fail_safe > 120 )
                    {
                        break;
                    }
                }
            }
            else
            {
                weapon = self getcurrentweapon();
            }
            
            printweaponname = getdvarint( #"scr_print_weapon_name", 1 );
            
            if ( printweaponname )
            {
                iprintlnbold( getweaponname( weapon ) );
            }
        #/
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x1246524a, Offset: 0x76a8
    // Size: 0x2c8, Type: dev
    function set_equipment_list()
    {
        if ( isdefined( level.dev_equipment ) )
        {
            return;
        }
        
        level.dev_equipment = [];
        level.dev_equipment[ 1 ] = getweapon( #"acoustic_sensor" );
        level.dev_equipment[ 2 ] = getweapon( #"camera_spike" );
        level.dev_equipment[ 3 ] = getweapon( #"claymore" );
        level.dev_equipment[ 4 ] = getweapon( #"satchel_charge" );
        level.dev_equipment[ 5 ] = getweapon( #"scrambler" );
        level.dev_equipment[ 6 ] = getweapon( #"tactical_insertion" );
        level.dev_equipment[ 7 ] = getweapon( #"bouncingbetty" );
        level.dev_equipment[ 8 ] = getweapon( #"trophy_system" );
        level.dev_equipment[ 9 ] = getweapon( #"pda_hack" );
        level.dev_equipment[ 10 ] = getweapon( #"threat_detector" );
        level.dev_equipment[ 11 ] = getweapon( #"armor_station" );
        level.dev_equipment[ 12 ] = getweapon( #"land_mine" );
        level.dev_equipment[ 13 ] = getweapon( #"missile_turret" );
        level.dev_equipment[ 14 ] = getweapon( #"weapon_armor" );
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0xfc3cdec2, Offset: 0x7978
    // Size: 0x298, Type: dev
    function set_grenade_list()
    {
        if ( isdefined( level.dev_grenade ) )
        {
            return;
        }
        
        level.dev_grenade = [];
        level.dev_grenade[ 1 ] = getweapon( #"frag_grenade" );
        level.dev_grenade[ 2 ] = getweapon( #"sticky_grenade" );
        level.dev_grenade[ 3 ] = getweapon( #"hatchet" );
        level.dev_grenade[ 4 ] = getweapon( #"willy_pete" );
        level.dev_grenade[ 5 ] = getweapon( #"proximity_grenade" );
        level.dev_grenade[ 6 ] = getweapon( #"flash_grenade" );
        level.dev_grenade[ 7 ] = getweapon( #"concussion_grenade" );
        level.dev_grenade[ 8 ] = getweapon( #"nightingale" );
        level.dev_grenade[ 9 ] = getweapon( #"emp_grenade" );
        level.dev_grenade[ 10 ] = getweapon( #"sensor_grenade" );
        level.dev_grenade[ 11 ] = getweapon( #"incendiary_grenade" );
        level.dev_grenade[ 12 ] = getweapon( #"sprint_boost_grenade" );
        level.dev_grenade[ 13 ] = getweapon( #"hash_5287190a1612cbd2" );
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0xd2634d31, Offset: 0x7c18
    // Size: 0xac, Type: dev
    function take_all_grenades_and_equipment( player )
    {
        for (i = 0; i < level.dev_equipment.size; i++) {
            player takeweapon( level.dev_equipment[ i + 1 ] );
        }
        
        for (i = 0; i < level.dev_grenade.size; i++) {
            player takeweapon( level.dev_grenade[ i + 1 ] );
        }
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x2e94aff4, Offset: 0x7cd0
    // Size: 0x148, Type: dev
    function equipment_dev_gui()
    {
        set_equipment_list();
        set_grenade_list();
        setdvar( #"scr_give_equipment", "<dev string:x38>" );
        
        while ( true )
        {
            wait 0.5;
            devgui_int = getdvarint( #"scr_give_equipment", 0 );
            
            if ( devgui_int != 0 )
            {
                for (i = 0; i < level.players.size; i++) {
                    take_all_grenades_and_equipment( level.players[ i ] );
                    level.players[ i ] devgui::devgui_give_weapon( getweaponname( level.dev_equipment[ devgui_int ] ) );
                }
                
                setdvar( #"scr_give_equipment", 0 );
            }
        }
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x394376bc, Offset: 0x7e20
    // Size: 0x148, Type: dev
    function grenade_dev_gui()
    {
        set_equipment_list();
        set_grenade_list();
        setdvar( #"scr_give_grenade", "<dev string:x38>" );
        
        while ( true )
        {
            wait 0.5;
            devgui_int = getdvarint( #"scr_give_grenade", 0 );
            
            if ( devgui_int != 0 )
            {
                for (i = 0; i < level.players.size; i++) {
                    take_all_grenades_and_equipment( level.players[ i ] );
                    level.players[ i ] devgui::devgui_give_weapon( getweaponname( level.dev_grenade[ devgui_int ] ) );
                }
                
                setdvar( #"scr_give_grenade", 0 );
            }
        }
    }

    // Namespace dev/dev
    // Params 1, eflags: 0x0
    // Checksum 0xb394c152, Offset: 0x7f70
    // Size: 0x1cc, Type: dev
    function force_grenade_throw( weapon )
    {
        if ( weapon == level.weaponnone )
        {
            return;
        }
        
        host = util::gethostplayer();
        
        if ( !isdefined( host.team ) )
        {
            iprintln( "<dev string:x8fc>" );
            return;
        }
        
        bot = getormakebot( util::getotherteam( host.team ) );
        
        if ( !isdefined( bot ) )
        {
            iprintln( "<dev string:xd7>" );
            return;
        }
        
        angles = host getplayerangles();
        angles = ( 0, angles[ 1 ], 0 );
        dir = anglestoforward( angles );
        dir = vectornormalize( dir );
        origin = host geteye() + vectorscale( dir, 256 );
        velocity = vectorscale( dir, -1024 );
        grenade = bot magicgrenadeplayer( weapon, origin, velocity );
        grenade setteam( bot.team );
        grenade setowner( bot );
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x719ef25e, Offset: 0x8148
    // Size: 0x456, Type: dev
    function devstraferunpathdebugdraw()
    {
        white = ( 1, 1, 1 );
        red = ( 1, 0, 0 );
        green = ( 0, 1, 0 );
        blue = ( 0, 0, 1 );
        violet = ( 0.4, 0, 0.6 );
        maxdrawtime = 10;
        drawtime = maxdrawtime;
        origintextoffset = ( 0, 0, -50 );
        endonmsg = "<dev string:x924>";
        
        while ( true )
        {
            if ( killstreaks::should_draw_debug( "<dev string:x945>" ) > 0 )
            {
                nodes = [];
                end = 0;
                node = getvehiclenode( "<dev string:x954>", "<dev string:x162>" );
                
                if ( !isdefined( node ) )
                {
                    println( "<dev string:x965>" );
                    setdvar( #"scr_devstraferunpathdebugdraw", 0 );
                    continue;
                }
                
                while ( isdefined( node.target ) )
                {
                    new_node = getvehiclenode( node.target, "<dev string:x162>" );
                    
                    foreach ( n in nodes )
                    {
                        if ( n == new_node )
                        {
                            end = 1;
                        }
                    }
                    
                    textscale = 30;
                    
                    if ( drawtime == maxdrawtime )
                    {
                        node thread drawpathsegment( new_node, violet, violet, 1, textscale, origintextoffset, drawtime, endonmsg );
                    }
                    
                    if ( isdefined( node.script_noteworthy ) )
                    {
                        textscale = 10;
                        
                        switch ( node.script_noteworthy )
                        {
                            case #"strafe_start":
                                textcolor = green;
                                textalpha = 1;
                                break;
                            case #"strafe_stop":
                                textcolor = red;
                                textalpha = 1;
                                break;
                            case #"strafe_leave":
                                textcolor = white;
                                textalpha = 1;
                                break;
                        }
                        
                        switch ( node.script_noteworthy )
                        {
                            case #"strafe_stop":
                            case #"strafe_leave":
                            case #"strafe_start":
                                sides = 10;
                                radius = 100;
                                
                                if ( drawtime == maxdrawtime )
                                {
                                    sphere( node.origin, radius, textcolor, textalpha, 1, sides, int( drawtime * 1000 ) );
                                }
                                
                                node draworiginlines();
                                node drawnoteworthytext( textcolor, textalpha, textscale );
                                break;
                        }
                    }
                    
                    if ( end )
                    {
                        break;
                    }
                    
                    nodes[ nodes.size ] = new_node;
                    node = new_node;
                }
                
                drawtime -= 0.05;
                
                if ( drawtime < 0 )
                {
                    drawtime = maxdrawtime;
                }
                
                waitframe( 1 );
                continue;
            }
            
            wait 1;
        }
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0xe41f2f11, Offset: 0x85a8
    // Size: 0x3bc, Type: dev
    function devhelipathdebugdraw()
    {
        white = ( 1, 1, 1 );
        red = ( 1, 0, 0 );
        green = ( 0, 1, 0 );
        blue = ( 0, 0, 1 );
        textcolor = white;
        textalpha = 1;
        textscale = 1;
        maxdrawtime = 10;
        drawtime = maxdrawtime;
        origintextoffset = ( 0, 0, -50 );
        endonmsg = "<dev string:x981>";
        
        while ( true )
        {
            if ( getdvarint( #"scr_devhelipathsdebugdraw", 0 ) > 0 )
            {
                script_origins = getentarray( "<dev string:x99e>", "<dev string:xbc>" );
                
                foreach ( ent in script_origins )
                {
                    if ( isdefined( ent.targetname ) )
                    {
                        switch ( ent.targetname )
                        {
                            case #"heli_start":
                                textcolor = blue;
                                textalpha = 1;
                                textscale = 3;
                                break;
                            case #"heli_loop_start":
                                textcolor = green;
                                textalpha = 1;
                                textscale = 3;
                                break;
                            case #"heli_attack_area":
                                textcolor = red;
                                textalpha = 1;
                                textscale = 3;
                                break;
                            case #"heli_leave":
                                textcolor = white;
                                textalpha = 1;
                                textscale = 3;
                                break;
                        }
                        
                        switch ( ent.targetname )
                        {
                            case #"heli_leave":
                            case #"heli_attack_area":
                            case #"heli_start":
                            case #"heli_loop_start":
                                if ( drawtime == maxdrawtime )
                                {
                                    ent thread drawpath( textcolor, white, textalpha, textscale, origintextoffset, drawtime, endonmsg );
                                }
                                
                                ent draworiginlines();
                                ent drawtargetnametext( textcolor, textalpha, textscale );
                                ent draworigintext( textcolor, textalpha, textscale, origintextoffset );
                                break;
                        }
                    }
                }
                
                drawtime -= 0.05;
                
                if ( drawtime < 0 )
                {
                    drawtime = maxdrawtime;
                }
            }
            
            if ( getdvarint( #"scr_devhelipathsdebugdraw", 0 ) == 0 )
            {
                level notify( endonmsg );
                drawtime = maxdrawtime;
                wait 1;
            }
            
            waitframe( 1 );
        }
    }

    // Namespace dev/dev
    // Params 0, eflags: 0x0
    // Checksum 0x51a2490a, Offset: 0x8970
    // Size: 0xfc, Type: dev
    function draworiginlines()
    {
        red = ( 1, 0, 0 );
        green = ( 0, 1, 0 );
        blue = ( 0, 0, 1 );
        line( self.origin, self.origin + anglestoforward( self.angles ) * 10, red );
        line( self.origin, self.origin + anglestoright( self.angles ) * 10, green );
        line( self.origin, self.origin + anglestoup( self.angles ) * 10, blue );
    }

    // Namespace dev/dev
    // Params 4, eflags: 0x0
    // Checksum 0xa9a0c0ed, Offset: 0x8a78
    // Size: 0x64, Type: dev
    function drawtargetnametext( textcolor, textalpha, textscale, textoffset )
    {
        if ( !isdefined( textoffset ) )
        {
            textoffset = ( 0, 0, 0 );
        }
        
        print3d( self.origin + textoffset, self.targetname, textcolor, textalpha, textscale );
    }

    // Namespace dev/dev
    // Params 4, eflags: 0x0
    // Checksum 0xdce45ff4, Offset: 0x8ae8
    // Size: 0x64, Type: dev
    function drawnoteworthytext( textcolor, textalpha, textscale, textoffset )
    {
        if ( !isdefined( textoffset ) )
        {
            textoffset = ( 0, 0, 0 );
        }
        
        print3d( self.origin + textoffset, self.script_noteworthy, textcolor, textalpha, textscale );
    }

    // Namespace dev/dev
    // Params 4, eflags: 0x0
    // Checksum 0xf48acdd9, Offset: 0x8b58
    // Size: 0xbc, Type: dev
    function draworigintext( textcolor, textalpha, textscale, textoffset )
    {
        if ( !isdefined( textoffset ) )
        {
            textoffset = ( 0, 0, 0 );
        }
        
        originstring = "<dev string:x9af>" + self.origin[ 0 ] + "<dev string:x9b4>" + self.origin[ 1 ] + "<dev string:x9b4>" + self.origin[ 2 ] + "<dev string:x9ba>";
        print3d( self.origin + textoffset, originstring, textcolor, textalpha, textscale );
    }

    // Namespace dev/dev
    // Params 4, eflags: 0x0
    // Checksum 0x67437ab2, Offset: 0x8c20
    // Size: 0xcc, Type: dev
    function drawspeedacceltext( textcolor, textalpha, textscale, textoffset )
    {
        if ( isdefined( self.script_airspeed ) )
        {
            print3d( self.origin + ( 0, 0, textoffset[ 2 ] * 2 ), "<dev string:x9bf>" + self.script_airspeed, textcolor, textalpha, textscale );
        }
        
        if ( isdefined( self.script_accel ) )
        {
            print3d( self.origin + ( 0, 0, textoffset[ 2 ] * 3 ), "<dev string:x9d3>" + self.script_accel, textcolor, textalpha, textscale );
        }
    }

    // Namespace dev/dev
    // Params 7, eflags: 0x0
    // Checksum 0x8c03d4fa, Offset: 0x8cf8
    // Size: 0x11e, Type: dev
    function drawpath( linecolor, textcolor, textalpha, textscale, textoffset, drawtime, endonmsg )
    {
        level endon( endonmsg );
        ent = self;
        entfirsttarget = ent.targetname;
        
        while ( isdefined( ent.target ) )
        {
            enttarget = getent( ent.target, "<dev string:x162>" );
            ent thread drawpathsegment( enttarget, linecolor, textcolor, textalpha, textscale, textoffset, drawtime, endonmsg );
            
            if ( ent.targetname == "<dev string:x9e4>" )
            {
                entfirsttarget = ent.target;
            }
            else if ( ent.target == entfirsttarget )
            {
                break;
            }
            
            ent = enttarget;
            waitframe( 1 );
        }
    }

    // Namespace dev/dev
    // Params 8, eflags: 0x0
    // Checksum 0x25f3c94, Offset: 0x8e20
    // Size: 0x116, Type: dev
    function drawpathsegment( enttarget, linecolor, textcolor, textalpha, textscale, textoffset, drawtime, endonmsg )
    {
        level endon( endonmsg );
        
        while ( drawtime > 0 )
        {
            if ( isdefined( self.targetname ) && self.targetname == "<dev string:x954>" )
            {
                print3d( self.origin + textoffset, self.targetname, textcolor, textalpha, textscale );
            }
            
            line( self.origin, enttarget.origin, linecolor );
            self drawspeedacceltext( textcolor, textalpha, textscale, textoffset );
            drawtime -= 0.05;
            waitframe( 1 );
        }
    }

#/

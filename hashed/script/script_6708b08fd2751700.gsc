#using script_2618e0f3e5e11649;
#using script_3411bb48d41bd3b;
#using scripts\core_common\ai\zombie_utility;
#using scripts\core_common\bots\bot;
#using scripts\core_common\gameobjects_shared;
#using scripts\core_common\item_world;
#using scripts\core_common\laststand_shared;
#using scripts\core_common\rat_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\zm_common\objective_manager;

#namespace rat;

/#

    // Namespace rat/namespace_7d3a1543
    // Params 0, eflags: 0x5
    // Checksum 0x640a85a9, Offset: 0xd8
    // Size: 0x3c, Type: dev
    function private autoexec __init__system__()
    {
        system::register( #"hash_2a909a3d7374cf00", &preinit, undefined, undefined, undefined );
    }

    // Namespace rat/namespace_7d3a1543
    // Params 0, eflags: 0x4
    // Checksum 0xe331388d, Offset: 0x120
    // Size: 0x394, Type: dev
    function private preinit()
    {
        init();
        level.rat.common.gethostplayer = &util::gethostplayer;
        level.rat.deathcount = 0;
        addratscriptcmd( "<dev string:x38>", &function_70f41194 );
        addratscriptcmd( "<dev string:x55>", &function_31980089 );
        addratscriptcmd( "<dev string:x67>", &function_1251949b );
        addratscriptcmd( "<dev string:x7c>", &function_684893c8 );
        addratscriptcmd( "<dev string:x8f>", &function_7eabbc02 );
        addratscriptcmd( "<dev string:x9d>", &function_d50abf44 );
        addratscriptcmd( "<dev string:xb0>", &function_89684f6a );
        addratscriptcmd( "<dev string:xc7>", &function_baeffaeb );
        addratscriptcmd( "<dev string:xd8>", &function_63a39134 );
        addratscriptcmd( "<dev string:xee>", &function_d19f7fe9 );
        addratscriptcmd( "<dev string:x107>", &function_2bd96c6e );
        addratscriptcmd( "<dev string:x12a>", &function_ee280019 );
        addratscriptcmd( "<dev string:x158>", &function_40e4c9de );
        addratscriptcmd( "<dev string:x17d>", &function_fea33619 );
        addratscriptcmd( "<dev string:x19b>", &function_163c296a );
        addratscriptcmd( "<dev string:x1b3>", &function_92891f6e );
        addratscriptcmd( "<dev string:x1ca>", &function_834d65f9 );
        addratscriptcmd( "<dev string:x1ee>", &function_ad78fe8a );
        addratscriptcmd( "<dev string:x20b>", &function_adb96ff1 );
        addratscriptcmd( "<dev string:x222>", &function_a93cbd41 );
        setdvar( #"rat_death_count", 0 );
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0xce7bb681, Offset: 0x4c0
    // Size: 0x26, Type: dev
    function function_d50abf44( *params )
    {
        return getplayers().size;
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0xcd30177b, Offset: 0x4f0
    // Size: 0x19c, Type: dev
    function function_7eabbc02( params )
    {
        remaining = 0;
        host = [[ level.rat.common.gethostplayer ]]();
        hostteam = host.team;
        
        if ( isdefined( params.remaining ) )
        {
            remaining = int( params.remaining );
        }
        
        if ( isdefined( getplayers() ) )
        {
            for (i = 0; i < getplayers().size; i++) {
                if ( getplayers().size <= remaining )
                {
                    break;
                }
                
                if ( !isdefined( getplayers()[ i ].bot ) || getplayers()[ i ].team == hostteam || getplayers()[ i ].team == "<dev string:x246>" )
                {
                    continue;
                }
                
                bot::remove_bot( getplayers()[ i ] );
            }
        }
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0x115f9aed, Offset: 0x698
    // Size: 0xd4, Type: dev
    function function_684893c8( *params )
    {
        count = 0;
        
        if ( isdefined( getplayers() ) )
        {
            foreach ( player in getplayers() )
            {
                if ( player laststand::player_is_in_laststand() )
                {
                    count++;
                }
            }
        }
        
        return count;
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0x377a6d1d, Offset: 0x778
    // Size: 0x4c, Type: dev
    function function_1251949b( *params )
    {
        player = [[ level.rat.common.gethostplayer ]]();
        return player laststand::player_is_in_laststand();
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0x19317072, Offset: 0x7d0
    // Size: 0x4c, Type: dev
    function function_70f41194( *params )
    {
        player = [[ level.rat.common.gethostplayer ]]();
        return player.inventory.var_c212de25;
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0x794abfed, Offset: 0x828
    // Size: 0x238, Type: dev
    function function_31980089( params )
    {
        player = [[ level.rat.common.gethostplayer ]]();
        numitems = 1000;
        distance = 1000;
        name = "<dev string:x24e>";
        
        if ( isdefined( params.var_1d978d3 ) )
        {
            numitems = int( params.var_1d978d3 );
        }
        
        if ( isdefined( params.distance ) )
        {
            distance = int( params.distance );
        }
        
        if ( isdefined( params.name ) )
        {
            name = params.name;
        }
        
        items = item_world::function_2e3efdda( player.origin, undefined, numitems, distance );
        
        foreach ( item in items )
        {
            if ( item.itementry.name == "<dev string:x252>" )
            {
                continue;
            }
            
            if ( isdefined( params.handler ) )
            {
                if ( params.handler != item.itementry.handler && params.handler != "<dev string:x26a>" )
                {
                    continue;
                }
            }
            
            if ( name == "<dev string:x24e>" || item.itementry.name == name )
            {
                function_55e20e75( params._id, item.origin );
            }
        }
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0xe967f3ef, Offset: 0xa68
    // Size: 0x5e, Type: dev
    function function_89684f6a( *params )
    {
        player = [[ level.rat.common.gethostplayer ]]();
        return player.inventory.items[ 5 ].networkid != 32767;
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0xf6747033, Offset: 0xad0
    // Size: 0xb6, Type: dev
    function function_baeffaeb( *params )
    {
        player = [[ level.rat.common.gethostplayer ]]();
        direction = player getplayerangles();
        direction_vec = anglestoforward( direction );
        guy = undefined;
        guy = namespace_85745671::function_9d3ad056( "<dev string:x272>", player.origin, player.angles, "<dev string:x28b>" );
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0x67382b1f, Offset: 0xb90
    // Size: 0x24, Type: dev
    function function_63a39134( *params )
    {
        return zombie_utility::get_current_zombie_count();
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0xc6a397a4, Offset: 0xbc0
    // Size: 0x24, Type: dev
    function function_d19f7fe9( *params )
    {
        namespace_ce1f29cc::function_368a7cde();
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0x6e9effae, Offset: 0xbf0
    // Size: 0x4c, Type: dev
    function function_2bd96c6e( params )
    {
        location = level.contentmanager.locations[ params.location ];
        return location.spawnedinstance.content_script_name;
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0x190733c9, Offset: 0xc48
    // Size: 0x42, Type: dev
    function function_40e4c9de( params )
    {
        location = level.contentmanager.locations[ params.location ];
        location.spawnedinstance = undefined;
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0x6ab36cbf, Offset: 0xc98
    // Size: 0x84, Type: dev
    function function_ee280019( params )
    {
        location = level.contentmanager.locations[ params.location ];
        
        if ( !isdefined( location.spawnedinstance.var_4272a188 ) )
        {
            return;
        }
        
        function_55e20e75( params._id, location.spawnedinstance.var_4272a188.origin );
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0x3eb1acaf, Offset: 0xd28
    // Size: 0xb4, Type: dev
    function function_fea33619( params )
    {
        player = [[ level.rat.common.gethostplayer ]]();
        location = level.contentmanager.locations[ params.location ];
        
        if ( !isdefined( location.spawnedinstance ) || !isdefined( location.spawnedinstance.var_e55c8b4e ) )
        {
            return 0;
        }
        
        location.spawnedinstance.var_4272a188 useby( player );
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0x7e00dccc, Offset: 0xde8
    // Size: 0x4c, Type: dev
    function function_163c296a( *params )
    {
        if ( !isdefined( level.contentmanager.activeobjective ) )
        {
            return "<dev string:x24e>";
        }
        
        return level.contentmanager.activeobjective.content_script_name;
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0x235e26f4, Offset: 0xe40
    // Size: 0xa8, Type: dev
    function function_92891f6e( params )
    {
        var_4f7fa3d1 = 1;
        
        if ( params.success === "<dev string:x29c>" )
        {
            var_4f7fa3d1 = 0;
        }
        
        if ( !isdefined( level.contentmanager.activeobjective ) )
        {
            return 0;
        }
        
        instance = level.contentmanager.activeobjective;
        objective_manager::objective_ended( level.contentmanager.activeobjective, var_4f7fa3d1 );
        return instance.success;
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0x47867250, Offset: 0xef0
    // Size: 0x184, Type: dev
    function function_834d65f9( params )
    {
        if ( !isdefined( level.contentmanager.activeobjective ) || level.contentmanager.activeobjective.content_script_name != "<dev string:x2a5>" )
        {
            return;
        }
        
        var_4f7fa3d1 = 1;
        
        if ( params.success === "<dev string:x29c>" )
        {
            var_4f7fa3d1 = 0;
        }
        
        instance = level.contentmanager.activeobjective;
        
        if ( var_4f7fa3d1 )
        {
            level notify( #"timer_defend" );
            objective_manager::stop_timer();
        }
        else
        {
            foreach ( s_instance in instance.contentgroups[ #"console" ] )
            {
                s_instance.mdl_console.health = 0;
                s_instance.mdl_console notify( #"damage" );
            }
        }
        
        return instance.success;
    }

    // Namespace rat/namespace_7d3a1543
    // Params 0, eflags: 0x0
    // Checksum 0x20ee2af1, Offset: 0x1080
    // Size: 0x74, Type: dev
    function function_ad78fe8a()
    {
        player = [[ level.rat.common.gethostplayer ]]();
        portal = level.var_7d75c960.var_fb516651;
        portal.var_56356783[ 0 ].mdl_gameobject gameobjects::use_object_onuse( player );
    }

    // Namespace rat/namespace_7d3a1543
    // Params 0, eflags: 0x0
    // Checksum 0xd387cc45, Offset: 0x1100
    // Size: 0x54, Type: dev
    function function_adb96ff1()
    {
        instance = level.contentmanager.activeobjective;
        level.var_7d75c960.var_fb516651.mdl_portal.health = 0;
        return instance.success;
    }

    // Namespace rat/namespace_7d3a1543
    // Params 1, eflags: 0x0
    // Checksum 0xb0950ef0, Offset: 0x1160
    // Size: 0xe0, Type: dev
    function function_a93cbd41( params )
    {
        if ( !isdefined( level.contentmanager.activeobjective ) || level.contentmanager.activeobjective.content_script_name != "<dev string:x2b7>" )
        {
            return;
        }
        
        var_4f7fa3d1 = 1;
        
        if ( params.success === "<dev string:x29c>" )
        {
            var_4f7fa3d1 = 0;
        }
        
        instance = level.contentmanager.activeobjective;
        
        if ( var_4f7fa3d1 )
        {
        }
        else
        {
            level notify( #"timer_payload" );
            objective_manager::stop_timer();
        }
        
        return instance.success;
    }

#/

#using script_13da4e6b98ca81a1;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;

#namespace namespace_d03f485e;

// Namespace namespace_d03f485e/namespace_d03f485e
// Params 1, eflags: 0x0
// Checksum 0x74f6fb80, Offset: 0x220
// Size: 0x4fc
function init_shared( *eventstruct )
{
    fields = getmapfields();
    level.var_117b4a3a = [];
    level.var_117b4a3a[ 0 ] = isdefined( fields.var_306136ca ) ? fields.var_306136ca : #"hash_280d5153e1276d";
    level.var_117b4a3a[ 1 ] = isdefined( fields.var_e1ef0bf1 ) ? fields.var_e1ef0bf1 : #"hash_4b1a3a0285bea14d";
    level.var_117b4a3a[ 2 ] = isdefined( fields.var_97278b57 ) ? fields.var_97278b57 : #"hash_36a94457406aea0e";
    level.var_117b4a3a[ 3 ] = isdefined( fields.var_29209af9 ) ? fields.var_29209af9 : #"hash_5a60154937b01557";
    level.var_117b4a3a[ 4 ] = isdefined( fields.var_cd9dabc7 ) ? fields.var_cd9dabc7 : #"hash_c102abd4eb802c2";
    level.var_117b4a3a[ 5 ] = isdefined( fields.var_66b704d1 ) ? fields.var_66b704d1 : #"hash_1f6942044733abd";
    level.var_117b4a3a[ 6 ] = isdefined( fields.var_43647dc0 ) ? fields.var_43647dc0 : #"hash_5a5907512d97c7dc";
    level.var_117b4a3a[ 7 ] = isdefined( fields.var_f605c142 ) ? fields.var_f605c142 : #"hash_1ebd257fc3bf9843";
    level.zones = [];
    level.var_5070c5fa = [];
    level.current_zone = [];
    clientfield::register( "world", "war_zone", 1, 5, "int", &function_a0c208cf, 0, 0 );
    clientfield::register( "scriptmover", "scriptid", 1, 5, "int", &function_e116df6c, 0, 0 );
    clientfield::function_5b7d846d( "team_momentum.level1PercentageAllies", #"team_momentum", #"level1percentageallies", 1, 8, "float", undefined, 0, 0 );
    clientfield::function_5b7d846d( "team_momentum.level2PercentageAllies", #"team_momentum", #"level2percentageallies", 1, 8, "float", undefined, 0, 0 );
    clientfield::function_5b7d846d( "team_momentum.level1PercentageAxis", #"team_momentum", #"level1percentageaxis", 1, 8, "float", undefined, 0, 0 );
    clientfield::function_5b7d846d( "team_momentum.level2PercentageAxis", #"team_momentum", #"level2percentageaxis", 1, 8, "float", undefined, 0, 0 );
    clientfield::function_5b7d846d( "team_momentum.currentLevelAllies", #"team_momentum", #"currentlevelallies", 1, 2, "int", undefined, 0, 0 );
    clientfield::function_5b7d846d( "team_momentum.currentLevelAxis", #"team_momentum", #"currentlevelaxis", 1, 2, "int", undefined, 0, 0 );
    callback::on_localclient_connect( &on_localclient_connect );
    callback::on_localplayer_spawned( &function_df78674f );
    callback::add_callback( #"server_objective", &function_3022f6ba );
}

// Namespace namespace_d03f485e/namespace_d03f485e
// Params 1, eflags: 0x0
// Checksum 0xdd902404, Offset: 0x728
// Size: 0x14c
function on_localclient_connect( local_client_num )
{
    while ( level.var_5070c5fa.size == 0 )
    {
        waitframe( 1 );
        
        for (zi = 0; zi < 5; zi++) {
            objid = serverobjective_getobjective( local_client_num, "war_" + zi );
            
            if ( !isdefined( objid ) )
            {
                continue;
            }
            
            level.var_5070c5fa[ objid ] = zi;
        }
    }
    
    objectives = getarraykeys( level.var_5070c5fa );
    
    foreach ( objective in objectives )
    {
        function_dd2493cc( local_client_num, objective );
    }
    
    function_d456b15a( local_client_num );
}

// Namespace namespace_d03f485e/namespace_d03f485e
// Params 1, eflags: 0x4
// Checksum 0xfcba9aed, Offset: 0x880
// Size: 0xdc
function private function_d456b15a( *localclientnum )
{
    var_980d4dc3 = 2 + "x";
    setuimodelvalue( getuimodel( function_5f72e972( #"team_momentum" ), "level1Multiplier" ), var_980d4dc3 );
    var_298172e3 = 3 + "x";
    setuimodelvalue( getuimodel( function_5f72e972( #"team_momentum" ), "level2Multiplier" ), var_298172e3 );
}

// Namespace namespace_d03f485e/namespace_d03f485e
// Params 2, eflags: 0x0
// Checksum 0xcafec6da, Offset: 0x968
// Size: 0x468
function function_dd2493cc( local_client_num, objid )
{
    zone_index = level.var_5070c5fa[ objid ];
    
    if ( !isdefined( zone_index ) )
    {
        return;
    }
    
    var_c86e6ba8 = function_9b3f0ed1( local_client_num );
    iscodcaster = codcaster::function_b8fe9b52( local_client_num );
    suffix = iscodcaster ? "_codcaster" : "";
    var_efa99888 = serverobjective_getobjectivegamemodeflags( local_client_num, objid );
    objective = serverobjective_getobjectiveentity( local_client_num, objid );
    
    if ( isdefined( objective ) )
    {
        var_44fada37 = objective function_9682ea07();
    }
    
    if ( !isdefined( var_44fada37 ) )
    {
        var_44fada37 = 0;
    }
    
    capturingteam = function_364d50b( var_44fada37 );
    var_b65ea6f2 = function_364d50b( var_efa99888 );
    contested = var_44fada37 === 3;
    locked = var_efa99888 === 3;
    inactive = var_efa99888 === 4;
    state = 0;
    
    if ( locked || inactive )
    {
        state = 0;
    }
    else if ( contested )
    {
        state = 3;
    }
    else if ( capturingteam === #"none" )
    {
        if ( var_b65ea6f2 === #"none" )
        {
            state = 0;
        }
        else if ( var_b65ea6f2 === var_c86e6ba8 )
        {
            state = 1;
        }
        else
        {
            state = 2;
        }
    }
    else if ( capturingteam === var_c86e6ba8 )
    {
        var_4c107e47 = var_b65ea6f2 === var_c86e6ba8 || var_b65ea6f2 === #"none";
        state = var_4c107e47 ? 4 : 7;
    }
    else
    {
        var_6dbe5a6e = var_b65ea6f2 !== var_c86e6ba8;
        state = var_6dbe5a6e ? 5 : 6;
    }
    
    if ( isdefined( level.othervisuals[ zone_index ] ) )
    {
        foreach ( entid in level.othervisuals[ zone_index ] )
        {
            entity = getentbynum( local_client_num, entid );
            
            if ( !isdefined( entity ) )
            {
                continue;
            }
            
            for (si = 0; si < level.var_117b4a3a.size; si++) {
                rob = level.var_117b4a3a[ si ] + suffix;
                
                if ( entity function_d2503806( rob ) )
                {
                    if ( state != si )
                    {
                        entity stoprenderoverridebundle( rob );
                    }
                    
                    continue;
                }
                
                if ( state == si )
                {
                    entity playrenderoverridebundle( rob );
                    
                    if ( iscodcaster )
                    {
                        codcaster::function_773f6e31( local_client_num, entity, rob, state );
                        continue;
                    }
                    
                    util::function_f5b24d2d( local_client_num, entity, rob, state );
                }
            }
        }
    }
}

// Namespace namespace_d03f485e/namespace_d03f485e
// Params 1, eflags: 0x0
// Checksum 0x4152bb1c, Offset: 0xdd8
// Size: 0xe2
function function_df78674f( localclientnum )
{
    if ( !isdefined( localclientnum ) )
    {
        return;
    }
    
    currentzone = level.current_zone[ localclientnum ];
    
    if ( isdefined( currentzone ) && isdefined( level.var_5070c5fa ) )
    {
        foreach ( key, id in level.var_5070c5fa )
        {
            if ( id === currentzone )
            {
                function_dd2493cc( localclientnum, key );
                return;
            }
        }
    }
}

// Namespace namespace_d03f485e/namespace_d03f485e
// Params 1, eflags: 0x0
// Checksum 0x2047ec0c, Offset: 0xec8
// Size: 0x7a
function function_364d50b( teamindex = 0 )
{
    team = #"none";
    
    if ( teamindex === 1 )
    {
        team = #"allies";
    }
    else if ( teamindex === 2 )
    {
        team = #"axis";
    }
    
    return team;
}

// Namespace namespace_d03f485e/namespace_d03f485e
// Params 7, eflags: 0x0
// Checksum 0xa09fd401, Offset: 0xf50
// Size: 0x3c8
function function_a0c208cf( local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( !isdefined( level.var_2a9880e9 ) )
    {
        level.var_2a9880e9 = getentarray( fieldname, "war_zone", "targetname" );
    }
    
    currentzoneindex = level.current_zone[ fieldname ];
    
    if ( isdefined( currentzoneindex ) && isdefined( level.othervisuals[ currentzoneindex ] ) )
    {
        foreach ( entid in level.othervisuals[ currentzoneindex ] )
        {
            entity = getentbynum( fieldname, entid );
            
            if ( !isdefined( entity ) )
            {
                continue;
            }
            
            for (si = 0; si < 4; si++) {
                if ( entity function_d2503806( level.var_117b4a3a[ si ] ) )
                {
                    entity stoprenderoverridebundle( level.var_117b4a3a[ si ] );
                }
            }
        }
    }
    
    level.current_zone[ fieldname ] = bwastimejump;
    
    if ( isdefined( level.zones[ bwastimejump ] ) )
    {
        foreach ( entid in level.othervisuals[ bwastimejump ] )
        {
            newzone = getentbynum( fieldname, entid );
            
            if ( !isdefined( newzone ) )
            {
                continue;
            }
            
            if ( !newzone function_d2503806( level.var_117b4a3a[ 0 ] ) )
            {
                newzone playrenderoverridebundle( level.var_117b4a3a[ 0 ] );
            }
            
            foreach ( trig in level.var_2a9880e9 )
            {
                if ( isdefined( newzone.script_index ) && newzone.script_index == trig.script_index )
                {
                    trig function_c06a8682( fieldname );
                    continue;
                }
                
                trig function_c6c4ce9f( fieldname );
            }
        }
        
        return;
    }
    
    level.current_zone[ fieldname ] = undefined;
}

// Namespace namespace_d03f485e/namespace_d03f485e
// Params 7, eflags: 0x0
// Checksum 0x90d36662, Offset: 0x1320
// Size: 0x1b8
function function_e116df6c( *localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    fieldname -= 1;
    bwastimejump -= 1;
    
    if ( bwastimejump == fieldname && isdefined( self.script_index ) )
    {
        return;
    }
    
    script_index = bwastimejump;
    self.script_index = script_index;
    
    if ( !isdefined( level.othervisuals[ script_index ] ) )
    {
        level.othervisuals[ script_index ] = [];
    }
    
    if ( !isdefined( level.othervisuals[ script_index ] ) )
    {
        level.othervisuals[ script_index ] = [];
    }
    else if ( !isarray( level.othervisuals[ script_index ] ) )
    {
        level.othervisuals[ script_index ] = array( level.othervisuals[ script_index ] );
    }
    
    if ( !isinarray( level.othervisuals[ script_index ], self getentitynumber() ) )
    {
        level.othervisuals[ script_index ][ level.othervisuals[ script_index ].size ] = self getentitynumber();
    }
    
    level.zones[ bwastimejump ] = self getentitynumber();
}

// Namespace namespace_d03f485e/namespace_d03f485e
// Params 1, eflags: 0x0
// Checksum 0x4f33334a, Offset: 0x14e0
// Size: 0x64
function function_3022f6ba( eventstruct )
{
    local_client_num = eventstruct.localclientnum;
    obj_id = eventstruct.id;
    ent = eventstruct.entity_num;
    function_dd2493cc( local_client_num, obj_id );
}


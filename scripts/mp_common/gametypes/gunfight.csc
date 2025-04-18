#using script_13da4e6b98ca81a1;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\util_shared;

#namespace gunfight;

// Namespace gunfight/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x68fa105c, Offset: 0x140
// Size: 0x2f8
function event_handler[gametype_init] main( *eventstruct )
{
    clientfield::register( "world", "activeTrigger", 1, 1, "int", &function_f789a70b, 0, 0 );
    clientfield::register( "scriptmover", "scriptid", 1, 1, "int", &function_e116df6c, 0, 0 );
    clientfield::register( "allplayers", "gunfight_pregame_rob", 9000, 1, "int", &function_f923f745, 0, 0 );
    callback::add_callback( #"server_objective", &function_3022f6ba );
    level.var_9c5e7d9 = #"hash_5b34830d9a8a7f52";
    level._effect[ #"zoneedgemarker" ] = [];
    level._effect[ #"zoneedgemarker" ][ 0 ] = #"ui/fx8_infil_marker_neutral";
    level._effect[ #"zoneedgemarker" ][ 1 ] = #"hash_5c2ae9f4f331d4b9";
    level._effect[ #"zoneedgemarker" ][ 2 ] = #"hash_7d1b0f001ea88b82";
    level._effect[ #"zoneedgemarker" ][ 3 ] = #"hash_7981eb245ea536fc";
    fields = getmapfields();
    level.var_117b4a3a = [];
    level.var_117b4a3a[ 0 ] = isdefined( fields.var_306136ca ) ? fields.var_306136ca : #"hash_280d5153e1276d";
    level.var_117b4a3a[ 1 ] = isdefined( fields.var_e1ef0bf1 ) ? fields.var_e1ef0bf1 : #"hash_4b1a3a0285bea14d";
    level.var_117b4a3a[ 2 ] = isdefined( fields.var_97278b57 ) ? fields.var_97278b57 : #"hash_36a94457406aea0e";
    level.var_117b4a3a[ 3 ] = isdefined( fields.var_29209af9 ) ? fields.var_29209af9 : #"hash_5a60154937b01557";
}

// Namespace gunfight/gunfight
// Params 7, eflags: 0x0
// Checksum 0x14571c2d, Offset: 0x440
// Size: 0x8c
function function_f923f745( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( codcaster::function_b8fe9b52( fieldname ) )
    {
        return;
    }
    
    if ( bwastimejump )
    {
        self function_b72cd4c9( fieldname );
        return;
    }
    
    self function_f4497937( fieldname );
}

// Namespace gunfight/gunfight
// Params 1, eflags: 0x4
// Checksum 0x7b4bf6e1, Offset: 0x4d8
// Size: 0xfc
function private function_b72cd4c9( localclientnum )
{
    self endon( #"death" );
    self util::waittill_dobj( localclientnum );
    
    if ( !isalive( self ) || function_1cbf351b( localclientnum ) )
    {
        return;
    }
    
    var_fd9bf390 = function_9b3f0ed1( localclientnum );
    
    if ( self.team !== var_fd9bf390 && game.state === #"pregame" )
    {
        if ( !self function_d2503806( #"hash_1dced6114b72a678" ) )
        {
            self playrenderoverridebundle( #"hash_1dced6114b72a678" );
        }
    }
}

// Namespace gunfight/gunfight
// Params 1, eflags: 0x4
// Checksum 0x5c6af5ca, Offset: 0x5e0
// Size: 0x7c
function private function_f4497937( localclientnum )
{
    self endon( #"death" );
    self util::waittill_dobj( localclientnum );
    
    if ( !isdefined( self ) )
    {
        return;
    }
    
    if ( self function_d2503806( #"hash_1dced6114b72a678" ) )
    {
        self stoprenderoverridebundle( #"hash_1dced6114b72a678" );
    }
}

// Namespace gunfight/gunfight
// Params 1, eflags: 0x0
// Checksum 0xfdb510eb, Offset: 0x668
// Size: 0x4c
function function_3022f6ba( eventstruct )
{
    local_client_num = eventstruct.localclientnum;
    obj_id = eventstruct.id;
    function_dd2493cc( local_client_num, obj_id );
}

// Namespace gunfight/gunfight
// Params 2, eflags: 0x0
// Checksum 0x90053e12, Offset: 0x6c0
// Size: 0x310
function function_dd2493cc( local_client_num, objid )
{
    iscodcaster = codcaster::function_b8fe9b52( local_client_num );
    
    if ( iscodcaster )
    {
        var_4bb78aa3 = function_8147db19( local_client_num, objid, #"allies" );
        var_c7fc4f01 = function_8147db19( local_client_num, objid, #"axis" );
    }
    else
    {
        friendlyteam = function_9b3f0ed1( local_client_num );
        enemyteam = util::get_enemy_team( friendlyteam );
        var_4bb78aa3 = function_8147db19( local_client_num, objid, friendlyteam );
        var_c7fc4f01 = function_8147db19( local_client_num, objid, enemyteam );
    }
    
    suffix = iscodcaster ? "_codcaster" : "";
    state = 0;
    
    if ( var_4bb78aa3 )
    {
        state = 1;
    }
    
    if ( var_c7fc4f01 )
    {
        state = 2;
    }
    
    if ( var_4bb78aa3 && var_c7fc4f01 )
    {
        state = 3;
    }
    
    if ( isdefined( level.othervisuals ) )
    {
        foreach ( entid in level.othervisuals )
        {
            entity = getentbynum( local_client_num, entid );
            
            if ( isdefined( entity ) )
            {
                for (si = 0; si < 4; si++) {
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
}

// Namespace gunfight/gunfight
// Params 7, eflags: 0x0
// Checksum 0xa60e9187, Offset: 0x9d8
// Size: 0x15c
function function_e116df6c( *localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( !isdefined( level.othervisuals ) )
    {
        level.othervisuals = [];
    }
    
    if ( !isdefined( level.othervisuals ) )
    {
        level.othervisuals = [];
    }
    else if ( !isarray( level.othervisuals ) )
    {
        level.othervisuals = array( level.othervisuals );
    }
    
    if ( !isinarray( level.othervisuals, self getentitynumber() ) )
    {
        level.othervisuals[ level.othervisuals.size ] = self getentitynumber();
    }
    
    if ( !self function_d2503806( level.var_117b4a3a[ 0 ] ) )
    {
        self playrenderoverridebundle( level.var_117b4a3a[ 0 ] );
    }
}

// Namespace gunfight/gunfight
// Params 7, eflags: 0x0
// Checksum 0x9bbe4d9b, Offset: 0xb40
// Size: 0x13c
function function_f789a70b( local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( is_false( getgametypesetting( #"hash_4091f2d0019b1f4a" ) ) )
    {
        return;
    }
    
    if ( !isdefined( level.var_36230b7e ) )
    {
        level.var_36230b7e = getentarray( fieldname, "gunfight_zone_trigger", "targetname" );
    }
    
    if ( level.var_36230b7e.size > 0 )
    {
        capturetrigger = level.var_36230b7e[ 0 ];
        
        if ( isdefined( capturetrigger ) && isentity( capturetrigger ) )
        {
            if ( bwastimejump == 1 )
            {
                capturetrigger function_c06a8682( fieldname );
                return;
            }
            
            capturetrigger function_c6c4ce9f( fieldname );
        }
    }
}


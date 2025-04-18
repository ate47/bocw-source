#using scripts\core_common\ai_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\system_shared;
#using scripts\zm_common\zm_perks;

#namespace zm_perk_death_perception;

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 0, eflags: 0x5
// Checksum 0x26ff8758, Offset: 0x2f8
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"zm_perk_death_perception", &preinit, undefined, undefined, undefined );
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 0, eflags: 0x4
// Checksum 0x713813a8, Offset: 0x340
// Size: 0x12c
function private preinit()
{
    if ( !is_true( getgametypesetting( #"hash_45fa8995b51490e8" ) ) )
    {
        return;
    }
    
    enable_death_perception_perk_for_level();
    level.var_ba997 = &function_fcfd6064;
    level.var_d5d697f5 = &perk_death_perception_visuals_items;
    level.var_1c1febec = [];
    
    for (i = 0; i < getmaxlocalclients(); i++) {
        level.var_1c1febec[ i ] = 0;
    }
    
    level.var_5d9a0215 = [];
    ai::add_ai_spawn_function( &function_731d83de );
    scene::function_2e58158b( &function_dd6c1a8b );
    zm_perks::function_f3c80d73( "zombie_perk_bottle_death_perception" );
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 0, eflags: 0x0
// Checksum 0xcb68ccdf, Offset: 0x478
// Size: 0xe4
function enable_death_perception_perk_for_level()
{
    zm_perks::register_perk_clientfields( #"talent_deathperception", &function_6e0b6101, &function_95ed7b4a );
    zm_perks::register_perk_effects( #"talent_deathperception", "deathperception_light" );
    zm_perks::register_perk_init_thread( #"talent_deathperception", &function_9b484511 );
    zm_perks::function_b60f4a9f( #"talent_deathperception", #"p8_zm_vapor_altar_icon_01_deathperception", "zombie/fx8_perk_altar_symbol_ambient_death_perception", #"zmperksdeathperception" );
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x568
// Size: 0x4
function function_9b484511()
{
    
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 0, eflags: 0x0
// Checksum 0x7fc436bc, Offset: 0x578
// Size: 0x16c
function function_6e0b6101()
{
    clientfield::register( "scriptmover", "perk_death_perception_item_marked_for_rob", 15000, 1, "int", &perk_death_perception_item_marked_for_rob, 0, 0 );
    clientfield::register( "toplayer", "perk_death_perception_visuals", 15000, 1, "int", &perk_death_perception_visuals, 0, 0 );
    clientfield::register( "toplayer", "perk_death_perception_visuals_items", 15000, 1, "int", &perk_death_perception_visuals_items, 0, 0 );
    clientfield::register( "toplayer", "perk_death_perception_hud_warning", 15000, 1, "int", &perk_death_perception_hud_warning, 0, 0 );
    clientfield::register( "world", "dark_aether_crystal_check_dynentstate", 15000, 1, "counter", &dark_aether_crystal_check_dynentstate, 0, 0 );
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x6f0
// Size: 0x4
function function_95ed7b4a()
{
    
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 4, eflags: 0x0
// Checksum 0x49d5199c, Offset: 0x700
// Size: 0x53c
function function_fcfd6064( localclientnum, itementry, clientdata, networkid )
{
    player = function_27673a7( localclientnum );
    
    if ( isdefined( player ) && is_true( level.var_1c1febec[ localclientnum ] ) && !function_65b9eb0f( localclientnum ) && player hastalent( localclientnum, #"talent_deathperception_5" ) )
    {
        renderbundle = "rob_sr_item_white_dp";
        
        if ( isdefined( itementry ) )
        {
            switch ( itementry.rarity )
            {
                case #"none":
                    break;
                case #"resource":
                    renderbundle = "rob_sr_item_white_dp";
                    break;
                case #"uncommon":
                    renderbundle = "rob_sr_item_green_dp";
                    break;
                case #"rare":
                    renderbundle = "rob_sr_item_blue_dp";
                    break;
                case #"epic":
                    renderbundle = "rob_sr_item_purple_dp";
                    break;
                case #"legendary":
                    renderbundle = "rob_sr_item_orange_dp";
                    break;
                case #"ultra":
                    renderbundle = "rob_sr_item_gold_dp";
                    break;
                case #"loadout":
                    renderbundle = "rob_sr_item_red_dp";
                    break;
            }
            
            if ( itementry.itemtype == #"resource" )
            {
                renderbundle = #"hash_2f523d47697a9ce3";
            }
            
            if ( is_true( itementry.wallbuyitem ) )
            {
                renderbundle = #"hash_52f7937d76fafca0";
            }
            
            if ( isdefined( itementry.var_599225da ) )
            {
                renderbundle = itementry.var_599225da;
            }
        }
        
        if ( isdefined( networkid ) && isdefined( clientdata ) && isdefined( clientdata.var_ffc1c0e1 ) )
        {
            if ( isdefined( clientdata.var_ffc1c0e1[ networkid ] ) && clientdata.var_ffc1c0e1[ networkid ].servertime > getservertime( localclientnum, 1 ) )
            {
                renderbundle = #"hash_3d6eb4b9bbc74fbd";
            }
        }
        
        return renderbundle;
    }
    
    renderbundle = #"hash_312ceb838675b80";
    
    if ( isdefined( itementry ) )
    {
        switch ( itementry.rarity )
        {
            case #"none":
                break;
            case #"resource":
                renderbundle = #"hash_312ceb838675b80";
                break;
            case #"uncommon":
                renderbundle = #"hash_70c807782a37573e";
                break;
            case #"rare":
                renderbundle = #"hash_5b08235c0b55a003";
                break;
            case #"epic":
                renderbundle = #"rob_sr_item_purple";
                break;
            case #"legendary":
                renderbundle = #"hash_64261dabb4df88cd";
                break;
            case #"ultra":
                renderbundle = #"rob_sr_item_gold";
                break;
            case #"loadout":
                renderbundle = #"hash_3088f081654a720e";
                break;
        }
        
        if ( itementry.itemtype == #"resource" )
        {
            renderbundle = #"hash_2f523d47697a9ce3";
        }
        
        if ( is_true( itementry.wallbuyitem ) )
        {
            renderbundle = #"hash_52f7937d76fafca0";
        }
        
        if ( isdefined( itementry.var_599225da ) )
        {
            renderbundle = itementry.var_599225da;
        }
    }
    
    if ( isdefined( networkid ) && isdefined( clientdata ) && isdefined( clientdata.var_ffc1c0e1 ) )
    {
        if ( isdefined( clientdata.var_ffc1c0e1[ networkid ] ) && clientdata.var_ffc1c0e1[ networkid ].servertime > getservertime( localclientnum, 1 ) )
        {
            renderbundle = #"hash_3d6eb4b9bbc74fbd";
        }
    }
    
    return renderbundle;
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 7, eflags: 0x0
// Checksum 0xb007e33e, Offset: 0xc48
// Size: 0xfc
function perk_death_perception_item_marked_for_rob( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump )
    {
        if ( !isdefined( level.var_5d9a0215 ) )
        {
            level.var_5d9a0215 = [];
        }
        else if ( !isarray( level.var_5d9a0215 ) )
        {
            level.var_5d9a0215 = array( level.var_5d9a0215 );
        }
        
        level.var_5d9a0215[ level.var_5d9a0215.size ] = self;
        return;
    }
    
    arrayremovevalue( level.var_5d9a0215, self );
    self stoprenderoverridebundle( #"hash_5826a243f40e004c" );
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 7, eflags: 0x0
// Checksum 0xfef837fa, Offset: 0xd50
// Size: 0xae
function perk_death_perception_hud_warning( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump && !is_true( level.var_dc60105c ) && !isigcactive( fieldname ) )
    {
        self thread function_fff5377e( fieldname );
        return;
    }
    
    self notify( #"hash_45ed6efeef67b773" );
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 7, eflags: 0x0
// Checksum 0x3c9ba397, Offset: 0xe08
// Size: 0x1a8
function perk_death_perception_visuals_items( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( function_65b9eb0f( fieldname ) )
    {
        return;
    }
    
    if ( bwastimejump && !is_true( level.var_dc60105c ) && !isigcactive( fieldname ) )
    {
        self.var_fc689684 = 1;
        arrayremovevalue( level.var_5d9a0215, undefined );
        self thread function_1300c2fe();
        return;
    }
    
    self notify( #"hash_48d1d774df4a8016" );
    self.var_fc689684 = undefined;
    
    foreach ( var_98bbded7 in level.var_5d9a0215 )
    {
        if ( !isentity( var_98bbded7 ) )
        {
            continue;
        }
        
        var_98bbded7 stoprenderoverridebundle( #"hash_5826a243f40e004c" );
    }
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 0, eflags: 0x0
// Checksum 0x58c1e9b, Offset: 0xfb8
// Size: 0x152
function function_1300c2fe()
{
    self endon( #"death", #"hash_48d1d774df4a8016" );
    
    while ( true )
    {
        foreach ( var_98bbded7 in level.var_5d9a0215 )
        {
            if ( isdefined( var_98bbded7 ) )
            {
                if ( distance2d( self.origin, var_98bbded7.origin ) <= 1000 )
                {
                    if ( !var_98bbded7 function_d2503806( #"hash_5826a243f40e004c" ) )
                    {
                        var_98bbded7 playrenderoverridebundle( #"hash_5826a243f40e004c" );
                    }
                    
                    continue;
                }
                
                var_98bbded7 stoprenderoverridebundle( #"hash_5826a243f40e004c" );
            }
        }
        
        waitframe( 1 );
    }
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 7, eflags: 0x0
// Checksum 0x2fba4cd1, Offset: 0x1118
// Size: 0x1a0
function perk_death_perception_visuals( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( function_65b9eb0f( fieldname ) )
    {
        return;
    }
    
    if ( bwastimejump && !is_true( level.var_dc60105c ) && !isigcactive( fieldname ) )
    {
        level.var_1c1febec[ fieldname ] = 1;
        self thread function_6c1f79e3( fieldname );
        return;
    }
    
    self notify( #"hash_324f3fd9a0081db0" );
    level.var_1c1febec[ fieldname ] = 0;
    a_ai = function_793a9f3d( fieldname );
    
    foreach ( ai in a_ai )
    {
        if ( isdefined( ai ) )
        {
            ai stoprenderoverridebundle( #"hash_30651f363ef055e9" );
        }
    }
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 1, eflags: 0x0
// Checksum 0x95d4eaa5, Offset: 0x12c0
// Size: 0x15a
function function_6c1f79e3( localclientnum )
{
    self endon( #"death", #"hash_324f3fd9a0081db0" );
    
    while ( true )
    {
        a_ai = function_793a9f3d( localclientnum );
        
        foreach ( ai in a_ai )
        {
            if ( isdefined( ai ) )
            {
                if ( distance2d( ai.origin, self.origin ) <= 850 && !isdefined( ai.var_d59aa7bb ) )
                {
                    ai function_731d83de( localclientnum );
                    continue;
                }
                
                ai stoprenderoverridebundle( #"hash_30651f363ef055e9" );
            }
        }
        
        waitframe( 1 );
    }
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 1, eflags: 0x0
// Checksum 0xc405741b, Offset: 0x1428
// Size: 0x9c
function function_731d83de( localclientnum )
{
    if ( level.var_1c1febec[ localclientnum ] && self.team === #"axis" )
    {
        wait 0.25;
        
        if ( isdefined( self ) )
        {
            self playrenderoverridebundle( #"hash_30651f363ef055e9" );
        }
        
        return;
    }
    
    if ( isdefined( self ) )
    {
        self stoprenderoverridebundle( #"hash_30651f363ef055e9" );
    }
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 1, eflags: 0x0
// Checksum 0x2fc45f8e, Offset: 0x14d0
// Size: 0x28c
function function_fff5377e( localclientnum )
{
    self endon( #"death", #"hash_45ed6efeef67b773" );
    
    while ( true )
    {
        if ( !is_true( level.var_dc60105c ) && !isigcactive( localclientnum ) )
        {
            a_ai = function_793a9f3d( localclientnum );
            a_ai = arraysortclosest( a_ai, self.origin, undefined, undefined, 200 );
            var_8475afc1 = anglestoforward( self.angles );
            
            foreach ( ai in a_ai )
            {
                if ( isalive( ai ) )
                {
                    if ( vectordot( var_8475afc1, vectornormalize( ai.origin - self.origin ) ) < 0.35 )
                    {
                        var_f2c7b8b0 = ai.origin;
                        
                        if ( ai.type === #"vehicle" )
                        {
                            var_f2c7b8b0 = ( ai.origin[ 0 ], ai.origin[ 1 ], self.origin[ 2 ] );
                        }
                        
                        var_5d77125a = 1000 * ( 0.25 + 0.016 * a_ai.size + 0.015 );
                        self addawarenessindicator( var_f2c7b8b0, "noncombat_danger", int( var_5d77125a ) );
                    }
                    
                    waitframe( 1 );
                }
            }
        }
        
        wait 0.25;
    }
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 1, eflags: 0x4
// Checksum 0xe27eab83, Offset: 0x1768
// Size: 0xb2
function private function_793a9f3d( localclientnum )
{
    a_ai = getentarraybytype( localclientnum, 15 );
    a_vh = getentarraybytype( localclientnum, 12 );
    a_ai = arraycombine( a_ai, a_vh, 0, 0 );
    
    if ( a_ai.size )
    {
        a_ai = array::filter( a_ai, 0, &function_6a5f77 );
    }
    
    return a_ai;
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 1, eflags: 0x0
// Checksum 0xc19a1c73, Offset: 0x1828
// Size: 0x24, Type: bool
function function_6a5f77( val )
{
    return val.team === #"axis";
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 1, eflags: 0x0
// Checksum 0xc5fa64f7, Offset: 0x1858
// Size: 0x74
function function_25410869( localclientnum )
{
    if ( self == function_5c10bd79( localclientnum ) )
    {
        value = self clientfield::get_to_player( "perk_death_perception_visuals" );
        self perk_death_perception_visuals( localclientnum, undefined, value, undefined, undefined, undefined, undefined );
    }
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 2, eflags: 0x0
// Checksum 0xa66584ef, Offset: 0x18d8
// Size: 0x2c
function function_dd6c1a8b( localclientnum, *b_igc_active )
{
    self function_25410869( b_igc_active );
}

// Namespace zm_perk_death_perception/zm_perk_death_perception
// Params 7, eflags: 0x0
// Checksum 0x95382a1, Offset: 0x1910
// Size: 0x158
function dark_aether_crystal_check_dynentstate( *localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    var_87edbe2f = getdynentarray( "dark_aehter_loot_crystal", 1 );
    
    foreach ( crystal in var_87edbe2f )
    {
        state = function_ffdbe8c2( crystal );
        
        if ( state === 1 )
        {
            if ( isarray( level.var_5d9a0215 ) )
            {
                arrayremovevalue( level.var_5d9a0215, crystal );
                crystal stoprenderoverridebundle( #"hash_5826a243f40e004c" );
            }
        }
    }
}


#using script_5a84f213cefea5de;
#using scripts\core_common\armor_carrier;
#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\item_drop;
#using scripts\core_common\item_world;
#using scripts\core_common\item_world_util;
#using scripts\core_common\system_shared;
#using scripts\killstreaks\killstreaks_shared;

#namespace namespace_234f0efc;

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 0, eflags: 0x5
// Checksum 0xeb3c0873, Offset: 0x140
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"hash_296b16535a22f50f", &preinit, undefined, undefined, undefined );
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 0, eflags: 0x4
// Checksum 0xb1454a01, Offset: 0x188
// Size: 0x2c
function private preinit()
{
    clientfield::register_clientuimodel( "hudItems.radiationVestHealth", 1, 5, "float" );
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 0, eflags: 0x0
// Checksum 0x15d67768, Offset: 0x1c0
// Size: 0x1c
function init()
{
    level.var_a27256f0 = &function_a27256f0;
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 1, eflags: 0x0
// Checksum 0xc1fe2ac6, Offset: 0x1e8
// Size: 0x24
function function_a27256f0( *killstreaktype )
{
    self function_d5766919( 0 );
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 0, eflags: 0x0
// Checksum 0x93be40f6, Offset: 0x218
// Size: 0xc0
function drop_all_items()
{
    var_4c42f7cf = 0;
    var_4c42f7cf = self function_d5766919( var_4c42f7cf );
    var_4c42f7cf = self function_b31f892b( var_4c42f7cf );
    var_4c42f7cf = self function_e50b5cec( var_4c42f7cf );
    var_4c42f7cf = self drop_armor( var_4c42f7cf );
    
    if ( level.disableweapondrop == 1 )
    {
        var_4c42f7cf = self function_b0d333d9( var_4c42f7cf );
    }
    
    if ( isdefined( level.var_1de522ea ) )
    {
        self [[ level.var_1de522ea ]]( var_4c42f7cf );
    }
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 1, eflags: 0x0
// Checksum 0x3983ccb6, Offset: 0x2e0
// Size: 0xd2
function function_b0d333d9( var_4c42f7cf )
{
    weaponslist = self getweaponslist();
    var_4c42f7cf = self namespace_1d9319e5::drop_weapon( var_4c42f7cf, weaponslist[ 0 ] );
    var_4c42f7cf = self namespace_1d9319e5::drop_weapon( var_4c42f7cf, weaponslist[ 1 ] );
    var_4c42f7cf = self namespace_1d9319e5::function_79270eec( var_4c42f7cf, weaponslist[ 2 ] );
    var_4c42f7cf = self namespace_1d9319e5::function_79270eec( var_4c42f7cf, weaponslist[ 3 ] );
    var_4c42f7cf = self namespace_1d9319e5::function_3af40ef4( var_4c42f7cf, weaponslist[ 4 ] );
    return var_4c42f7cf;
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 1, eflags: 0x0
// Checksum 0x3306d5da, Offset: 0x3c0
// Size: 0xe2
function drop_armor( var_4c42f7cf )
{
    assert( isplayer( self ) );
    itempoint = function_4ba8fde( #"hash_fb37841b0d2d7e7" );
    
    for (index = 0; index < self.armorplatecount; index++) {
        level thread item_drop::function_7910964d( var_4c42f7cf + index, undefined, 1, 0, itempoint.id, self.origin, ( 0, randomintrange( 0, 360 ), 0 ), 2 );
    }
    
    return var_4c42f7cf + index;
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 1, eflags: 0x0
// Checksum 0xe8e1b310, Offset: 0x4b0
// Size: 0x44, Type: bool
function function_d912fa6e( player )
{
    assert( isplayer( player ) );
    return player.var_c52363ab == 10;
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 7, eflags: 0x0
// Checksum 0x4e12e5c4, Offset: 0x500
// Size: 0x7c, Type: bool
function function_dd8cb464( *item, player, *networkid, *itemid, *itemcount, *var_aec6fa7f, *slot )
{
    if ( !function_d912fa6e( slot ) )
    {
        slot armor_carrier::function_e12c220a( 10 );
        return true;
    }
    
    return false;
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 1, eflags: 0x0
// Checksum 0x344c9169, Offset: 0x588
// Size: 0xd6
function function_b31f892b( var_4c42f7cf )
{
    assert( isplayer( self ) );
    index = 0;
    
    if ( function_d912fa6e( self ) )
    {
        itempoint = function_4ba8fde( "armor_pouch_item_t9" );
        level thread item_drop::function_7910964d( var_4c42f7cf + index, undefined, 1, 0, itempoint.id, self.origin, ( 0, randomintrange( 0, 360 ), 0 ), 2 );
        index++;
    }
    
    return var_4c42f7cf + index;
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 1, eflags: 0x0
// Checksum 0x329c5cb, Offset: 0x668
// Size: 0x312
function function_d5766919( var_4c42f7cf )
{
    assert( isplayer( self ) );
    weapons = self getweaponslist();
    index = 0;
    
    foreach ( weapon in weapons )
    {
        var_16f12c31 = item_world_util::function_3531b9ba( weapon.name );
        
        if ( !isdefined( var_16f12c31 ) )
        {
            continue;
        }
        
        ammo = self getweaponammostock( weapon );
        hasammo = ammo > 0;
        
        if ( hasammo )
        {
            itempoint = function_4ba8fde( var_16f12c31 );
            killstreakbundle = getscriptbundle( itempoint.itementry.killstreak );
            killstreaks::take( killstreakbundle.kstype );
            var_f8ffe143 = 0;
            
            if ( killstreakbundle.ksinventoryweapon.name == #"inventory_recon_car" )
            {
                if ( self hasweapon( killstreakbundle.ksweapon ) )
                {
                    var_f8ffe143 = 1;
                }
            }
            else if ( killstreakbundle.ksinventoryweapon.name == #"inventory_planemortar" )
            {
                ammo = isdefined( self.pers[ #"hash_1aaccfe69e328d6e" ][ 3 ] ) ? self.pers[ #"hash_1aaccfe69e328d6e" ][ 3 ] : 3;
            }
            
            if ( !var_f8ffe143 )
            {
                level thread item_drop::function_7910964d( var_4c42f7cf + index, undefined, 1, ammo, itempoint.id, self.origin, ( 0, randomintrange( 0, 360 ), 0 ), 2 );
                index++;
            }
            
            self takeweapon( weapon );
        }
    }
    
    self.pers[ #"killstreaks" ] = [];
    return var_4c42f7cf + index;
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 1, eflags: 0x0
// Checksum 0x120a31f3, Offset: 0x988
// Size: 0x114
function function_e50b5cec( var_4c42f7cf )
{
    assert( isplayer( self ) );
    var_6a4efe8e = self clientfield::get_player_uimodel( "hud_items.selfReviveAvailable" );
    
    if ( var_6a4efe8e )
    {
        self clientfield::set_player_uimodel( "hud_items.selfReviveAvailable", 0 );
        itempoint = function_4ba8fde( #"hash_b8b2580ac5556e1" );
        level thread item_drop::function_7910964d( var_4c42f7cf + 1, undefined, 1, 0, itempoint.id, self.origin, ( 0, randomintrange( 0, 360 ), 0 ), 2 );
        return ( var_4c42f7cf + 1 );
    }
    
    return var_4c42f7cf;
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 1, eflags: 0x0
// Checksum 0xcd2761bd, Offset: 0xaa8
// Size: 0x148
function function_aecae28d( damage )
{
    if ( !isplayer( self ) )
    {
        return damage;
    }
    
    if ( self.var_1181c08b <= 0 )
    {
        return damage;
    }
    
    var_babbb09b = 0;
    var_e67d2721 = damage - self.var_dba54111;
    
    if ( var_e67d2721 < 0 )
    {
        var_e67d2721 = 0;
    }
    
    self.var_1181c08b -= var_e67d2721;
    
    if ( self.var_1181c08b < 0 )
    {
        var_babbb09b = self.var_1181c08b;
    }
    
    self.var_1181c08b = max( self.var_1181c08b, 0 );
    
    if ( self.var_1181c08b == 0 )
    {
        self.var_dba54111 = 0;
        self.var_4a1cb171 = 0;
    }
    
    var_db01f8df = self.var_4a1cb171 <= 0 ? 0 : self.var_1181c08b / self.var_4a1cb171;
    self clientfield::set_player_uimodel( "hudItems.radiationVestHealth", var_db01f8df );
    return var_babbb09b;
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 0, eflags: 0x0
// Checksum 0x427b1783, Offset: 0xbf8
// Size: 0x6c
function function_b0000c15()
{
    assert( isplayer( self ) );
    self.var_1181c08b = 0;
    self.var_dba54111 = 0;
    self.var_4a1cb171 = 0;
    self clientfield::set_player_uimodel( "hudItems.radiationVestHealth", 0 );
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 7, eflags: 0x0
// Checksum 0xe8568e18, Offset: 0xc70
// Size: 0x102, Type: bool
function function_98942433( item, player, *networkid, *itemid, *itemcount, *var_aec6fa7f, *slot )
{
    if ( function_36b9f4fe( slot ) )
    {
        return false;
    }
    
    slot clientfield::set_player_uimodel( "hudItems.radiationVestHealth", 1 );
    slot.var_1181c08b = isdefined( var_aec6fa7f.itementry.var_1181c08b ) ? var_aec6fa7f.itementry.var_1181c08b : 0;
    slot.var_4a1cb171 = slot.var_1181c08b;
    slot.var_dba54111 = isdefined( var_aec6fa7f.itementry.var_dba54111 ) ? var_aec6fa7f.itementry.var_dba54111 : 0;
    return true;
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 1, eflags: 0x0
// Checksum 0x20bf89b6, Offset: 0xd80
// Size: 0x58, Type: bool
function function_36b9f4fe( player )
{
    assert( isplayer( player ) );
    return player clientfield::get_player_uimodel( "hudItems.radiationVestHealth" ) >= 1;
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 1, eflags: 0x0
// Checksum 0x169286ab, Offset: 0xde0
// Size: 0x56, Type: bool
function function_72a7b6cf( player )
{
    assert( isplayer( player ) );
    return player clientfield::get_player_uimodel( "hudItems.radiationVestHealth" ) > 0;
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 4, eflags: 0x0
// Checksum 0x2bf72982, Offset: 0xe40
// Size: 0xb4
function function_8d066de9( var_feb0fc80, var_27ad329a, var_40f483c8, despawntime )
{
    level endon( #"game_ended" );
    level.var_f8299840 = var_feb0fc80;
    level.var_9d86498a = var_27ad329a;
    level.var_c121bd48 = var_40f483c8;
    level.var_a17d47bf = despawntime;
    level waittill( #"item_world_reset" );
    level thread function_588a586d( #"dirty_bomb_stash", level.var_f8299840 );
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 2, eflags: 0x0
// Checksum 0xd59f63ed, Offset: 0xf00
// Size: 0x1c4
function function_588a586d( targetname, probability )
{
    level flag::wait_till( #"item_world_reset" );
    probability = isdefined( probability ) ? probability : level.var_f8299840;
    dynents = item_world::function_7a0c5d2e( probability, targetname );
    var_b0d9d129 = spawnstruct();
    var_81e77cec = [];
    var_d73eec3b = [];
    
    foreach ( dynent in dynents )
    {
        dynent.onuse = &chest_opened;
        
        if ( function_ffdbe8c2( dynent ) == 3 )
        {
            var_81e77cec[ var_81e77cec.size ] = dynent;
            continue;
        }
        
        var_d73eec3b[ var_d73eec3b.size ] = dynent;
    }
    
    var_81e77cec = array::randomize( var_81e77cec );
    var_b0d9d129.targetname = targetname;
    var_b0d9d129.var_81e77cec = var_81e77cec;
    var_b0d9d129.var_d73eec3b = var_d73eec3b;
    level thread function_361e7925( var_b0d9d129 );
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 2, eflags: 0x0
// Checksum 0x1d5cf6b9, Offset: 0x10d0
// Size: 0x264
function function_657c0cbf( container, var_b0d9d129 )
{
    level endon( #"game_ended" );
    wait level.var_a17d47bf;
    item_world::function_160294c7( container );
    wait randomintrange( level.var_9d86498a, level.var_c121bd48 );
    arrayremovevalue( var_b0d9d129.var_d73eec3b, container, 0 );
    var_b0d9d129.var_81e77cec[ var_b0d9d129.var_81e77cec.size ] = container;
    
    if ( var_b0d9d129.var_81e77cec.size <= 0 )
    {
        return;
    }
    
    if ( isdefined( var_b0d9d129.var_81e77cec[ 0 ].itemlistbundle.var_7fb0967b ) )
    {
        var_b9ea4e83 = sqr( var_b0d9d129.var_81e77cec[ 0 ].itemlistbundle.var_7fb0967b );
        
        for (var_8017ce8 = 0; var_8017ce8 < var_b0d9d129.var_81e77cec.size; var_8017ce8++) {
            var_da1a8a8a = var_b0d9d129.var_81e77cec[ var_8017ce8 ];
            var_9bf5a850 = 1;
            
            for (var_31371606 = 0; var_31371606 < var_b0d9d129.var_d73eec3b.size; var_31371606++) {
                var_f51e9342 = var_b0d9d129.var_d73eec3b[ var_31371606 ];
                
                if ( distancesquared( var_da1a8a8a.origin, var_f51e9342.origin ) < var_b9ea4e83 )
                {
                    var_9bf5a850 = 0;
                    break;
                }
            }
            
            if ( var_9bf5a850 )
            {
                break;
            }
            
            var_da1a8a8a = undefined;
        }
    }
    
    if ( !isdefined( var_da1a8a8a ) )
    {
        var_da1a8a8a = var_b0d9d129.var_81e77cec[ 0 ];
    }
    
    arrayremoveindex( var_b0d9d129.var_81e77cec, 0, 0 );
    item_world::function_8eee98dd( var_da1a8a8a );
    var_da1a8a8a.onuse = &chest_opened;
    var_b0d9d129.var_d73eec3b[ var_b0d9d129.var_d73eec3b.size ] = var_da1a8a8a;
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 1, eflags: 0x0
// Checksum 0x272c81ff, Offset: 0x1340
// Size: 0x78
function function_361e7925( var_b0d9d129 )
{
    level endon( #"game_ended" );
    
    while ( true )
    {
        container = level waittill( var_b0d9d129.targetname + "_opened" );
        level thread function_657c0cbf( container, var_b0d9d129 );
    }
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 3, eflags: 0x0
// Checksum 0x23f0a920, Offset: 0x13c0
// Size: 0x5e
function chest_opened( *activator, *laststate, state )
{
    if ( state == 2 )
    {
        level notify( ( isdefined( self.targetname ) ? self.targetname : self.target ) + "_opened", self );
    }
}


#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\serverfield_shared;
#using scripts\core_common\system_shared;

#namespace armor_carrier;

// Namespace armor_carrier/armor_carrier
// Params 0, eflags: 0x5
// Checksum 0xc2c0d8a, Offset: 0x100
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"armor_carrier", &preinit, undefined, undefined, undefined );
}

// Namespace armor_carrier/armor_carrier
// Params 0, eflags: 0x4
// Checksum 0xf9ed58b, Offset: 0x148
// Size: 0x190
function private preinit()
{
    clientfield::register_clientuimodel( "hudItems.armorPlateCount", #"hud_items", #"armorplatecount", 1, 4, "int", undefined, 0, 0 );
    clientfield::register_clientuimodel( "hudItems.armorPlateMaxCarry", #"hud_items", #"armorplatemaxcarry", 1, 4, "int", undefined, 0, 0 );
    level.var_a05cd64e = &function_a05cd64e;
    level.var_8ef8b9e8 = getweapon( #"armor_plate" );
    callback::on_localclient_connect( &on_localclient_connect );
    callback::on_localplayer_spawned( &on_localplayer_spawned );
    serverfield::register( "armor_plate_behavior", 1, 1, "int" );
    
    /#
        if ( getdvar( #"g_gametype" ) === "<dev string:x38>" )
        {
            level.var_a2ef9587 = 1;
        }
    #/
}

// Namespace armor_carrier/armor_carrier
// Params 1, eflags: 0x4
// Checksum 0x4faf000b, Offset: 0x2e0
// Size: 0x24
function private on_localclient_connect( localclientnum )
{
    function_321bb79b( localclientnum );
}

// Namespace armor_carrier/armor_carrier
// Params 1, eflags: 0x4
// Checksum 0x6698ebae, Offset: 0x310
// Size: 0x24
function private on_localplayer_spawned( localclientnum )
{
    function_321bb79b( localclientnum );
}

// Namespace armor_carrier/armor_carrier
// Params 2, eflags: 0x4
// Checksum 0x75cf94c0, Offset: 0x340
// Size: 0x102
function private function_321bb79b( localclientnum, value )
{
    player = function_27673a7( localclientnum );
    
    if ( !isdefined( player ) )
    {
        return;
    }
    
    if ( !isdefined( value ) )
    {
        setting = gamepadusedlast( localclientnum ) ? #"armor_plate_behavior_gpad" : #"armor_plate_behavior_kbm";
        value = isdefined( function_ab88dbd2( localclientnum, setting ) ) ? function_ab88dbd2( localclientnum, setting ) : 0;
    }
    
    if ( player.armor_plate_behavior !== value )
    {
        player serverfield::set( "armor_plate_behavior", value );
        player.armor_plate_behavior = value;
    }
}

// Namespace armor_carrier/armor_carrier
// Params 1, eflags: 0x4
// Checksum 0xe5b7bea8, Offset: 0x450
// Size: 0x7c
function private function_a05cd64e( localclientnum )
{
    if ( !self function_da43934d() )
    {
        return;
    }
    
    if ( self function_86b9a404() )
    {
        function_321bb79b( localclientnum );
        switchtoweapon( localclientnum, level.var_8ef8b9e8 );
        return 1;
    }
    
    return 0;
}

// Namespace armor_carrier/armor_carrier
// Params 0, eflags: 0x4
// Checksum 0xb3cae920, Offset: 0x4d8
// Size: 0x326, Type: bool
function private function_86b9a404()
{
    if ( !isplayer( self ) || self isplayerdead() )
    {
        /#
            function_ad64a47( "<dev string:x50>" );
        #/
        
        return false;
    }
    
    localclientnum = self getlocalclientnumber();
    
    if ( !isdefined( localclientnum ) )
    {
        /#
            function_ad64a47( "<dev string:x6f>" );
        #/
        
        return false;
    }
    
    currentweapon = getcurrentweapon( localclientnum );
    
    if ( currentweapon === level.var_8ef8b9e8 || currentweapon === level.weaponnone )
    {
        /#
            function_ad64a47( "<dev string:x8e>" );
        #/
        
        return false;
    }
    
    if ( isonturret( localclientnum ) || self function_94ba7a2e() || self function_9a0edd92() || self isinfreefall() || self inlaststand() || self isskydiving() )
    {
        /#
            function_ad64a47( "<dev string:xb6>" );
        #/
        
        return false;
    }
    
    if ( isdefined( getplayervehicle( self ) ) )
    {
        if ( currentweapon === level.weaponnone || function_3feb54c8( localclientnum ) )
        {
            /#
                function_ad64a47( "<dev string:x11c>" );
            #/
            
            return false;
        }
    }
    
    var_6aae821e = hasweapon( localclientnum, level.var_8ef8b9e8 );
    currentcount = self clientfield::get_player_uimodel( "hudItems.armorPlateCount" );
    currentarmor = self getplayerarmor();
    
    /#
        if ( !var_6aae821e )
        {
            function_ad64a47( "<dev string:x15e>" );
        }
        
        if ( currentcount <= 0 )
        {
            function_ad64a47( "<dev string:x183>" );
        }
        
        if ( currentarmor >= 225 )
        {
            function_ad64a47( "<dev string:x19b>" );
        }
    #/
    
    return currentcount > 0 && currentarmor < 225 && var_6aae821e;
}

// Namespace armor_carrier/event_647adea6
// Params 1, eflags: 0x20
// Checksum 0xf953e2c1, Offset: 0x808
// Size: 0x7c
function event_handler[event_647adea6] function_465c8646( eventstruct )
{
    if ( eventstruct.name === #"armor_plate_behavior_gpad" || eventstruct.name === #"armor_plate_behavior_kbm" )
    {
        function_321bb79b( eventstruct.localclientnum, int( eventstruct.value ) );
    }
}

/#

    // Namespace armor_carrier/armor_carrier
    // Params 1, eflags: 0x0
    // Checksum 0x7230b3cc, Offset: 0x890
    // Size: 0x44, Type: dev
    function function_ad64a47( reasonstring )
    {
        if ( level.var_a2ef9587 === 1 )
        {
            println( "<dev string:x1b5>" + reasonstring );
        }
    }

#/

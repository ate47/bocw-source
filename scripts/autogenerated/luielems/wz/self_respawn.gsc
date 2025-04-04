#using scripts\core_common\clientfield_shared;
#using scripts\core_common\lui_shared;

#namespace self_respawn;

// Namespace self_respawn
// Method(s) 6 Total 13
class cself_respawn : cluielem
{

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cself_respawn/self_respawn
    // Params 2, eflags: 0x0
    // Checksum 0x52b88e8d, Offset: 0x2d0
    // Size: 0x44
    function set_percent( player, value )
    {
        player clientfield::function_9bf78ef8( var_d5213cbb, var_bf9c8c95, "percent", value );
    }

    // Namespace cself_respawn/self_respawn
    // Params 2, eflags: 0x0
    // Checksum 0x692ed424, Offset: 0x258
    // Size: 0x3c
    function open( player, flags = 0 )
    {
        cluielem::open_luielem( player, flags );
    }

    // Namespace cself_respawn/self_respawn
    // Params 1, eflags: 0x0
    // Checksum 0x232e70c1, Offset: 0x2a0
    // Size: 0x24
    function close( player )
    {
        cluielem::close_luielem( player );
    }

    // Namespace cself_respawn/self_respawn
    // Params 0, eflags: 0x0
    // Checksum 0x9c2e51af, Offset: 0x208
    // Size: 0x44
    function setup_clientfields()
    {
        cluielem::setup_clientfields( "self_respawn" );
        cluielem::add_clientfield( "percent", 1, 6, "float" );
    }

}

// Namespace self_respawn/self_respawn
// Params 0, eflags: 0x0
// Checksum 0xac07d18e, Offset: 0xe8
// Size: 0x34
function register()
{
    elem = new cself_respawn();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace self_respawn/self_respawn
// Params 2, eflags: 0x0
// Checksum 0x22b7d0a0, Offset: 0x128
// Size: 0x38
function open( player, flags = 0 )
{
    [[ self ]]->open( player, flags );
}

// Namespace self_respawn/self_respawn
// Params 1, eflags: 0x0
// Checksum 0xbeec1ac2, Offset: 0x168
// Size: 0x1c
function close( player )
{
    [[ self ]]->close( player );
}

// Namespace self_respawn/self_respawn
// Params 1, eflags: 0x0
// Checksum 0xd0ca6291, Offset: 0x190
// Size: 0x1a
function is_open( player )
{
    return [[ self ]]->function_7bfd10e6( player );
}

// Namespace self_respawn/self_respawn
// Params 2, eflags: 0x0
// Checksum 0xca8a7e8e, Offset: 0x1b8
// Size: 0x28
function set_percent( player, value )
{
    [[ self ]]->set_percent( player, value );
}


#using script_644007a8c3885fc;
#using scripts\core_common\item_world_fixup;

#namespace namespace_f4a4a352;

// Namespace namespace_f4a4a352/namespace_f4a4a352
// Params 0, eflags: 0x1
// Checksum 0x20887c41, Offset: 0x180
// Size: 0x18c
function autoexec __init__()
{
    gametype = function_be90acca( getdvarstring( #"g_gametype" ) );
    
    switch ( gametype )
    {
        case #"fireteam_dirty_bomb":
            function_cbbf16a4();
            break;
        case #"hash_6463dea5fa2dbea5":
            function_e5d1b704();
            break;
        case #"fireteam_elimination":
            function_574dc51f();
            break;
        case #"fireteam_koth":
            function_1ed4cf79();
            break;
        case #"zsurvival":
            function_bcd11f83();
            break;
        default:
            break;
    }
    
    namespace_1c7b37c6::item_replacer( &item_world_fixup::function_6991057, #"hash_63cae5fcd6d8139d", #"t9_empty_global" );
    function_d5eb555d();
    function_f05c9e0a();
}

// Namespace namespace_f4a4a352/namespace_f4a4a352
// Params 0, eflags: 0x0
// Checksum 0x91b81294, Offset: 0x318
// Size: 0x14
function function_cbbf16a4()
{
    function_c379f040();
}

// Namespace namespace_f4a4a352/namespace_f4a4a352
// Params 0, eflags: 0x0
// Checksum 0x73f0ee71, Offset: 0x338
// Size: 0x94
function function_e5d1b704()
{
    namespace_1c7b37c6::item_replacer( &item_world_fixup::function_6991057, #"hash_203198a6940492f9", #"hash_358b850466bc7d5e" );
    namespace_1c7b37c6::item_replacer( &item_world_fixup::function_6991057, #"hash_152385d9b98f0818", #"hash_358b850466bc7d5e" );
    function_c379f040();
}

// Namespace namespace_f4a4a352/namespace_f4a4a352
// Params 0, eflags: 0x0
// Checksum 0xd981006b, Offset: 0x3d8
// Size: 0x94
function function_574dc51f()
{
    namespace_1c7b37c6::item_replacer( &item_world_fixup::function_6991057, #"hash_203198a6940492f9", #"hash_20fe5ea7eec81707" );
    namespace_1c7b37c6::item_replacer( &item_world_fixup::function_6991057, #"hash_152385d9b98f0818", #"hash_20fe5ea7eec81707" );
    function_c379f040();
}

// Namespace namespace_f4a4a352/namespace_f4a4a352
// Params 0, eflags: 0x0
// Checksum 0xcbcaa0a2, Offset: 0x478
// Size: 0xd4
function function_1ed4cf79()
{
    var_87d0eef8 = &item_world_fixup::remove_item;
    var_74257310 = &item_world_fixup::add_item_replacement;
    var_f8a4c541 = &item_world_fixup::function_6991057;
    var_edfbccd0 = &item_world_fixup::function_e70fa91c;
    namespace_1c7b37c6::item_replacer( var_f8a4c541, #"hash_203198a6940492f9", #"hash_59ceff804ad2c7b8" );
    namespace_1c7b37c6::item_replacer( var_f8a4c541, #"hash_152385d9b98f0818", #"hash_59ceff804ad2c7b8" );
    function_c379f040();
}

// Namespace namespace_f4a4a352/namespace_f4a4a352
// Params 0, eflags: 0x0
// Checksum 0x7df3fc08, Offset: 0x558
// Size: 0x184
function function_bcd11f83()
{
    namespace_1c7b37c6::item_replacer( &item_world_fixup::function_6991057, #"hash_203198a6940492f9", #"t9_empty_global" );
    namespace_1c7b37c6::item_replacer( &item_world_fixup::function_6991057, #"hash_152385d9b98f0818", #"t9_empty_global" );
    namespace_1c7b37c6::item_replacer( &item_world_fixup::function_6991057, #"hash_74c5644c939b5395", #"t9_empty_global" );
    namespace_1c7b37c6::item_replacer( &item_world_fixup::function_6991057, #"hash_4d756ccd3f484c1f", #"t9_empty_global" );
    namespace_1c7b37c6::item_replacer( &item_world_fixup::function_6991057, #"hash_4221ae2046a283be", #"t9_empty_global" );
    namespace_1c7b37c6::item_replacer( &item_world_fixup::function_6991057, #"hash_10521493269714cb", #"t9_empty_global" );
}

// Namespace namespace_f4a4a352/namespace_f4a4a352
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x6e8
// Size: 0x4
function function_d5eb555d()
{
    
}

// Namespace namespace_f4a4a352/namespace_f4a4a352
// Params 0, eflags: 0x0
// Checksum 0x24e03f9d, Offset: 0x6f8
// Size: 0x1c4
function function_f05c9e0a()
{
    function_8341771e( function_91b29d2a( "location_items_dacha" ), 5000, #"hash_67492346597ba3f2" );
    function_8341771e( function_91b29d2a( "location_items_bathhouse" ), 6000, #"hash_49fe7c02fa7110b2" );
    function_8341771e( function_91b29d2a( "location_items_richhouse" ), 7000, #"hash_611c237e8680eddb" );
    function_8341771e( function_91b29d2a( "location_items_islands" ), 6000, #"hash_64c2073e77d0bb83" );
    function_8341771e( function_91b29d2a( "location_items_sanatorium" ), 9000, #"hash_59e1a2689fd7c290" );
    function_8341771e( function_91b29d2a( "location_items_rentals" ), 6000, #"hash_4b757b29cc4c3712" );
    function_8341771e( function_91b29d2a( "location_items_monument" ), 9000, #"hash_5ceed4cd33f4824a" );
    function_8341771e( function_91b29d2a( "location_items_restaurants" ), 5000, #"hash_1cec1fe807ac83f5" );
}

// Namespace namespace_f4a4a352/namespace_f4a4a352
// Params 3, eflags: 0x0
// Checksum 0xc04f6427, Offset: 0x8c8
// Size: 0x19c
function function_8341771e( locations, radius, name )
{
    var_32948f8f = function_91b29d2a( "dirty_bomb_stash" );
    
    foreach ( location in locations )
    {
        foreach ( var_64b8ecb8 in var_32948f8f )
        {
            if ( distance2dsquared( location.origin, var_64b8ecb8.origin ) <= radius * radius )
            {
                var_d196e508 = var_64b8ecb8.origin;
                item_world_fixup::function_a997e342( var_d196e508, 16 );
                
                if ( isdefined( name ) )
                {
                    item_world_fixup::add_spawn_point( var_d196e508, name, var_64b8ecb8.angles );
                }
            }
        }
    }
}

// Namespace namespace_f4a4a352/namespace_f4a4a352
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0xa70
// Size: 0x4
function function_c379f040()
{
    
}


#using script_2ca39e1874a13738;
#using script_38867f943fb86135;
#using script_616d0f01498f9128;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\util_shared;
#using scripts\cp\cp_rus_yamantau_flashlight;
#using scripts\cp_common\util;

#namespace cp_rus_yamantau;

// Namespace cp_rus_yamantau/level_init
// Params 1, eflags: 0x20
// Checksum 0x2264d795, Offset: 0x1e0
// Size: 0x54
function event_handler[level_init] main( *eventstruct )
{
    preload();
    load::main();
    postload();
    util::waitforclient( 0 );
}

// Namespace cp_rus_yamantau/cp_rus_yamantau
// Params 0, eflags: 0x0
// Checksum 0x6e04b5f3, Offset: 0x240
// Size: 0x164
function preload()
{
    setsaveddvar( #"enable_global_wind", 1 );
    setsaveddvar( #"wind_global_vector", "88 0 0" );
    setsaveddvar( #"wind_global_low_altitude", 0 );
    setsaveddvar( #"wind_global_hi_altitude", 10000 );
    setsaveddvar( #"wind_global_low_strength_percent", 100 );
    level util::function_d96391ba();
    level namespace_1d4ee4f8::preload();
    level cp_rus_yamantau_flashlight::preload();
    level namespace_c8bf7287::preload();
    init_clientfields();
    function_27d5cafd( #"hash_7130a85f454fd5bf", #"hash_7130a85f454fd5bf" );
}

// Namespace cp_rus_yamantau/cp_rus_yamantau
// Params 0, eflags: 0x0
// Checksum 0x1ce06cf9, Offset: 0x3b0
// Size: 0x1fc
function init_clientfields()
{
    clientfield::register( "world", "cull_inside_satcom", 1, 2, "int", &function_83837ec4, 0, 0 );
    clientfield::register( "world", "cull_inside_finale", 1, 2, "int", &function_90f6a161, 0, 0 );
    clientfield::register( "world", "cull_inside_bunkerext", 1, 2, "int", &function_a2252c80, 0, 0 );
    clientfield::register( "world", "cull_outside_bunkerint", 1, 2, "int", &function_53905217, 0, 0 );
    clientfield::register( "world", "cull_inside_excavation", 1, 2, "int", &function_b3cdd37c, 0, 0 );
    clientfield::register( "world", "init_visgroup_triggers", 1, 1, "int", &function_cab722a1, 0, 0 );
    clientfield::register( "toplayer", "zipline_player_free_fall_fx", 1, 1, "int", &zipline_player_free_fall_fx, 0, 0 );
}

// Namespace cp_rus_yamantau/cp_rus_yamantau
// Params 0, eflags: 0x0
// Checksum 0xd9bd4e4f, Offset: 0x5b8
// Size: 0x4c
function postload()
{
    level thread namespace_1d4ee4f8::postload();
    level thread cp_rus_yamantau_flashlight::postload();
    level thread namespace_c8bf7287::postload();
}

// Namespace cp_rus_yamantau/cp_rus_yamantau
// Params 7, eflags: 0x0
// Checksum 0xe6e6dff3, Offset: 0x610
// Size: 0x84
function function_83837ec4( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump == 2 )
    {
        function_93620041( fieldname, "cull_inside_satcom" );
        return;
    }
    
    function_9362afb8( fieldname, "cull_inside_satcom" );
}

// Namespace cp_rus_yamantau/cp_rus_yamantau
// Params 7, eflags: 0x0
// Checksum 0x75992810, Offset: 0x6a0
// Size: 0x84
function function_90f6a161( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump == 2 )
    {
        function_93620041( fieldname, "cull_inside_finale" );
        return;
    }
    
    function_9362afb8( fieldname, "cull_inside_finale" );
}

// Namespace cp_rus_yamantau/cp_rus_yamantau
// Params 7, eflags: 0x0
// Checksum 0xadb6b039, Offset: 0x730
// Size: 0x84
function function_a2252c80( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump == 2 )
    {
        function_93620041( fieldname, "cull_inside_bunkerext" );
        return;
    }
    
    function_9362afb8( fieldname, "cull_inside_bunkerext" );
}

// Namespace cp_rus_yamantau/cp_rus_yamantau
// Params 7, eflags: 0x0
// Checksum 0x52f71788, Offset: 0x7c0
// Size: 0x84
function function_53905217( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump == 2 )
    {
        function_93620041( fieldname, "cull_outside_bunkerint" );
        return;
    }
    
    function_9362afb8( fieldname, "cull_outside_bunkerint" );
}

// Namespace cp_rus_yamantau/cp_rus_yamantau
// Params 7, eflags: 0x0
// Checksum 0x74f58f31, Offset: 0x850
// Size: 0x84
function function_b3cdd37c( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump == 2 )
    {
        function_93620041( fieldname, "cull_inside_excavation" );
        return;
    }
    
    function_9362afb8( fieldname, "cull_inside_excavation" );
}

// Namespace cp_rus_yamantau/cp_rus_yamantau
// Params 7, eflags: 0x0
// Checksum 0xe96a1c84, Offset: 0x8e0
// Size: 0x270
function function_cab722a1( localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    var_d9fa400f = getentarray( bwastimejump, "visgroup_trigger", "targetname" );
    
    foreach ( var_2c1da7e7 in var_d9fa400f )
    {
        if ( isdefined( var_2c1da7e7.var_4c0e0325 ) == 0 )
        {
            continue;
        }
        
        switch ( var_2c1da7e7.var_4c0e0325 )
        {
            case #"hash_1bee8af55491a868":
                var_2c1da7e7.var_6cbfcdad = [ "cull_outside_bunkerint" ];
                var_2c1da7e7.var_cfae744e = [];
                break;
            case #"hash_33cc3c1845ad73e1":
                var_2c1da7e7.var_6cbfcdad = [];
                var_2c1da7e7.var_cfae744e = [ "cull_outside_bunkerint" ];
                break;
            case #"hash_72014c9749d23264":
                var_2c1da7e7.var_6cbfcdad = [ "cull_inside_excavation", "cull_inside_finale" ];
                var_2c1da7e7.var_cfae744e = [ "cull_inside_satcom", "cull_inside_bunkerext" ];
                break;
            case #"hash_455ae4f9edd2adbc":
                var_2c1da7e7.var_6cbfcdad = [ "cull_inside_satcom", "cull_inside_bunkerext" ];
                var_2c1da7e7.var_cfae744e = [ "cull_inside_excavation", "cull_inside_finale" ];
                break;
        }
        
        var_2c1da7e7 thread function_c8691d8b( bwastimejump );
    }
}

// Namespace cp_rus_yamantau/cp_rus_yamantau
// Params 1, eflags: 0x0
// Checksum 0x7f8c4119, Offset: 0xb58
// Size: 0x13c
function function_c8691d8b( localclientnum )
{
    while ( true )
    {
        self waittill( #"trigger" );
        
        foreach ( var_3bad6f1 in self.var_6cbfcdad )
        {
            function_9362afb8( localclientnum, var_3bad6f1 );
        }
        
        foreach ( var_3bad6f1 in self.var_cfae744e )
        {
            function_93620041( localclientnum, var_3bad6f1 );
        }
        
        wait 0.5;
    }
}

// Namespace cp_rus_yamantau/cp_rus_yamantau
// Params 7, eflags: 0x0
// Checksum 0xf6dd32c0, Offset: 0xca0
// Size: 0xc4
function zipline_player_free_fall_fx( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump )
    {
        if ( self postfx::function_556665f2( "pstfx_free_fall_speed_blur" ) )
        {
            self postfx::stoppostfxbundle( "pstfx_free_fall_speed_blur" );
        }
        
        self postfx::playpostfxbundle( "pstfx_free_fall_speed_blur" );
        return;
    }
    
    self postfx::exitpostfxbundle( "pstfx_free_fall_speed_blur" );
}


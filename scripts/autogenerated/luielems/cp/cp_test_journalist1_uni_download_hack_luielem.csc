#using scripts\core_common\lui_shared;

#namespace cp_test_journalist1_uni_download_hack_luielem;

// Namespace cp_test_journalist1_uni_download_hack_luielem
// Method(s) 8 Total 15
class class_b201538a : cluielem
{

    // Namespace namespace_b201538a/cp_test_journalist1_uni_download_hack_luielem
    // Params 1, eflags: 0x0
    // Checksum 0xefe9524a, Offset: 0x4e8
    // Size: 0x24
    function open( localclientnum )
    {
        cluielem::open( localclientnum );
    }

    // Namespace namespace_b201538a/cp_test_journalist1_uni_download_hack_luielem
    // Params 0, eflags: 0x0
    // Checksum 0x2e990741, Offset: 0x450
    // Size: 0x1c
    function register_clientside()
    {
        cluielem::register_clientside( "cp_test_journalist1_uni_download_hack_luielem" );
    }

    // Namespace namespace_b201538a/cp_test_journalist1_uni_download_hack_luielem
    // Params 1, eflags: 0x0
    // Checksum 0xe99a5412, Offset: 0x3d0
    // Size: 0x74
    function setup_clientfields( var_fff52af4 )
    {
        cluielem::setup_clientfields( "cp_test_journalist1_uni_download_hack_luielem" );
        cluielem::add_clientfield( "_state", 1, 2, "int" );
        cluielem::add_clientfield( "download_progress", 1, 7, "float", var_fff52af4 );
    }

    // Namespace namespace_b201538a/cp_test_journalist1_uni_download_hack_luielem
    // Params 2, eflags: 0x0
    // Checksum 0xa091f39f, Offset: 0x608
    // Size: 0x30
    function function_97bf49cb( localclientnum, value )
    {
        set_data( localclientnum, "download_progress", value );
    }

    // Namespace namespace_b201538a/cp_test_journalist1_uni_download_hack_luielem
    // Params 2, eflags: 0x0
    // Checksum 0xce9e5530, Offset: 0x518
    // Size: 0xe4
    function set_state( localclientnum, state_name )
    {
        if ( #"defaultstate" == state_name )
        {
            set_data( localclientnum, "_state", 0 );
            return;
        }
        
        if ( #"paused" == state_name )
        {
            set_data( localclientnum, "_state", 1 );
            return;
        }
        
        if ( #"finished" == state_name )
        {
            set_data( localclientnum, "_state", 2 );
            return;
        }
        
        assertmsg( "<dev string:x38>" );
    }

    // Namespace namespace_b201538a/cp_test_journalist1_uni_download_hack_luielem
    // Params 1, eflags: 0x0
    // Checksum 0x1ebefa05, Offset: 0x478
    // Size: 0x68
    function function_fa582112( localclientnum )
    {
        cluielem::function_fa582112( localclientnum );
        set_state( localclientnum, #"defaultstate" );
        set_data( localclientnum, "download_progress", 0 );
    }

}

// Namespace cp_test_journalist1_uni_download_hack_luielem/cp_test_journalist1_uni_download_hack_luielem
// Params 1, eflags: 0x0
// Checksum 0x216cf29c, Offset: 0x118
// Size: 0x176
function register( var_fff52af4 )
{
    elem = new class_b201538a();
    [[ elem ]]->setup_clientfields( var_fff52af4 );
    
    if ( !isdefined( level.var_ae746e8f ) )
    {
        level.var_ae746e8f = associativearray();
    }
    
    if ( !isdefined( level.var_ae746e8f[ #"cp_test_journalist1_uni_download_hack_luielem" ] ) )
    {
        level.var_ae746e8f[ #"cp_test_journalist1_uni_download_hack_luielem" ] = [];
    }
    
    if ( !isdefined( level.var_ae746e8f[ #"cp_test_journalist1_uni_download_hack_luielem" ] ) )
    {
        level.var_ae746e8f[ #"cp_test_journalist1_uni_download_hack_luielem" ] = [];
    }
    else if ( !isarray( level.var_ae746e8f[ #"cp_test_journalist1_uni_download_hack_luielem" ] ) )
    {
        level.var_ae746e8f[ #"cp_test_journalist1_uni_download_hack_luielem" ] = array( level.var_ae746e8f[ #"cp_test_journalist1_uni_download_hack_luielem" ] );
    }
    
    level.var_ae746e8f[ #"cp_test_journalist1_uni_download_hack_luielem" ][ level.var_ae746e8f[ #"cp_test_journalist1_uni_download_hack_luielem" ].size ] = elem;
}

// Namespace cp_test_journalist1_uni_download_hack_luielem/cp_test_journalist1_uni_download_hack_luielem
// Params 0, eflags: 0x0
// Checksum 0x6a006570, Offset: 0x298
// Size: 0x34
function register_clientside()
{
    elem = new class_b201538a();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace cp_test_journalist1_uni_download_hack_luielem/cp_test_journalist1_uni_download_hack_luielem
// Params 1, eflags: 0x0
// Checksum 0xb263b40e, Offset: 0x2d8
// Size: 0x1c
function open( player )
{
    [[ self ]]->open( player );
}

// Namespace cp_test_journalist1_uni_download_hack_luielem/cp_test_journalist1_uni_download_hack_luielem
// Params 1, eflags: 0x0
// Checksum 0x2210d8d, Offset: 0x300
// Size: 0x1c
function close( player )
{
    [[ self ]]->close( player );
}

// Namespace cp_test_journalist1_uni_download_hack_luielem/cp_test_journalist1_uni_download_hack_luielem
// Params 1, eflags: 0x0
// Checksum 0x1e6b5b9b, Offset: 0x328
// Size: 0x1a
function is_open( localclientnum )
{
    return [[ self ]]->is_open( localclientnum );
}

// Namespace cp_test_journalist1_uni_download_hack_luielem/cp_test_journalist1_uni_download_hack_luielem
// Params 2, eflags: 0x0
// Checksum 0xde9c13f9, Offset: 0x350
// Size: 0x28
function set_state( localclientnum, state_name )
{
    [[ self ]]->set_state( localclientnum, state_name );
}

// Namespace cp_test_journalist1_uni_download_hack_luielem/cp_test_journalist1_uni_download_hack_luielem
// Params 2, eflags: 0x0
// Checksum 0x369b1afe, Offset: 0x380
// Size: 0x28
function function_97bf49cb( localclientnum, value )
{
    [[ self ]]->function_97bf49cb( localclientnum, value );
}


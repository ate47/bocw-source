#using scripts\core_common\lui_shared;

#namespace TerminalKeyboardFrame;

// Namespace TerminalKeyboardFrame
// Method(s) 6 Total 13
class class_d0a96b4 : cluielem
{

    // Namespace namespace_d0a96b4/TerminalKeyboardFrame
    // Params 1, eflags: 0x0
    // Checksum 0xe9672f07, Offset: 0x3a0
    // Size: 0x24
    function open( localclientnum )
    {
        cluielem::open( localclientnum );
    }

    // Namespace namespace_d0a96b4/TerminalKeyboardFrame
    // Params 0, eflags: 0x0
    // Checksum 0x343720c7, Offset: 0x348
    // Size: 0x1c
    function register_clientside()
    {
        cluielem::register_clientside( "TerminalKeyboardFrame" );
    }

    // Namespace namespace_d0a96b4/TerminalKeyboardFrame
    // Params 0, eflags: 0x0
    // Checksum 0xa460a7ea, Offset: 0x320
    // Size: 0x1c
    function setup_clientfields()
    {
        cluielem::setup_clientfields( "TerminalKeyboardFrame" );
    }

    // Namespace namespace_d0a96b4/TerminalKeyboardFrame
    // Params 1, eflags: 0x0
    // Checksum 0xbb37dd6e, Offset: 0x370
    // Size: 0x24
    function function_fa582112( localclientnum )
    {
        cluielem::function_fa582112( localclientnum );
    }

}

// Namespace TerminalKeyboardFrame/TerminalKeyboardFrame
// Params 0, eflags: 0x0
// Checksum 0xb7073eae, Offset: 0xd0
// Size: 0x16e
function register()
{
    elem = new class_d0a96b4();
    [[ elem ]]->setup_clientfields();
    
    if ( !isdefined( level.var_ae746e8f ) )
    {
        level.var_ae746e8f = associativearray();
    }
    
    if ( !isdefined( level.var_ae746e8f[ #"TerminalKeyboardFrame" ] ) )
    {
        level.var_ae746e8f[ #"TerminalKeyboardFrame" ] = [];
    }
    
    if ( !isdefined( level.var_ae746e8f[ #"TerminalKeyboardFrame" ] ) )
    {
        level.var_ae746e8f[ #"TerminalKeyboardFrame" ] = [];
    }
    else if ( !isarray( level.var_ae746e8f[ #"TerminalKeyboardFrame" ] ) )
    {
        level.var_ae746e8f[ #"TerminalKeyboardFrame" ] = array( level.var_ae746e8f[ #"TerminalKeyboardFrame" ] );
    }
    
    level.var_ae746e8f[ #"TerminalKeyboardFrame" ][ level.var_ae746e8f[ #"TerminalKeyboardFrame" ].size ] = elem;
}

// Namespace TerminalKeyboardFrame/TerminalKeyboardFrame
// Params 0, eflags: 0x0
// Checksum 0x3bc80f5e, Offset: 0x248
// Size: 0x34
function register_clientside()
{
    elem = new class_d0a96b4();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace TerminalKeyboardFrame/TerminalKeyboardFrame
// Params 1, eflags: 0x0
// Checksum 0xb035c16b, Offset: 0x288
// Size: 0x1c
function open( player )
{
    [[ self ]]->open( player );
}

// Namespace TerminalKeyboardFrame/TerminalKeyboardFrame
// Params 1, eflags: 0x0
// Checksum 0x8a5d773e, Offset: 0x2b0
// Size: 0x1c
function close( player )
{
    [[ self ]]->close( player );
}

// Namespace TerminalKeyboardFrame/TerminalKeyboardFrame
// Params 1, eflags: 0x0
// Checksum 0xeaa27b4e, Offset: 0x2d8
// Size: 0x1a
function is_open( localclientnum )
{
    return [[ self ]]->is_open( localclientnum );
}


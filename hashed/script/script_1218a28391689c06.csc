#using scripts\core_common\callbacks_shared;
#using scripts\core_common\util_shared;

#namespace namespace_2d986308;

// Namespace namespace_2d986308/gametype_start
// Params 1, eflags: 0x20
// Checksum 0x451ce99f, Offset: 0xe8
// Size: 0x44
function event_handler[gametype_start] main( *eventstruct )
{
    callback::on_gameplay_started( &on_gameplay_started );
    util::waitforclient( 0 );
}

// Namespace namespace_2d986308/namespace_2d986308
// Params 1, eflags: 0x0
// Checksum 0xab95b6ba, Offset: 0x138
// Size: 0x24
function on_gameplay_started( localclientnum )
{
    level thread nuked_population_sign_think( localclientnum );
}

// Namespace namespace_2d986308/namespace_2d986308
// Params 1, eflags: 0x0
// Checksum 0xafea0936, Offset: 0x168
// Size: 0x45c
function nuked_population_sign_think( localclientnum )
{
    if ( getdvarint( #"hash_9e6fbcc64352e9e", 0 ) )
    {
        return;
    }
    
    tens_model = getent( localclientnum, "counter_tens", "targetname" );
    ones_model = getent( localclientnum, "counter_ones", "targetname" );
    time = set_dvar_float_if_unset( "scr_dial_rotate_time", "0.5" );
    
    /#
        level thread function_102a701c( tens_model, ones_model );
    #/
    
    step = 36;
    ones = 1;
    tens = 1;
    
    if ( !isdefined( tens_model ) || !isdefined( ones_model ) )
    {
        return;
    }
    
    tens_model rotateroll( step, 0.05 );
    ones_model rotateroll( step, 0.05 );
    
    for ( ;; )
    {
        wait 1;
        dosign = 0;
        players = getlocalplayers();
        
        foreach ( localplayer in players )
        {
            if ( !isdefined( localplayer ) )
            {
                continue;
            }
            
            if ( true )
            {
                dosign = 1;
                break;
            }
        }
        
        if ( !dosign )
        {
            continue;
        }
        
        players = [];
        
        foreach ( player in getplayers( localclientnum ) )
        {
            if ( isdefined( player ) )
            {
                if ( !isdefined( players ) )
                {
                    players = [];
                }
                else if ( !isarray( players ) )
                {
                    players = array( players );
                }
                
                players[ players.size ] = player;
            }
        }
        
        for (dial = ones + tens * 10; players.size < dial; dial = ones + tens * 10) {
            ones--;
            
            if ( ones < 0 )
            {
                ones = 9;
                
                if ( isdefined( tens_model ) )
                {
                    tens_model rotateroll( 0 - step, time );
                }
                
                tens--;
            }
            
            if ( isdefined( ones_model ) )
            {
                ones_model rotateroll( 0 - step, time );
                ones_model waittill( #"rotatedone" );
            }
        }
        
        while ( players.size > dial )
        {
            ones++;
            
            if ( ones > 9 )
            {
                ones = 0;
                
                if ( isdefined( tens_model ) )
                {
                    tens_model rotateroll( step, time );
                }
                
                tens++;
            }
            
            if ( isdefined( ones_model ) )
            {
                ones_model rotateroll( step, time );
                ones_model waittill( #"rotatedone" );
            }
            
            dial = ones + tens * 10;
        }
    }
}

// Namespace namespace_2d986308/namespace_2d986308
// Params 2, eflags: 0x0
// Checksum 0x7f2288b6, Offset: 0x5d0
// Size: 0x6a
function set_dvar_float_if_unset( dvar, value )
{
    if ( getdvarstring( dvar ) == "" )
    {
        setdvar( dvar, value );
    }
    
    return getdvarfloat( dvar, 0 );
}

/#

    // Namespace namespace_2d986308/namespace_2d986308
    // Params 2, eflags: 0x0
    // Checksum 0x3b552c6b, Offset: 0x648
    // Size: 0x4e, Type: dev
    function function_102a701c( tens, ones )
    {
        while ( !isdefined( tens ) || !isdefined( ones ) )
        {
            iprintlnbold( "<dev string:x38>" );
            wait 2;
        }
    }

#/

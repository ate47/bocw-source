#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;

#namespace namespace_44084910;

// Namespace namespace_44084910/namespace_44084910
// Params 0, eflags: 0x5
// Checksum 0xecc1785d, Offset: 0xe8
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"hash_21af03cfd94be6e7", &__init__, undefined, undefined, undefined );
}

// Namespace namespace_44084910/namespace_44084910
// Params 0, eflags: 0x0
// Checksum 0x290f9e4c, Offset: 0x130
// Size: 0x8c
function __init__()
{
    clientfield::register( "scriptmover", "spawn_flavor_napalm_rumble", 1, 1, "counter", &spawn_flavor_napalm_rumble, 0, 0 );
    callback::on_localclient_connect( &on_localclient_connect );
    callback::on_gameplay_started( &on_gameplay_started );
}

// Namespace namespace_44084910/namespace_44084910
// Params 1, eflags: 0x0
// Checksum 0xb383e430, Offset: 0x1c8
// Size: 0x2c
function on_localclient_connect( localclientnum )
{
    waitframe( 1 );
    setpbgactivebank( localclientnum, 8 );
}

// Namespace namespace_44084910/namespace_44084910
// Params 1, eflags: 0x0
// Checksum 0x4e856cdf, Offset: 0x200
// Size: 0x2c
function on_gameplay_started( localclientnum )
{
    waitframe( 1 );
    setpbgactivebank( localclientnum, 1 );
}

// Namespace namespace_44084910/namespace_44084910
// Params 7, eflags: 0x0
// Checksum 0x15ade42b, Offset: 0x238
// Size: 0x84
function spawn_flavor_napalm_rumble( localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    localplayer = function_5c10bd79( bwastimejump );
    
    if ( isdefined( localplayer ) )
    {
        localplayer playrumbleonentity( bwastimejump, "napalm_rumble" );
    }
}


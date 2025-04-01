#using scripts\core_common\callbacks_shared;
#using scripts\core_common\system_shared;

#namespace clientids;

// Namespace clientids/clientids
// Params 0, eflags: 0x5
// Checksum 0x85884eac, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"clientids", &preinit, undefined, undefined, undefined );
}

// Namespace clientids/clientids
// Params 0, eflags: 0x4
// Checksum 0xdb903754, Offset: 0xd8
// Size: 0x44
function private preinit()
{
    callback::on_start_gametype( &init );
    callback::on_connect( &on_player_connect );
}

// Namespace clientids/clientids
// Params 0, eflags: 0x0
// Checksum 0xa57c26c7, Offset: 0x128
// Size: 0x10
function init()
{
    level.clientid = 0;
}

// Namespace clientids/clientids
// Params 0, eflags: 0x0
// Checksum 0xe7e6f056, Offset: 0x140
// Size: 0x9c
function on_player_connect()
{
    self.clientid = matchrecordnewplayer( self );
    
    if ( !isdefined( self.clientid ) || self.clientid == -1 )
    {
        self.clientid = level.clientid;
        level.clientid++;
    }
    
    println( "<dev string:x38>" + self.name + "<dev string:x44>" + self.clientid );
}


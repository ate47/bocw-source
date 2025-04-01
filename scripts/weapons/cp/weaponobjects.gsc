#using script_6b221588ece2c4aa;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\system_shared;
#using scripts\weapons\weaponobjects;

#namespace weaponobjects;

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x5
// Checksum 0x92c5fdc7, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"weaponobjects", &preinit, undefined, undefined, undefined );
}

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x4
// Checksum 0xbc700707, Offset: 0x100
// Size: 0x34
function private preinit()
{
    init_shared();
    callback::on_start_gametype( &start_gametype );
}

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x0
// Checksum 0x8fa70be9, Offset: 0x140
// Size: 0x7c
function start_gametype()
{
    callback::on_connect( &on_player_connect );
    callback::on_spawned( &on_player_spawned );
    function_e6400478( #"hash_493ab450d6d8d4fa", &function_50d4198b, 1 );
}

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x0
// Checksum 0xb987aada, Offset: 0x1c8
// Size: 0x9c
function on_player_spawned()
{
    for (watcher = 0; watcher < self.weaponobjectwatcherarray.size; watcher++) {
        if ( self.weaponobjectwatcherarray[ watcher ].name == #"spike_charge" )
        {
            arrayremoveindex( self.weaponobjectwatcherarray, watcher );
        }
    }
    
    self createwatcher( "spike_launcher", &createspikelauncherwatcher, 1 );
}


#using scripts\core_common\clientfield_shared;
#using scripts\core_common\fx_shared;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\vehicle_shared;

#namespace duga_fx;

// Namespace duga_fx/cp_rus_duga_fx
// Params 0, eflags: 0x5
// Checksum 0xfcf21be7, Offset: 0xb8
// Size: 0x4c
function private autoexec __init__system__()
{
    system::register( #"duga_fx", &_preload, &function_fa076c68, undefined, undefined );
}

// Namespace duga_fx/cp_rus_duga_fx
// Params 0, eflags: 0x4
// Checksum 0x4d58faac, Offset: 0x110
// Size: 0x34
function private _preload()
{
    if ( !isdefined( level._fx ) )
    {
        level._fx = {};
    }
    
    function_bc948200();
}

// Namespace duga_fx/cp_rus_duga_fx
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x150
// Size: 0x4
function private function_fa076c68()
{
    
}

// Namespace duga_fx/cp_rus_duga_fx
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x160
// Size: 0x4
function private function_bc948200()
{
    
}


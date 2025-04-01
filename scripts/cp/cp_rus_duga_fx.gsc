#using script_3dc93ca9902a9cda;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\cp_common\skipto;

#namespace duga_fx;

// Namespace duga_fx/cp_rus_duga_fx
// Params 0, eflags: 0x5
// Checksum 0xfcf21be7, Offset: 0xb0
// Size: 0x4c
function private autoexec __init__system__()
{
    system::register( #"duga_fx", &_preload, &function_fa076c68, undefined, undefined );
}

// Namespace duga_fx/cp_rus_duga_fx
// Params 0, eflags: 0x4
// Checksum 0x8446bc56, Offset: 0x108
// Size: 0x14
function private _preload()
{
    function_bc948200();
}

// Namespace duga_fx/cp_rus_duga_fx
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x128
// Size: 0x4
function private function_fa076c68()
{
    
}

// Namespace duga_fx/cp_rus_duga_fx
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x138
// Size: 0x4
function private function_bc948200()
{
    
}


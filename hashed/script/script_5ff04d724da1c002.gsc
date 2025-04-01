#using script_355c6e84a79530cb;
#using scripts\core_common\content_manager;
#using scripts\core_common\system_shared;
#using scripts\zm_common\zm_utility;

#namespace namespace_7a9f67c8;

// Namespace namespace_7a9f67c8/namespace_7a9f67c8
// Params 0, eflags: 0x5
// Checksum 0x977bdc54, Offset: 0xa0
// Size: 0x44
function private autoexec __init__system__()
{
    system::register( #"hash_3617acb8b856566f", &preinit, undefined, undefined, #"content_manager" );
}

// Namespace namespace_7a9f67c8/namespace_7a9f67c8
// Params 0, eflags: 0x0
// Checksum 0xcc53b9be, Offset: 0xf0
// Size: 0x4c
function preinit()
{
    if ( !zm_utility::is_survival() )
    {
        return;
    }
    
    content_manager::register_script( #"upgrade_machines", &function_f14de68 );
}

// Namespace namespace_7a9f67c8/namespace_7a9f67c8
// Params 1, eflags: 0x4
// Checksum 0x2ce9a065, Offset: 0x148
// Size: 0xa4
function private function_f14de68( instance )
{
    instance endon( #"cleanup" );
    namespace_73df937d::function_ae44cb3d( instance, #"perk_machine_choice" );
    namespace_73df937d::function_ae44cb3d( instance, #"armor_machine" );
    namespace_73df937d::function_ae44cb3d( instance, #"weapon_machine" );
    namespace_73df937d::function_ae44cb3d( instance, #"crafting_table" );
}


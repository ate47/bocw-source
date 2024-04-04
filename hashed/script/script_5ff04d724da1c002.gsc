// Atian COD Tools GSC CW decompiler test
#using script_355c6e84a79530cb;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\content_manager.gsc;

#namespace namespace_7a9f67c8;

// Namespace namespace_7a9f67c8/namespace_7a9f67c8
// Params 0, eflags: 0x5
// Checksum 0x977bdc54, Offset: 0xa0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_3617acb8b856566f", &preinit, undefined, undefined, #"content_manager");
}

// Namespace namespace_7a9f67c8/namespace_7a9f67c8
// Params 0, eflags: 0x2 linked
// Checksum 0xcc53b9be, Offset: 0xf0
// Size: 0x4c
function preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    content_manager::register_script(#"hash_38cc1135684934da", &function_f14de68);
}

// Namespace namespace_7a9f67c8/namespace_7a9f67c8
// Params 1, eflags: 0x6 linked
// Checksum 0x2ce9a065, Offset: 0x148
// Size: 0xa4
function private function_f14de68(instance) {
    instance endon(#"cleanup");
    namespace_73df937d::function_ae44cb3d(instance, #"hash_6217ef2a3d7d895b");
    namespace_73df937d::function_ae44cb3d(instance, #"hash_629e563c2ebf707a");
    namespace_73df937d::function_ae44cb3d(instance, #"hash_448adaf187bbb953");
    namespace_73df937d::function_ae44cb3d(instance, #"crafting_table");
}


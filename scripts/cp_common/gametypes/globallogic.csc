// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\visionset_mgr_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace globallogic;

// Namespace globallogic/globallogic
// Params 0, eflags: 0x5
// Checksum 0xd775bc29, Offset: 0xb8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"globallogic", &preinit, undefined, undefined, #"visionset_mgr");
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x6 linked
// Checksum 0xd21330fe, Offset: 0x108
// Size: 0x60
function private preinit() {
    visionset_mgr::register_visionset_info("crithealth", 1, 25, undefined, "critical_health");
    level.new_health_model = getdvarint(#"new_health_model", 1) > 0;
}


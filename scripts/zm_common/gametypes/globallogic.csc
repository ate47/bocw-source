// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\visionset_mgr_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\struct.csc;

#namespace globallogic;

// Namespace globallogic/globallogic
// Params 0, eflags: 0x5
// Checksum 0xa582ce62, Offset: 0x160
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"globallogic", &preinit, undefined, undefined, #"visionset_mgr");
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x6 linked
// Checksum 0x1fc88476, Offset: 0x1b0
// Size: 0x124
function private preinit() {
    visionset_mgr::register_visionset_info("crithealth", 1, 25, undefined, "critical_health");
    clientfield::register_clientuimodel("hudItems.armorIsOnCooldown", #"hash_6f4b11a0bee9b73d", #"armorisoncooldown", 1, 1, "int", undefined, 0, 0);
    clientfield::function_91cd7763("string", "hudItems.cursorHintZMPurchaseInvalidText", #"hash_6f4b11a0bee9b73d", #"hash_118ad44e348b0da0", 1, undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.cursorHintZMPurchaseInvalid", #"hash_6f4b11a0bee9b73d", #"hash_679adafa6635cf07", 1, 1, "int", undefined, 0, 0);
    level.new_health_model = 1;
}


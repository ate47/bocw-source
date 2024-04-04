// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace cranked;

// Namespace cranked/cranked
// Params 0, eflags: 0x2 linked
// Checksum 0x39dc319, Offset: 0x180
// Size: 0x1f4
function init() {
    clientfield::register_clientuimodel("hudItems.nakatomiDetonatorMeter", #"hash_6f4b11a0bee9b73d", #"hash_7770168ca71b2586", 1, 5, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hud_items_cranked.crankedMax", #"hash_6a55a513359bd404", #"hash_656f154d7d06b4a9", 6000, 5, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hud_items_cranked.crankedPct", #"hash_6a55a513359bd404", #"hash_435a004d21eddd40", 6000, 16, "float", undefined, 0, 0);
    clientfield::register_clientuimodel("hud_items_cranked.crankedTimerReset", #"hash_6a55a513359bd404", #"hash_104102aca5dec6e5", 6000, 1, "counter", undefined, 0, 0);
    clientfield::register_clientuimodel("hud_items_cranked.crankedTimerResetCap", #"hash_6a55a513359bd404", #"hash_40be35051011961b", 6000, 1, "counter", undefined, 0, 0);
    clientfield::register_clientuimodel("hud_items_cranked.crankedTier", #"hash_6a55a513359bd404", #"hash_62d578ed0c523079", 6000, 3, "int", undefined, 0, 0);
    level.var_c91b202 = 1;
}


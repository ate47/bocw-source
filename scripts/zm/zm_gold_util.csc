#using script_2f2e0161d9aace47;
#using script_341ccd78d3215071;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\util_shared;

#namespace zm_gold_util;

// Namespace zm_gold_util/zm_gold_util
// Params 0, eflags: 0x0
// Checksum 0xbaeb4741, Offset: 0xa8
// Size: 0x24
function init() {
    zm_gold_hud::register();
    zm_gold_align_satellite_hud::register();
}


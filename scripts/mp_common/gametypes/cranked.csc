#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;

#namespace cranked;

// Namespace cranked/cranked
// Params 0, eflags: 0x0
// Checksum 0x39dc319, Offset: 0x180
// Size: 0x1f4
function init()
{
    clientfield::register_clientuimodel( "hudItems.nakatomiDetonatorMeter", #"hud_items", #"nakatomidetonatormeter", 1, 5, "int", undefined, 0, 0 );
    clientfield::register_clientuimodel( "hud_items_cranked.crankedMax", #"hud_items_cranked", #"crankedmax", 6000, 5, "int", undefined, 0, 0 );
    clientfield::register_clientuimodel( "hud_items_cranked.crankedPct", #"hud_items_cranked", #"crankedpct", 6000, 16, "float", undefined, 0, 0 );
    clientfield::register_clientuimodel( "hud_items_cranked.crankedTimerReset", #"hud_items_cranked", #"crankedtimerreset", 6000, 1, "counter", undefined, 0, 0 );
    clientfield::register_clientuimodel( "hud_items_cranked.crankedTimerResetCap", #"hud_items_cranked", #"crankedtimerresetcap", 6000, 1, "counter", undefined, 0, 0 );
    clientfield::register_clientuimodel( "hud_items_cranked.crankedTier", #"hud_items_cranked", #"crankedtier", 6000, 3, "int", undefined, 0, 0 );
    level.var_c91b202 = 1;
}


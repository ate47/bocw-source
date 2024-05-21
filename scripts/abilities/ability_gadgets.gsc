// Atian COD Tools GSC CW decompiler test
#using scripts\abilities\ability_player.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace ability_gadgets;

// Namespace ability_gadgets/ability_gadgets
// Params 0, eflags: 0x5
// Checksum 0xac77a6ed, Offset: 0x100
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"ability_gadgets", &preinit, undefined, undefined, undefined);
}

// Namespace ability_gadgets/ability_gadgets
// Params 0, eflags: 0x6 linked
// Checksum 0x170c7ba0, Offset: 0x148
// Size: 0x94
function private preinit() {
    callback::on_connect(&on_player_connect);
    callback::on_spawned(&on_player_spawned);
    clientfield::register_clientuimodel("huditems.abilityHoldToActivate", 1, 2, "int");
    clientfield::register_clientuimodel("huditems.abilityDelayProgress", 1, 5, "float");
}

/#

    // Namespace ability_gadgets/ability_gadgets
    // Params 1, eflags: 0x0
    // Checksum 0x16b6e68b, Offset: 0x1e8
    // Size: 0x74
    function gadgets_print(str) {
        if (getdvarint(#"scr_debug_gadgets", 0)) {
            toprint = str;
            println(self.playername + "<unknown string>" + "<unknown string>" + toprint);
        }
    }

#/

// Namespace ability_gadgets/ability_gadgets
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x268
// Size: 0x4
function on_player_connect() {
    
}

// Namespace ability_gadgets/ability_gadgets
// Params 2, eflags: 0x2 linked
// Checksum 0x8c8fe336, Offset: 0x278
// Size: 0x44
function setflickering(slot, length = 0) {
    self gadgetflickering(slot, 1, length);
}

// Namespace ability_gadgets/ability_gadgets
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x2c8
// Size: 0x4
function on_player_spawned() {
    
}

// Namespace ability_gadgets/gadget_give
// Params 1, eflags: 0x20
// Checksum 0x19f1e8fc, Offset: 0x2d8
// Size: 0x6c
function event_handler[gadget_give] gadget_give_callback(eventstruct) {
    /#
        eventstruct.entity gadgets_print("<unknown string>" + eventstruct.slot + "<unknown string>");
    #/
    eventstruct.entity ability_player::give_gadget(eventstruct.slot, eventstruct.weapon);
}

// Namespace ability_gadgets/gadget_take
// Params 1, eflags: 0x20
// Checksum 0x1ede7b4a, Offset: 0x350
// Size: 0x6c
function event_handler[gadget_take] gadget_take_callback(eventstruct) {
    /#
        eventstruct.entity gadgets_print("<unknown string>" + eventstruct.slot + "<unknown string>");
    #/
    eventstruct.entity ability_player::take_gadget(eventstruct.slot, eventstruct.weapon);
}

// Namespace ability_gadgets/gadget_primed
// Params 1, eflags: 0x20
// Checksum 0xbc61c3fb, Offset: 0x3c8
// Size: 0x6c
function event_handler[gadget_primed] gadget_primed_callback(eventstruct) {
    /#
        eventstruct.entity gadgets_print("<unknown string>" + eventstruct.slot + "<unknown string>");
    #/
    eventstruct.entity ability_player::gadget_primed(eventstruct.slot, eventstruct.weapon);
}

// Namespace ability_gadgets/gadget_ready
// Params 1, eflags: 0x20
// Checksum 0xc1350a9f, Offset: 0x440
// Size: 0x6c
function event_handler[gadget_ready] gadget_ready_callback(eventstruct) {
    /#
        eventstruct.entity gadgets_print("<unknown string>" + eventstruct.slot + "<unknown string>");
    #/
    eventstruct.entity ability_player::gadget_ready(eventstruct.slot, eventstruct.weapon);
}

// Namespace ability_gadgets/gadget_on
// Params 1, eflags: 0x20
// Checksum 0x4a1b10a4, Offset: 0x4b8
// Size: 0x6c
function event_handler[gadget_on] gadget_on_callback(eventstruct) {
    /#
        eventstruct.entity gadgets_print("<unknown string>" + eventstruct.slot + "<unknown string>");
    #/
    eventstruct.entity ability_player::turn_gadget_on(eventstruct.slot, eventstruct.weapon);
}

// Namespace ability_gadgets/gadget_off
// Params 1, eflags: 0x20
// Checksum 0x406cad74, Offset: 0x530
// Size: 0x6c
function event_handler[gadget_off] gadget_off_callback(eventstruct) {
    /#
        eventstruct.entity gadgets_print("<unknown string>" + eventstruct.slot + "<unknown string>");
    #/
    eventstruct.entity ability_player::turn_gadget_off(eventstruct.slot, eventstruct.weapon);
}

// Namespace ability_gadgets/event_dfabd488
// Params 1, eflags: 0x20
// Checksum 0x53f4105c, Offset: 0x5a8
// Size: 0x6c
function event_handler[event_dfabd488] function_40d8d1ec(eventstruct) {
    /#
        eventstruct.entity gadgets_print("<unknown string>" + eventstruct.slot + "<unknown string>");
    #/
    eventstruct.entity ability_player::function_50557027(eventstruct.slot, eventstruct.weapon);
}

// Namespace ability_gadgets/event_e46d75fa
// Params 1, eflags: 0x20
// Checksum 0x3ed81f68, Offset: 0x620
// Size: 0x6c
function event_handler[event_e46d75fa] function_15061ae6(eventstruct) {
    /#
        eventstruct.entity gadgets_print("<unknown string>" + eventstruct.slot + "<unknown string>");
    #/
    eventstruct.entity ability_player::function_d5260ebe(eventstruct.slot, eventstruct.weapon);
}

// Namespace ability_gadgets/gadget_flicker
// Params 1, eflags: 0x20
// Checksum 0x3abbb22b, Offset: 0x698
// Size: 0x6c
function event_handler[gadget_flicker] gadget_flicker_callback(eventstruct) {
    /#
        eventstruct.entity gadgets_print("<unknown string>" + eventstruct.slot + "<unknown string>");
    #/
    eventstruct.entity ability_player::gadget_flicker(eventstruct.slot, eventstruct.weapon);
}


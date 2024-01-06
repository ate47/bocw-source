// Atian COD Tools GSC CW decompiler test
#using script_75da5547b1822294;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spectating.gsc;
#using script_306215d6cfd5f1f4;
#using script_6167e26342be354b;

#namespace namespace_8a203916;

// Namespace namespace_8a203916/namespace_8a203916
// Params 0, eflags: 0x5
// Checksum 0xd2b63916, Offset: 0x100
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_62a9656d2aaa46aa", &function_70a657d8, undefined, undefined, #"spectating");
}

// Namespace namespace_8a203916/ui_menuresponse
// Params 1, eflags: 0x20
// Checksum 0x258a0638, Offset: 0x150
// Size: 0x174
function event_handler[ui_menuresponse] codecallback_menuresponse(eventstruct) {
    var_53227942 = self;
    menu = eventstruct.menu;
    response = eventstruct.response;
    var_8893508d = eventstruct.intpayload;
    if (!isdefined(menu)) {
        menu = "";
    }
    if (!isdefined(response)) {
        response = "";
    }
    if (!isdefined(var_8893508d)) {
        var_8893508d = 0;
    }
    if (menu == "Hud_NavigableUI") {
        if (self.sessionstate === "playing") {
            return;
        }
        if (response == "set_spawn_view_overhead" && !level.var_1c15a724) {
            self function_86df9236();
        } else if (response == "set_spawn_view_squad" && level.var_1ba484ad == 2 && !level.var_1c15a724) {
            self function_86df9236();
        } else if (response == "set_spawn_view_squad" && !level.var_8bace951) {
            self function_888901cb();
        }
    }
}

// Namespace namespace_8a203916/namespace_8a203916
// Params 0, eflags: 0x6 linked
// Checksum 0xa45376d5, Offset: 0x2d0
// Size: 0x9c
function private function_70a657d8() {
    level.var_5d013349 = currentsessionmode() != 4 && (isdefined(getgametypesetting(#"hash_2c55a3723cd9fdf9")) ? getgametypesetting(#"hash_2c55a3723cd9fdf9") : 0);
    if (level.var_5d013349) {
        level.var_18c9a2d1 = &function_363802ea;
    }
}

// Namespace namespace_8a203916/namespace_8a203916
// Params 1, eflags: 0x2 linked
// Checksum 0x62ad58a8, Offset: 0x378
// Size: 0x24
function function_500047aa(view) {
    if (self.var_8a203916 === view) {
        return 1;
    }
    return 0;
}

// Namespace namespace_8a203916/namespace_8a203916
// Params 2, eflags: 0x2 linked
// Checksum 0xcea0a5e1, Offset: 0x3a8
// Size: 0x44
function function_363802ea(*players, *attacker) {
    self function_86df9236();
    self squad_spawn::function_e2ec8e07(1);
}

// Namespace namespace_8a203916/namespace_8a203916
// Params 0, eflags: 0x2 linked
// Checksum 0xfadfd63f, Offset: 0x3f8
// Size: 0x2c
function function_86df9236() {
    self.var_8a203916 = 1;
    self squad_spawn::function_a0bd2fd6(1);
}

// Namespace namespace_8a203916/namespace_8a203916
// Params 0, eflags: 0x2 linked
// Checksum 0x54216a65, Offset: 0x430
// Size: 0x24
function function_888901cb() {
    self.var_8a203916 = 0;
    self squad_spawn::function_a0bd2fd6(0);
}


// Atian COD Tools GSC CW decompiler test
#using script_61828ad9e71c6616;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\killstreaks\killstreak_detect.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace killstreaks;

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x5
// Checksum 0xe047bf1a, Offset: 0x158
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"killstreaks", &preinit, undefined, undefined, #"zm");
}

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x6 linked
// Checksum 0x40cdd9e5, Offset: 0x1a8
// Size: 0xac
function private preinit() {
    init_shared();
    killstreak_detect::init_shared();
    killstreakrules::init();
    level.var_fee7acb5 = [];
    level.var_1f616ecc = [];
    level.var_4cc7833a = [];
    callback::on_start_gametype(&init);
    callback::add_callback(#"menu_response", &on_menu_response);
}

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x2 linked
// Checksum 0x5ee9c02a, Offset: 0x260
// Size: 0x14c
function init() {
    /#
        level.killstreak_init_start_time = getmillisecondsraw();
        thread debug_ricochet_protection();
    #/
    function_447e6858();
    level.var_b0dc03c7 = &function_395f82d0;
    level.var_19a15e42 = &function_daabc818;
    callback::callback(#"hash_45f35669076bc317");
    function_f1707039();
    level thread function_d3106952();
    function_1f7e617a();
    /#
        level.killstreak_init_end_time = getmillisecondsraw();
        elapsed_time = level.killstreak_init_end_time - level.killstreak_init_start_time;
        println("<unknown string>" + elapsed_time + "<unknown string>");
        level thread killstreak_debug_think();
    #/
}

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x6 linked
// Checksum 0xba82f0ce, Offset: 0x3b8
// Size: 0x134
function private function_f1707039() {
    level.var_4b42d599 = [];
    for (i = 0; i < 4; i++) {
        level.var_4b42d599[i] = "killstreaks.killstreak" + i + ".inUse";
        clientfield::register_clientuimodel(level.var_4b42d599[i], 1, 1, "int");
    }
    level.var_46b33f90[i] = [];
    level.var_173b8ed7 = max(8, 4);
    for (i = 0; i < level.var_173b8ed7; i++) {
        level.var_46b33f90[i] = "killstreaks.killstreak" + i + ".spaceFull";
        clientfield::register_clientuimodel(level.var_46b33f90[i], 1, 1, "int");
    }
}

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x6 linked
// Checksum 0x3666ad91, Offset: 0x4f8
// Size: 0x58
function private function_1f7e617a() {
    level.var_b84cb28e = [];
    level.var_b84cb28e[0] = 2;
    level.var_b84cb28e[3] = 0;
    level.var_b84cb28e[1] = 1;
    level.var_b84cb28e[-1] = 3;
}

// Namespace killstreaks/killstreaks
// Params 1, eflags: 0x6 linked
// Checksum 0x4a067d7e, Offset: 0x558
// Size: 0x2dc
function private on_menu_response(eventstruct) {
    if (self function_8cc6b278()) {
        return;
    }
    if (eventstruct.response === "scorestreak_pool_purchase" && level.var_5b544215 === 1) {
        killstreakslot = level.var_b84cb28e[eventstruct.intpayload];
        if (isdefined(killstreakslot)) {
            if (killstreakslot == 3) {
                if (isdefined(self.pers[#"killstreaks"])) {
                    var_2a5574a6 = self.pers[#"killstreaks"].size - 1;
                    if (var_2a5574a6 >= 0) {
                        killstreakweapon = get_killstreak_weapon(self.pers[#"killstreaks"][var_2a5574a6]);
                        self switchtoweapon(killstreakweapon);
                    }
                }
            } else if (true) {
                killstreaktype = get_by_menu_name(self.killstreak[killstreakslot]);
                killstreakweapon = get_killstreak_weapon(killstreaktype);
                self switchtoweapon(killstreakweapon);
            }
        }
        return;
    }
    if (eventstruct.response === "scorestreak_pool_purchase_and_use" && level.var_5b544215 === 1) {
        eventstruct = eventstruct;
        var_180d3406 = getscriptbundlelist(level.var_d1455682.var_a45c9c63);
        var_b133a8aa = getscriptbundle(var_180d3406[eventstruct.intpayload]);
        killstreakbundle = getscriptbundle(var_b133a8aa.killstreakbundle);
        if (isdefined(killstreakbundle)) {
            unlockableindex = getitemindexfromref(var_b133a8aa.unlockableitem);
            iteminfo = getunlockableiteminfofromindex(unlockableindex, 0);
            if (true) {
                self give(killstreakbundle.var_d3413870);
                self switchtoweapon(killstreakbundle.ksweapon);
            }
        }
    }
}

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x2 linked
// Checksum 0xe97996ce, Offset: 0x840
// Size: 0x18
function function_3b4959c6() {
    return isdefined(level.var_d1455682.var_a45c9c63);
}

// Namespace killstreaks/killstreaks
// Params 1, eflags: 0x2 linked
// Checksum 0xd740665b, Offset: 0x860
// Size: 0x20
function function_7b6102ed(killstreaktype) {
    level.var_fee7acb5[killstreaktype] = 1;
}

// Namespace killstreaks/killstreaks
// Params 2, eflags: 0x2 linked
// Checksum 0xaa50feac, Offset: 0x888
// Size: 0x24
function function_353a9ccd(killstreaktype, func) {
    level.var_1f616ecc[killstreaktype] = func;
}

// Namespace killstreaks/killstreaks
// Params 2, eflags: 0x2 linked
// Checksum 0x36b5d3cb, Offset: 0x8b8
// Size: 0x24
function function_39c0c22a(killstreaktype, func) {
    level.var_4cc7833a[killstreaktype] = func;
}

// Namespace killstreaks/killstreaks
// Params 1, eflags: 0x6 linked
// Checksum 0x4f719177, Offset: 0x8e8
// Size: 0xc
function private function_395f82d0(*killstreaktype) {
    
}

// Namespace killstreaks/killstreaks
// Params 4, eflags: 0x6 linked
// Checksum 0xf6c86639, Offset: 0x900
// Size: 0x24
function private function_daabc818(*event, *player, *victim, *weapon) {
    
}

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x6 linked
// Checksum 0x11bf82ef, Offset: 0x930
// Size: 0x40c
function private function_d3106952() {
    self notify("606d9cc1a6278cc5");
    self endon("606d9cc1a6278cc5");
    if (function_3b4959c6()) {
        return;
    }
    wait(5);
    var_7d46072 = 1;
    var_e9414fa = 0;
    while (!level.gameended) {
        players = getplayers();
        if (players.size == 0) {
            wait(1);
            continue;
        }
        foreach (player in players) {
            if (!isdefined(player)) {
                continue;
            }
            if (!isdefined(player.killstreak)) {
                continue;
            }
            if (is_true(player.var_6696e200)) {
                continue;
            }
            var_6370491b = getarraykeys(player.killstreak);
            foreach (key in var_6370491b) {
                if (!isdefined(key)) {
                    continue;
                }
                var_63fd3e67 = player killstreakrules::iskillstreakallowed(player.killstreak[key], player.team, 1);
                player clientfield::set_player_uimodel(level.var_46b33f90[key], !var_63fd3e67);
            }
            if (isdefined(player.pers[#"killstreaks"]) && player.pers[#"killstreaks"].size > 0) {
                var_8c992ad8 = player.pers[#"killstreaks"][player.pers[#"killstreaks"].size - 1];
                if (is_true(level.var_fee7acb5[var_8c992ad8])) {
                    if (!player killstreakrules::function_71e94a3b(var_8c992ad8)) {
                        player clientfield::set_player_uimodel(level.var_46b33f90[3], 1);
                    } else {
                        var_63fd3e67 = player killstreakrules::iskillstreakallowed(var_8c992ad8, player.team, 1);
                        player clientfield::set_player_uimodel(level.var_46b33f90[3], !var_63fd3e67);
                    }
                } else {
                    var_63fd3e67 = player killstreakrules::iskillstreakallowed(var_8c992ad8, player.team, 1);
                    player clientfield::set_player_uimodel(level.var_46b33f90[3], !var_63fd3e67);
                }
            }
            var_e9414fa++;
            if (var_e9414fa >= var_7d46072) {
                waitframe(1);
                var_e9414fa = 0;
            }
        }
        waitframe(1);
    }
}


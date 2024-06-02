// Atian COD Tools GSC CW decompiler test
#using script_78825cbb1ab9f493;
#using script_6a72d858ff1942eb;
#using script_67278d99b737542d;
#using script_680dddbda86931fa;
#using script_4a04e1760d0523d3;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace fireteam_elimination;

// Namespace fireteam_elimination/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x800e6ab0, Offset: 0x1c8
// Size: 0x18c
function event_handler[gametype_init] main(*eventstruct) {
    namespace_17baa64d::init();
    namespace_b77e8eb1::init();
    namespace_fc40d35f::function_dd83b835();
    level.var_b637a0c0 = &function_e99f251a;
    level.var_75f7e612 = &function_218c0417;
    level.var_977ee0c2 = &function_a2807fc5;
    clientfield::function_5b7d846d("hud_items_fireteam.exfil_state", #"hash_2f4d07f9eb3ddf9b", #"hash_182c2bf964511745", 20000, 2, "int", undefined, 0, 0);
    clientfield::register("scriptmover", "isExfilSite", 20000, 1, "int", &function_d299e99d, 0, 0);
    clientfield::register_clientuimodel("hud_items_fireteam_percontroller.teamRedeployableCount", #"hash_6647de0da4510faf", #"teamredeployablecount", 7000, 3, "int", undefined, 0, 0);
    callback::on_localclient_connect(&on_localclient_connect);
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 1, eflags: 0x2 linked
// Checksum 0xe218e368, Offset: 0x360
// Size: 0x24
function on_localclient_connect(localclientnum) {
    level thread function_bb2f717e(localclientnum);
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 1, eflags: 0x6 linked
// Checksum 0xbba1419, Offset: 0x390
// Size: 0x2f6
function private function_bb2f717e(localclientnum) {
    self endon(#"shutdown");
    var_61efd7d9 = [];
    for (index = 0; index < 5; index++) {
        model = spawn(localclientnum, (0, 0, 0), "script_model");
        model setmodel(#"tag_origin");
        model hide();
        model notsolid();
        var_61efd7d9[var_61efd7d9.size] = model;
    }
    while (true) {
        if (!isdefined(level.item_spawn_stashes)) {
            wait(1);
            continue;
        }
        draworigin = getcamposbylocalclientnum(localclientnum);
        containers = arraysortclosest(level.item_spawn_stashes, draworigin, 5, 0, 1500);
        var_7dcc7dd4 = [];
        for (index = 0; index < containers.size; index++) {
            if (!function_8a8a409b(containers[index])) {
                continue;
            }
            if (function_ffdbe8c2(containers[index]) != 2) {
                var_7dcc7dd4[var_7dcc7dd4.size] = containers[index];
            }
        }
        containers = var_7dcc7dd4;
        for (index = 0; index < containers.size; index++) {
            var_61efd7d9[index].origin = containers[index].origin;
            if (isdefined(var_61efd7d9[index].var_95f008e)) {
                continue;
            }
            var_61efd7d9[index].var_95f008e = var_61efd7d9[index] playloopsound("amb_dirtybomb_container_amb", undefined, (0, 0, 25));
            var_61efd7d9[index] show();
        }
        for (index = containers.size; index < 5; index++) {
            if (!isdefined(var_61efd7d9[index].var_95f008e)) {
                continue;
            }
            var_61efd7d9[index] stoploopsound(var_61efd7d9[index].var_95f008e);
            var_61efd7d9[index].var_95f008e = undefined;
            var_61efd7d9[index] hide();
        }
        wait(1);
    }
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 2, eflags: 0x6 linked
// Checksum 0xabe1432a, Offset: 0x690
// Size: 0xf8
function private function_e99f251a(*localclientnum, itementry) {
    if (itementry.itemtype == #"generic") {
        switch (itementry.name) {
        case #"hash_44cca2edb9c2041c":
            return (self clientfield::get_player_uimodel("hudItems.armorPlateMaxCarry") != 10);
        case #"hash_b8b2580ac5556e1":
            return (self clientfield::get_player_uimodel("hud_items.selfReviveAvailable") == 0);
        case #"hash_2ec97717fa7f8ee":
        case #"hash_6ebec4f42d4b01c":
            return false;
        }
    } else if (itementry.itemtype == #"armor_shard") {
        return false;
    }
    return true;
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 2, eflags: 0x6 linked
// Checksum 0x9ae9fb96, Offset: 0x790
// Size: 0xce
function private function_218c0417(*localclientnum, itementry) {
    if (itementry.itemtype == #"generic") {
        switch (itementry.name) {
        case #"hash_2ec97717fa7f8ee":
        case #"hash_6ebec4f42d4b01c":
            return true;
        }
        return false;
    } else if (itementry.itemtype == #"armor_shard") {
        currentcount = self clientfield::get_player_uimodel("hudItems.armorPlateCount");
        return (currentcount < 5);
    }
    return true;
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 2, eflags: 0x6 linked
// Checksum 0xea97c463, Offset: 0x868
// Size: 0x12a
function private function_a2807fc5(localclientnum, itementry) {
    if (itementry.itemtype == #"scorestreak") {
        weapons = self getweaponslist();
        foreach (weapon in weapons) {
            var_16f12c31 = item_world_util::function_3531b9ba(weapon.name);
            if (!isdefined(var_16f12c31)) {
                continue;
            }
            hasammo = self getweaponammostock(localclientnum, weapon) > 0;
            if (hasammo) {
                return true;
            }
        }
        return false;
    }
    return false;
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 7, eflags: 0x6 linked
// Checksum 0xd46743e, Offset: 0x9a0
// Size: 0x5c
function private function_d299e99d(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        namespace_b77e8eb1::function_270bde4c(fieldname, self);
    }
}


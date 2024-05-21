// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\zm_common\zm_ping.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace zm_gold_pap_quest;

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x3274dd86, Offset: 0xf0
// Size: 0x144
function init() {
    clientfield::register("world", "" + #"hash_666ad912cb4541f1", 16000, 1, "int", &function_7d467651, 0, 0);
    clientfield::register("world", "" + #"hash_18c31f1201f7c968", 16000, 1, "counter", &function_e4ea3f5f, 0, 0);
    clientfield::register("world", "" + #"hash_4d477a055c04e499", 16000, 1, "counter", &function_b35747a, 0, 0);
    zm_ping::function_5ae4a10c(undefined, "gold_teleporter", #"hash_4046a68ee9d717fc", undefined, #"hash_6416821107fc95b2");
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 7, eflags: 0x2 linked
// Checksum 0xd4a1619d, Offset: 0x240
// Size: 0x26a
function function_7d467651(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        var_73524bb4 = getentarray(fieldname, "portal_fx", "targetname");
        foreach (var_2c517d4c in var_73524bb4) {
            var_2c517d4c.fx_portal = playfx(fieldname, #"hash_3af1d592cda71a5c", var_2c517d4c.origin, anglestoforward(var_2c517d4c.angles), anglestoup(var_2c517d4c.angles));
            if (!isdefined(var_2c517d4c.var_a3b04735)) {
                var_2c517d4c.var_a3b04735 = var_2c517d4c playloopsound(#"hash_722697efdfb3562f");
            }
        }
        return;
    }
    var_73524bb4 = getentarray(fieldname, "portal_fx", "targetname");
    foreach (var_2c517d4c in var_73524bb4) {
        stopfx(fieldname, var_2c517d4c.fx_portal);
        var_2c517d4c.fx_portal = undefined;
        if (isdefined(var_2c517d4c.var_a3b04735)) {
            var_2c517d4c stoploopsound(var_2c517d4c.var_a3b04735);
            var_2c517d4c.var_a3b04735 = undefined;
        }
    }
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 7, eflags: 0x2 linked
// Checksum 0xb7027a8d, Offset: 0x4b8
// Size: 0xfe
function function_e4ea3f5f(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    teleporters = getentarray(bwasdemojump, "gold_teleporter", "targetname");
    foreach (teleporter in teleporters) {
        teleporter function_619a5c20();
        teleporter.var_fc558e74 = "gold_teleporter";
    }
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 7, eflags: 0x2 linked
// Checksum 0xebc02be7, Offset: 0x5c0
// Size: 0xf0
function function_b35747a(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwasdemojump) {
    foreach (var_1da0aee8 in getentarray(localclientnum, "gold_teleporter", "targetname")) {
        var_1da0aee8 zm_utility::set_compass_icon(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwasdemojump);
    }
}


// Atian COD Tools GSC CW decompiler test
#using script_382ba4154c04904e;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace zm_tungsten_pap_quest;

// Namespace zm_tungsten_pap_quest/zm_tungsten_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xf89bcd90, Offset: 0x190
// Size: 0x28c
function init() {
    clientfield::register("world", "" + #"hash_2c7fb1cc66c590a0", 28000, getminbitcountfornum(2), "int", &function_68bbfe, 0, 0);
    clientfield::register("world", "" + #"hash_18f96dcb4766fbe8", 28000, 1, "int", &function_34eb3249, 0, 0);
    clientfield::register("world", "" + #"hash_45c3013f063fe2c7", 28000, getminbitcountfornum(2), "int", &function_2d49baf, 0, 0);
    clientfield::register("world", "" + #"hash_3432d09ff93c9a0c", 28000, 1, "int", &function_794730f, 0, 0);
    clientfield::register("world", "" + #"hash_27308a7dd991ce8d", 28000, 1, "int", &function_8c88a649, 0, 0);
    clientfield::register("actor", "" + #"hash_54e2a4e02a26cc62", 28000, 1, "counter", &function_95190421, 0, 0);
    clientfield::register("world", "" + #"hash_12eb39113e9737f8", 28000, 1, "int", &function_1446ef30, 0, 0);
}

// Namespace zm_tungsten_pap_quest/zm_tungsten_pap_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x269c2aa9, Offset: 0x428
// Size: 0xf4
function function_68bbfe(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    e_portal = getent(fieldname, "portal_fx_helipads_to_main_street", "targetname");
    if (bwasdemojump) {
        if (bwasdemojump == 1) {
            function_d93b0fff(fieldname, e_portal);
        } else {
            function_1f88d6(fieldname, e_portal);
            function_7e3966f(fieldname, e_portal);
        }
        return;
    }
    function_1f88d6(fieldname, e_portal);
}

// Namespace zm_tungsten_pap_quest/zm_tungsten_pap_quest
// Params 7, eflags: 0x2 linked
// Checksum 0xb6ab8c82, Offset: 0x528
// Size: 0x8c
function function_1446ef30(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        forcestreamxmodel(#"p9_zm_gold_teleporter_b");
        return;
    }
    stopforcestreamingxmodel(#"p9_zm_gold_teleporter_b");
}

// Namespace zm_tungsten_pap_quest/zm_tungsten_pap_quest
// Params 7, eflags: 0x2 linked
// Checksum 0xc3c1f6c7, Offset: 0x5c0
// Size: 0x19c
function function_34eb3249(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    level endon(#"end_game");
    e_portal = getent(fieldname, "portal_fx_anytown_usa_to_bunker", "targetname");
    if (bwasdemojump) {
        var_1da0aee8 = getent(fieldname, "anytown_usa_teleporter", "targetname");
        if (var_1da0aee8.model !== #"p9_zm_gold_teleporter_b") {
            var_1da0aee8 setmodel(#"p9_zm_gold_teleporter_b");
        }
        function_d93b0fff(fieldname, e_portal);
        wait(1.5);
        if (isdefined(e_portal.var_bd434ca)) {
            stopfx(fieldname, e_portal.var_bd434ca);
            e_portal.var_bd434ca = undefined;
            namespace_ff7e490::function_60381056(fieldname, e_portal);
            function_7e3966f(fieldname, e_portal);
        }
        return;
    }
    function_1f88d6(fieldname, e_portal);
}

// Namespace zm_tungsten_pap_quest/zm_tungsten_pap_quest
// Params 7, eflags: 0x2 linked
// Checksum 0xe05fad9f, Offset: 0x768
// Size: 0x126
function function_8c88a649(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    e_portal = getent(fieldname, "portal_dmg_spark_fx", "targetname");
    if (bwasdemojump) {
        if (!isdefined(e_portal.fx_portal)) {
            e_portal.fx_portal = playfx(fieldname, #"hash_532aade47be565ff", e_portal.origin, anglestoforward(e_portal.angles), anglestoup(e_portal.angles));
        }
        return;
    }
    if (isdefined(e_portal.fx_portal)) {
        stopfx(fieldname, e_portal.fx_portal);
        e_portal.fx_portal = undefined;
    }
}

// Namespace zm_tungsten_pap_quest/zm_tungsten_pap_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x3fed551b, Offset: 0x898
// Size: 0x1c4
function function_2d49baf(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    e_portal = getent(fieldname, "portal_fx_bunker_to_observation", "targetname");
    if (bwasdemojump) {
        if (bwasdemojump == 1) {
            namespace_ff7e490::function_60381056(fieldname, e_portal);
            e_portal playsound(fieldname, #"hash_347114806e46c42a");
            namespace_ff7e490::function_833e4b72(fieldname, e_portal);
        } else {
            namespace_ff7e490::function_60381056(fieldname, e_portal);
            e_portal.fx_portal = playfx(fieldname, #"hash_9d2f5030c333b16", e_portal.origin, anglestoforward(e_portal.angles), anglestoup(e_portal.angles));
            e_portal.var_a3b04735 = e_portal playloopsound(#"hash_83b5ecd7e3f8f29");
            e_portal playsound(fieldname, #"hash_740416d5474f1ce7");
        }
        return;
    }
    namespace_ff7e490::function_60381056(fieldname, e_portal);
}

// Namespace zm_tungsten_pap_quest/zm_tungsten_pap_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x482728b2, Offset: 0xa68
// Size: 0x134
function function_794730f(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    level endon(#"end_game");
    e_portal = getent(fieldname, "portal_fx_observation_to_helipads", "targetname");
    if (bwasdemojump == 1) {
        function_d93b0fff(fieldname, e_portal);
        wait(1.5);
        if (isdefined(e_portal.var_bd434ca)) {
            stopfx(fieldname, e_portal.var_bd434ca);
            e_portal.var_bd434ca = undefined;
            namespace_ff7e490::function_60381056(fieldname, e_portal);
            function_7e3966f(fieldname, e_portal);
        }
        return;
    }
    function_1f88d6(fieldname, e_portal);
}

// Namespace zm_tungsten_pap_quest/zm_tungsten_pap_quest
// Params 2, eflags: 0x6 linked
// Checksum 0x476c576f, Offset: 0xba8
// Size: 0x152
function private function_d93b0fff(localclientnum, e_portal) {
    if (!isdefined(e_portal.fx_portal)) {
        e_portal.fx_portal = playfx(localclientnum, #"hash_42ec8f4ec8bcc91b", e_portal.origin, anglestoforward(e_portal.angles), anglestoup(e_portal.angles));
    }
    if (!isdefined(e_portal.var_bd434ca)) {
        e_portal.var_bd434ca = playfx(localclientnum, #"hash_22568d89d3063dec", e_portal.origin, anglestoforward(e_portal.angles), anglestoup(e_portal.angles));
    }
    if (!isdefined(e_portal.var_a3b04735)) {
        e_portal playsound(localclientnum, #"hash_c2c4f6486acdcd6");
        e_portal.var_a3b04735 = e_portal playloopsound(#"hash_3a1b6a329b7e308f");
    }
}

// Namespace zm_tungsten_pap_quest/zm_tungsten_pap_quest
// Params 3, eflags: 0x6 linked
// Checksum 0xbd6d087, Offset: 0xd08
// Size: 0xec
function private function_7e3966f(localclientnum, e_portal, str_fx) {
    level endon(#"end_game");
    playfx(localclientnum, #"hash_139f53aac7315984", e_portal.origin, anglestoforward(e_portal.angles), anglestoup(e_portal.angles));
    e_portal playsound(localclientnum, #"hash_29c5f5ba6e81488c");
    wait(0.45);
    e_portal playsound(localclientnum, #"hash_1d48a1b077c9670b");
    namespace_ff7e490::function_833e4b72(localclientnum, e_portal, str_fx);
}

// Namespace zm_tungsten_pap_quest/zm_tungsten_pap_quest
// Params 2, eflags: 0x6 linked
// Checksum 0xe3abc23c, Offset: 0xe00
// Size: 0x64
function private function_1f88d6(localclientnum, e_portal) {
    if (isdefined(e_portal.var_bd434ca)) {
        stopfx(localclientnum, e_portal.var_bd434ca);
        e_portal.var_bd434ca = undefined;
    }
    namespace_ff7e490::function_60381056(localclientnum, e_portal);
}

// Namespace zm_tungsten_pap_quest/zm_tungsten_pap_quest
// Params 7, eflags: 0x2 linked
// Checksum 0xee26d4ee, Offset: 0xe70
// Size: 0x9c
function function_95190421(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    playfx(bwastimejump, #"zombie/fx9_onslaught_spawn_sm", self.origin);
    playsound(bwastimejump, #"hash_10605de886d51283", self.origin + (0, 0, 35));
}


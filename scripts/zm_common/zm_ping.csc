// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace zm_ping;

// Namespace zm_ping/zm_ping
// Params 0, eflags: 0x5
// Checksum 0xab24bce, Offset: 0x628
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_ping", &preinit, undefined, undefined, undefined);
}

// Namespace zm_ping/zm_ping
// Params 0, eflags: 0x6 linked
// Checksum 0x11eea6b, Offset: 0x670
// Size: 0x17d4
function private preinit() {
    level.var_a0b1f787 = [];
    level.var_2d1b0ac = [];
    level.var_3cbb97 = [];
    level.var_d459a1cf = [];
    level.var_3fc6a555 = [];
    function_5ae4a10c(1, "door", #"hash_50ac7af2c5bc8257", #"hash_5f3108a8ed351288", #"hash_74b8c57369bfb24b");
    function_5ae4a10c(11, "door");
    function_5ae4a10c(2, "debris", #"hash_14b4234423a635c0", #"hash_5e2a1ca8dc76be67", #"hash_74b8c57369bfb24b");
    function_5ae4a10c(3, "double_door", #"hash_50ac7af2c5bc8257", #"hash_5f3108a8ed351288", #"hash_74b8c57369bfb24b");
    function_5ae4a10c(4, "electric_door", #"hash_59bd96ed40a5975e", undefined, #"hash_6e7ff1a0f66deab4");
    function_5ae4a10c(5, "power_double_door", #"hash_59bd96ed40a5975e", undefined, #"hash_6e7ff1a0f66deab4");
    function_5ae4a10c(6, "intel", #"hash_1f02d183075803d9", #"zmpingitemintel", undefined, 1);
    function_5ae4a10c(12, "barricade", #"hash_6bd049dac126e3d7", undefined, #"hash_7b0c47f2b55db04c", 1, 98);
    function_5ae4a10c(array(#"hash_334445b2169a33a9", #"hash_94b3a8b935248d0"), "ammocache", #"hash_6d999ac22537eeb7", #"hash_e98c059b131f86c", #"hash_1d81c3d4a23328ba");
    function_5ae4a10c(array(#"p9_fxanim_zm_gp_dac_xmodel", #"hash_7dc3d2d824dee8f0"), "pc_terminal", #"hash_393d988e963356ec", #"hash_2e657370192514b5", #"hash_5c22f831283cbe0d", 0, -20);
    function_5ae4a10c(array(#"hash_2b8015fa585f3b83", #"hash_6e47d6576612543c"), "fizz_machine", #"hash_a8b446447be6cb5", #"hash_307d328d2ca73346", #"hash_27298efc7e453782");
    function_5ae4a10c(array(#"hash_847710b9f01fee3", #"hash_15f88361c2fa15c"), "crafting_table", #"hash_27a696fe263f18f5", #"hash_4990f9c23cc9c32a", #"hash_4290c0ae929fe8c4");
    function_5ae4a10c(#"hash_7336039cd7e006a4", "pack_a_punch", #"hash_632b8df2d8b1e18b", #"hash_5e9f5daa234fe730", #"hash_154530b7f83b7426");
    function_5ae4a10c(array(#"hash_74c59e8a4df12e7f", #"hash_6847db4bdfca2dc8"), "armor_station", #"hash_9c7074e60cba94e", #"hash_51d31303312306d", #"hash_44bb09aa82404023", 1, -20);
    function_5ae4a10c("p9_fxanim_zm_gp_chest_01_sml_low_xmodel", "explore_chest_small", #"hash_526ea917d293160b", #"hash_69eda3d15a6035ab", #"hash_4c2e7f9c9b051d54");
    function_5ae4a10c("p9_fxanim_zm_gp_chest_01_med_low_xmodel", "explore_chest_medium", #"hash_5b83af320fbb5beb", #"hash_69eda3d15a6035ab", #"hash_4c2e7f9c9b051d54");
    function_5ae4a10c("p9_fxanim_zm_gp_chest_01_lrg_low_xmodel", "explore_chest_large", #"hash_47e5788369dfc93", #"hash_69eda3d15a6035ab", #"hash_4c2e7f9c9b051d54");
    function_5ae4a10c(#"hash_401a47741ffd646f", "explore_chest_gold", #"hash_607c4680a1d5e42a", #"hash_69eda3d15a6035ab", #"hash_4c2e7f9c9b051d54");
    function_5ae4a10c(array("p9_gold_surcrystal_medium_01", "p9_gold_surcrystal_medium_02", #"hash_608da839b1edf856", #"hash_608da739b1edf6a3"), "loot_pod", #"hash_786b6df51c6c7977", #"hash_2e354b187fdbfbbc", #"hash_237f8ac6e3096959");
    function_5ae4a10c(#"hash_1750a0152f36afa4", "dark_aether_crystal", #"hash_69364657a8e13bea", #"zmpingitemquest", undefined, 0, 32);
    function_5ae4a10c(#"hash_8b8c98dda08574e", "large_essence", #"hash_1f00efce440309fb", #"zmpingitemaetherium", #"hash_42a9c56cfc3985b9");
    function_5ae4a10c(undefined, "magicbox", #"hash_3f01b77865c1572d", #"hash_4542da19e0c104c", #"hash_5135a0345a6ece48");
    function_5ae4a10c(undefined, "wallbuy", &function_d1852e75, #"hash_5fc866a41152b3c", #"hash_5507b821f566791f");
    function_5ae4a10c(#"hash_615f17c2d8b69f96", "exfil_radio", undefined, #"hash_4e2a478df2a81e8c");
    function_5ae4a10c(array(#"p9_sur_elemental_pop", #"p9_sur_elemental_pop_off"), "perk_elemental_pop", #"hash_6d71fbf718d4b5e1", #"hash_5605b2abdf38cd4", #"hash_4b7d190b8305f4f6", 1, -20);
    function_5ae4a10c(array(#"p9_sur_machine_juggernog", #"p9_sur_machine_juggernog_off"), "perk_juggernog", #"hash_90f7c3bd3c217c4", #"hash_22f552b15fc207f8", #"hash_706e82a94fff677a", 1, -20);
    function_5ae4a10c(array(#"p9_sur_machine_quick_revive", #"p9_sur_machine_quick_revive_off"), "perk_quick_revive", #"hash_634c9bd3e54d280a", #"hash_1aadb875c07be53a", #"hash_33843a8a6d05a384", 1, -20);
    function_5ae4a10c(array(#"p9_sur_machine_speed_cola", #"p9_sur_machine_speed_cola_off"), "perk_speed_cola", #"hash_fcf3aa364c93996", #"hash_33fa52ed652faf8a", #"hash_43bd6375813c74c4", 1, -20);
    function_5ae4a10c(array(#"p9_sur_machine_staminup", #"p9_sur_machine_staminup_off"), "perk_staminup", #"hash_199b94b5cb963ae5", #"hash_35f32b2271ef6ed7", #"hash_796547ba07a86d41", 1, -20);
    function_5ae4a10c(array(#"p9_sur_vending_ads", #"p9_sur_vending_ads_off"), "perk_deadshot", #"hash_7c5e12190fbe93c0", #"hash_462ae51bbab3172a", #"hash_44728ebc2543db8e", 1, -20);
    function_5ae4a10c(array(#"p9_sur_machine_tombstone", #"p9_sur_machine_tombstone_off"), "perk_tombstone", #"hash_10f37b608ff27f9b", #"hash_13b63b8343516b9e", #"hash_384cc4be4e840eb9", 1, -20);
    function_5ae4a10c(array(#"hash_4bee36a9434de051", #"hash_4bee33a9434ddb38", #"hash_4bee34a9434ddceb", #"hash_4bee39a9434de56a"), "tombstone_stash", #"hash_3b1c85278c23c698", undefined, #"hash_6bcf983b2502f812");
    function_5ae4a10c(array(#"hash_6820e6c765b40772", #"hash_47b744b5982bc2a4", #"p9_fxanim_zm_gp_mule_kick_mod"), "perk_mule_kick", #"hash_69c36ca7036b925d", #"hash_68784da81f2a99f7", #"hash_79efec4bc3695a7d", 1, -20);
    function_5ae4a10c(array(#"p9_sur_machine_death_perception"), "perk_death_perception", #"hash_4c319044777c42e5", #"hash_4df32dcf844b0659", #"hash_47f426768785c017", 1, -20);
    function_5ae4a10c(#"p7_zm_power_up_nuke", "powerup_nuke", #"zombie/powerup_nuke", #"hash_db9d5c95dfea201", #"hash_79ebbb36553f5b21");
    function_5ae4a10c(#"p7_zm_power_up_insta_kill", "powerup_insta_kill", #"hash_1784640b956f2f85", #"hash_504ad9537b38881f", #"hash_79ac89cbcace5b3b");
    function_5ae4a10c(#"p7_zm_power_up_max_ammo", "powerup_max_ammo", #"zombie/powerup_max_ammo", #"hash_2a901c3db306ba24", #"hash_4612fc19f97f58ad");
    function_5ae4a10c(#"p7_zm_power_up_double_points", "powerup_double_points", #"hash_774207d74b355a8a", #"hash_25d360e4ab517722", #"hash_3f59065a3419e61d");
    function_5ae4a10c(#"p7_zm_power_up_carpenter", "powerup_carpenter", #"hash_7ee3cb05607f53f3", #"hash_23e7594539b63cb8", #"hash_bfa2b9c3bd06c40");
    function_5ae4a10c(#"p7_zm_power_up_firesale", "powerup_firesale", #"hash_2c7bc0fa0980f8f5", #"hash_365549a15c5bde23", #"hash_8ea2b7214fa0627");
    function_5ae4a10c(#"wpn_t9_zm_perk_can_powerup", "powerup_free_perk", #"hash_165c84a677f7a58c", #"zmpingperkcan", #"hash_16e60be7e8413d5");
    function_5ae4a10c(#"p8_zm_power_up_bonfire_sale", "powerup_bonfire_sale", undefined);
    function_5ae4a10c(#"zombie_z_money_icon", "powerup_bonus_points", #"hash_5162c283a9d6ee16", #"hash_3321e0bf2e424c30", #"hash_241cbd09653f7bbf");
    function_5ae4a10c(#"p8_zm_powerup_full_power", "powerup_hero_power", #"hash_50af8943ead42bcc", #"hash_3580f779bbcaa04d", #"hash_6e55b93f6580badb");
    function_5ae4a10c(#"hash_218ac2126792ad24", "powerup_naughty_or_nice", #"hash_c63a666160e5343", #"hash_ebdfcb1ce94a2dc", #"hash_5efaeea6fa02135a");
    function_5ae4a10c(#"hash_2162e3666ea2485c", "powerup_cranked_pause", #"hash_4beb7d0e9dfb41f4", #"hash_2565a35b56075980", #"hash_48bab6acea8382da");
    function_5ae4a10c(#"hash_31994e81355d0644", "world_event_jump_pad", #"hash_7614bf03db1c1bf8", #"hash_5b20033c44a4321f", #"hash_eb7621f8461d66b", 0, -32);
    function_5ae4a10c(#"hash_26730916f0bb7003", "world_event_dragon_head", #"hash_33a048b0781a38c8", #"hash_5b20033c44a4321f", #"hash_60e316ebd207430", 0, -500);
    function_5ae4a10c(#"hash_53079af25eecf35b", "world_event_orb_follow", #"hash_77ca1dab94ef928f", #"hash_76483333c5c6984", #"hash_4598f61bd8fb7947");
    function_5ae4a10c(#"hash_7893e6c7d1cf2d74", "world_event_horde_hunt", #"hash_5bc748f665dac8a4", #"hash_5b20033c44a4321f", #"hash_23f095c979f39d9a");
    function_5ae4a10c(#"hash_6f139def53a9ba61", "world_event_radio_tuning", #"hash_4dc4d41c22a526c6", #"hash_5b20033c44a4321f", #"hash_72e6c7a164d73a8d");
    function_5ae4a10c(#"hash_6644a1e856afa8ab", "world_event_amplifier", #"hash_103c75dc7a21b891", #"hash_5b20033c44a4321f", #"hash_72e6c7a164d73a8d");
    function_5ae4a10c(array(#"p9_sur_crystal_medium_01_orange", #"hash_224a7c9803bf09ee"), "world_event_monster_house", #"hash_2ada18a5a09b2150", #"hash_2e354b187fdbfbbc", #"hash_237f8ac6e3096959");
    function_5ae4a10c(#"hash_52b22fc56fd98bd6", "world_event_black_chest", #"hash_3704fa0bf24407c2", #"hash_5b20033c44a4321f", #"hash_102649046bcfedd1");
    function_5ae4a10c(#"hash_7a7aadfb584e0859", "world_event_black_chest_swarm", #"hash_1af19c8f09575317", #"hash_76483333c5c6984", #"hash_16fe2add4180ac0", 0, -100);
    function_5ae4a10c(#"hash_698f8c105a349a42", "platinum_klaus_hand", #"hash_4e85ae5f5e2418f4", #"hash_5b20033c44a4321f", #"hash_605a95c3bb95cae8", 0, 0);
    function_5ae4a10c(#"hash_6ceeb1e8c8e22a40", "fizz_machine", #"hash_a8b446447be6cb5", #"hash_307d328d2ca73346", #"hash_27298efc7e453782");
    function_5ae4a10c(#"hash_51706bfde1e71907", "fizz_machine", #"hash_a8b446447be6cb5", #"hash_307d328d2ca73346", #"hash_27298efc7e453782");
    function_5ae4a10c(#"p8_wz_ep_fishing_pole", "fishing", #"hash_37f2a930f03bac8c", #"hash_5b20033c44a4321f", #"hash_3495a362a9bca583", 0, -32);
    function_5ae4a10c(#"hash_c4ab57344c6af29", "round_accelerant", #"hash_20fd9d10230088d", #"hash_5b20033c44a4321f", #"hash_2db109b3b20b0fbe", 0, 0);
    function_5ae4a10c(array(#"p9_sur_machine_phd_slider"), "perk_phd_slider", #"hash_79fbaba94cc08a3d", #"hash_2be744903390f195", #"hash_745f20bc47e3d33", 1, -20);
    function_5ae4a10c(#"hash_2730e79c7f028537", "aetherium_neutralizer", #"hash_348e920f379ab2a8", undefined, #"hash_541d134aef3a5f87", 1, 0);
    function_5ae4a10c(undefined, "mimic_prop_spawn");
    clientfield::register("scriptmover", "" + #"hash_dfecc4e02f58398", 1, 3, "int", &function_3ed2984b, 0, 0);
    clientfield::register("zbarrier", "" + #"hash_dfecc4e02f58398", 1, 2, "int", &function_1bcf5171, 0, 0);
}

// Namespace zm_ping/zm_ping
// Params 7, eflags: 0x2 linked
// Checksum 0xa8d15a29, Offset: 0x1e50
// Size: 0x56
function function_3ed2984b(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.var_fc558e74 = level.var_a0b1f787[bwastimejump];
}

// Namespace zm_ping/zm_ping
// Params 7, eflags: 0x2 linked
// Checksum 0xef533afa, Offset: 0x1eb0
// Size: 0x5a
function function_1bcf5171(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.var_fc558e74 = level.var_a0b1f787[10 + bwastimejump];
}

// Namespace zm_ping/zm_ping
// Params 7, eflags: 0x2 linked
// Checksum 0x7535074b, Offset: 0x1f18
// Size: 0x1cc
function function_5ae4a10c(modelname, targetname, displayname, var_7382ea8b, icon, var_b5a47119 = 0, zoffset = 0) {
    if (isarray(modelname)) {
        foreach (item in modelname) {
            function_5ae4a10c(item, targetname, displayname, var_7382ea8b, icon);
        }
        return;
    }
    if (isdefined(modelname)) {
        level.var_a0b1f787[modelname] = targetname;
    }
    /#
        if (isdefined(level.var_2d1b0ac[targetname]) && isdefined(displayname)) {
            assert(level.var_2d1b0ac[targetname] == displayname, "world_event_monster_house");
        }
    #/
    if (isdefined(displayname)) {
        level.var_2d1b0ac[targetname] = displayname;
    }
    if (isdefined(var_7382ea8b)) {
        level.var_3cbb97[targetname] = var_7382ea8b;
    }
    if (isdefined(icon)) {
        level.var_f8c1279b[targetname] = icon;
    }
    level.var_d459a1cf[targetname] = var_b5a47119;
    level.var_3fc6a555[targetname] = zoffset;
}

// Namespace zm_ping/zm_ping
// Params 1, eflags: 0x6 linked
// Checksum 0xc70f1360, Offset: 0x20f0
// Size: 0x46
function private function_d1852e75(ent) {
    assert(isdefined(ent.var_ed875153), "<unknown string>");
    return ent.var_ed875153;
}


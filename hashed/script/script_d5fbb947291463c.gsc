// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_dac_challenges_hud;

// Namespace zm_dac_challenges_hud
// Method(s) 17 Total 24
class czm_dac_challenges_hud : cluielem {

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0x224122f1, Offset: 0xaf8
    // Size: 0x30
    function set_binlocation(localclientnum, value) {
        set_data(localclientnum, "bInLocation", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 1, eflags: 0x0
    // Checksum 0xe6d63e83, Offset: 0xa58
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0xeeee84f6, Offset: 0xcf8
    // Size: 0x30
    function function_1097decc(localclientnum, value) {
        set_data(localclientnum, "showChallenge", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0xee0aad98, Offset: 0xa88
    // Size: 0x30
    function set_challengetext(localclientnum, value) {
        set_data(localclientnum, "challengeText", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0x4480cd71, Offset: 0xac0
    // Size: 0x30
    function set_bottomtext(localclientnum, value) {
        set_data(localclientnum, "bottomText", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0xc55702d6, Offset: 0xbe0
    // Size: 0x30
    function set_rewardhidden(localclientnum, value) {
        set_data(localclientnum, "rewardHidden", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 0, eflags: 0x0
    // Checksum 0x7f1b2ef, Offset: 0x8a8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_dac_challenges_hud");
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 11, eflags: 0x0
    // Checksum 0xb936ef80, Offset: 0x670
    // Size: 0x22c
    function setup_clientfields(*var_be2ad4d, *var_a7896263, var_4866daed, progresscallback, var_5d7491df, var_26df3d64, var_90359ec7, *var_2404f6c6, var_74cf4193, var_e89bb89d, var_2c511278) {
        cluielem::setup_clientfields("zm_dac_challenges_hud");
        cluielem::function_dcb34c80("string", "challengeText", 1);
        cluielem::function_dcb34c80("string", "bottomText", 1);
        cluielem::add_clientfield("bInLocation", 1, 1, "int", progresscallback);
        cluielem::add_clientfield("progress", 1, 1, "counter", var_5d7491df);
        cluielem::add_clientfield("tributeAvailable", 1, 3, "int", var_26df3d64);
        cluielem::add_clientfield("rewardHidden", 1, 1, "int", var_90359ec7);
        cluielem::add_clientfield("challengeFailing", 1, 1, "int", var_2404f6c6);
        cluielem::function_dcb34c80("string", "rewardText", 1);
        cluielem::add_clientfield("challengeTypeText", 1, 1, "int", var_74cf4193);
        cluielem::add_clientfield("showIntelRewardText", 1, 1, "int", var_e89bb89d);
        cluielem::add_clientfield("showChallenge", 8000, 1, "int", var_2c511278);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 1, eflags: 0x0
    // Checksum 0x6e342b61, Offset: 0xb30
    // Size: 0x6c
    function increment_progress(localclientnum) {
        current_val = get_data(localclientnum, "progress");
        new_val = (current_val + 1) % 2;
        set_data(localclientnum, "progress", new_val);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0xf5b9ad06, Offset: 0xba8
    // Size: 0x30
    function set_tributeavailable(localclientnum, value) {
        set_data(localclientnum, "tributeAvailable", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0x721f54eb, Offset: 0xc88
    // Size: 0x30
    function function_c079b98b(localclientnum, value) {
        set_data(localclientnum, "challengeTypeText", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0x75119e12, Offset: 0xcc0
    // Size: 0x30
    function function_c21d733d(localclientnum, value) {
        set_data(localclientnum, "showIntelRewardText", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0x480b95ed, Offset: 0xc18
    // Size: 0x30
    function set_challengefailing(localclientnum, value) {
        set_data(localclientnum, "challengeFailing", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0x9cd84bdb, Offset: 0xc50
    // Size: 0x30
    function function_f63ec96b(localclientnum, value) {
        set_data(localclientnum, "rewardText", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 1, eflags: 0x0
    // Checksum 0xf50b0409, Offset: 0x8d0
    // Size: 0x180
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "challengeText", #"");
        set_data(localclientnum, "bottomText", #"");
        set_data(localclientnum, "bInLocation", 0);
        set_data(localclientnum, "progress", 0);
        set_data(localclientnum, "tributeAvailable", 0);
        set_data(localclientnum, "rewardHidden", 0);
        set_data(localclientnum, "challengeFailing", 0);
        set_data(localclientnum, "rewardText", #"");
        set_data(localclientnum, "challengeTypeText", 0);
        set_data(localclientnum, "showIntelRewardText", 0);
        set_data(localclientnum, "showChallenge", 0);
    }

}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 11, eflags: 0x0
// Checksum 0x8bf26842, Offset: 0x1a8
// Size: 0x1de
function register(var_be2ad4d, var_a7896263, var_4866daed, progresscallback, var_5d7491df, var_26df3d64, var_90359ec7, var_2404f6c6, var_74cf4193, var_e89bb89d, var_2c511278) {
    elem = new czm_dac_challenges_hud();
    [[ elem ]]->setup_clientfields(var_be2ad4d, var_a7896263, var_4866daed, progresscallback, var_5d7491df, var_26df3d64, var_90359ec7, var_2404f6c6, var_74cf4193, var_e89bb89d, var_2c511278);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_dac_challenges_hud"])) {
        level.var_ae746e8f[#"zm_dac_challenges_hud"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_dac_challenges_hud"])) {
        level.var_ae746e8f[#"zm_dac_challenges_hud"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_dac_challenges_hud"])) {
        level.var_ae746e8f[#"zm_dac_challenges_hud"] = array(level.var_ae746e8f[#"zm_dac_challenges_hud"]);
    }
    level.var_ae746e8f[#"zm_dac_challenges_hud"][level.var_ae746e8f[#"zm_dac_challenges_hud"].size] = elem;
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 0, eflags: 0x0
// Checksum 0x51b30347, Offset: 0x390
// Size: 0x34
function register_clientside() {
    elem = new czm_dac_challenges_hud();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 1, eflags: 0x0
// Checksum 0x52b6703d, Offset: 0x3d0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 1, eflags: 0x0
// Checksum 0xbfebfc34, Offset: 0x3f8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 1, eflags: 0x0
// Checksum 0xd50a8d5d, Offset: 0x420
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0x759a3e22, Offset: 0x448
// Size: 0x28
function set_challengetext(localclientnum, value) {
    [[ self ]]->set_challengetext(localclientnum, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0xaa074c66, Offset: 0x478
// Size: 0x28
function set_bottomtext(localclientnum, value) {
    [[ self ]]->set_bottomtext(localclientnum, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0x7599ebb7, Offset: 0x4a8
// Size: 0x28
function set_binlocation(localclientnum, value) {
    [[ self ]]->set_binlocation(localclientnum, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 1, eflags: 0x0
// Checksum 0xbacafb27, Offset: 0x4d8
// Size: 0x1c
function increment_progress(localclientnum) {
    [[ self ]]->increment_progress(localclientnum);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0x54782583, Offset: 0x500
// Size: 0x28
function set_tributeavailable(localclientnum, value) {
    [[ self ]]->set_tributeavailable(localclientnum, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0x875c39a9, Offset: 0x530
// Size: 0x28
function set_rewardhidden(localclientnum, value) {
    [[ self ]]->set_rewardhidden(localclientnum, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0x9670181b, Offset: 0x560
// Size: 0x28
function set_challengefailing(localclientnum, value) {
    [[ self ]]->set_challengefailing(localclientnum, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0x6a6c0d69, Offset: 0x590
// Size: 0x28
function function_f63ec96b(localclientnum, value) {
    [[ self ]]->function_f63ec96b(localclientnum, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0x3d26004a, Offset: 0x5c0
// Size: 0x28
function function_c079b98b(localclientnum, value) {
    [[ self ]]->function_c079b98b(localclientnum, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0xf11b2163, Offset: 0x5f0
// Size: 0x28
function function_c21d733d(localclientnum, value) {
    [[ self ]]->function_c21d733d(localclientnum, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0x22bbf5b3, Offset: 0x620
// Size: 0x28
function function_1097decc(localclientnum, value) {
    [[ self ]]->function_1097decc(localclientnum, value);
}


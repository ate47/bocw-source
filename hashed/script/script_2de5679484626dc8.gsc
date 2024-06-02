// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_dac_challenges_hud;

// Namespace zm_dac_challenges_hud
// Method(s) 16 Total 23
class czm_dac_challenges_hud : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0xc496793f, Offset: 0x7a0
    // Size: 0x44
    function set_binlocation(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "bInLocation", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0xb0c56a01, Offset: 0x688
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0x90edaa50, Offset: 0xa18
    // Size: 0x44
    function function_1097decc(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "showChallenge", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0x7c5a857b, Offset: 0x700
    // Size: 0x44
    function set_challengetext(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "challengeText", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0xdab2a7c2, Offset: 0x750
    // Size: 0x44
    function set_bottomtext(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "bottomText", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0x384811db, Offset: 0x888
    // Size: 0x44
    function set_rewardhidden(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "rewardHidden", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 1, eflags: 0x0
    // Checksum 0x5e8a5310, Offset: 0x6d0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 0, eflags: 0x0
    // Checksum 0xef99595e, Offset: 0x4a8
    // Size: 0x1d4
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_dac_challenges_hud");
        cluielem::function_dcb34c80("string", "challengeText", 1);
        cluielem::function_dcb34c80("string", "bottomText", 1);
        cluielem::add_clientfield("bInLocation", 1, 1, "int");
        cluielem::add_clientfield("progress", 1, 1, "counter");
        cluielem::add_clientfield("tributeAvailable", 1, 3, "int");
        cluielem::add_clientfield("rewardHidden", 1, 1, "int");
        cluielem::add_clientfield("challengeFailing", 1, 1, "int");
        cluielem::function_dcb34c80("string", "rewardText", 1);
        cluielem::add_clientfield("challengeTypeText", 1, 1, "int");
        cluielem::add_clientfield("showIntelRewardText", 1, 1, "int");
        cluielem::add_clientfield("showChallenge", 8000, 1, "int");
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 1, eflags: 0x0
    // Checksum 0x592530e8, Offset: 0x7f0
    // Size: 0x3c
    function increment_progress(player) {
        player clientfield::function_bb878fc3(var_d5213cbb, var_bf9c8c95, "progress");
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0xb01ce6ed, Offset: 0x838
    // Size: 0x44
    function set_tributeavailable(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "tributeAvailable", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0x8f77a92c, Offset: 0x978
    // Size: 0x44
    function function_c079b98b(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "challengeTypeText", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0x406c9474, Offset: 0x9c8
    // Size: 0x44
    function function_c21d733d(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "showIntelRewardText", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0xf5e47e21, Offset: 0x8d8
    // Size: 0x44
    function set_challengefailing(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "challengeFailing", value);
    }

    // Namespace czm_dac_challenges_hud/zm_dac_challenges_hud
    // Params 2, eflags: 0x0
    // Checksum 0x19aa1f94, Offset: 0x928
    // Size: 0x44
    function function_f63ec96b(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "rewardText", value);
    }

}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 0, eflags: 0x0
// Checksum 0x9f83b616, Offset: 0x1b0
// Size: 0x34
function register() {
    elem = new czm_dac_challenges_hud();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x1f0
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x230
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x258
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0xfab373fc, Offset: 0x280
// Size: 0x28
function set_challengetext(player, value) {
    [[ self ]]->set_challengetext(player, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0x9f83e4f1, Offset: 0x2b0
// Size: 0x28
function set_bottomtext(player, value) {
    [[ self ]]->set_bottomtext(player, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0xe02fe9aa, Offset: 0x2e0
// Size: 0x28
function set_binlocation(player, value) {
    [[ self ]]->set_binlocation(player, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 1, eflags: 0x0
// Checksum 0x8e5aa914, Offset: 0x310
// Size: 0x1c
function increment_progress(player) {
    [[ self ]]->increment_progress(player);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0x4aeb2f1e, Offset: 0x338
// Size: 0x28
function set_tributeavailable(player, value) {
    [[ self ]]->set_tributeavailable(player, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0x6e581f97, Offset: 0x368
// Size: 0x28
function set_rewardhidden(player, value) {
    [[ self ]]->set_rewardhidden(player, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0xcae54952, Offset: 0x398
// Size: 0x28
function set_challengefailing(player, value) {
    [[ self ]]->set_challengefailing(player, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0xc6584a80, Offset: 0x3c8
// Size: 0x28
function function_f63ec96b(player, value) {
    [[ self ]]->function_f63ec96b(player, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0x7459eb1b, Offset: 0x3f8
// Size: 0x28
function function_c079b98b(player, value) {
    [[ self ]]->function_c079b98b(player, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0xc7989957, Offset: 0x428
// Size: 0x28
function function_c21d733d(player, value) {
    [[ self ]]->function_c21d733d(player, value);
}

// Namespace zm_dac_challenges_hud/zm_dac_challenges_hud
// Params 2, eflags: 0x0
// Checksum 0xd3cb46ec, Offset: 0x458
// Size: 0x28
function function_1097decc(player, value) {
    [[ self ]]->function_1097decc(player, value);
}


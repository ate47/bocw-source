// Atian COD Tools GSC CW decompiler test
#using script_2440f86f9cd325ac;
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_3faf478d5b0850fe;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using script_f38dc50f0e82277;
#using script_68cdf0ca5df5e;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_77eccc4f;

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 2, eflags: 0x2 linked
// Checksum 0x3be7856d, Offset: 0x330
// Size: 0xa28
function function_93e7ee52(challengetype = 0, name) {
    level.var_8cff5775.var_e5ef2ab4 = level.var_8cff5775.var_e5ef2ab4 & 1 << challengetype;
    level.var_8cff5775.var_a598a835 = undefined;
    level.var_8cff5775.var_a77e4601 = [];
    level flag::clear("challenge_round_spawnOverride");
    var_72ef2333 = gettime();
    namespace_1e25ad94::function_f5f0c0f8("Challenge (" + name + ") starting at: " + var_72ef2333 + " RoundNumber: " + level.var_8cff5775.roundnumber);
    waitframe(1);
    var_af104f33 = function_fa798421(name);
    level namespace_a6ddb172::function_7a0e5387(var_af104f33);
    switch (challengetype) {
    case 1:
        level thread namespace_9fc66ac::announce(62);
        def = namespace_ff8b8430::function_251ee3bd("barreler_zombie");
        [[ def ]]->function_7edd7727(6);
        level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = def;
        def = namespace_ff8b8430::function_251ee3bd("basic_zombie");
        level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = def;
        level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = def;
        break;
    case 2:
        level thread namespace_9fc66ac::announce(62);
        level thread function_d1dc367c();
        def = namespace_ff8b8430::function_251ee3bd("riser_zombie");
        break;
    case 3:
        level thread namespace_9fc66ac::announce(62);
        level thread function_97aae609();
        def = namespace_ff8b8430::function_251ee3bd("smoke_zombie");
        [[ def ]]->function_7edd7727(6);
        break;
    case 4:
        level thread namespace_9fc66ac::announce(62);
        def = namespace_ff8b8430::function_251ee3bd("gladiator_destroyer");
        [[ def ]]->function_7edd7727(6);
        level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = def;
        def = namespace_ff8b8430::function_251ee3bd("gladiator_marauder");
        [[ def ]]->function_7edd7727(6);
        level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = def;
        def = namespace_ff8b8430::function_251ee3bd("basic_zombie");
        for (count = 6; count; count--) {
            level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = def;
        }
        break;
    case 5:
        level thread namespace_9fc66ac::announce(62);
        def = namespace_ff8b8430::function_251ee3bd("ghost_zombie");
        [[ def ]]->function_7edd7727(6);
        level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = def;
        break;
    case 6:
        level thread namespace_9fc66ac::announce(63);
        level thread function_17f47e92();
        break;
    case 7:
        level thread namespace_9fc66ac::announce(62);
        level thread function_9f6da3ff();
        break;
    case 8:
        level thread namespace_9fc66ac::announce(62);
        level thread function_cd4e6a10();
        break;
    case 9:
        level thread namespace_9fc66ac::announce(62);
        def = namespace_ff8b8430::function_251ee3bd("pole_zombie");
        for (count = getplayers().size; count; count--) {
            level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = def;
        }
        [[ def ]]->function_7edd7727(6);
        def = namespace_ff8b8430::function_251ee3bd("basic_zombie");
        level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = def;
        level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = def;
        level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = def;
        level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = def;
        break;
    case 10:
        level thread namespace_9fc66ac::announce(63);
        level thread function_382bc607();
        break;
    case 11:
        level thread namespace_9fc66ac::announce(62);
        level thread function_bd313167();
        break;
    case 12:
        level thread namespace_9fc66ac::announce(63);
        level thread function_c6834d32();
        break;
    }
    var_69d36e5e = struct::get_array(name + "_challenge_loot", "targetname");
    foreach (loot in var_69d36e5e) {
        if (isdefined(loot.script_noteworthy)) {
            items = strtok(loot.script_noteworthy, ";");
            item = items[randomint(items.size)];
            def = namespace_dfc652ee::function_6265bde4(item);
            if (isdefined(def)) {
                pickup = level namespace_dfc652ee::itemspawn(def, loot.origin, undefined, undefined, 1);
                if (isdefined(pickup)) {
                    pickup.origin.pickup = loot.origin;
                    pickup notify(#"hash_2a866f50cc161ca8");
                    if (isdefined(pickup.var_6863e853) && pickup.var_6863e853 !== "glow_yellow") {
                        util::wait_network_frame();
                        pickup namespace_83eb6304::turnofffx(pickup.var_6863e853);
                        pickup namespace_83eb6304::function_3ecfde67("glow_yellow");
                    }
                }
            }
        }
    }
    level notify(#"hash_145c9457d2598ba");
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 0, eflags: 0x2 linked
// Checksum 0xd8e8b015, Offset: 0xd60
// Size: 0x34
function init() {
    level flag::init("challenge_round_spawnOverride", 0);
    main();
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 0, eflags: 0x2 linked
// Checksum 0x90929ca, Offset: 0xda0
// Size: 0x54
function main() {
    level.var_8cff5775.var_e5ef2ab4 = 0;
    level.var_8cff5775.var_a77e4601 = [];
    level.var_8cff5775.var_a598a835 = undefined;
    level flag::clear("challenge_round_spawnOverride");
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 1, eflags: 0x2 linked
// Checksum 0x44a1efc0, Offset: 0xe00
// Size: 0x12c
function function_1a010742(name) {
    switch (name) {
    case #"hash_5902030c93c7d4a4":
        return 4;
    case #"hash_6bf0045164869236":
        return 1;
    case #"graveyard":
        return 2;
    case #"temple":
        return 3;
    case #"hash_abfb6503b2808e1":
        return 5;
    case #"hash_1e5e65a54d1ff38d":
        return 6;
    case #"hash_770543bad41cdc4c":
        return 7;
    case #"hash_5e2252561d847bd5":
        return 8;
    case #"hash_c9ce29f54793399":
        return 9;
    case #"hash_2cde5709e00d6821":
        return 10;
    case #"hash_438a94a49608d53e":
        return 11;
    case #"boss":
        return 12;
        break;
    }
    return 0;
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 1, eflags: 0x2 linked
// Checksum 0x103d0a68, Offset: 0xf38
// Size: 0x14c
function function_fa798421(name) {
    switch (name) {
    case #"hash_5902030c93c7d4a4":
        return 32;
    case #"hash_6bf0045164869236":
        return 42;
    case #"graveyard":
        return 30;
    case #"temple":
        return 31;
    case #"hash_abfb6503b2808e1":
        return 33;
    case #"hash_1e5e65a54d1ff38d":
        return 34;
    case #"hash_770543bad41cdc4c":
        return 35;
    case #"hash_5e2252561d847bd5":
        return 36;
    case #"hash_c9ce29f54793399":
        return 38;
    case #"hash_2cde5709e00d6821":
        return 39;
    case #"hash_438a94a49608d53e":
        return 40;
    case #"boss":
        if (level.var_8cff5775.var_6c58d51 == 0) {
            return 41;
        } else {
            return 43;
        }
        break;
    }
    return undefined;
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 1, eflags: 0x2 linked
// Checksum 0x23aca2f7, Offset: 0x1090
// Size: 0x88
function function_379191c(name) {
    level.var_8cff5775.var_a77e4601 = [];
    challenge = function_1a010742(name);
    if (challenge == 0) {
        return 0;
    }
    if (function_d53627e4(challenge)) {
        return 0;
    }
    level thread function_93e7ee52(challenge, name);
    return 1;
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 1, eflags: 0x2 linked
// Checksum 0xed3f3b1e, Offset: 0x1120
// Size: 0x2a
function function_d53627e4(type) {
    return level.var_8cff5775.var_e5ef2ab4 & 1 << type;
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 0, eflags: 0x2 linked
// Checksum 0x7de6baa2, Offset: 0x1158
// Size: 0x324
function function_d1dc367c() {
    level endon(#"hash_7b68a1d715669022");
    level endon(#"game_over");
    level flag::set("challenge_round_spawnOverride");
    var_a1c7d06b = namespace_ff8b8430::function_251ee3bd("riser_zombie");
    origin = [[ level.var_8cff5775.var_39e3fa99 ]]->function_ffcf1d1();
    level.var_8cff5775.var_ccbf8c33 = [[ level.var_8cff5775.var_39e3fa99 ]]->function_3476ff6d();
    level.var_8cff5775.var_2020337e = 0;
    level.var_8cff5775.var_a598a835 = &function_6876f78c;
    wait(5);
    waves = 5 + 4 * level.var_8cff5775.var_6c58d51;
    var_87b290c9 = level.var_8cff5775.var_ccbf8c33.size;
    level.var_8cff5775.var_13e8f9c9 = "walk";
    players = namespace_7f5aeb59::function_23e1f90f();
    var_58bd90cd = 2;
    while (waves) {
        for (var_ce00d2da = var_87b290c9; var_ce00d2da > 0; var_ce00d2da--) {
            namespace_ff8b8430::function_a6b807ea(var_a1c7d06b, 1, origin, 0, undefined, players[0], undefined, level.var_8cff5775.var_39e3fa99, undefined, undefined, -1);
        }
        while (level.var_8cff5775.var_dcbded2.size || namespace_ec06fe4a::function_9788bacc() > 5) {
            wait(1);
        }
        waves--;
        var_58bd90cd--;
        if (var_58bd90cd <= 0) {
            var_58bd90cd = 2;
            var_87b290c9 = var_87b290c9 - 8;
            if (var_87b290c9 < 20) {
                var_87b290c9 = 20;
            }
            level.var_8cff5775.var_13e8f9c9 = namespace_250e9486::function_bb0817aa(level.var_8cff5775.var_13e8f9c9);
        }
    }
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_4aca7529(0);
    level.var_8cff5775.var_ccbf8c33 = undefined;
    level.var_8cff5775.var_2020337e = undefined;
    level.var_8cff5775.var_a598a835 = undefined;
    level.var_8cff5775.var_13e8f9c9 = undefined;
    level flag::clear("challenge_round_spawnOverride");
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 0, eflags: 0x2 linked
// Checksum 0x69f7768c, Offset: 0x1488
// Size: 0x25c
function function_97aae609() {
    level endon(#"hash_7b68a1d715669022");
    level endon(#"game_over");
    level flag::set("challenge_round_spawnOverride");
    var_94f3b914 = namespace_ff8b8430::function_251ee3bd("smoke_zombie");
    origin = [[ level.var_8cff5775.var_39e3fa99 ]]->getcenter();
    struct = struct::get([[ level.var_8cff5775.var_39e3fa99 ]]->getname() + "_challenge", "targetname");
    level.var_8cff5775.var_6d072a34 = isdefined(struct) ? struct : origin;
    level.var_8cff5775.var_a598a835 = &function_29ff6b1;
    wait(5);
    for (waves = 3 + 3 * level.var_8cff5775.var_6c58d51; waves; waves--) {
        function_d1603826(var_94f3b914);
        wait(10);
        for (regular = randomintrange(5, 15); regular; regular--) {
            spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_21d1be3d(function_7802d126());
            namespace_8c04284b::function_24058346(spot);
        }
        wait(10);
        while (level.var_8cff5775.var_dcbded2.size || namespace_ec06fe4a::function_9788bacc() > 5) {
            wait(1);
        }
    }
    level flag::clear("challenge_round_spawnOverride");
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 0, eflags: 0x2 linked
// Checksum 0xd218a70a, Offset: 0x16f0
// Size: 0x6a
function function_7802d126() {
    roll = randomint(100);
    if (roll > 75) {
        return "top";
    }
    if (roll > 55) {
        return "left";
    }
    if (roll > 25) {
        return "right";
    }
    return "bottom";
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 2, eflags: 0x2 linked
// Checksum 0xd49f23cf, Offset: 0x1768
// Size: 0x6c
function function_d1603826(var_94f3b914, var_9e20508c = 15) {
    namespace_ff8b8430::function_a6b807ea(var_94f3b914, var_9e20508c, level.var_8cff5775.var_6d072a34.origin, 0, undefined, undefined, undefined, level.var_8cff5775.var_39e3fa99);
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 0, eflags: 0x2 linked
// Checksum 0x73fafd42, Offset: 0x17e0
// Size: 0x84
function function_6876f78c() {
    spot = level.var_8cff5775.var_2020337e;
    level.var_8cff5775.var_2020337e++;
    if (level.var_8cff5775.var_2020337e > level.var_8cff5775.var_ccbf8c33.size) {
        level.var_8cff5775.var_2020337e = 0;
    }
    return level.var_8cff5775.var_ccbf8c33[spot];
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 0, eflags: 0x2 linked
// Checksum 0x6ca3ed9f, Offset: 0x1870
// Size: 0x16
function function_29ff6b1() {
    return level.var_8cff5775.var_6d072a34;
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 0, eflags: 0x2 linked
// Checksum 0xf50ed1fc, Offset: 0x1890
// Size: 0x2ac
function function_17f47e92() {
    var_83c583a9 = [[ level.var_8cff5775.var_39e3fa99 ]]->function_c892290a();
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(16 + 8 * getplayers().size);
    if (!isdefined(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = [];
    } else if (!isarray(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = array(level.var_8cff5775.var_a77e4601);
    }
    level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = level.var_8cff5775.var_65a70dc;
    def = namespace_ff8b8430::function_251ee3bd("crawler_zombie");
    [[ def ]]->function_7edd7727(6);
    level.var_8cff5775.var_6d072a34 = struct::get([[ level.var_8cff5775.var_39e3fa99 ]]->getname() + "_challenge", "targetname");
    if (!isdefined(level.var_8cff5775.var_d15a522)) {
        level.var_8cff5775.var_d15a522 = namespace_ff8b8430::function_d7c5adee("blight_father");
    }
    var_f8ff628e = namespace_ff8b8430::function_db55a448(level.var_8cff5775.var_d15a522, level.var_8cff5775.var_6d072a34.origin);
    /#
        if (is_true(level.var_a095060b)) {
            var_f8ff628e thread function_3b3bb5c(0.1, 600);
        }
    #/
    if (isdefined(var_f8ff628e)) {
        var_f8ff628e waittill(#"death");
    }
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(var_83c583a9);
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 0, eflags: 0x2 linked
// Checksum 0xb4a7fb03, Offset: 0x1b48
// Size: 0x192
function function_201a7d58() {
    spawnloc = spawnstruct();
    if (randomint(100) < 60) {
        spawnloc.origin.spawnloc = [[ level.var_8cff5775.var_39e3fa99 ]]->function_70fb5745().origin + vectorscale((0, 0, 1), 1600);
        spawnloc.angles.spawnloc = [[ level.var_8cff5775.var_39e3fa99 ]]->function_70fb5745().angles;
    } else {
        players = getplayers();
        if (players.size) {
            player = players[randomint(players.size)];
            spawnloc.origin.spawnloc = player.origin + vectorscale((0, 0, 1), 1600);
            spawnloc.angles.spawnloc = player.angles;
        } else {
            spawnloc.origin.spawnloc = [[ level.var_8cff5775.var_39e3fa99 ]]->function_70fb5745().origin + vectorscale((0, 0, 1), 1600);
            spawnloc.angles.spawnloc = [[ level.var_8cff5775.var_39e3fa99 ]]->function_70fb5745().angles;
        }
    }
    return spawnloc;
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 0, eflags: 0x2 linked
// Checksum 0xfd8296f5, Offset: 0x1ce8
// Size: 0x1a6
function function_9f6da3ff() {
    level endon(#"game_over");
    level flag::set("challenge_round_spawnOverride");
    var_94f3b914 = namespace_ff8b8430::function_251ee3bd("meatball_large");
    [[ var_94f3b914 ]]->function_7edd7727(6);
    wait(5);
    origin = [[ level.var_8cff5775.var_39e3fa99 ]]->function_ffcf1d1();
    waves = 4 + getplayers().size;
    level.var_8cff5775.var_a598a835 = &function_201a7d58;
    while (waves) {
        if (level flag::get("doa_round_over")) {
            break;
        }
        namespace_ff8b8430::function_a6b807ea(var_94f3b914, 6, origin, 0, undefined, undefined, undefined, level.var_8cff5775.var_39e3fa99);
        result = undefined;
        result = level waittilltimeout(30, #"hash_50b71da3df2f473f");
        waves--;
    }
    level flag::clear("challenge_round_spawnOverride");
    level.var_8cff5775.var_a598a835 = undefined;
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 0, eflags: 0x2 linked
// Checksum 0x70dd360b, Offset: 0x1e98
// Size: 0x51c
function function_cd4e6a10() {
    level endon(#"hash_7b68a1d715669022");
    level endon(#"game_over");
    var_83c583a9 = [[ level.var_8cff5775.var_39e3fa99 ]]->function_c892290a();
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(24);
    var_94f3b914 = namespace_ff8b8430::function_251ee3bd("wolf_ghosthound");
    [[ var_94f3b914 ]]->function_7edd7727(6);
    if (!isdefined(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = [];
    } else if (!isarray(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = array(level.var_8cff5775.var_a77e4601);
    }
    level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = var_94f3b914;
    var_94f3b914 = namespace_ff8b8430::function_251ee3bd("riser_zombie");
    if (!isdefined(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = [];
    } else if (!isarray(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = array(level.var_8cff5775.var_a77e4601);
    }
    level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = var_94f3b914;
    if (!isdefined(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = [];
    } else if (!isarray(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = array(level.var_8cff5775.var_a77e4601);
    }
    level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = var_94f3b914;
    if (!isdefined(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = [];
    } else if (!isarray(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = array(level.var_8cff5775.var_a77e4601);
    }
    level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = level.var_8cff5775.var_65a70dc;
    level waittill(#"hash_c57f3f18a005e45");
    origin = [[ level.var_8cff5775.var_39e3fa99 ]]->function_ffcf1d1();
    if (!isdefined(level.var_8cff5775.var_ce4f409c)) {
        level.var_8cff5775.var_ce4f409c = namespace_ff8b8430::function_d7c5adee("werewolf");
    }
    var_f8ff628e = namespace_ff8b8430::function_db55a448(level.var_8cff5775.var_ce4f409c, origin);
    if (isdefined(var_f8ff628e)) {
        level namespace_a6ddb172::function_7a0e5387(37);
        level thread namespace_9fc66ac::announce(63);
        /#
            if (is_true(level.var_a095060b)) {
                var_f8ff628e thread function_3b3bb5c(0.1, 1500);
            }
        #/
        var_f8ff628e waittill(#"death");
    }
    namespace_8c04284b::function_c8462f96();
    level namespace_ec06fe4a::function_de70888a();
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(var_83c583a9);
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 0, eflags: 0x2 linked
// Checksum 0xc266af81, Offset: 0x23c0
// Size: 0x3c0
function function_bd313167() {
    level endon(#"hash_7b68a1d715669022");
    level endon(#"game_over");
    var_83c583a9 = [[ level.var_8cff5775.var_39e3fa99 ]]->function_c892290a();
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(28);
    var_94f3b914 = namespace_ff8b8430::function_251ee3bd("brutus");
    [[ var_94f3b914 ]]->function_7edd7727(6);
    if (!isdefined(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = [];
    } else if (!isarray(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = array(level.var_8cff5775.var_a77e4601);
    }
    level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = var_94f3b914;
    if (!isdefined(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = [];
    } else if (!isarray(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = array(level.var_8cff5775.var_a77e4601);
    }
    level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = level.var_8cff5775.var_65a70dc;
    if (!isdefined(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = [];
    } else if (!isarray(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = array(level.var_8cff5775.var_a77e4601);
    }
    level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = level.var_8cff5775.var_65a70dc;
    if (!isdefined(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = [];
    } else if (!isarray(level.var_8cff5775.var_a77e4601)) {
        level.var_8cff5775.var_a77e4601 = array(level.var_8cff5775.var_a77e4601);
    }
    level.var_8cff5775.var_a77e4601[level.var_8cff5775.var_a77e4601.size] = level.var_8cff5775.var_65a70dc;
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(var_83c583a9);
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 0, eflags: 0x2 linked
// Checksum 0x497de75, Offset: 0x2788
// Size: 0x3f0
function function_c6834d32() {
    origin = [[ level.var_8cff5775.var_39e3fa99 ]]->getcenter();
    struct = struct::get([[ level.var_8cff5775.var_39e3fa99 ]]->getname() + "_challenge", "targetname");
    level.var_8cff5775.var_6d072a34 = isdefined(struct) ? struct : origin;
    if (!isdefined(level.var_8cff5775.var_b52c4a7b)) {
        level.var_8cff5775.var_b52c4a7b = namespace_ff8b8430::function_d7c5adee("margwa");
    }
    var_f89c12f1 = [];
    if (!isdefined(var_f89c12f1)) {
        var_f89c12f1 = [];
    } else if (!isarray(var_f89c12f1)) {
        var_f89c12f1 = array(var_f89c12f1);
    }
    var_f89c12f1[var_f89c12f1.size] = namespace_ff8b8430::function_db55a448(level.var_8cff5775.var_b52c4a7b, level.var_8cff5775.var_6d072a34.origin);
    var_58d08b46 = math::clamp(level.var_8cff5775.var_6c58d51, 0, 6);
    if (var_58d08b46 > 0) {
        if (!isdefined(level.var_8cff5775.var_de4248da)) {
            level.var_8cff5775.var_de4248da = array(namespace_ff8b8430::function_d7c5adee("margwa"), namespace_ff8b8430::function_d7c5adee("blight_father"), namespace_ff8b8430::function_d7c5adee("werewolf"), namespace_ff8b8430::function_d7c5adee("gegenees"));
        }
        while (var_58d08b46) {
            if (!isdefined(var_f89c12f1)) {
                var_f89c12f1 = [];
            } else if (!isarray(var_f89c12f1)) {
                var_f89c12f1 = array(var_f89c12f1);
            }
            var_f89c12f1[var_f89c12f1.size] = namespace_ff8b8430::function_db55a448(level.var_8cff5775.var_de4248da[randomint(level.var_8cff5775.var_de4248da.size)], [[ level.var_8cff5775.var_39e3fa99 ]]->function_70fb5745().origin);
            var_58d08b46--;
        }
    }
    /#
        foreach (boss in var_f89c12f1) {
            if (is_true(level.var_a095060b)) {
                boss thread function_3b3bb5c(0.1, 600);
            }
        }
    #/
    while (1) {
        function_1eaaceab(var_f89c12f1);
        if (var_f89c12f1.size == 0) {
            break;
        }
        wait(2);
    }
}

// Namespace namespace_77eccc4f/namespace_77eccc4f
// Params 0, eflags: 0x2 linked
// Checksum 0xc559745f, Offset: 0x2b80
// Size: 0x1a4
function function_382bc607() {
    origin = [[ level.var_8cff5775.var_39e3fa99 ]]->getcenter();
    struct = struct::get([[ level.var_8cff5775.var_39e3fa99 ]]->getname() + "_challenge", "targetname");
    level.var_8cff5775.var_6d072a34 = isdefined(struct) ? struct : origin;
    if (!isdefined(level.var_8cff5775.var_59bbfb44)) {
        level.var_8cff5775.var_59bbfb44 = namespace_ff8b8430::function_d7c5adee("gegenees");
    }
    var_f8ff628e = namespace_ff8b8430::function_db55a448(level.var_8cff5775.var_59bbfb44, level.var_8cff5775.var_6d072a34.origin);
    if (isdefined(var_f8ff628e)) {
        /#
            if (is_true(level.var_a095060b)) {
                var_f8ff628e thread function_3b3bb5c(0.1, 600);
            }
        #/
        var_f8ff628e waittill(#"death");
    }
    namespace_8c04284b::function_c8462f96();
    level namespace_ec06fe4a::function_de70888a();
}


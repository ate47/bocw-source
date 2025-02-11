#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\compass;
#using scripts\core_common\flag_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;

#namespace mp_dune;

// Namespace mp_dune/mp_dune
// Params 0, eflags: 0x1
// Checksum 0x79812ac4, Offset: 0x388
// Size: 0x74
function autoexec function_7defddbd() {
    str_gametype = util::get_game_type();
    if (str_gametype === #"vip" || str_gametype === #"zsurvival") {
        setgametypesetting(#"hash_3a15393c2e90e121", 1);
    }
}

// Namespace mp_dune/level_init
// Params 1, eflags: 0x20
// Checksum 0xfeb2764c, Offset: 0x408
// Size: 0x1c4
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("toplayer", "" + #"hash_5e463693d1dbcf1c", 1, 1, "int");
    level thread function_7f639bc1();
    function_19c4a6dc();
    load::main();
    compass::setupminimap("");
    level.var_d41618f6 = &function_53147f52;
    level.var_adc813e2 = &function_10eb2d4b;
    level.var_a93e4b60 = &function_53147f52;
    level.var_be43874e = &function_10eb2d4b;
    if (getdvarint(#"hash_3c861ebd76fd24eb", 0) != 0) {
        level.var_a0b75cfd = 1;
    }
    level.var_4c887efb = spawnstruct();
    level.var_4c887efb.origin = (0, -50000, -2500);
    level.var_4c887efb.angles = (0, 0, 0);
    function_e8fa58f2();
    level callback::add_callback(#"hash_540f54ade63017ea", &function_54d03b3c);
}

// Namespace mp_dune/mp_dune
// Params 1, eflags: 0x4
// Checksum 0xe5f7cc52, Offset: 0x5d8
// Size: 0x2c
function private function_54d03b3c(*eventstruct) {
    setgametypesetting(#"hash_3a15393c2e90e121", 0);
}

// Namespace mp_dune/mp_dune
// Params 0, eflags: 0x0
// Checksum 0x9db9c779, Offset: 0x610
// Size: 0x21c
function function_19c4a6dc() {
    str_gametype = function_be90acca(util::get_game_type());
    if (str_gametype === "zsurvival") {
        clientfield::register("toplayer", "" + #"hash_732e76418cbd8453", 1, 1, "int");
        level.var_b8c0d7a2 = 5000;
        level.var_e6b49685 = 3000;
        setdvar(#"hash_7b06b8037c26b99b", 200);
        a_models = getentarray("dune_fav", "targetname");
        foreach (ent in a_models) {
            ent connectpaths();
            ent ghost();
            ent delete();
        }
        hidemiscmodels("dune_fav");
        level thread survival_fire_hazard();
        return;
    }
    hidemiscmodels("magicbox_zbarrier");
    hidemiscmodels("sv_doorblockers");
}

// Namespace mp_dune/mp_dune
// Params 0, eflags: 0x0
// Checksum 0xd2767b31, Offset: 0x838
// Size: 0xac
function survival_fire_hazard() {
    var_89a60e8a = struct::get("survival_fire_hazard");
    if (isdefined(var_89a60e8a)) {
        var_8248ec4d = spawn("trigger_radius", var_89a60e8a.origin, 0, int(var_89a60e8a.radius), int(var_89a60e8a.height));
        var_8248ec4d callback::on_trigger(&function_3867e5d3);
    }
}

// Namespace mp_dune/mp_dune
// Params 1, eflags: 0x0
// Checksum 0x4acdf402, Offset: 0x8f0
// Size: 0x8c
function function_3867e5d3(eventstruct) {
    player = eventstruct.activator;
    if (!isplayer(player) || player flag::get(#"hash_1e29d85de876dce8")) {
        return;
    }
    player.var_bb61ee3d = self;
    player flag::set(#"hash_1e29d85de876dce8");
}

// Namespace mp_dune/mp_dune
// Params 0, eflags: 0x0
// Checksum 0x689a3d24, Offset: 0x988
// Size: 0x184
function function_e8fa58f2() {
    hidemiscmodels("sv_holdout_aetherfungus");
    hidemiscmodels("defend_corpses_1");
    hidemiscmodels("defend_corpses_2");
    hidemiscmodels("defend_corpses_3");
    hidemiscmodels("hvt_mechz_corpses");
    hidemiscmodels("hvt_mimic_corpses");
    hidemiscmodels("hvt_raz_corpses");
    hidemiscmodels("hvt_steiner_corpses");
    hidemiscmodels("payload_teleport_corpses");
    hidemiscmodels("payload_noteleport_corpses");
    hidemiscmodels("retrieval_corpses");
    hidemiscmodels("secure_corpses");
    hidemiscmodels("hordehunt_corpses_1");
    hidemiscmodels("hordehunt_corpses_2");
    hidemiscmodels("fishing_setup");
    hidemiscmodels("transport_corpses");
}

// Namespace mp_dune/mp_dune
// Params 0, eflags: 0x0
// Checksum 0x13131cb3, Offset: 0xb18
// Size: 0x21c
function function_7f639bc1() {
    level endon(#"game_ended");
    var_f7d8aaa7 = strtok("koth10v10 vip conf10v10 dom10v10 tdm10v10 war12v12 zonslaught zonslaught_lotto_loadouts zsurvival", " ");
    gametype = util::get_game_type();
    if (!isinarray(var_f7d8aaa7, gametype)) {
        array::delete_all(getentarray("12v12_bounds", "targetname"));
        hidemiscmodels("12v12_bounds");
        hidemiscmodels("pole_turret");
        hidemiscmodels("zipline_flags");
        callback::function_900862de(&function_900862de);
        callback::function_be4cb7fe(&function_be4cb7fe);
        level flag::wait_till("first_player_spawned");
        return;
    } else {
        level.var_633063a5 = 1;
    }
    array::run_all(getentarray("12v12_navmesh_cutout", "targetname"), &disconnectpaths, undefined, 0);
    array::delete_all(getentarray("6v6_bounds", "targetname"));
    hidemiscmodels("6v6_bounds");
    level flag::wait_till("first_player_spawned");
}

// Namespace mp_dune/mp_dune
// Params 1, eflags: 0x0
// Checksum 0x6afea711, Offset: 0xd40
// Size: 0x44
function function_53147f52(player) {
    player clientfield::set_to_player("" + #"hash_5e463693d1dbcf1c", 1);
}

// Namespace mp_dune/mp_dune
// Params 1, eflags: 0x0
// Checksum 0x680f9e1d, Offset: 0xd90
// Size: 0xbc
function function_10eb2d4b(player) {
    str_gametype = function_be90acca(util::get_game_type());
    if (str_gametype === "zsurvival") {
        player clientfield::set_to_player("" + #"hash_732e76418cbd8453", 1);
        return;
    }
    player clientfield::set_to_player("" + #"hash_5e463693d1dbcf1c", 0);
}

// Namespace mp_dune/mp_dune
// Params 0, eflags: 0x0
// Checksum 0x5304fc15, Offset: 0xe58
// Size: 0x1c
function function_900862de() {
    hidemiscmodels("6v6_bounds");
}

// Namespace mp_dune/mp_dune
// Params 0, eflags: 0x0
// Checksum 0x922da5c0, Offset: 0xe80
// Size: 0x1c
function function_be4cb7fe() {
    showmiscmodels("6v6_bounds");
}


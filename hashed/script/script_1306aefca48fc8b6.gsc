// Atian COD Tools GSC CW decompiler test
#using script_dc59353021baee1;
#using script_746267f0669c40ae;
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
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
#using script_73ad7687b437e468;
#using script_48e04a393ec6d855;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_c004634e;

// Namespace namespace_c004634e/namespace_c004634e
// Params 0, eflags: 0x2 linked
// Checksum 0x1cac91e2, Offset: 0x5a0
// Size: 0xda
function init() {
    level.var_e1a08718 = &function_1210f64b;
    level.var_21910540 = &function_1648f5a1;
    level.var_8efaa0c8 = &function_a4c07e18;
    level.var_84c76431 = &function_d5a0313a;
    level.var_8cff5775.var_e4d7094b = [];
    level.var_8cff5775.var_4cdaff39 = [];
    level.var_8cff5775.var_830f8412 = [];
    level.var_8cff5775.var_fa21a3aa = 0;
    level.var_8cff5775.var_f23e2931 = 0;
    level.var_8cff5775.var_f5f2b4e8 = 0;
}

// Namespace namespace_c004634e/namespace_c004634e
// Params 1, eflags: 0x0
// Checksum 0x22835c9, Offset: 0x688
// Size: 0x5a
function function_4e886036(room) {
    if (isdefined(level.var_8cff5775.var_e4d7094b[room.var_a1152600.var_94ac342f])) {
        return level.var_8cff5775.var_e4d7094b[room.var_a1152600.var_94ac342f];
    }
}

// Namespace namespace_c004634e/namespace_c004634e
// Params 2, eflags: 0x2 linked
// Checksum 0x6e549048, Offset: 0x6f0
// Size: 0x134
function function_4f9f7687(var_a3cec0fb, iconname) {
    if (!isinarray(level.var_8cff5775.var_830f8412, var_a3cec0fb)) {
        if (!isdefined(level.var_8cff5775.var_830f8412)) {
            level.var_8cff5775.var_830f8412 = [];
        } else if (!isarray(level.var_8cff5775.var_830f8412)) {
            level.var_8cff5775.var_830f8412 = array(level.var_8cff5775.var_830f8412);
        }
        level.var_8cff5775.var_830f8412[level.var_8cff5775.var_830f8412.size] = var_a3cec0fb;
        level.var_8cff5775.var_4cdaff39[var_a3cec0fb] = 0;
        level.var_8cff5775.var_e4d7094b[var_a3cec0fb] = iconname;
    }
    namespace_f27a9d0d::function_2ff463e2(var_a3cec0fb);
}

// Namespace namespace_c004634e/namespace_c004634e
// Params 1, eflags: 0x2 linked
// Checksum 0x36b0a445, Offset: 0x830
// Size: 0x47c
function function_1648f5a1(name = "") {
    switch (name) {
    case #"hash_e0c29e984933643":
        function_4f9f7687("hall_dirt_2iflogger_exit_1024x1024", "doa_hud_icon_dungeon_hall_straight");
        function_4f9f7687("room_2b_exit_1024x1024", "doa_hud_icon_dungeon_room_octagon");
        function_4f9f7687("room_5_exit_1024x1024", "doa_hud_icon_dungeon_room_octagon");
    case #"cellar":
        function_4f9f7687("room_1_exit_1024x1024", "doa_hud_icon_dungeon_room_square");
        function_4f9f7687("room_2i_exit_1024x1024", "doa_hud_icon_dungeon_room_square");
        function_4f9f7687("room_3_exit_1024x1024", "doa_hud_icon_dungeon_room_square");
        function_4f9f7687("room_4_exit_1024x1024", "doa_hud_icon_dungeon_room_square");
        function_4f9f7687("hall_dirt_2_exit_ver1_1024x1024", "doa_hud_icon_dungeon_hall_straight");
        function_4f9f7687("hall_dirt_2_exit_ver2_1024x1024", "doa_hud_icon_dungeon_hall_straight");
        function_4f9f7687("hall_dirt_2l_exit_ver1_1024x1024", "doa_hud_icon_dungeon_hall_right_angle");
        function_4f9f7687("hall_dirt_2l_exit_ver2_1024x1024", "doa_hud_icon_dungeon_hall_right_angle");
        function_4f9f7687("hall_dirt_3_exit_ver1_1024x1024", "doa_hud_icon_dungeon_hall_inverse_t");
        function_4f9f7687("hall_dirt_4_exit_ver1_1024x1024", "doa_hud_icon_dungeon_hall_plus");
        break;
    case #"hash_defdefdefdefdef0":
        function_4f9f7687("room_1_exit_1024x1024", "doa_hud_icon_dungeon_room_square");
        function_4f9f7687("room_1b_exit_1024x1024", "doa_hud_icon_dungeon_room_1b");
        function_4f9f7687("room_2b_exit_1024x1024", "doa_hud_icon_dungeon_room_octagon");
        function_4f9f7687("room_2i_exit_1024x1024", "doa_hud_icon_dungeon_room_square");
        function_4f9f7687("room_2l_exit_1024x1024", "doa_hud_icon_dungeon_room_square");
        function_4f9f7687("room_3_exit_1024x1024", "doa_hud_icon_dungeon_room_square");
        function_4f9f7687("room_3b_exit_1024x1024", "doa_hud_icon_dungeon_room_square");
        function_4f9f7687("room_4_exit_1024x1024", "doa_hud_icon_dungeon_room_square");
        function_4f9f7687("room_5_exit_1024x1024", "doa_hud_icon_dungeon_room_octagon");
        function_4f9f7687("hall_2i_exit_1024x1024", "doa_hud_icon_dungeon_hall_straight");
        function_4f9f7687("hall_2ii_exit_1024x1024", "doa_hud_icon_dungeon_hall_2ii");
        function_4f9f7687("hall_2ilava_exit_1024x1024", "doa_hud_icon_dungeon_hall_straight");
        function_4f9f7687("hall_2iflogger_exit_1024x1024", "doa_hud_icon_dungeon_hall_straight");
        function_4f9f7687("hall_2l_exit_1024x1024", "doa_hud_icon_dungeon_hall_right_angle");
        function_4f9f7687("hall_3_exit_1024x1024", "doa_hud_icon_dungeon_hall_inverse_t");
        function_4f9f7687("hall_3b_exit_1024x1024", "doa_hud_icon_dungeon_room_square");
        function_4f9f7687("hall_4_exit_1024x1024", "doa_hud_icon_dungeon_hall_plus");
        function_4f9f7687("hall_4l_exit_1024x1024", "doa_hud_icon_dungeon_hall_diamond");
        break;
    }
    function_ed9ae881(name);
    function_18276de3(name);
}

// Namespace namespace_c004634e/namespace_c004634e
// Params 1, eflags: 0x2 linked
// Checksum 0x8513105f, Offset: 0xcb8
// Size: 0xcd0
function function_1a3f9fe1(var_27253eb5) {
    level.var_e1daf6fe[0] = [];
    level.var_e1daf6fe[1] = array({#orientation:3, #var_fef51edb:"room_1_exit_1024x1024"});
    level.var_e1daf6fe[2] = array({#orientation:2, #var_fef51edb:"room_1_exit_1024x1024"});
    level.var_e1daf6fe[4] = array({#orientation:1, #var_fef51edb:"room_1_exit_1024x1024"});
    level.var_e1daf6fe[8] = array({#orientation:0, #var_fef51edb:"room_1_exit_1024x1024"});
    if (is_true(var_27253eb5)) {
        level.var_e1daf6fe[10] = array({#orientation:0, #var_fef51edb:"room_2i_exit_1024x1024"}, {#orientation:0, #var_fef51edb:"room_2b_exit_1024x1024"});
        level.var_e1daf6fe[5] = array({#orientation:1, #var_fef51edb:"room_2i_exit_1024x1024"}, {#orientation:1, #var_fef51edb:"room_2b_exit_1024x1024"});
    } else {
        level.var_e1daf6fe[10] = array({#orientation:0, #var_fef51edb:"room_2i_exit_1024x1024"});
        level.var_e1daf6fe[5] = array({#orientation:1, #var_fef51edb:"room_2i_exit_1024x1024"});
    }
    level.var_e1daf6fe[9] = array({#orientation:3, #var_fef51edb:"hall_dirt_2l_exit_ver1_1024x1024"});
    level.var_e1daf6fe[3] = array({#orientation:2, #var_fef51edb:"hall_dirt_2l_exit_ver1_1024x1024"});
    level.var_e1daf6fe[6] = array({#orientation:1, #var_fef51edb:"hall_dirt_2l_exit_ver2_1024x1024"});
    level.var_e1daf6fe[12] = array({#orientation:0, #var_fef51edb:"hall_dirt_2l_exit_ver2_1024x1024"});
    level.var_e1daf6fe[11] = array({#orientation:3, #var_fef51edb:"room_3_exit_1024x1024"});
    level.var_e1daf6fe[7] = array({#orientation:2, #var_fef51edb:"room_3_exit_1024x1024"});
    level.var_e1daf6fe[14] = array({#orientation:1, #var_fef51edb:"room_3_exit_1024x1024"});
    level.var_e1daf6fe[13] = array({#orientation:0, #var_fef51edb:"room_3_exit_1024x1024"});
    if (is_true(var_27253eb5)) {
        level.var_e1daf6fe[15] = array({#orientation:0, #var_fef51edb:"room_4_exit_1024x1024"}, {#orientation:0, #var_fef51edb:"room_5_exit_1024x1024"}, {#orientation:0, #var_fef51edb:"room_5_exit_1024x1024"});
    } else {
        level.var_e1daf6fe[15] = array({#orientation:0, #var_fef51edb:"room_4_exit_1024x1024"});
    }
    level.var_86fb599e[0] = [];
    level.var_86fb599e[1] = array({#orientation:3, #var_fef51edb:"hall_1_exit_1024x1024"});
    level.var_86fb599e[2] = array({#orientation:2, #var_fef51edb:"hall_1_exit_1024x1024"});
    level.var_86fb599e[4] = array({#orientation:1, #var_fef51edb:"hall_1_exit_1024x1024"});
    level.var_86fb599e[8] = array({#orientation:0, #var_fef51edb:"hall_1_exit_1024x1024"});
    if (is_true(var_27253eb5)) {
        level.var_86fb599e[10] = array({#orientation:0, #var_fef51edb:"hall_dirt_2_exit_ver1_1024x1024"}, {#orientation:0, #var_fef51edb:"hall_dirt_2_exit_ver2_1024x1024"}, {#orientation:0, #var_fef51edb:"hall_dirt_2iflogger_exit_1024x1024"});
        level.var_86fb599e[5] = array({#orientation:1, #var_fef51edb:"hall_dirt_2_exit_ver1_1024x1024"}, {#orientation:1, #var_fef51edb:"hall_dirt_2_exit_ver2_1024x1024"}, {#orientation:1, #var_fef51edb:"hall_dirt_2iflogger_exit_1024x1024"});
    } else {
        level.var_86fb599e[10] = array({#orientation:0, #var_fef51edb:"hall_dirt_2_exit_ver1_1024x1024"}, {#orientation:0, #var_fef51edb:"hall_dirt_2_exit_ver2_1024x1024"});
        level.var_86fb599e[5] = array({#orientation:1, #var_fef51edb:"hall_dirt_2_exit_ver1_1024x1024"}, {#orientation:1, #var_fef51edb:"hall_dirt_2_exit_ver2_1024x1024"});
    }
    level.var_86fb599e[9] = array({#orientation:3, #var_fef51edb:"hall_dirt_2l_exit_ver1_1024x1024"}, {#orientation:3, #var_fef51edb:"hall_dirt_2l_exit_ver2_1024x1024"});
    level.var_86fb599e[3] = array({#orientation:2, #var_fef51edb:"hall_dirt_2l_exit_ver1_1024x1024"}, {#orientation:2, #var_fef51edb:"hall_dirt_2l_exit_ver2_1024x1024"});
    level.var_86fb599e[6] = array({#orientation:1, #var_fef51edb:"hall_dirt_2l_exit_ver1_1024x1024"}, {#orientation:1, #var_fef51edb:"hall_dirt_2l_exit_ver2_1024x1024"});
    level.var_86fb599e[12] = array({#orientation:0, #var_fef51edb:"hall_dirt_2l_exit_ver1_1024x1024"}, {#orientation:0, #var_fef51edb:"hall_dirt_2l_exit_ver2_1024x1024"});
    level.var_86fb599e[11] = array({#orientation:3, #var_fef51edb:"hall_dirt_3_exit_ver1_1024x1024"});
    level.var_86fb599e[7] = array({#orientation:2, #var_fef51edb:"hall_dirt_3_exit_ver1_1024x1024"});
    level.var_86fb599e[14] = array({#orientation:1, #var_fef51edb:"hall_dirt_3_exit_ver1_1024x1024"});
    level.var_86fb599e[13] = array({#orientation:0, #var_fef51edb:"hall_dirt_3_exit_ver1_1024x1024"});
    level.var_86fb599e[15] = array({#orientation:0, #var_fef51edb:"hall_dirt_4_exit_ver1_1024x1024"});
}

// Namespace namespace_c004634e/namespace_c004634e
// Params 0, eflags: 0x2 linked
// Checksum 0xa28bdef6, Offset: 0x1990
// Size: 0xd10
function function_9df20e11() {
    level.var_e1daf6fe[0] = [];
    level.var_e1daf6fe[1] = array({#orientation:3, #var_fef51edb:"room_1_exit_1024x1024"}, {#orientation:3, #var_fef51edb:"room_1b_exit_1024x1024"});
    level.var_e1daf6fe[2] = array({#orientation:2, #var_fef51edb:"room_1_exit_1024x1024"}, {#orientation:2, #var_fef51edb:"room_1b_exit_1024x1024"});
    level.var_e1daf6fe[4] = array({#orientation:1, #var_fef51edb:"room_1_exit_1024x1024"}, {#orientation:1, #var_fef51edb:"room_1b_exit_1024x1024"});
    level.var_e1daf6fe[8] = array({#orientation:0, #var_fef51edb:"room_1_exit_1024x1024"}, {#orientation:0, #var_fef51edb:"room_1b_exit_1024x1024"});
    level.var_e1daf6fe[10] = array({#orientation:0, #var_fef51edb:"room_2i_exit_1024x1024"}, {#orientation:0, #var_fef51edb:"room_2b_exit_1024x1024"});
    level.var_e1daf6fe[5] = array({#orientation:1, #var_fef51edb:"room_2i_exit_1024x1024"}, {#orientation:1, #var_fef51edb:"room_2b_exit_1024x1024"});
    level.var_e1daf6fe[9] = array({#orientation:3, #var_fef51edb:"room_2l_exit_1024x1024"});
    level.var_e1daf6fe[3] = array({#orientation:2, #var_fef51edb:"room_2l_exit_1024x1024"});
    level.var_e1daf6fe[6] = array({#orientation:1, #var_fef51edb:"room_2l_exit_1024x1024"});
    level.var_e1daf6fe[12] = array({#orientation:0, #var_fef51edb:"room_2l_exit_1024x1024"});
    level.var_e1daf6fe[11] = array({#orientation:3, #var_fef51edb:"room_3_exit_1024x1024"}, {#orientation:3, #var_fef51edb:"room_3b_exit_1024x1024"});
    level.var_e1daf6fe[7] = array({#orientation:2, #var_fef51edb:"room_3_exit_1024x1024"}, {#orientation:2, #var_fef51edb:"room_3b_exit_1024x1024"});
    level.var_e1daf6fe[14] = array({#orientation:1, #var_fef51edb:"room_3_exit_1024x1024"});
    level.var_e1daf6fe[13] = array({#orientation:0, #var_fef51edb:"room_3_exit_1024x1024"});
    level.var_e1daf6fe[15] = array({#orientation:0, #var_fef51edb:"room_4_exit_1024x1024"}, {#orientation:0, #var_fef51edb:"room_5_exit_1024x1024"}, {#orientation:0, #var_fef51edb:"room_5_exit_1024x1024"});
    level.var_86fb599e[0] = [];
    level.var_86fb599e[1] = array({#orientation:3, #var_fef51edb:"hall_1_exit_1024x1024"});
    level.var_86fb599e[2] = array({#orientation:2, #var_fef51edb:"hall_1_exit_1024x1024"});
    level.var_86fb599e[4] = array({#orientation:1, #var_fef51edb:"hall_1_exit_1024x1024"});
    level.var_86fb599e[8] = array({#orientation:0, #var_fef51edb:"hall_1_exit_1024x1024"});
    level.var_86fb599e[10] = array({#orientation:0, #var_fef51edb:"hall_2i_exit_1024x1024"}, {#orientation:0, #var_fef51edb:"hall_2ii_exit_1024x1024"}, {#orientation:0, #var_fef51edb:"hall_2ilava_exit_1024x1024"}, {#orientation:0, #var_fef51edb:"hall_2iflogger_exit_1024x1024"});
    level.var_86fb599e[5] = array({#orientation:1, #var_fef51edb:"hall_2i_exit_1024x1024"}, {#orientation:1, #var_fef51edb:"hall_2ii_exit_1024x1024"}, {#orientation:1, #var_fef51edb:"hall_2ilava_exit_1024x1024"}, {#orientation:1, #var_fef51edb:"hall_2iflogger_exit_1024x1024"});
    level.var_86fb599e[9] = array({#orientation:3, #var_fef51edb:"hall_2l_exit_1024x1024"});
    level.var_86fb599e[3] = array({#orientation:2, #var_fef51edb:"hall_2l_exit_1024x1024"});
    level.var_86fb599e[6] = array({#orientation:1, #var_fef51edb:"hall_2l_exit_1024x1024"});
    level.var_86fb599e[12] = array({#orientation:0, #var_fef51edb:"hall_2l_exit_1024x1024"});
    level.var_86fb599e[11] = array({#orientation:3, #var_fef51edb:"hall_3_exit_1024x1024"});
    level.var_86fb599e[7] = array({#orientation:2, #var_fef51edb:"hall_3_exit_1024x1024"}, {#orientation:2, #var_fef51edb:"hall_3b_exit_1024x1024"});
    level.var_86fb599e[14] = array({#orientation:1, #var_fef51edb:"hall_3_exit_1024x1024"});
    level.var_86fb599e[13] = array({#orientation:0, #var_fef51edb:"hall_3_exit_1024x1024"}, {#orientation:0, #var_fef51edb:"hall_3b_exit_1024x1024"});
    level.var_86fb599e[15] = array({#orientation:0, #var_fef51edb:"hall_4_exit_1024x1024"}, {#orientation:0, #var_fef51edb:"hall_4l_exit_1024x1024"});
    /#
        if (getdvarint(#"hash_2bd21c5b8722178d", 0)) {
            level.var_e1daf6fe[15] = array({#orientation:0, #var_fef51edb:"<unknown string>"}, {#orientation:0, #var_fef51edb:"<unknown string>"}, {#orientation:0, #var_fef51edb:"<unknown string>"});
            level.var_86fb599e[15] = array({#orientation:0, #var_fef51edb:"<unknown string>"}, {#orientation:0, #var_fef51edb:"<unknown string>"});
        }
    #/
}

// Namespace namespace_c004634e/namespace_c004634e
// Params 1, eflags: 0x2 linked
// Checksum 0xde7d0086, Offset: 0x26a8
// Size: 0x1da
function function_a4c07e18(name) {
    playercount = getplayers().size;
    var_46082893 = math::clamp(3 + playercount, 4, 6);
    var_5d3143fb = math::clamp(7 + playercount, 8, 12);
    switch (name) {
    case #"hash_e0c29e984933643":
        setdvar(#"hash_4c2ff1f11662c879", var_5d3143fb);
        setdvar(#"hash_788fb3bfb03132f", var_46082893);
        function_1a3f9fe1(1);
        break;
    case #"cellar":
        setdvar(#"hash_4c2ff1f11662c879", var_5d3143fb);
        setdvar(#"hash_788fb3bfb03132f", var_46082893);
        function_1a3f9fe1();
        break;
    case #"hash_defdefdefdefdef0":
        setdvar(#"hash_4c2ff1f11662c879", var_5d3143fb);
        setdvar(#"hash_788fb3bfb03132f", var_46082893);
        function_9df20e11();
        break;
    }
}

// Namespace namespace_c004634e/namespace_c004634e
// Params 3, eflags: 0x2 linked
// Checksum 0xecdaa331, Offset: 0x2890
// Size: 0x1e
function function_1210f64b(*unused1, *var_5ddf2027, *var_26f1324c) {
    return undefined;
}

// Namespace namespace_c004634e/namespace_c004634e
// Params 1, eflags: 0x2 linked
// Checksum 0x1c45a5b, Offset: 0x28b8
// Size: 0xa2a
function function_18276de3(name = "") {
    level.var_8cff5775.var_3d1f118d = [];
    level.var_8cff5775.var_3d1f118d[#"hash_5e76c2f62c1e1615"] = [];
    level.var_8cff5775.var_3d1f118d[#"floor"] = [];
    switch (name) {
    case #"hash_defdefdefdefdef0":
        level.var_8cff5775.var_3d1f118d[#"hash_5e76c2f62c1e1615"][#"hash_6373f07d73160f61"][0] = {#fx:"fx_fire_torch_wall_lit_castle", #weight:1, #scale:1, #var_59a70a04:0, #model:#"hash_4806b879eea49e81"};
        level.var_8cff5775.var_3d1f118d[#"hash_5e76c2f62c1e1615"][#"hash_2ec1ad0b894eb316"][0] = {#weight:1, #scale:1, #var_59a70a04:-90, #model:#"hash_291984c5c2b4716d"};
        level.var_8cff5775.var_3d1f118d[#"hash_5e76c2f62c1e1615"][#"hash_2ec1ad0b894eb316"][1] = {#weight:1, #scale:1, #var_59a70a04:180, #model:#"hash_291981c5c2b46c54"};
        level.var_8cff5775.var_3d1f118d[#"hash_5e76c2f62c1e1615"][#"hash_2ec1ad0b894eb316"][2] = {#weight:1, #scale:1, #var_59a70a04:0, #model:#"hash_291982c5c2b46e07"};
        level.var_8cff5775.var_3d1f118d[#"hash_5e76c2f62c1e1615"][#"hash_2ec1ad0b894eb316"][3] = {#weight:1, #scale:1, #var_59a70a04:180, #model:#"hash_29197fc5c2b468ee"};
        level.var_8cff5775.var_3d1f118d[#"hash_5e76c2f62c1e1615"][#"hash_2ec1ad0b894eb316"][4] = {#weight:1, #scale:3, #var_59a70a04:0, #model:#"hash_7e0ee4cd301b70f8"};
        level.var_8cff5775.var_3d1f118d[#"floor"][#"hash_44d5576d6cc10d99"][0] = {#weight:1, #scale:1, #var_59a70a04:0, #model:#"hash_106e3aed469dc9f5"};
        level.var_8cff5775.var_3d1f118d[#"floor"][#"hash_44d5576d6cc10d99"][1] = {#weight:1, #scale:1, #var_59a70a04:0, #model:#"hash_67f8ff9ec7481763"};
        level.var_8cff5775.var_3d1f118d[#"floor"][#"hash_44d5576d6cc10d99"][2] = {#weight:1, #scale:1, #var_59a70a04:0, #model:#"hash_67f9009ec7481916"};
        level.var_8cff5775.var_3d1f118d[#"floor"][#"hash_44d5576d6cc10d99"][3] = {#weight:1, #scale:1, #var_59a70a04:0, #model:#"hash_67f9019ec7481ac9"};
        level.var_8cff5775.var_3d1f118d[#"floor"][#"hash_44d5576d6cc10d99"][4] = {#weight:1, #scale:1, #var_59a70a04:0, #model:#"hash_67f9029ec7481c7c"};
        level.var_8cff5775.var_3d1f118d[#"floor"][#"hash_44d5576d6cc10d99"][5] = {#weight:1, #scale:1, #var_59a70a04:0, #model:#"hash_3ad7387f79b2429"};
        level.var_8cff5775.var_3d1f118d[#"floor"][#"hash_44d5576d6cc10d99"][6] = {#weight:1, #scale:1, #var_59a70a04:0, #model:#"hash_7bf1c070b436e893"};
        level.var_8cff5775.var_3d1f118d[#"floor"][#"hash_44d5576d6cc10d99"][7] = {#weight:1, #scale:1, #var_59a70a04:0, #model:#"hash_7bc2d470b40f99cd"};
        level.var_8cff5775.var_3d1f118d[#"floor"][#"hash_44d5576d6cc10d99"][8] = {#weight:1, #scale:1, #var_59a70a04:0, #model:#"hash_3c37b2ed858227aa"};
        level.var_8cff5775.var_3d1f118d[#"floor"][#"hash_44d5576d6cc10d99"][9] = {#weight:1, #scale:0.6, #var_59a70a04:90, #model:#"hash_22d4a79eb4682aaf"};
        break;
    }
}

// Namespace namespace_c004634e/namespace_c004634e
// Params 1, eflags: 0x2 linked
// Checksum 0x9aa21412, Offset: 0x32f0
// Size: 0x82
function function_ed9ae881(name) {
    switch (name) {
    case #"hash_e0c29e984933643":
    case #"cellar":
        level.var_84c76431 = &function_9a834e27;
        break;
    case #"hash_defdefdefdefdef0":
        level.var_84c76431 = &function_d5a0313a;
        break;
    }
}

// Namespace namespace_c004634e/namespace_c004634e
// Params 0, eflags: 0x2 linked
// Checksum 0xfd508b5d, Offset: 0x3380
// Size: 0x22
function function_9a834e27() {
    var_1b8ba6f5 = function_d5a0313a();
    return var_1b8ba6f5;
}

// Namespace namespace_c004634e/namespace_c004634e
// Params 0, eflags: 0x2 linked
// Checksum 0x2f7df962, Offset: 0x33b0
// Size: 0x10e
function function_d5a0313a() {
    var_1b8ba6f5 = [];
    var_1b8ba6f5[0] = 1e-05;
    var_1b8ba6f5[1] = 0.001;
    var_1b8ba6f5[2] = 0.001;
    var_1b8ba6f5[3] = 1;
    var_1b8ba6f5[4] = 0.001;
    var_1b8ba6f5[5] = 1;
    var_1b8ba6f5[6] = 1;
    var_1b8ba6f5[7] = 0.5;
    var_1b8ba6f5[8] = 0.001;
    var_1b8ba6f5[9] = 1;
    var_1b8ba6f5[10] = 1;
    var_1b8ba6f5[11] = 0.5;
    var_1b8ba6f5[12] = 1;
    var_1b8ba6f5[13] = 0.5;
    var_1b8ba6f5[14] = 0.5;
    var_1b8ba6f5[15] = 1;
    return var_1b8ba6f5;
}

// Namespace namespace_c004634e/namespace_c004634e
// Params 2, eflags: 0x2 linked
// Checksum 0x2ebd2b95, Offset: 0x34c8
// Size: 0xf6
function function_1f81f464(type, subtype) {
    if (isdefined(level.var_8cff5775.var_3d1f118d[type])) {
        if (!isdefined(subtype)) {
            subtype = function_d59c2d03(level.var_8cff5775.var_3d1f118d[type].size);
        } else {
            subtype = hash(subtype);
        }
        if (isdefined(level.var_8cff5775.var_3d1f118d[type][subtype])) {
            var_71b4f6c7 = function_d59c2d03(level.var_8cff5775.var_3d1f118d[type][subtype].size);
            return level.var_8cff5775.var_3d1f118d[type][subtype][var_71b4f6c7];
        }
    }
}

// Namespace namespace_c004634e/namespace_c004634e
// Params 2, eflags: 0x2 linked
// Checksum 0x2d9ada5f, Offset: 0x35c8
// Size: 0xe8
function function_6a09928b(location, type) {
    if (isdefined(location.script_parameters)) {
        modelname = location.script_parameters;
    } else {
        var_95734d8b = function_1f81f464(type, location.script_noteworthy);
        modelname = var_95734d8b.model;
    }
    model = undefined;
    if (isdefined(modelname)) {
        /#
            function_f5f0c0f8("<unknown string>" + function_9e72a96(type) + "<unknown string>" + modelname + "<unknown string>" + location.origin);
        #/
    }
    return model;
}

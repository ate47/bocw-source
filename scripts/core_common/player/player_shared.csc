// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using script_3d0f36632dad12df;
#using scripts\core_common\postfx_shared.csc;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace player;

// Namespace player/player_shared
// Params 0, eflags: 0x5
// Checksum 0xca2c6911, Offset: 0x148
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"player", &preinit, undefined, undefined, undefined);
}

// Namespace player/player_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xb51dd468, Offset: 0x190
// Size: 0x16c
function private preinit() {
    clientfield::register("world", "gameplay_started", 1, 1, "int", &gameplay_started_callback, 0, 1);
    clientfield::register("toplayer", "gameplay_allows_deploy", 1, 1, "int", undefined, 0, 0);
    clientfield::register("toplayer", "player_dof_settings", 1, 2, "int", &function_f9e445ee, 0, 0);
    callback::on_localplayer_spawned(&local_player_spawn);
    callback::on_spawned(&on_player_spawned);
    callback::on_killcam_begin(&function_5bec2ba9);
    callback::on_killcam_end(&function_5bec2ba9);
    callback::function_fb65b7c2(&function_5bec2ba9);
}

// Namespace player/slide_begin
// Params 1, eflags: 0x20
// Checksum 0x623020c6, Offset: 0x308
// Size: 0xa4
function event_handler[slide_begin] function_8183e35a(*eventstruct) {
    if (!self function_21c0fa55()) {
        return;
    }
    if (self postfx::function_556665f2(#"hash_715247c8f8a6a967")) {
        self postfx::exitpostfxbundle(#"hash_715247c8f8a6a967");
    }
    if (!squad_spawn::function_21b773d5(self.localclientnum)) {
        self thread postfx::playpostfxbundle(#"hash_715247c8f8a6a967");
    }
}

// Namespace player/player_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xed19cba8, Offset: 0x3b8
// Size: 0x84
function gameplay_started_callback(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    setdvar(#"cg_isgameplayactive", bwastimejump);
    if (bwastimejump) {
        level callback::callback(#"on_gameplay_started", fieldname);
    }
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xea4b22f1, Offset: 0x448
// Size: 0x54
function local_player_spawn(localclientnum) {
    if (!self function_21c0fa55()) {
        return;
    }
    setdepthoffield(localclientnum, 0, 0, 0, 0, 6, 1.8);
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x6e7df10d, Offset: 0x4a8
// Size: 0x120
function on_player_spawned(localclientnum) {
    self thread function_8f03c3d0(localclientnum);
    if (self function_47493647()) {
        self setsoundentcontext("npc_gender", "female");
    } else {
        self setsoundentcontext("npc_gender", "male");
    }
    foreach (player in getplayers(localclientnum)) {
        player function_f22aa227(localclientnum);
    }
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x6f03a0bc, Offset: 0x5d0
// Size: 0xc0
function function_5bec2ba9(params) {
    foreach (player in getplayers(params.localclientnum)) {
        player function_e450e3e1(params);
        player function_4ff4a239(params.localclientnum);
    }
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x48abc074, Offset: 0x698
// Size: 0x94
function function_4ff4a239(localclientnum) {
    if (!self function_21c0fa55()) {
        if (self.team === function_73f4b33(localclientnum)) {
            self function_9974c822("cmn_teammate_duck");
            self callback::add_entity_callback(#"death", &function_e450e3e1);
        }
    }
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xee4a3976, Offset: 0x738
// Size: 0x5c
function function_8f03c3d0(localclientnum) {
    if (sessionmodeiscampaigngame()) {
        return;
    }
    self endon(#"death");
    self endon(#"disconnect");
    waitframe(1);
    self function_4ff4a239(localclientnum);
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x8a93a6b0, Offset: 0x7a0
// Size: 0x5c
function function_e450e3e1(*params) {
    self function_5dcc74d1("cmn_teammate_duck");
    self callback::function_52ac9652(#"death", &function_e450e3e1);
}

// Namespace player/player_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xc3747465, Offset: 0x808
// Size: 0x122
function function_f9e445ee(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 0:
        setdepthoffield(fieldname, 0, 0, 512, 512, 4, 0);
        break;
    case 1:
        setdepthoffield(fieldname, 0, 0, 512, 4000, 4, 0);
        break;
    case 2:
        setdepthoffield(fieldname, 0, 128, 512, 4000, 6, 1.8);
        break;
    default:
        break;
    }
}

// Namespace player/player_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xc6f66df2, Offset: 0x938
// Size: 0xfc
function private function_f22aa227(localclientnum) {
    if (codcaster::function_b8fe9b52(localclientnum)) {
        return;
    }
    if (!isalive(self)) {
        return;
    }
    var_2d9ea0a1 = function_27673a7(localclientnum);
    if (self.team !== var_2d9ea0a1.team) {
        if (!self function_d2503806(#"rob_sonar_set_enemy")) {
            self playrenderoverridebundle(#"rob_sonar_set_enemy");
        }
        return;
    }
    if (self function_d2503806(#"rob_sonar_set_enemy")) {
        self stoprenderoverridebundle(#"rob_sonar_set_enemy");
    }
}


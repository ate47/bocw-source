// Atian COD Tools GSC CW decompiler test
#using script_3b893ec1252cdffd;
#using scripts\core_common\ai\zombie_vortex.csc;
#using script_76abb7986de59601;
#using script_67049b48b589d81;
#using script_64e5d3ad71ce8140;
#using script_6b71c9befed901f2;
#using script_75c3996cce8959f7;
#using script_71603a58e2da0698;
#using script_30c7fb449869910;
#using script_33128b01aae27d52;
#using script_1b2f6ef7778cf920;
#using script_771f5bff431d8d57;
#using script_4adf64e112e9afec;
#using script_42cbbdcd1e160063;
#using script_3314b730521b9666;
#using script_77163d5a569e2071;
#using script_38635d174016f682;
#using script_18910f59cc847b42;
#using scripts\core_common\blood.csc;
#using scripts\core_common\hud_message_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\spawning_shared.csc;
#using scripts\core_common\spawner_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\serverfield_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace doa_player;

// Namespace doa_player/doa_player
// Params 0, eflags: 0x2 linked
// Checksum 0x4f871205, Offset: 0x500
// Size: 0x50c
function init() {
    level.var_46a66896 = doa_overworld::register_clientside();
    clientfield::register("allplayers", "bombDrop", 1, 1, "int", &function_c75159ad, 0, 0);
    clientfield::register("toplayer", "cutscene", 1, 2, "int", &function_769d489, 0, 0);
    clientfield::register("toplayer", "controlBinding", 1, 4, "counter", &function_e7a44fda, 0, 0);
    clientfield::register("toplayer", "goFPS", 1, 1, "counter", &function_f32984d0, 0, 0);
    clientfield::register("world", "doafps", 1, 1, "int", &function_8a19ab89, 0, 0);
    clientfield::register("toplayer", "exitFPS", 1, 1, "counter", &function_43ae94e0, 0, 0);
    clientfield::register("toplayer", "changeCamera", 1, 1, "counter", &changecamera, 0, 0);
    clientfield::register("toplayer", "resetCamera", 1, 1, "counter", &resetcamera, 0, 0);
    clientfield::register("toplayer", "hardResetCamera", 1, 1, "counter", &hardresetcamera, 0, 0);
    clientfield::register("toplayer", "lastStand", 1, 2, "int", &laststand, 0, 0);
    clientfield::register("toplayer", "setCameraDown", 1, 5, "int", &setcameradown, 0, 0);
    clientfield::register("toplayer", "setCameraSide", 1, 2, "int", &setcameraside, 0, 0);
    clientfield::register("allplayers", "flipCamera", 1, 2, "int", &flipcamera, 0, 0);
    clientfield::register("toplayer", "showMap", 1, 1, "int", &showmap, 0, 0);
    clientfield::register("toplayer", "toggleflashlight", 1, 1, "int", &function_4fd00e1f, 0, 0);
    serverfield::register("lstick_input_inc", 1, 2, "int");
    serverfield::register("rstick_input_inc", 1, 2, "int");
    callback::on_localclient_connect(&on_player_connect);
    callback::on_spawned(&on_player_spawned);
    function_32d5e898();
    level thread function_c7ab4997();
}

// Namespace doa_player/doa_player
// Params 1, eflags: 0x6 linked
// Checksum 0xca97e290, Offset: 0xa18
// Size: 0xf0
function private function_c7ab4997(*localclientnum) {
    self notify("8869c86eaf915ab");
    self endon("8869c86eaf915ab");
    while (true) {
        result = level waittill(#"updategamerprofile", #"hash_ce3d6cba382b09e", #"hash_5f3b1ae5d64be652");
        namespace_1e25ad94::debugmsg("profileWatch just intercepted notify-->" + result._notify);
        local_player = function_5c10bd79(result.localclientnum);
        if (isdefined(local_player)) {
            local_player namespace_7f5aeb59::function_4d692cc4(result.localclientnum, local_player.var_88a2ff29);
        }
    }
}

// Namespace doa_player/doa_player
// Params 1, eflags: 0x2 linked
// Checksum 0xfaff547f, Offset: 0xb10
// Size: 0xc4
function on_player_connect(localclientnum) {
    player = function_27673a7(localclientnum);
    if (!isdefined(player)) {
        return;
    }
    player.var_f5602976 = gettime();
    var_818c564f = function_dac0d84(localclientnum);
    rootmodel = function_5f72e972(#"doa_world");
    uimodel = getuimodel(rootmodel, #"hash_a6a99321ab96e8d");
    setuimodelvalue(uimodel, var_818c564f);
}

// Namespace doa_player/doa_player
// Params 1, eflags: 0x2 linked
// Checksum 0x84ca2163, Offset: 0xbe0
// Size: 0x132
function function_32d5e898(localclientnum) {
    if (!isdefined(level.doa.var_b73cc08)) {
        level.doa.var_b73cc08 = spawn(0, (0, 0, 0), "script_model");
        level.doa.var_b73cc08 setmodel("tag_origin");
    }
    foreach (player in getlocalplayers()) {
        player namespace_7f5aeb59::function_fcc90081(localclientnum);
    }
    level.doa.var_f65cb6ee = array(0, 0, 0, 0);
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0xac63453, Offset: 0xd20
// Size: 0x74
function function_e7a44fda(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    allowactionslotinput(bwastimejump);
    self thread namespace_7f5aeb59::function_4d692cc4(bwastimejump, self.var_88a2ff29);
}

// Namespace doa_player/doa_player
// Params 1, eflags: 0x2 linked
// Checksum 0x945c98ef, Offset: 0xda0
// Size: 0x6c
function on_player_spawned(localclientnum) {
    setsoundcontext("doa_1stperson", "inactive");
    assert(!isdefined(self.doa), "<unknown string>");
    self thread namespace_7f5aeb59::function_f3143608(localclientnum);
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0x323e5ec6, Offset: 0xe18
// Size: 0x2a4
function function_c75159ad(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 0) {
        return;
    }
    var_b2b025b1 = getlocalplayers()[0];
    if (isdefined(var_b2b025b1.doa) && var_b2b025b1.doa.cameramode === 6) {
        forward = anglestoforward(self.angles);
        var_7def0a05 = self.origin + forward * 100;
    } else {
        var_7def0a05 = self.origin;
    }
    origin = var_7def0a05 + (20, 0, 2000);
    bomb = namespace_ec06fe4a::spawnmodel(fieldname, origin, "zombietron_nuke", (0, 0, 0), "player bomb");
    if (!isdefined(bomb)) {
        return;
    }
    bomb.angles = (90, 0, 0);
    bomb moveto(var_7def0a05, 0.3, 0, 0);
    playsound(0, "evt_doa_powerup_nuke_activate", self.origin);
    bomb waittill(#"movedone");
    playsound(fieldname, "evt_doa_powerup_nuke_impact", var_7def0a05);
    playfx(fieldname, level._effect[#"bomb"], var_7def0a05);
    earthquake(fieldname, 1, 0.8, var_7def0a05, 1000);
    physicsexplosionsphere(fieldname, var_7def0a05, 1024, 0, 100);
    bomb delete();
    wait(0.2);
    playfx(fieldname, level._effect[#"nuke_dust"], var_7def0a05);
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0x39eed3bc, Offset: 0x10c8
// Size: 0x394
function function_43ae94e0(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.var_88a2ff29 = level.var_30df1fad;
    playsound(bwastimejump, #"hash_51a1d69295a5b7fe", (0, 0, 0));
    setsoundcontext("doa_1stperson", "inactive");
    if (!isdefined(self.doa)) {
        self thread namespace_7f5aeb59::function_4d692cc4(bwastimejump, self.var_88a2ff29);
        namespace_4dae815d::function_b6e8ef46();
        return;
    }
    self.doa.cameramode = 7;
    var_de738228 = self.doa.var_903d75b1;
    if (isdefined(var_de738228)) {
        var_de738228 = self namespace_ac2a80f5::function_f7736714(bwastimejump, var_de738228);
    }
    lastmode = isdefined(var_de738228) ? var_de738228 : 1;
    level.doa.var_b73cc08.origin = self.origin + (0, 0, 72);
    level.doa.var_b73cc08.angles = self.angles;
    waitframe(1);
    if (isdefined(self.var_ca14ee83)) {
        level.doa.var_b73cc08.angles = self.var_ca14ee83;
    }
    spot = (self.origin[0], self.origin[1], self.origin[2] + namespace_ac2a80f5::function_ccf8a968(lastmode));
    level.doa.var_b73cc08 moveto(spot, 0.15);
    level.doa.var_b73cc08 waittilltimeout(0.16, #"movedone");
    self cameraforcedisablescriptcam(0);
    self.doa.cameramode = lastmode;
    assert(self.doa.cameramode != 6);
    if (getlocalplayers().size > 1) {
        self.doa.cameramode = 4;
    }
    self namespace_ac2a80f5::changecamera(self.doa.cameramode);
    self.topdowncamera = 1;
    self.doa.infps = 0;
    if (isdefined(self.var_1489535e)) {
        killfx(bwastimejump, self.var_1489535e);
        self.var_1489535e = undefined;
    }
    self thread namespace_7f5aeb59::function_4d692cc4(bwastimejump, self.var_88a2ff29);
    namespace_4dae815d::function_b6e8ef46();
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0xb9d683e7, Offset: 0x1468
// Size: 0x404
function function_f32984d0(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    self notify("12e09c614cecb5c2");
    self endon("12e09c614cecb5c2");
    while (!isdefined(self.doa)) {
        waitframe(1);
    }
    self.var_88a2ff29 = "default";
    if (self.doa.cameramode === 6) {
        self thread namespace_7f5aeb59::function_4d692cc4(localclientnum, self.var_88a2ff29);
        self thread namespace_6e90e490::function_b5afa57f(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
        return;
    }
    playsound(localclientnum, #"hash_4716558fb561cab2", (0, 0, 0));
    setsoundcontext("doa_1stperson", "active");
    if (is_true(level.doa.var_318aa67a)) {
        self.doa.cameramode = 6;
        self.topdowncamera = 0;
        self.doa.infps = 1;
        return;
    }
    origin = self.origin;
    if (!isdefined(self.var_45c6f27d)) {
        self.var_45c6f27d = self.origin + (0, 0, 1000);
    }
    if (!isdefined(self.var_ca14ee83)) {
        self.var_ca14ee83 = (75, 0, 0);
    }
    if (localclientnum > 0 && level.localplayers.size > 1) {
        self.var_45c6f27d = level.localplayers[0].var_45c6f27d;
        self.var_ca14ee83 = level.localplayers[0].var_ca14ee83;
    }
    self.doa.cameramode = 7;
    level.doa.var_b73cc08.origin = self.var_45c6f27d;
    level.doa.var_b73cc08.angles = self.var_ca14ee83;
    level.doa.var_b73cc08 moveto(origin + (0, 0, 72), 0.3);
    wait(0.2);
    if (isdefined(self)) {
        playfx(localclientnum, level._effect[#"explode_lg"], origin);
        earthquake(localclientnum, 1, 0.8, origin, 1000);
        playrumbleonposition(localclientnum, "damage_heavy", self.origin);
    }
    wait(0.1);
    if (isdefined(self)) {
        self.doa.cameramode = 6;
        self.topdowncamera = 0;
        self.doa.infps = 1;
        self thread namespace_7f5aeb59::function_4d692cc4(localclientnum, self.var_88a2ff29);
        self thread namespace_6e90e490::function_b5afa57f(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
        self notify(#"infps");
    }
    namespace_4dae815d::function_b6e8ef46();
}

// Namespace doa_player/doa_player
// Params 0, eflags: 0x2 linked
// Checksum 0x5c9283ad, Offset: 0x1878
// Size: 0xb2
function function_505038df() {
    foreach (player in getlocalplayers()) {
        if (!isdefined(player)) {
            continue;
        }
        if (is_true(player.doa.infps)) {
            return true;
        }
    }
    return false;
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0x85dbb538, Offset: 0x1938
// Size: 0x1c6
function function_8a19ab89(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    /#
        namespace_1e25ad94::debugmsg("<unknown string>" + bwastimejump);
    #/
    if (bwastimejump) {
        if (!isdefined(level.doa.var_d1aae7e4) && isdefined(level.doa.var_72b899ad)) {
            level.doa.var_d1aae7e4 = "fxexp_" + level.doa.var_72b899ad.script_noteworthy + "_FPS";
            /#
                namespace_1e25ad94::debugmsg("<unknown string>" + level.doa.var_d1aae7e4 + "<unknown string>" + fieldname);
            #/
            playradiantexploder(fieldname, level.doa.var_d1aae7e4);
        }
        return;
    }
    var_33a7b9c6 = function_505038df();
    if (!is_true(var_33a7b9c6)) {
        if (isdefined(level.doa.var_d1aae7e4)) {
            stopradiantexploder(fieldname, level.doa.var_d1aae7e4);
            level.doa.var_d1aae7e4 = undefined;
        }
    }
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0xe321a20a, Offset: 0x1b08
// Size: 0x224
function changecamera(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.doa)) {
        return;
    }
    if (self.doa.cameramode === 6) {
        return;
    }
    self.doa.cameramode = namespace_ac2a80f5::function_1d5dc8d2(bwastimejump, self.doa.cameramode);
    self namespace_ac2a80f5::changecamera(self.doa.cameramode);
    if (self.doa.cameramode >= 0 && self.doa.cameramode <= 4) {
        self.doa.var_903d75b1 = self.doa.cameramode;
    }
    switch (self.doa.cameramode) {
    case 1:
        msg = #"hash_447dc787430ef129";
        break;
    case 0:
        msg = #"hash_7d810006d120ca86";
        break;
    case 2:
        msg = #"hash_61823fb81c973c88";
        break;
    case 3:
        msg = #"hash_604d22d46a737a0b";
        break;
    case 4:
        msg = #"hash_6fca4e61bae022cd";
        break;
    }
    if (isdefined(msg)) {
        self thread message(bwastimejump, msg, 2, 0);
    }
}

// Namespace doa_player/doa_player
// Params 3, eflags: 0x6 linked
// Checksum 0xd38acdfb, Offset: 0x1d38
// Size: 0xa6
function private function_5abfd945(localclientnum, text, var_d9d263a1 = 5) {
    self.doa.var_5f165a77 = 1;
    self hud_message::clearlowermessage(localclientnum);
    self hud_message::setlowermessage(localclientnum, text);
    wait(var_d9d263a1);
    if (isdefined(self)) {
        self hud_message::clearlowermessage(localclientnum);
        self.doa.var_5f165a77 = 0;
    }
}

// Namespace doa_player/doa_player
// Params 4, eflags: 0x2 linked
// Checksum 0x7c3344f3, Offset: 0x1de8
// Size: 0xc4
function message(localclientnum, text, var_d9d263a1 = 5, hold = 1) {
    var_e0e4a2bb = 0;
    while (hold && is_true(self.doa.var_5f165a77)) {
        var_e0e4a2bb = 1;
        wait(1);
    }
    if (var_e0e4a2bb) {
        wait(1);
    }
    if (isdefined(self)) {
        self thread function_5abfd945(localclientnum, text, var_d9d263a1);
    }
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0x748ce975, Offset: 0x1eb8
// Size: 0x1ec
function hardresetcamera(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.doa)) {
        return;
    }
    namespace_1e25ad94::debugmsg("Calling HARDRESETCAMERA on LocalClient:" + bwastimejump + " Entity: " + self.entnum);
    if (isdefined(self.doa.cameramode) && self.doa.cameramode == 7) {
        return;
    }
    self.doa.var_67c3a8db = undefined;
    self.var_2d592f5b = undefined;
    self.var_45c6f27d = undefined;
    self.doa.var_cffb9201 = isdefined(self.doa.var_903d75b1) ? self.doa.var_903d75b1 : self.doa.var_cffb9201;
    self.doa.var_903d75b1 = undefined;
    self.doa.cameramode = is_true(level.doa.var_318aa67a) ? 6 : 1;
    if (level.doa.world_state == 0 && getlocalplayers().size > 1) {
        if (level.doa.r_splitscreenexpandfull == 1) {
            self.doa.cameramode = 4;
        }
    }
    self namespace_ac2a80f5::changecamera(self.doa.cameramode);
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0x9e7fdab0, Offset: 0x20b0
// Size: 0x154
function resetcamera(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.doa)) {
        return;
    }
    self.doa.var_67c3a8db = undefined;
    self.var_2d592f5b = undefined;
    self.var_45c6f27d = undefined;
    if (!isdefined(self.doa.var_903d75b1)) {
        self.doa.var_903d75b1 = self.doa.var_cffb9201;
    }
    if (isdefined(self.doa.var_903d75b1)) {
        self.doa.cameramode = self namespace_ac2a80f5::function_f7736714(bwastimejump, self.doa.var_903d75b1);
    } else {
        self.doa.cameramode = 1;
        if (getlocalplayers().size > 1) {
            self.doa.cameramode = 4;
        }
    }
    self namespace_ac2a80f5::changecamera(self.doa.cameramode);
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0xe19812e3, Offset: 0x2210
// Size: 0x2fc
function setcameradown(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self) || !isdefined(self.doa)) {
        return;
    }
    if (level.doa.world_state == 0) {
        assert(isdefined(isdefined(level.doa.var_72b899ad)));
        normalangle = level.doa.var_72b899ad.var_13ea8aea;
        var_1d83376c = level.doa.var_72b899ad.var_46f3a17d;
        if (!isdefined(normalangle) || !isdefined(var_1d83376c)) {
            normalangle = (75, 0, 0);
            var_1d83376c = (75, 180, 0);
        }
    } else {
        normalangle = (75, 0, 0);
        var_1d83376c = (75, 180, 0);
    }
    if (bwastimejump) {
        if (getlocalplayers().size > 1 && self.doa.cameramode == 4) {
            return;
        }
        maxval = 32 - 1;
        curval = bwastimejump / maxval;
        if (self.doa.var_71122e79) {
            var_7f8e0b4a = var_1d83376c;
        } else {
            var_7f8e0b4a = normalangle;
        }
        var_2797b11f = var_7f8e0b4a[0];
        maxpitch = 95;
        var_cc5b2628 = lerpfloat(var_2797b11f, maxpitch, curval);
        angle = (var_cc5b2628, var_7f8e0b4a[1], var_7f8e0b4a[2]);
        self.doa.var_67c3a8db = angle;
        self namespace_ac2a80f5::function_278f20a3(angle, self.doa.var_f793b3d3);
        return;
    }
    self.doa.var_67c3a8db = undefined;
    if (self.doa.var_71122e79) {
        self namespace_ac2a80f5::function_278f20a3(var_1d83376c, self.doa.var_f793b3d3);
        return;
    }
    self namespace_ac2a80f5::function_278f20a3(normalangle, self.doa.var_f793b3d3);
}

// Namespace doa_player/doa_player
// Params 2, eflags: 0x2 linked
// Checksum 0x27f4f69c, Offset: 0x2518
// Size: 0x394
function function_9917e07(*localclientnum, value) {
    self notify("345cdae26411cd4f");
    self endon("345cdae26411cd4f");
    while (true) {
        if (!isdefined(self)) {
            return;
        }
        if (isdefined(self.doa)) {
            break;
        }
        waitframe(1);
    }
    if (value) {
        angle = (5, 180, 0);
        self.doa.var_67c3a8db = angle;
        self.doa.var_c544c883 = 100;
        if (level.localplayers.size > 1) {
            namespace_4dae815d::function_e1887b0f(0);
            self namespace_ac2a80f5::changecamera(self.doa.cameramode);
        }
        if (value == 2) {
            self.doa.cameramode = 0;
            self namespace_ac2a80f5::changecamera(self.doa.cameramode);
        }
        if (value == 3) {
            self.doa.cameramode = 1;
            self namespace_ac2a80f5::changecamera(self.doa.cameramode);
        }
        self namespace_ac2a80f5::function_278f20a3(angle, self.doa.var_f793b3d3);
        return;
    }
    if (level.localplayers.size > 1) {
        self.doa.cameramode = 4;
        self namespace_ac2a80f5::changecamera(self.doa.cameramode);
        namespace_4dae815d::function_b6e8ef46();
    }
    if (level.doa.world_state == 0) {
        assert(isdefined(isdefined(level.doa.var_72b899ad)));
        normalangle = level.doa.var_72b899ad.var_13ea8aea;
        var_1d83376c = level.doa.var_72b899ad.var_46f3a17d;
    } else {
        normalangle = (75, 0, 0);
        var_1d83376c = (75, 180, 0);
    }
    if (self.doa.cameramode == 0) {
        self.doa.cameramode = 1;
        self namespace_ac2a80f5::changecamera(self.doa.cameramode);
    }
    self.doa.var_c544c883 = undefined;
    self.doa.var_67c3a8db = undefined;
    if (self.doa.var_71122e79) {
        self namespace_ac2a80f5::function_278f20a3(var_1d83376c, self.doa.var_f793b3d3);
        return;
    }
    self namespace_ac2a80f5::function_278f20a3(normalangle, self.doa.var_f793b3d3);
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0x3dab5c50, Offset: 0x28b8
// Size: 0x54
function setcameraside(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self thread function_9917e07(fieldname, bwastimejump);
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0x9fc7056e, Offset: 0x2918
// Size: 0x294
function laststand(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (fieldname != 0) {
        return;
    }
    if (getlocalplayers().size > 1) {
        return;
    }
    if (!isdefined(self) || !isdefined(self.doa)) {
        return;
    }
    if (bwastimejump == 3) {
        self thread blood::function_6072ad24(fieldname);
        return;
    }
    if (self.doa.cameramode !== 7) {
        if (bwastimejump) {
            self.doa.cameramode = 0;
            if (bwastimejump == 2) {
                if (self namespace_ac2a80f5::function_f7736714(fieldname, 3)) {
                    self.doa.cameramode = 3;
                } else if (self namespace_ac2a80f5::function_f7736714(fieldname, 2)) {
                    self.doa.cameramode = 2;
                }
            }
            if (level.doa.var_938e4f08 === 9 || level.doa.var_938e4f08 === 10 || level.doa.var_938e4f08 === 11 || level.doa.var_938e4f08 === 12 || level.doa.var_938e4f08 === 13 || level.doa.var_938e4f08 === 16) {
                self.doa.cameramode = 0;
            }
        } else if (isdefined(self.doa.var_903d75b1)) {
            self.doa.cameramode = self namespace_ac2a80f5::function_f7736714(fieldname, self.doa.var_903d75b1);
        } else {
            self.doa.cameramode = 1;
        }
        self namespace_ac2a80f5::changecamera(self.doa.cameramode);
    }
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0x517b0ffb, Offset: 0x2bb8
// Size: 0xcc
function showmap(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (fieldname != 0) {
        return;
    }
    if (bwastimejump) {
        if (!level.var_46a66896 doa_overworld::is_open(fieldname)) {
            level.var_46a66896 doa_overworld::open(fieldname);
        }
        return;
    }
    if (level.var_46a66896 doa_overworld::is_open(fieldname)) {
        level.var_46a66896 doa_overworld::close(fieldname);
    }
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0x6d9c5685, Offset: 0x2c90
// Size: 0x236
function function_4fd00e1f(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self playsound(fieldname, #"hash_79a78504d4dbaf3f");
        if (self.doa.cameramode === 6) {
            if (!self hasdobj(fieldname)) {
                return;
            }
            if (!isdefined(self.flashlight_fx)) {
                if (viewmodelhastag(fieldname, "tag_flashlight")) {
                    self.flashlight_fx = playviewmodelfx(fieldname, #"hash_679d39e5fd4eae19", "tag_flashlight");
                } else if (viewmodelhastag(fieldname, "tag_camera")) {
                    self.flashlight_fx = playviewmodelfx(fieldname, #"hash_679d39e5fd4eae19", "tag_camera");
                } else if (viewmodelhastag(fieldname, "tag_flash")) {
                    self.flashlight_fx = playviewmodelfx(fieldname, #"hash_679d39e5fd4eae19", "tag_camera");
                }
            }
        } else {
            self.flashlight_fx = util::playfxontag(fieldname, #"hash_679d39e5fd4eae19", self, "tag_eye");
        }
        return;
    }
    if (isdefined(self.flashlight_fx)) {
        self playsound(fieldname, #"hash_13715035b161a0c3");
        stopfx(fieldname, self.flashlight_fx);
        self.flashlight_fx = undefined;
    }
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0x9a247a0e, Offset: 0x2ed0
// Size: 0x6c
function function_769d489(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level.doa.cutscene = bwastimejump;
    self thread function_65329ef6(bwastimejump, fieldname);
}

// Namespace doa_player/doa_player
// Params 2, eflags: 0x2 linked
// Checksum 0x1f0de7b6, Offset: 0x2f48
// Size: 0x20a
function function_65329ef6(id, localclientnum) {
    self notify("69c9e90050c26302");
    self endon("69c9e90050c26302");
    self endon(#"disconnect");
    while (!isdefined(self.doa)) {
        waitframe(1);
    }
    switch (id) {
    case 0:
        if (isdefined(self.doa.var_903d75b1)) {
            self.doa.cameramode = self namespace_ac2a80f5::function_f7736714(localclientnum, self.doa.var_903d75b1);
        } else {
            self.doa.cameramode = 1;
            if (getlocalplayers().size > 1) {
                self.doa.cameramode = 4;
            }
        }
        self namespace_ac2a80f5::changecamera(self.doa.cameramode);
        level notify(#"terminatecutscene");
        break;
    case 1:
        self.doa.cameramode = 7;
        loc = struct::get("island_cutscene_camloc", "targetname");
        level.doa.var_b73cc08.origin = loc.origin;
        level.doa.var_b73cc08.angles = loc.angles;
        break;
    case 2:
        self thread namespace_b7d49cfd::function_8d4cb2b(localclientnum);
        break;
    }
}

// Namespace doa_player/doa_player
// Params 2, eflags: 0x2 linked
// Checksum 0xea062134, Offset: 0x3160
// Size: 0x294
function function_7df2149d(*localclientnum, orientation) {
    self endon(#"hash_79990404aaa9d9df");
    self notify("25b9b5083684eb1b");
    self endon("25b9b5083684eb1b");
    while (!isdefined(self.doa)) {
        waitframe(1);
    }
    height = namespace_ac2a80f5::function_ccf8a968(self.doa.cameramode);
    if (isdefined(level.doa.var_72b899ad.camera_max_height)) {
        if (height > level.doa.var_72b899ad.camera_max_height) {
            height = level.doa.var_72b899ad.camera_max_height;
        }
    }
    if (level.doa.world_state == 0 && isdefined(level.doa.var_72b899ad)) {
        normalangle = level.doa.var_72b899ad.var_13ea8aea;
        var_1d83376c = level.doa.var_72b899ad.var_46f3a17d;
    } else {
        normalangle = (75, 0, 0);
        var_1d83376c = (75, 180, 0);
    }
    switch (orientation) {
    case 0:
    case 2:
        self.doa.var_71122e79 = 0;
        self namespace_ac2a80f5::function_278f20a3(normalangle, height);
        break;
    case 1:
        self.doa.var_71122e79 = 1;
        self namespace_ac2a80f5::function_278f20a3(var_1d83376c, height);
        break;
    }
    level.var_2d592f5b = level.doa.var_13a2a410;
    namespace_1e25ad94::debugmsg("+++++++++++++++++++++++ Player " + self.entnum + " camera orientation is: " + (self.doa.var_71122e79 ? "flipped" : "normal"));
}

// Namespace doa_player/doa_player
// Params 7, eflags: 0x2 linked
// Checksum 0xeae37fb7, Offset: 0x3400
// Size: 0xbc
function flipcamera(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    localplayers = getlocalplayers();
    if (isinarray(localplayers, self)) {
        self thread function_7df2149d(fieldname, bwastimejump);
    }
    level.doa.var_f65cb6ee[self getentitynumber()] = bwastimejump == 1;
}


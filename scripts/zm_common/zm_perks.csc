// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\zm_common\zm_loadout.csc;
#using scripts\zm_common\zm_customgame.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace zm_perks;

// Namespace zm_perks/zm_perks
// Params 0, eflags: 0x2 linked
// Checksum 0x2c700fec, Offset: 0x310
// Size: 0x7c
function init() {
    if (!isdefined(level.var_c3e5c4cd)) {
        level.var_c3e5c4cd = zm_utility::get_story();
    }
    callback::on_start_gametype(&init_perk_machines_fx);
    init_custom_perks();
    perks_register_clientfield();
    init_perk_custom_threads();
}

// Namespace zm_perks/zm_perks
// Params 2, eflags: 0x2 linked
// Checksum 0xcd24d84f, Offset: 0x398
// Size: 0xb4
function function_f3c80d73(str_bottle, str_totem) {
    if (zm_utility::get_story() == 1 || !isdefined(str_totem)) {
        w_perk = getweapon(str_bottle);
    } else {
        w_perk = getweapon(str_totem);
    }
    forcestreamxmodel(w_perk.viewmodel, -1, -1);
    forcestreamxmodel(w_perk.worldmodel, 1, 1);
}

// Namespace zm_perks/zm_perks
// Params 0, eflags: 0x2 linked
// Checksum 0x910ca595, Offset: 0x458
// Size: 0x100
function perks_register_clientfield() {
    if (is_true(level.zombiemode_using_perk_intro_fx)) {
        clientfield::register("scriptmover", "clientfield_perk_intro_fx", 1, 1, "int", &perk_meteor_fx, 0, 0);
    }
    if (level._custom_perks.size > 0) {
        a_keys = getarraykeys(level._custom_perks);
        for (i = 0; i < a_keys.size; i++) {
            if (isdefined(level._custom_perks[a_keys[i]].clientfield_register)) {
                level [[ level._custom_perks[a_keys[i]].clientfield_register ]]();
            }
        }
    }
}

// Namespace zm_perks/zm_perks
// Params 0, eflags: 0x0
// Checksum 0xa2dc647a, Offset: 0x560
// Size: 0xb9c
function function_89e748a7() {
    for (i = 0; i < 4; i++) {
        clientfield::register_clientuimodel("hudItems.perkVapor." + i + ".itemIndex", #"hash_5d152bf7cbeda3ad", [hash(isdefined(i) ? "" + i : ""), #"itemindex"], 1, 5, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("hudItems.perkVapor." + i + ".state", #"hash_5d152bf7cbeda3ad", [hash(isdefined(i) ? "" + i : ""), #"state"], 1, 2, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("hudItems.perkVapor." + i + ".progress", #"hash_5d152bf7cbeda3ad", [hash(isdefined(i) ? "" + i : ""), #"progress"], 1, 5, "float", undefined, 0, 0);
        clientfield::register_clientuimodel("hudItems.perkVapor." + i + ".chargeCount", #"hash_5d152bf7cbeda3ad", [hash(isdefined(i) ? "" + i : ""), #"chargecount"], 1, 3, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("hudItems.perkVapor." + i + ".timerActive", #"hash_5d152bf7cbeda3ad", [hash(isdefined(i) ? "" + i : ""), #"timeractive"], 1, 1, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("hudItems.perkVapor." + i + ".bleedoutOrderIndex", #"hash_5d152bf7cbeda3ad", [hash(isdefined(i) ? "" + i : ""), #"bleedoutorderindex"], 1, 2, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("hudItems.perkVapor." + i + ".bleedoutActive", #"hash_5d152bf7cbeda3ad", [hash(isdefined(i) ? "" + i : ""), #"bleedoutactive"], 1, 1, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("hudItems.perkVapor." + i + ".specialEffectActive", #"hash_5d152bf7cbeda3ad", [hash(isdefined(i) ? "" + i : ""), #"specialeffectactive"], 1, 1, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("hudItems.perkVapor." + i + ".modifierActive", #"hash_5d152bf7cbeda3ad", [hash(isdefined(i) ? "" + i : ""), #"modifieractive"], 6000, 1, "int", undefined, 0, 0);
    }
    clientfield::register_clientuimodel("hudItems.perkVapor.bleedoutProgress", #"hash_5d152bf7cbeda3ad", #"bleedoutprogress", 9000, 8, "float", undefined, 0, 0);
    for (i = 0; i < 9; i++) {
        n_version = 1;
        if (i >= 4) {
            n_version = 8000;
        }
        clientfield::register_clientuimodel("hudItems.extraPerkVapor." + i + ".itemIndex", #"hash_77ee4bf4c3af9d1c", [hash(isdefined(i) ? "" + i : ""), #"itemindex"], n_version, 5, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("hudItems.extraPerkVapor." + i + ".state", #"hash_77ee4bf4c3af9d1c", [hash(isdefined(i) ? "" + i : ""), #"state"], n_version, 2, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("hudItems.extraPerkVapor." + i + ".progress", #"hash_77ee4bf4c3af9d1c", [hash(isdefined(i) ? "" + i : ""), #"progress"], n_version, 5, "float", undefined, 0, 0);
        clientfield::register_clientuimodel("hudItems.extraPerkVapor." + i + ".chargeCount", #"hash_77ee4bf4c3af9d1c", [hash(isdefined(i) ? "" + i : ""), #"chargecount"], n_version, 3, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("hudItems.extraPerkVapor." + i + ".timerActive", #"hash_77ee4bf4c3af9d1c", [hash(isdefined(i) ? "" + i : ""), #"timeractive"], n_version, 1, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("hudItems.extraPerkVapor." + i + ".specialEffectActive", #"hash_77ee4bf4c3af9d1c", [hash(isdefined(i) ? "" + i : ""), #"specialeffectactive"], n_version, 1, "int", undefined, 0, 0);
    }
    if (level.var_c3e5c4cd == 2) {
        clientfield::register("world", "" + #"hash_46334db9e3c76275", 1, 1, "int", &function_9b4bc8e7, 0, 0);
        clientfield::register("scriptmover", "" + #"hash_50eb488e58f66198", 1, 1, "int", &function_52c149b2, 0, 0);
        clientfield::register("allplayers", "" + #"hash_222c3403d2641ea6", 1, 3, "int", &function_ab7cd429, 0, 0);
        clientfield::register("toplayer", "" + #"hash_17283692696da23b", 1, 1, "counter", &function_ccbdf992, 0, 0);
    }
    level thread perk_init_code_callbacks();
}

// Namespace zm_perks/zm_perks
// Params 0, eflags: 0x2 linked
// Checksum 0x836a6ba0, Offset: 0x1108
// Size: 0xa8
function perk_init_code_callbacks() {
    wait(0.1);
    if (level._custom_perks.size > 0) {
        a_keys = getarraykeys(level._custom_perks);
        for (i = 0; i < a_keys.size; i++) {
            if (isdefined(level._custom_perks[a_keys[i]].clientfield_code_callback)) {
                level [[ level._custom_perks[a_keys[i]].clientfield_code_callback ]]();
            }
        }
    }
}

// Namespace zm_perks/zm_perks
// Params 0, eflags: 0x2 linked
// Checksum 0xe540ee04, Offset: 0x11b8
// Size: 0x20
function init_custom_perks() {
    if (!isdefined(level._custom_perks)) {
        level._custom_perks = [];
    }
}

// Namespace zm_perks/zm_perks
// Params 3, eflags: 0x2 linked
// Checksum 0xdbd65af5, Offset: 0x11e0
// Size: 0x66
function register_perk_clientfields(str_perk, func_clientfield_register, func_code_callback) {
    _register_undefined_perk(str_perk);
    level._custom_perks[str_perk].clientfield_register = func_clientfield_register;
    level._custom_perks[str_perk].clientfield_code_callback = func_code_callback;
}

// Namespace zm_perks/zm_perks
// Params 2, eflags: 0x2 linked
// Checksum 0x63fa2740, Offset: 0x1250
// Size: 0x46
function register_perk_effects(str_perk, str_light_effect) {
    _register_undefined_perk(str_perk);
    level._custom_perks[str_perk].machine_light_effect = str_light_effect;
}

// Namespace zm_perks/zm_perks
// Params 2, eflags: 0x2 linked
// Checksum 0xd773999a, Offset: 0x12a0
// Size: 0x46
function register_perk_init_thread(str_perk, func_init_thread) {
    _register_undefined_perk(str_perk);
    level._custom_perks[str_perk].init_thread = func_init_thread;
}

// Namespace zm_perks/zm_perks
// Params 4, eflags: 0x2 linked
// Checksum 0x50137bde, Offset: 0x12f0
// Size: 0x8e
function function_b60f4a9f(str_perk, var_4fbc4ea9, var_347c72d2, var_51f1a532) {
    _register_undefined_perk(str_perk);
    level._custom_perks[str_perk].var_4fbc4ea9 = var_4fbc4ea9;
    level._custom_perks[str_perk].var_347c72d2 = var_347c72d2;
    if (isdefined(var_51f1a532)) {
        level._custom_perks[str_perk].var_51f1a532 = var_51f1a532;
    }
}

// Namespace zm_perks/zm_perks
// Params 0, eflags: 0x2 linked
// Checksum 0x921a702d, Offset: 0x1388
// Size: 0xa0
function init_perk_custom_threads() {
    if (level._custom_perks.size > 0) {
        a_keys = getarraykeys(level._custom_perks);
        for (i = 0; i < a_keys.size; i++) {
            if (isdefined(level._custom_perks[a_keys[i]].init_thread)) {
                level thread [[ level._custom_perks[a_keys[i]].init_thread ]]();
            }
        }
    }
}

// Namespace zm_perks/zm_perks
// Params 1, eflags: 0x2 linked
// Checksum 0x12b16380, Offset: 0x1430
// Size: 0x60
function _register_undefined_perk(str_perk) {
    if (!isdefined(level._custom_perks)) {
        level._custom_perks = [];
    }
    if (!isdefined(level._custom_perks[str_perk])) {
        level._custom_perks[str_perk] = spawnstruct();
    }
}

// Namespace zm_perks/zm_perks
// Params 7, eflags: 0x2 linked
// Checksum 0x20eb5385, Offset: 0x1498
// Size: 0xb4
function perk_meteor_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.meteor_fx = util::playfxontag(fieldname, level._effect[#"perk_meteor"], self, "tag_origin");
        return;
    }
    if (isdefined(self.meteor_fx)) {
        stopfx(fieldname, self.meteor_fx);
    }
}

// Namespace zm_perks/zm_perks
// Params 1, eflags: 0x2 linked
// Checksum 0x462d5ef5, Offset: 0x1558
// Size: 0x6c
function init_perk_machines_fx(*localclientnum) {
    if (!level.enable_magic) {
        return;
    }
    wait(0.1);
    machines = struct::get_array("zm_perk_machine", "targetname");
    array::thread_all(machines, &perk_start_up);
}

// Namespace zm_perks/zm_perks
// Params 0, eflags: 0x2 linked
// Checksum 0x9f35e02a, Offset: 0x15d0
// Size: 0x154
function perk_start_up() {
    if (isdefined(self.script_int)) {
        power_zone = self.script_int;
        for (int = undefined; int != power_zone; int = waitresult.is_on) {
            waitresult = level waittill(#"power_on");
        }
    } else {
        level waittill(#"power_on");
    }
    timer = 0;
    duration = 0.1;
    while (true) {
        if (isdefined(level._custom_perks[self.script_noteworthy]) && isdefined(level._custom_perks[self.script_noteworthy].machine_light_effect)) {
            self thread vending_machine_flicker_light(level._custom_perks[self.script_noteworthy].machine_light_effect, duration);
        }
        timer += duration;
        duration += 0.2;
        if (timer >= 3) {
            break;
        }
        wait(duration);
    }
}

// Namespace zm_perks/zm_perks
// Params 2, eflags: 0x2 linked
// Checksum 0xcb171301, Offset: 0x1730
// Size: 0x64
function vending_machine_flicker_light(fx_light, duration) {
    players = level.localplayers;
    for (i = 0; i < players.size; i++) {
        self thread play_perk_fx_on_client(i, fx_light, duration);
    }
}

// Namespace zm_perks/zm_perks
// Params 3, eflags: 0x2 linked
// Checksum 0x78ee920c, Offset: 0x17a0
// Size: 0xc4
function play_perk_fx_on_client(client_num, fx_light, duration) {
    fxobj = spawn(client_num, self.origin + (0, 0, -50), "script_model");
    fxobj setmodel(#"tag_origin");
    util::playfxontag(client_num, level._effect[fx_light], fxobj, "tag_origin");
    wait(duration);
    fxobj delete();
}

// Namespace zm_perks/zm_perks
// Params 7, eflags: 0x2 linked
// Checksum 0x4d70bd76, Offset: 0x1870
// Size: 0x6c
function function_ccbdf992(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self playrenderoverridebundle(#"hash_4659ecede94f0b38", "tag_accessory_left");
    }
}

// Namespace zm_perks/zm_perks
// Params 2, eflags: 0x0
// Checksum 0x494edb13, Offset: 0x18e8
// Size: 0x152
function function_35ba0b0e(localclientnum, n_slot) {
    level endon(#"demo_jump");
    self endon(#"death");
    self zm_loadout::function_622d8349(localclientnum);
    n_perk = n_slot + 1;
    var_3e311473 = self zm_loadout::get_loadout_item(localclientnum, "specialty" + n_perk);
    if (!isdefined(var_3e311473)) {
        return;
    }
    s_perk = getunlockableiteminfofromindex(var_3e311473, 3);
    if (!isdefined(s_perk) || !isdefined(s_perk.specialties) || !isdefined(s_perk.specialties[0])) {
        return;
    }
    str_perk = s_perk.specialties[0];
    if (isstring(str_perk)) {
        var_16c042b8 = hash(str_perk);
    }
    return var_16c042b8;
}

// Namespace zm_perks/zm_perks
// Params 3, eflags: 0x0
// Checksum 0x880a03b1, Offset: 0x1a48
// Size: 0x136
function function_5b123b68(localclientnum, b_show, b_use_offset = 0) {
    if (isdefined(self.var_d67a4862)) {
        stopfx(localclientnum, self.var_d67a4862);
    }
    if (b_show) {
        v_angles = self gettagangles("fx_tag_base_emblem");
        v_origin = self gettagorigin("fx_tag_base_emblem");
        if (b_use_offset && isdefined(self.var_7ad76c54)) {
            v_origin -= anglestoforward(v_angles) * self.var_7ad76c54;
        }
        self.var_d67a4862 = playfx(localclientnum, self.var_be82764e, v_origin, anglestoforward(v_angles));
        return;
    }
    self.var_d67a4862 = undefined;
}

// Namespace zm_perks/zm_perks
// Params 2, eflags: 0x4
// Checksum 0x4b0d6ccf, Offset: 0x1b88
// Size: 0x52
function private function_be3ae9c5(n_value, var_51e3f61d = 0) {
    if (n_value < 5) {
        if (var_51e3f61d && n_value == 0) {
            return true;
        }
        return false;
    }
    return true;
}

// Namespace zm_perks/zm_perks
// Params 7, eflags: 0x2 linked
// Checksum 0xc917de6f, Offset: 0x1be8
// Size: 0x104
function function_9b4bc8e7(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level endon(#"demo_jump");
    if (bwastimejump) {
        while (!isdefined(level.var_aaf8da70)) {
            waitframe(1);
            level.var_aaf8da70 = getent(fieldname, "zeus_bird_head", "targetname");
        }
        util::playfxontag(fieldname, level._effect[#"hash_46334db9e3c76275"], level.var_aaf8da70, "bird_follow_jnt");
        level.var_aaf8da70 thread function_6a0a572d(fieldname);
    }
}

// Namespace zm_perks/zm_perks
// Params 1, eflags: 0x2 linked
// Checksum 0x2c230885, Offset: 0x1cf8
// Size: 0x88
function function_6a0a572d(localclientnum) {
    level endon(#"demo_jump");
    self endon(#"death");
    while (true) {
        wait(randomintrange(5, 20));
        self playsound(localclientnum, #"hash_62f87027921fa5b4");
    }
}

// Namespace zm_perks/zm_perks
// Params 7, eflags: 0x2 linked
// Checksum 0x8bcd43d1, Offset: 0x1d88
// Size: 0xc2
function function_52c149b2(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (!isdefined(level.var_aaf8da70)) {
            level.var_aaf8da70 = util::spawn_model(fieldname, "p8_fxanim_zm_vapor_altar_zeus_bird_head_mod", self gettagorigin("tag_bird_head"), self gettagangles("tag_bird_head"));
            level.var_aaf8da70.targetname = "zeus_bird_head";
        }
    }
}

// Namespace zm_perks/zm_perks
// Params 7, eflags: 0x2 linked
// Checksum 0xc63834ec, Offset: 0x1e58
// Size: 0x2a4
function function_ab7cd429(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level endon(#"demo_jump");
    if (!isdefined(level.var_aaf8da70)) {
        level.var_aaf8da70 = getent(fieldname, "zeus_bird_head", "targetname");
    }
    var_aaf8da70 = level.var_aaf8da70;
    if (!isdefined(var_aaf8da70)) {
        return;
    }
    var_aaf8da70 endon(#"death");
    if (!isdefined(level.var_245eb09f)) {
        level.var_245eb09f = var_aaf8da70.angles;
        if (level.var_245eb09f[1] == 360) {
            level.var_245eb09f = (0, 0, 0);
        }
    }
    level notify(#"hash_4d8d403fdb281b69");
    wait(0.5);
    if (bwastimejump == 0) {
        var_6d877f48 = array::random(array((7, 7, 7), (-7, -7, -7), (-7, 7, 7), (7, -7, -7)));
        var_aaf8da70 rotateto(level.var_245eb09f + var_6d877f48, 0.2);
        wait(0.8);
        var_aaf8da70 rotateto(level.var_245eb09f, 0.1);
        return;
    }
    var_165f12bb = array::random(array((17, 30, 25), (-10, -30, -25), (-10, 30, 25), (17, -30, -25)));
    var_aaf8da70 rotateto(level.var_245eb09f + var_165f12bb, 0.15);
    var_aaf8da70 thread function_1625e105(self);
}

// Namespace zm_perks/zm_perks
// Params 1, eflags: 0x2 linked
// Checksum 0x537af84f, Offset: 0x2108
// Size: 0x160
function function_1625e105(e_player) {
    if (!isdefined(e_player)) {
        return;
    }
    level endon(#"demo_jump", #"hash_4d8d403fdb281b69");
    e_player endon(#"death");
    self endon(#"death");
    wait(1);
    while (isdefined(e_player)) {
        var_d1d1cc92 = e_player gettagorigin("j_head");
        if (!isdefined(var_d1d1cc92)) {
            var_d1d1cc92 = e_player.origin;
        }
        if (vectordot(vectornormalize(var_d1d1cc92 - self.origin), anglestoforward(level.var_245eb09f)) > 0.5) {
            var_a8dcfa = vectortoangles(var_d1d1cc92 - self.origin);
            self rotateto(var_a8dcfa, 0.15);
        }
        wait(0.15);
    }
}


// Atian COD Tools GSC CW decompiler test
#using script_4a6f4e6c1c838e01;
#using script_6f8610e78fdd3440;
#using script_7e3221b6c80d8cc4;
#using script_139ae0bb0a87141c;
#using script_912160eeb6a2d51;
#using script_5450c003e8a913b7;
#using script_1883fa4e60abbf9f;
#using script_42310dfa1362069f;
#using script_16a28d93ee216f6f;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace manager;

// Namespace manager/manager
// Params 2, eflags: 0x0
// Checksum 0xa193a9ea, Offset: 0x2f0
// Size: 0x14
function function_aec6058a(*ent, *vol) {
    
}

#namespace namespace_393f6012;

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0xaa91eb98, Offset: 0x310
// Size: 0x134
function function_f9682fd() {
    if (isdefined(level.stealth)) {
        return;
    }
    init();
    callback::on_spawned(&on_player_spawned);
    callback::on_ai_spawned(&on_ai_spawned);
    level thread function_94e62837();
    level thread function_b88a8984();
    level thread function_f880882d();
    level thread function_807b87bc();
    if (getdvarint(#"hash_4e997f8f5fb7bc59", 0)) {
        function_3da9b41a();
    }
    level.var_8bca2033 = &namespace_979752dc::function_2baa2568;
    /#
        thread function_4334ac55();
    #/
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x904f331f, Offset: 0x450
// Size: 0x54
function on_player_spawned() {
    if (!isdefined(self.stealth)) {
        namespace_a8f68e3c::function_f69dc195(level flag::get("stealth_enabled"));
    }
    self thread function_5322dede();
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x357fa29, Offset: 0x4b0
// Size: 0x34
function on_ai_spawned() {
    if (isdefined(self.var_de6a9e87) && self.var_de6a9e87) {
        self thread namespace_979752dc::function_a9e01a52();
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0xd488f9e8, Offset: 0x4f0
// Size: 0x3c4
function init() {
    level flag::init("stealth_enabled", 1);
    level flag::init("stealth_spotted");
    level.stealth = spawnstruct();
    level.stealth.var_33b5cf8f = spawnstruct();
    level.stealth.save = spawnstruct();
    level.stealth.sentientevents = "sentientevents_stealth";
    /#
        level.stealth.debug = spawnstruct();
        level.stealth.debug.screen = [];
    #/
    level.stealth.var_8fb63790 = [];
    level.stealth.funcs = [];
    level.stealth.var_33b5cf8f.state = "hidden";
    level.stealth.var_33b5cf8f.range = [];
    level.stealth.var_33b5cf8f.range[#"hidden"] = [];
    level.stealth.var_33b5cf8f.range[#"hash_67ac95dafb7278ea"] = [];
    level.stealth.var_33b5cf8f.var_67773281[#"hidden"] = [];
    level.stealth.var_33b5cf8f.var_67773281[#"hash_67ac95dafb7278ea"] = [];
    level.stealth.var_33b5cf8f.timeout = 5;
    namespace_cc4354b9::function_5ad0e5ed();
    namespace_cf88f507::function_b0b43e2d();
    level.stealth.var_e0bf0e61 = 3000;
    level.stealth.var_5a894436 = 20;
    level.stealth.group = spawnstruct();
    level.stealth.group.flags = [];
    level.stealth.group.groups = [];
    level.stealth.group.var_a756572e = [];
    level.stealth.group.var_9876bb0 = [];
    level.stealth.var_51707c9 = [];
    function_8391d8fc();
    function_edb27f4b();
    namespace_5cd4acd8::function_83fc0e8c();
    function_9b8c54e();
    namespace_979752dc::function_87d5242b();
    if (!isdefined(level.var_999e1a2a)) {
        level.var_999e1a2a = 2048;
    }
    level.stealth.var_1ede1f8e = 1;
    level.var_a8072505 = &namespace_979752dc::function_7211414e;
    function_7c5690bc();
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x9770143b, Offset: 0x8c0
// Size: 0x8a
function function_7c5690bc() {
    level namespace_979752dc::function_16184343("do_stealth", &namespace_979752dc::function_115bcc6e);
    namespace_f1f700ac::function_96d43109();
    level.stealth.var_76e3c1b8 = &namespace_979752dc::function_48fc612d;
    level.stealth.var_56593139 = undefined;
    level.stealth.var_7c1f8049 = &namespace_979752dc::function_fd7b3c0c;
}

// Namespace namespace_393f6012/manager
// Params 1, eflags: 0x2 linked
// Checksum 0x60dae609, Offset: 0x958
// Size: 0x23c
function function_8391d8fc(var_a61f445d) {
    var_c18b5366 = [];
    if (is_true(var_a61f445d)) {
        var_c18b5366[#"prone"] = 150;
        var_c18b5366[#"crouch"] = 350;
        var_c18b5366[#"stand"] = 600;
    } else {
        var_c18b5366[#"prone"] = 400;
        var_c18b5366[#"crouch"] = 800;
        var_c18b5366[#"stand"] = 1500;
    }
    var_b80b11c6 = [];
    var_b80b11c6[#"prone"] = 8192;
    var_b80b11c6[#"crouch"] = 8192;
    var_b80b11c6[#"stand"] = 8192;
    namespace_979752dc::function_d77caf21(var_c18b5366, var_b80b11c6);
    var_90bb9561 = [];
    var_90bb9561[#"prone"] = 130;
    var_90bb9561[#"crouch"] = 215;
    var_90bb9561[#"stand"] = 300;
    var_a8964800 = [];
    var_a8964800[#"prone"] = 300;
    var_a8964800[#"crouch"] = 375;
    var_a8964800[#"stand"] = 450;
    namespace_979752dc::function_2ebddb99(var_90bb9561, var_a8964800);
    namespace_cc4354b9::function_950e6902();
    namespace_979752dc::function_38a8c85d(0);
    function_ee37d644("hidden");
}

// Namespace namespace_393f6012/manager
// Params 2, eflags: 0x2 linked
// Checksum 0xd98f3974, Offset: 0xba0
// Size: 0x2c6
function function_53150079(hidden, var_5cad848d) {
    var_250a510c = 0.25;
    if (isdefined(hidden)) {
        level.stealth.var_33b5cf8f.range[#"hidden"][#"prone"] = hidden[#"prone"];
        level.stealth.var_33b5cf8f.range[#"hidden"][#"crouch"] = hidden[#"crouch"];
        level.stealth.var_33b5cf8f.range[#"hidden"][#"stand"] = hidden[#"stand"];
        if (!isdefined(hidden[#"hash_48996f6e7b2a8a21"])) {
            hidden[#"hash_48996f6e7b2a8a21"] = var_250a510c;
        }
        level.stealth.var_33b5cf8f.range[#"hidden"][#"hash_48996f6e7b2a8a21"] = hidden[#"hash_48996f6e7b2a8a21"];
    }
    if (isdefined(var_5cad848d)) {
        level.stealth.var_33b5cf8f.range[#"hash_67ac95dafb7278ea"][#"prone"] = var_5cad848d[#"prone"];
        level.stealth.var_33b5cf8f.range[#"hash_67ac95dafb7278ea"][#"crouch"] = var_5cad848d[#"crouch"];
        level.stealth.var_33b5cf8f.range[#"hash_67ac95dafb7278ea"][#"stand"] = var_5cad848d[#"stand"];
        if (!isdefined(var_5cad848d[#"hash_48996f6e7b2a8a21"])) {
            var_5cad848d[#"hash_48996f6e7b2a8a21"] = var_250a510c;
        }
        level.stealth.var_33b5cf8f.range[#"hash_67ac95dafb7278ea"][#"hash_48996f6e7b2a8a21"] = var_5cad848d[#"hash_48996f6e7b2a8a21"];
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x4899f056, Offset: 0xe70
// Size: 0x10a
function function_94e62837() {
    while (1) {
        level flag::wait_till("stealth_enabled");
        namespace_6c0cd084::function_c5861edc(1);
        level flag::wait_till("stealth_spotted");
        if (!level flag::get("stealth_enabled")) {
            continue;
        }
        function_ee37d644("spotted");
        level flag::wait_till_clear("stealth_spotted");
        if (!level flag::get("stealth_enabled")) {
            continue;
        }
        function_ee37d644("hidden");
        waittillframeend();
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x7c3b39b, Offset: 0xf88
// Size: 0x1a4
function function_8f73eada() {
    if (isdefined(level.stealth.var_9bd7a27)) {
        foreach (group in level.stealth.var_9bd7a27.groups) {
            if (namespace_3fc78cb6::function_ec43a43a(group.name)) {
                return 1;
            }
        }
    }
    ais = getactorteamarray("axis", "team3");
    foreach (guy in ais) {
        if (!isdefined(guy.stealth) && isdefined(guy.finished_spawning) && isdefined(guy.enemy) && guy.enemy == self) {
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x2c392541, Offset: 0x1138
// Size: 0x1c6
function function_5322dede() {
    waitframe(1);
    var_10415f32 = 0;
    while (1) {
        if (level flag::get("stealth_enabled")) {
            var_1438b028 = function_8f73eada();
            if (var_1438b028) {
                if (!var_10415f32 && isdefined(level.stealth.var_cf2c3260)) {
                    wait(level.stealth.var_cf2c3260);
                    if (!function_8f73eada()) {
                        waitframe(1);
                        continue;
                    }
                }
                if (!level flag::get("stealth_spotted")) {
                    level flag::set("stealth_spotted");
                    if (isdefined(self.stealth)) {
                        var_1dd006fc = self namespace_979752dc::function_135ab417("stealth_spotted");
                        level flag::set(var_1dd006fc);
                    }
                }
            } else if (level flag::get("stealth_spotted")) {
                namespace_979752dc::function_740dbf99();
                if (isdefined(self.stealth)) {
                    var_1dd006fc = self namespace_979752dc::function_135ab417("stealth_spotted");
                    level flag::clear(var_1dd006fc);
                }
            }
            var_10415f32 = var_1438b028;
        }
        waitframe(1);
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x65f40b85, Offset: 0x1308
// Size: 0xe0
function function_b88a8984() {
    level.stealth.enemies[#"axis"] = [];
    level.stealth.enemies[#"allies"] = [];
    while (1) {
        level flag::wait_till("stealth_enabled");
        level.stealth.enemies[#"axis"] = getplayers();
        level.stealth.enemies[#"allies"] = getactorteamarray("axis");
        wait(0.05);
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0xcf4de6fb, Offset: 0x13f0
// Size: 0x108
function function_f880882d() {
    while (1) {
        level flag::wait_till("stealth_enabled");
        if (isdefined(level.stealth.var_ebbdef7a) && level.stealth.var_ebbdef7a.size != 0) {
            foreach (group, var_462028a0 in level.stealth.var_ebbdef7a) {
                namespace_5cd4acd8::function_4ec3af07(group, var_462028a0);
                wait(0.2);
            }
        } else {
            wait(0.5);
        }
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x37f5cb3d, Offset: 0x1500
// Size: 0x4c
function function_807b87bc() {
    while (1) {
        level flag::wait_till("stealth_enabled");
        level.stealth.var_69fc8bf2 = 0;
        wait(0.05);
    }
}

// Namespace namespace_393f6012/manager
// Params 1, eflags: 0x2 linked
// Checksum 0xb3033818, Offset: 0x1558
// Size: 0x7c
function function_ee37d644(name) {
    level.stealth.var_33b5cf8f.state = name;
    if (name == "spotted") {
        loadsentienteventparameters("sentientevents");
    } else {
        loadsentienteventparameters(level.stealth.sentientevents);
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x880f7f7e, Offset: 0x15e0
// Size: 0x6c
function function_9b8c54e() {
    level flag::init("stealth_player_nade");
    level.stealth.save.var_26ac7bb7 = 0;
    array::thread_all(getplayers(), &function_18f089a0);
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x6aff4afa, Offset: 0x1658
// Size: 0x80
function function_18f089a0() {
    while (1) {
        self waittill(#"grenade_pullback");
        level flag::set("stealth_player_nade");
        waitresult = undefined;
        waitresult = self waittill(#"grenade_fire");
        thread function_326e506b(waitresult.projectile);
    }
}

// Namespace namespace_393f6012/manager
// Params 1, eflags: 0x2 linked
// Checksum 0x2372edfe, Offset: 0x16e0
// Size: 0x94
function function_326e506b(grenade) {
    level.stealth.save.var_26ac7bb7++;
    grenade waittilltimeout(10, #"death");
    level.stealth.save.var_26ac7bb7--;
    waittillframeend();
    if (!level.stealth.save.var_26ac7bb7) {
        level flag::clear("stealth_player_nade");
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x481ee05c, Offset: 0x1780
// Size: 0x184
function function_3da9b41a() {
    if (is_true(level.var_aba23231)) {
        return;
    }
    if (isdefined(level.stealth)) {
        if (!isdefined(level.stealth.var_c7c59c30)) {
            level.stealth.var_c7c59c30 = spawnstruct();
            level.stealth.var_c7c59c30.doors = [];
            level.stealth.var_c7c59c30.var_a17effe9 = 30;
            level.stealth.var_c7c59c30.var_9dc56984 = function_a3f6cdac(600);
            level.stealth.var_c7c59c30.var_afbd85c2 = function_a3f6cdac(500);
            level.stealth.var_c7c59c30.var_e055a590 = function_a3f6cdac(300);
        }
        level namespace_979752dc::function_16184343("suspicious_door", &namespace_cc4354b9::function_bd918ca2);
        level namespace_cf88f507::function_9b9a90d8("investigate", "suspicious_door", 20);
    }
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0xb8d2ea2b, Offset: 0x1910
// Size: 0x7e4
function function_edb27f4b() {
    level.stealth.var_ba446feb = [];
    level.stealth.var_d89f1312 = [];
    level.stealth.var_65d8f1bf = [];
    var_d8b79165 = getentarray("info_volume_stealth_all", "variantname");
    volumes = getentarray("info_volume_stealth_combat", "variantname");
    volumes = arraycombine(volumes, var_d8b79165);
    if (isdefined(volumes)) {
        foreach (vol in volumes) {
            /#
                assert(isdefined(vol.var_d6319e36), "<unknown string>" + vol.origin);
            #/
            /#
                assert(vol.var_d6319e36 != "<unknown string>" && vol.var_d6319e36 != "<unknown string>", "<unknown string>" + vol.origin);
            #/
            groups = strtok(vol.var_d6319e36, " ");
            foreach (group in groups) {
                /#
                    if (isdefined(level.stealth.var_ba446feb[group])) {
                        iprintln("<unknown string>" + group + "<unknown string>" + vol.origin + "<unknown string>" + level.stealth.var_ba446feb[group].origin);
                    }
                #/
                level.stealth.var_ba446feb[group] = vol;
            }
        }
    }
    volumes = getentarray("info_volume_stealth_hunt", "variantname");
    volumes = arraycombine(volumes, var_d8b79165);
    if (isdefined(volumes)) {
        foreach (vol in volumes) {
            /#
                assert(isdefined(vol.var_d6319e36), "<unknown string>" + vol.origin);
            #/
            /#
                assert(vol.var_d6319e36 != "<unknown string>" && vol.var_d6319e36 != "<unknown string>", "<unknown string>" + vol.origin);
            #/
            groups = strtok(vol.var_d6319e36, " ");
            foreach (group in groups) {
                /#
                    if (isdefined(level.stealth.var_d89f1312[group])) {
                        iprintln("<unknown string>" + group + "<unknown string>" + vol.origin + "<unknown string>" + level.stealth.var_d89f1312[group].origin);
                    }
                #/
                level.stealth.var_d89f1312[group] = vol;
            }
        }
    }
    volumes = getentarray("info_volume_stealth_investigate", "variantname");
    volumes = arraycombine(volumes, var_d8b79165, 0, 0);
    if (isdefined(volumes)) {
        foreach (vol in volumes) {
            /#
                assert(isdefined(vol.var_d6319e36), "<unknown string>" + vol.origin);
            #/
            /#
                assert(vol.var_d6319e36 != "<unknown string>" && vol.var_d6319e36 != "<unknown string>", "<unknown string>" + vol.origin);
            #/
            groups = strtok(vol.var_d6319e36, " ");
            foreach (group in groups) {
                /#
                    if (isdefined(level.stealth.var_65d8f1bf[group])) {
                        iprintln("<unknown string>" + group + "<unknown string>" + vol.origin + "<unknown string>" + level.stealth.var_65d8f1bf[group].origin);
                    }
                #/
                level.stealth.var_65d8f1bf[group] = vol;
            }
        }
    }
    thread function_e1ee46bb("trigger_multiple_stealth_shadow", "stealth_in_shadow", 1);
    thread function_e1ee46bb("trigger_multiple_stealth_flashlight_on", "flashlight_on", 0);
    thread function_e1ee46bb("trigger_multiple_stealth_flashlight_off", "flashlight_off", 0);
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x0
// Checksum 0x1e1ed757, Offset: 0x2100
// Size: 0x4a
function function_3ae93599() {
    if (isdefined(level.stealth) && isdefined(level.stealth.var_b33db208)) {
        return [[ level.stealth.var_b33db208 ]]();
    }
    return 0;
}

// Namespace namespace_393f6012/manager
// Params 3, eflags: 0x6 linked
// Checksum 0xbaf8a614, Offset: 0x2158
// Size: 0xd0
function private function_e1ee46bb(targetname, var_a7c14b20, var_1910605e) {
    triggers = getentarray(targetname, "targetname");
    foreach (trig in triggers) {
        trig thread function_5ca45f26(trig, var_a7c14b20, var_1910605e);
    }
}

// Namespace namespace_393f6012/manager
// Params 3, eflags: 0x6 linked
// Checksum 0x923f8296, Offset: 0x2230
// Size: 0x12e
function private function_5ca45f26(trigger, var_a7c14b20, var_1910605e) {
    trigger endon(#"death");
    if (is_true(var_1910605e)) {
        if (!isdefined(level.var_5ca45f26)) {
            level.var_5ca45f26 = [];
        }
        if (!isdefined(level.var_5ca45f26[var_a7c14b20])) {
            level.var_5ca45f26[var_a7c14b20] = [];
        }
        level.var_5ca45f26[var_a7c14b20][level.var_5ca45f26[var_a7c14b20].size] = trigger;
    }
    while (1) {
        waitresult = undefined;
        waitresult = trigger waittill(#"trigger");
        other = waitresult.activator;
        if (other flag::get(var_a7c14b20)) {
            continue;
        }
        other thread function_5e5e064d(trigger, var_a7c14b20);
        waitframe(1);
    }
}

// Namespace namespace_393f6012/manager
// Params 2, eflags: 0x6 linked
// Checksum 0x34a291e2, Offset: 0x2368
// Size: 0x84
function private function_5e5e064d(volume, var_a7c14b20) {
    self endon(#"death");
    self flag::set(var_a7c14b20);
    while (isdefined(volume) && self istouching(volume)) {
        waitframe(1);
    }
    self flag::clear(var_a7c14b20);
}


// Atian COD Tools GSC CW decompiler test
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\bb.gsc;
#using script_267e1d16ae28392b;
#using script_7d0013bbc05623b9;
#using script_3d18e87594285298;
#using script_52da18c20f45c56a;
#using script_5431e074c1428743;
#using script_3626f1b2cf51a99c;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_6cecf2d8;

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 0, eflags: 0x5
// Checksum 0xbc2d04ea, Offset: 0x3d8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_7ee44bf733d7a7ac", &function_70a657d8, undefined, undefined, #"hash_7e93e9089f28804f");
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 0, eflags: 0x6 linked
// Checksum 0x400add41, Offset: 0x428
// Size: 0xac
function private function_70a657d8() {
    if (!isdefined(level.var_3b825129)) {
        level.var_3b825129 = spawnstruct();
        actions::function_9ddfe2d("body_shield", &function_53e50b40, "takedown", "grab");
        actions::function_b1543a9d("body_shield", "td_anims_body_shield");
        animation::add_global_notetrack_handler("start_bodyshield_gesture", &function_89295627, 0);
    }
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x2 linked
// Checksum 0xf3fd020d, Offset: 0x4e0
// Size: 0xc2
function function_53e50b40(action) {
    self endon(action.ender);
    if (is_true(self actions::function_83bde308(action))) {
        if (self.var_2e402479.var_67582ca5.var_f467e5b0.enabled[#"hash_413d7f278223513"] === 0) {
            return 0;
        }
        self thread function_e3e4c03c(action, self.var_2e402479.var_67582ca5);
        self.var_2e402479.var_67582ca5 = undefined;
        return 1;
    }
    return 0;
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 2, eflags: 0x2 linked
// Checksum 0x479eb473, Offset: 0x5b0
// Size: 0x694
function function_e3e4c03c(action, body) {
    /#
        assert(isplayer(self));
    #/
    if (!isdefined(action)) {
        action = level.var_f467e5b0.actions[#"hash_413d7f278223513"];
    }
    if (isalive(body)) {
        if (body scene::function_c935c42()) {
            [[ body._scene_object._o_scene ]]->stop();
        }
        body stopanimscripted();
    }
    if (!isalive(body)) {
        self actions::function_942d9213();
        return;
    }
    bb::function_cd497743("bodyshield_grab", self);
    var_2dcf841c = self actions::function_abaa32c("body_shield");
    if (!isdefined(var_2dcf841c)) {
        var_2dcf841c = namespace_9c83b58d::function_3c43bd2a(action, body, self);
    }
    if (!isdefined(var_2dcf841c.scene)) {
        return;
    }
    self flag::set("body_shield_active");
    self flag::set("body_shield_gun_up");
    self thread function_257c21b5(action);
    self.var_d3b4e4f4 = &function_fc288808;
    self.var_852e84c9 = &actions::function_e972f9a5;
    if (!isdefined(self.var_2e402479)) {
        self.var_2e402479 = spawnstruct();
    }
    self.var_2e402479.var_3b825129 = spawnstruct();
    self.var_2e402479.var_3b825129.model = body.model;
    self.var_2e402479.var_3b825129.classname = body.classname;
    self.var_2e402479.var_3b825129.spawner = body.spawner;
    self.var_2e402479.var_3b825129.weapons = body.weapons;
    self.var_2e402479.var_3b825129.aitype = body.aitype;
    self.var_2e402479.var_3b825129.health = 70;
    self.var_2e402479.var_3b825129.var_82bfd108 = self.var_2e402479.var_3b825129.health;
    self.var_2e402479.var_3b825129.var_70faf312 = self.var_2e402479.var_3b825129.health;
    self.var_2e402479.var_3b825129.var_ea2da6bc = gettime();
    if (isai(body)) {
        self.var_2e402479.var_3b825129.actor = body;
        body notify(#"hash_360f7808f74fa016");
    }
    for (i = 0; i < body getattachsize(); i++) {
        self.var_2e402479.var_3b825129.var_cf230c0[i] = body getattachmodelname(i);
        self.var_2e402479.var_3b825129.var_8afc2ef3[i] = body getattachtagname(i);
    }
    self notify(#"hash_7bb00eb4a96f2626");
    self namespace_594b67e::function_6cd69890(0);
    self.var_2e402479.body = body;
    var_17813638 = isdefined(var_2dcf841c.var_17813638) ? var_2dcf841c.var_17813638 : self namespace_9c83b58d::function_5169db86();
    if (!isdefined(self.var_2e402479.body.animname)) {
        self.var_2e402479.body.animname = "generic";
    }
    self.var_2e402479.body.var_69defa17 = 1;
    self.var_2e402479.body show();
    self.var_2e402479.body util::delay(0.2, undefined, &namespace_f48ab2e1::function_ee7adae5, #"actions");
    self util::delay(0.5, undefined, &function_40622d99);
    self util::delay(0.2, undefined, &val::set, #"action", "takedamage", 0);
    var_17813638 namespace_594b67e::scene_play(var_2dcf841c.scene, self, body);
    self thread namespace_594b67e::function_d76eed10(action);
    self namespace_594b67e::function_464d0412();
    if (body !== self.var_2e402479.body) {
        body delete();
    }
    self.var_fb9a2c03 = undefined;
    self thread function_a8501d78(action);
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 0, eflags: 0x6 linked
// Checksum 0x6a0807cc, Offset: 0xc50
// Size: 0x12c
function private function_40622d99() {
    /#
        assert(isplayer(self));
    #/
    self endon(#"death", #"disconnect");
    var_62ba1300 = self namespace_594b67e::function_1a2a3654();
    if (var_62ba1300 !== self getcurrentweapon()) {
        self switchtoweaponimmediate(var_62ba1300);
        self hideviewmodel();
        while (self getcurrentweapon() !== var_62ba1300) {
            waitframe(1);
        }
        self util::delay(0.2, undefined, &showviewmodel);
        self namespace_594b67e::function_3ceda691(self.var_621f8539, undefined, undefined, undefined, undefined, 1);
    }
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x2 linked
// Checksum 0x2d4b5e24, Offset: 0xd88
// Size: 0x3a
function function_ead8fde7(active) {
    self.var_108942e2 = is_true(active) ? 1 : undefined;
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x2 linked
// Checksum 0xa6073951, Offset: 0xdd0
// Size: 0x84
function function_fc288808(*quick) {
    if (self flag::get("body_shield_gun_up")) {
        self namespace_594b67e::function_6cd69890(1, 1, self namespace_594b67e::function_98f117ad("ges_body_shield"));
    } else {
        self namespace_594b67e::function_6cd69890(1, 1);
    }
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x2 linked
// Checksum 0xb0d961d2, Offset: 0xe60
// Size: 0x34c
function function_a8501d78(action) {
    self endon(action.ender);
    /#
        assert(isplayer(self));
    #/
    self flag::clear("body_shield_gun_up");
    self namespace_594b67e::function_e2fcacb2(3);
    namespace_32b4992a::function_533e57d6(self, 1);
    override = self actions::function_abaa32c("body_shield");
    var_df227d8a = actions::function_1028d928(action.name, "a");
    if (var_df227d8a) {
        self childthread namespace_e1cd3aae::function_d521a78f();
    }
    self function_ead8fde7(action.name == "body_shield");
    self val::set(#"action", "takedamage", 1);
    self namespace_594b67e::function_6cd69890(1);
    self namespace_594b67e::function_2795d678(1, 1, 0, 0, [1:"cinematicmotion_body_shield_ads", 0:"cinematicmotion_body_shield"]);
    self.var_2e402479.var_3b825129.actor namespace_594b67e::function_35d0bd11(1);
    self.var_2e402479.body show();
    self.var_2e402479.body linkto(self, "tag_origin", vectorscale((-1, 0, 0), 1000), (0, 0, 0));
    self.var_2e402479.body namespace_594b67e::function_b82cae8f(1);
    self thread function_756e29bb(action, isdefined(override.anim_name) ? override.anim_name : action.anim_name);
    self.var_2e402479.var_17813638 = undefined;
    self childthread function_c6059aa(action);
    self childthread function_c13ab5c7(action);
    self childthread function_7acc6ae7(action);
    self childthread function_e98922fb(action);
    if (var_df227d8a) {
        self util::delay(0.2, undefined, &actions::function_3af7d065, 1);
    }
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 0, eflags: 0x2 linked
// Checksum 0x65e77c63, Offset: 0x11b8
// Size: 0x28
function function_89295627() {
    player = getplayers()[0];
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 6, eflags: 0x2 linked
// Checksum 0xe8b36b5f, Offset: 0x11e8
// Size: 0x4c0
function function_756e29bb(action, anim_name, var_c09e9b1c, var_d60fb210, var_2e7da7fb, var_7369af2b) {
    self notify("250887938b7d1675");
    self endon("250887938b7d1675");
    self endoncallback(&function_d6fbc26, action.ender, #"hash_6e2a24679f8eca8e");
    if (isdefined(var_d60fb210)) {
        self endon(var_d60fb210);
    }
    self.var_de5476af = undefined;
    self.var_a7f1f0d6 = undefined;
    var_7e8992c4 = isdefined(var_7369af2b) ? var_7369af2b : 0.05;
    weapon = self getcurrentweapon();
    var_36a368e3 = "ges_body_shield";
    if (isdefined(var_c09e9b1c)) {
        var_36a368e3 = var_c09e9b1c;
    }
    gesture = self namespace_594b67e::function_98f117ad(var_36a368e3);
    var_991552e7 = self namespace_594b67e::function_98f117ad(var_36a368e3, "ads");
    firstframe = 1;
    self thread namespace_594b67e::function_6e8e5902(action.ender);
    self childthread function_2513e926(action);
    if (!is_true(var_2e7da7fb)) {
        self childthread function_80f856a8(action, anim_name, var_7369af2b);
    }
    self childthread function_8ebed231(action);
    while (1) {
        var_2ec5b92f = self namespace_594b67e::function_29fd0abd();
        var_fcd67307 = self namespace_594b67e::function_bda1ed48();
        var_bd287b18 = self function_1dcff2c3(weapon);
        if (!var_bd287b18 && (var_2ec5b92f !== self.var_de5476af || var_fcd67307 !== self.var_a7f1f0d6)) {
            var_adb7de30 = undefined;
            if (var_2ec5b92f !== self.var_de5476af) {
                if (var_2ec5b92f) {
                    self namespace_594b67e::function_3ceda691(var_991552e7, undefined, 1, var_7e8992c4);
                    self.var_2e402479.gesture = var_991552e7;
                    if (isdefined(self.var_de5476af)) {
                        var_adb7de30 = "_ads_in";
                    }
                } else {
                    self namespace_594b67e::function_3ceda691(gesture, undefined, 1, var_7e8992c4);
                    self.var_2e402479.gesture = gesture;
                    if (isdefined(self.var_de5476af)) {
                        var_adb7de30 = "_ads_out";
                    }
                }
            }
            self.var_de5476af = var_2ec5b92f;
            self.var_a7f1f0d6 = var_fcd67307;
            if (!is_true(var_2e7da7fb)) {
                var_7e8992c4 = 0.2;
                if (firstframe) {
                    firstframe = 0;
                    waitframe(1);
                    continue;
                }
                if (isdefined(var_adb7de30)) {
                    if (isdefined(self.var_2e402479.body)) {
                        self.var_2e402479.body thread namespace_594b67e::function_3f4de57b(anim_name + var_adb7de30);
                    }
                    if (isdefined(self.var_6639d45b)) {
                        if (var_bd287b18) {
                            self.var_6639d45b thread namespace_594b67e::function_3f4de57b(anim_name + var_adb7de30);
                        } else {
                            self.var_6639d45b namespace_594b67e::function_3f4de57b(anim_name + var_adb7de30);
                        }
                    }
                    self.var_a7f1f0d6 = undefined;
                }
            }
        }
        if (var_bd287b18) {
            self function_501ef65d(weapon);
            self namespace_594b67e::function_e4d5a38c(var_991552e7, 0, 1);
            self namespace_594b67e::function_e4d5a38c(gesture, 0, 1);
            self.var_de5476af = undefined;
            self.var_a7f1f0d6 = undefined;
        }
        waitframe(1);
    }
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x2 linked
// Checksum 0xc39fbe77, Offset: 0x16b0
// Size: 0x46
function function_2513e926(*action) {
    while (1) {
        self thread namespace_594b67e::function_1c2992ed(self namespace_594b67e::function_29fd0abd());
        waitframe(1);
    }
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 3, eflags: 0x2 linked
// Checksum 0x703a9eb1, Offset: 0x1700
// Size: 0xfc
function function_80f856a8(*action, anim_name, *var_7369af2b) {
    firstframe = 1;
    while (1) {
        loop_anim = namespace_594b67e::function_47ffa6b8(var_7369af2b);
        if (!isdefined(self.var_6639d45b.var_3f4de57b)) {
            blendtime = firstframe ? 0 : undefined;
            if (isdefined(self.var_2e402479.body)) {
                self.var_2e402479.body thread namespace_594b67e::function_d621e6d6(loop_anim, blendtime);
            }
            if (isdefined(self.var_6639d45b)) {
                self.var_6639d45b thread namespace_594b67e::function_d621e6d6(loop_anim, blendtime);
            }
        }
        firstframe = 0;
        waitframe(1);
    }
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x2 linked
// Checksum 0x6031c5ae, Offset: 0x1808
// Size: 0x24
function function_d6fbc26(*params) {
    self thread namespace_594b67e::function_1c2992ed(0);
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x2 linked
// Checksum 0x500b3b89, Offset: 0x1838
// Size: 0x13e
function function_8ebed231(*action) {
    visible = 1;
    while (1) {
        var_2d6631c2 = 1;
        if (self flag::get("snipercam")) {
            var_2d6631c2 = 0;
        }
        if (var_2d6631c2 != visible) {
            if (var_2d6631c2) {
                if (isdefined(self.var_2e402479.body)) {
                    self.var_2e402479.body show();
                }
                if (isdefined(self.var_6639d45b)) {
                    self.var_6639d45b show();
                }
            } else {
                if (isdefined(self.var_2e402479.body)) {
                    self.var_2e402479.body hide();
                }
                if (isdefined(self.var_6639d45b)) {
                    self.var_6639d45b hide();
                }
            }
            visible = var_2d6631c2;
        }
        waitframe(1);
    }
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x2 linked
// Checksum 0xd63e11a4, Offset: 0x1980
// Size: 0x2b4
function function_501ef65d(weapon) {
    self namespace_594b67e::function_6cd69890(0, undefined, "ges_body_shield_reload");
    var_5a130b17 = self getweaponammostock(weapon);
    ammo_in_clip = self getweaponammoclip(weapon);
    wait(0.5);
    switch (weapon.weapclass) {
    case #"pistol":
        snd::play("fly_bodyshield_reload_pistol");
        wait(0.5);
        break;
    case #"smg":
        snd::play("fly_bodyshield_reload_smg");
        wait(0.7);
        break;
    case #"rifle":
        snd::play("fly_bodyshield_reload_rifle");
        wait(0.7);
        break;
    case #"sniper":
        snd::play("fly_bodyshield_reload_smg");
        wait(1);
        break;
    case #"shotgun":
        snd::play("fly_bodyshield_reload_shotgun");
        wait(1);
        break;
    case #"hash_defdefdefdefdef0":
        snd::play("fly_bodyshield_reload_lmg");
        wait(2);
        break;
    }
    delta = min(var_5a130b17, weapon.clipsize - ammo_in_clip);
    if (self hasweapon(weapon)) {
        self setweaponammoclip(weapon, int(ammo_in_clip + delta));
        self setweaponammostock(weapon, int(var_5a130b17 - delta));
    }
    self namespace_594b67e::function_6cd69890(1);
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x2 linked
// Checksum 0xdfde3513, Offset: 0x1c40
// Size: 0x1a6
function function_1dcff2c3(weapon) {
    if (is_true(weapon.iscliponly)) {
        return 0;
    }
    if (!isdefined(self.var_2e402479.var_6cf436f)) {
        self.var_2e402479.var_6cf436f = 0;
    }
    clip_size = weapon.clipsize;
    ammo_in_clip = self getweaponammoclip(weapon);
    var_5a130b17 = self getweaponammostock(weapon);
    var_b8b29a85 = var_5a130b17 > 0 && ammo_in_clip < clip_size;
    self.var_2e402479.var_6bd335ce = var_b8b29a85 && ammo_in_clip < clip_size * 0.33;
    if (ammo_in_clip == 0) {
        self.var_2e402479.var_6cf436f = self.var_2e402479.var_6cf436f + float(function_60d95f53()) / 1000;
    } else {
        self.var_2e402479.var_6cf436f = 0;
    }
    var_bd287b18 = var_b8b29a85 && (self.var_2e402479.var_6cf436f > 0.2 || self reloadbuttonpressed());
    return var_bd287b18;
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x0
// Checksum 0x99076139, Offset: 0x1df0
// Size: 0x44
function function_f6dd3d45(*var_248cbbcf) {
    return isdefined(self.var_2e402479.var_6bd335ce) && is_true(self.var_2e402479.var_6bd335ce);
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 0, eflags: 0x2 linked
// Checksum 0x461b0ab1, Offset: 0x1e40
// Size: 0x8c
function function_9c53ef0a() {
    self function_f077863a("ges_body_shield_rifle");
    self function_f077863a("ges_body_shield_rifle_ads");
    self function_f077863a("ges_body_shield_rpg_ads");
    self notify(#"hash_6e2a24679f8eca8e");
    self namespace_594b67e::function_e4d5a38c();
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 2, eflags: 0x2 linked
// Checksum 0xb594c7d7, Offset: 0x1ed8
// Size: 0x156
function function_257c21b5(action, immediate) {
    self endon(#"hash_28d504c4e7c5eef0");
    if (!is_true(immediate)) {
        self waittill(action.ender);
    }
    self namespace_f48ab2e1::remove(#"reload");
    self function_ead8fde7(0);
    self.var_de5476af = undefined;
    self.var_a7f1f0d6 = undefined;
    self function_9c53ef0a();
    self val::function_e681e68e(#"action");
    self namespace_594b67e::function_e2fcacb2(3);
    self flag::clear("body_shield_active");
    self.var_fb9a2c03 = undefined;
    if (is_true(action.var_43769020)) {
        namespace_594b67e::function_3fbe0931(action);
    }
    self notify(#"hash_28d504c4e7c5eef0");
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x2 linked
// Checksum 0x472fb0ef, Offset: 0x2038
// Size: 0x74
function function_f077863a(gesture) {
    if (isdefined(self.var_2e402479.var_b8302c5e) && self.var_2e402479.var_b8302c5e == gesture) {
        self.var_2e402479.var_b8302c5e = undefined;
        return;
    }
    self namespace_594b67e::function_e4d5a38c(gesture, 0.01, 1);
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x2 linked
// Checksum 0xeb3ff57a, Offset: 0x20b8
// Size: 0x9c
function function_7acc6ae7(action) {
    self endon(action.ender, #"hash_2d036a7855e382b1");
    self waittill(#"death", #"hash_2b62b2990144ebf6");
    if (isdefined(self.var_2e402479.body)) {
        self.var_2e402479.body hide();
    }
    self namespace_594b67e::function_76e2ec80();
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x2 linked
// Checksum 0x1cda7643, Offset: 0x2160
// Size: 0x300
function function_c13ab5c7(action) {
    self endon(action.ender, #"hash_2d036a7855e382b1");
    while (1) {
        result = undefined;
        result = self waittill(#"hash_77f8d1ea8df47cf5");
        var_7aa3570f = 2;
        var_365d33af = 300;
        var_6f8dfb10 = self.var_2e402479.var_3b825129.var_82bfd108 / var_7aa3570f;
        var_7ac1bcf6 = var_6f8dfb10 / 1000 / float(var_365d33af);
        new_health = self.var_2e402479.var_3b825129.health - result.idamage;
        new_health = max(new_health, self.var_2e402479.var_3b825129.var_70faf312 - var_7ac1bcf6);
        if (gettime() - self.var_2e402479.var_3b825129.var_ea2da6bc > var_365d33af) {
            self.var_2e402479.var_3b825129.var_70faf312 = new_health;
            self.var_2e402479.var_3b825129.var_ea2da6bc = gettime();
        }
        self.var_2e402479.var_3b825129.var_13356219 = 1;
        self.var_2e402479.var_3b825129.health = new_health;
        self notify(#"hash_3cc22522d66c35f8");
        playfx("blood/fx9_takedowns_blood_bdyshld_impact_rnr", result.vpoint, anglestoforward(self.angles), anglestoup(self.angles));
        screenshake(self.origin, randomintrange(1, 2), 0, 0, 0.5, 0, 0.5, 0, 5, 0, 0, 2);
        snd::play("evt_sys_cp_bodyshield_impact", level.player);
        thread function_a74e8dd3();
        if (self.var_2e402479.var_3b825129.health <= 0) {
            self notify(#"hash_244459f2eb8f0a38");
            return;
        }
        self childthread namespace_594b67e::function_aee5f6a6("body_shield");
    }
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x2 linked
// Checksum 0xb1e64fdd, Offset: 0x2468
// Size: 0x13c
function function_e98922fb(action) {
    self endon(action.ender, #"hash_2d036a7855e382b1");
    wait(5);
    while (1) {
        result = undefined;
        result = self waittilltimeout(1, #"hash_77f8d1ea8df47cf5");
        if (result._notify != "body_shield_damage") {
            self.var_2e402479.var_3b825129.health = self.var_2e402479.var_3b825129.health - 7;
            self.var_2e402479.var_3b825129.var_70faf312 = self.var_2e402479.var_3b825129.health;
            self.var_2e402479.var_3b825129.var_ea2da6bc = gettime();
            self notify(#"hash_3cc22522d66c35f8");
            if (self.var_2e402479.var_3b825129.health <= 0) {
                self notify(#"hash_244459f2eb8f0a38");
                return;
            }
        }
    }
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 0, eflags: 0x2 linked
// Checksum 0xdd69c08, Offset: 0x25b0
// Size: 0x9a
function function_bec58af5() {
    /#
        assert(isplayer(self));
    #/
    if (isdefined(self.var_2e402479.var_3b825129) && isdefined(self.var_2e402479.var_3b825129.actor)) {
        self.var_2e402479.var_3b825129.actor delete();
        self.var_2e402479.var_3b825129.actor = undefined;
    }
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 0, eflags: 0x2 linked
// Checksum 0x2178f060, Offset: 0x2658
// Size: 0xaa
function function_9fa1a484() {
    /#
        assert(isplayer(self));
    #/
    if (!isdefined(self.var_2e402479.var_3b825129.actor)) {
        return;
    }
    if (!self flag::get("body_shield_active")) {
        return;
    }
    self.var_2e402479.var_3b825129.actor delete();
    self waittill(#"hash_2a87a221154d292");
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x0
// Checksum 0x93d0c0c6, Offset: 0x2710
// Size: 0xfc
function function_b25119b6(action) {
    /#
        assert(isplayer(self));
    #/
    if (!isdefined(self.var_2e402479.var_3b825129)) {
        return;
    }
    if (!self flag::get("body_shield_active")) {
        return;
    }
    self function_bec58af5();
    self function_257c21b5(action, 1);
    self.var_2e402479.body delete();
    self.var_2e402479.body = undefined;
    self namespace_594b67e::function_2795d678(0);
    self actions::function_942d9213();
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 1, eflags: 0x2 linked
// Checksum 0x6dcf70fe, Offset: 0x2818
// Size: 0x10e
function function_c6059aa(action) {
    self endon(#"death", action.ender);
    self namespace_f48ab2e1::function_82cf95d9(#"hash_24279f7ed6cd096c");
    while (1) {
        var_4109ff8e = self.var_2e402479.var_3b825129.health / self.var_2e402479.var_3b825129.var_82bfd108;
        if (isdefined(self.var_3e95b88f)) {
            self namespace_f48ab2e1::function_b1cfa4bc(var_4109ff8e);
        }
        if (var_4109ff8e <= 0) {
            if (isdefined(self.var_3e95b88f)) {
                self namespace_f48ab2e1::function_82cf95d9(#"hash_61bd6e94a9b1f44e");
            }
            break;
        }
        self waittill(#"hash_3cc22522d66c35f8");
    }
}

// Namespace namespace_6cecf2d8/namespace_6cecf2d8
// Params 0, eflags: 0x2 linked
// Checksum 0x85819aa2, Offset: 0x2930
// Size: 0x54
function function_a74e8dd3() {
    waittime = randomfloatrange(0.2, 0.6);
    wait(waittime);
    snd::play("evt_sys_cp_bodyshield_impact_gore", level.player);
}

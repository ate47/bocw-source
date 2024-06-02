// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\util.gsc;
#using script_7d0013bbc05623b9;
#using script_3626f1b2cf51a99c;
#using scripts\cp_common\gametypes\battlechatter.gsc;
#using scripts\abilities\gadgets\gadget_health_regen.gsc;
#using scripts\weapons\weapon_utils.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\easing.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\animation_shared.gsc;

#namespace action_utility;

// Namespace action_utility/action_utility
// Params 0, eflags: 0x5
// Checksum 0xdc7a2c1, Offset: 0x508
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"action_utility", &preinit, undefined, undefined, undefined);
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x9c56d224, Offset: 0x550
// Size: 0x94
function private preinit() {
    clientfield::register("scriptmover", "link_to_camera", 1, 2, "int");
    clientfield::register("actor", "link_to_camera", 1, 2, "int");
    clientfield::register("toplayer", "fake_ads", 1, 1, "int");
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xb96514ec, Offset: 0x5f0
// Size: 0x82
function function_30b535ff(inuse) {
    if (!isdefined(self.var_30b535ff)) {
        self.var_30b535ff = 0;
    }
    if (inuse) {
        self.var_30b535ff = max(1, self.var_30b535ff + 1);
    } else {
        self.var_30b535ff = max(0, self.var_30b535ff - 1);
    }
    return self.var_30b535ff;
}

// Namespace action_utility/action_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x71cac2e4, Offset: 0x680
// Size: 0xb4
function function_77af90aa(var_cf230c0, attach_tag) {
    self detachall();
    if (isdefined(var_cf230c0)) {
        assert(isdefined(attach_tag));
        assert(var_cf230c0.size == attach_tag.size);
        for (i = 0; i < var_cf230c0.size; i++) {
            self attach(var_cf230c0[i], attach_tag[i], 1);
        }
    }
}

// Namespace action_utility/action_utility
// Params 2, eflags: 0x0
// Checksum 0xc7c1736d, Offset: 0x740
// Size: 0x2b4
function function_865196a6(link_ents, var_e4df1bec) {
    assert(isplayer(self));
    pitch = abs(angleclamp180(self getplayerangles()[0]));
    if (pitch > 0) {
        var_2bec8e32 = util::spawn_model("tag_origin", self.origin, self.angles);
        duration = pitch / 180;
        self playerlinktoblend(var_2bec8e32, "tag_player", duration, duration * 0.5, duration * 0.5);
        if (isdefined(link_ents)) {
            foreach (ent_to_link in link_ents) {
                ent_to_link function_b82cae8f(1);
            }
        }
        if (is_true(var_e4df1bec)) {
            self thread function_e4df1bec(duration);
        }
        wait(duration + float(function_60d95f53()) / 1000);
        if (isdefined(link_ents)) {
            foreach (ent_to_link in link_ents) {
                ent_to_link function_b82cae8f(0);
            }
        }
        self unlink();
        var_2bec8e32 delete();
    }
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xd77f330e, Offset: 0xa00
// Size: 0xb4
function function_e4df1bec(duration) {
    self thread easing::ease_dvar("bg_viewBobAmplitudeStanding", self.var_74c52b3d.var_c9e720e2, duration, "linear");
    self thread easing::ease_dvar("bg_bobMax", self.var_74c52b3d.viewbobmax, duration, "linear");
    self thread easing::ease_dvar("bg_bobTransTime", self.var_74c52b3d.var_945795a5, duration, "linear");
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x7039091c, Offset: 0xac0
// Size: 0x14a
function become_corpse() {
    if (self clientfield::get("link_to_camera")) {
        self function_b82cae8f(0);
    }
    if (!iscorpse(self) && !is_true(getplayers()[0].var_9ebbaa46.var_7e5a6cf9)) {
        aitype = self.ai_type;
        if (!isdefined(aitype)) {
            aitype = self.aitype;
        }
        self solid();
        if (!isactor(self)) {
            var_b9c0ade5 = self.var_b9c0ade5;
            corpse = self function_f5408e2c(aitype, getplayers()[0].velocity);
            corpse.var_b9c0ade5 = var_b9c0ade5;
        }
    }
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x0
// Checksum 0xddb37e5d, Offset: 0xc18
// Size: 0x52
function function_2e55c59e(var_f68ce314) {
    assert(isdefined(var_f68ce314) && isfloat(var_f68ce314));
    level.var_f467e5b0.var_671420ae = var_f68ce314;
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x0
// Checksum 0xc8990bee, Offset: 0xc78
// Size: 0x1a
function function_e3b9f13() {
    level.var_f467e5b0.var_671420ae = 0.5;
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x1f4d9ac3, Offset: 0xca0
// Size: 0x42
function function_e46cbbf7() {
    if (!isdefined(level.var_f467e5b0.var_671420ae)) {
        level.var_f467e5b0.var_671420ae = 0.5;
    }
    return level.var_f467e5b0.var_671420ae;
}

// Namespace action_utility/action_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x682cbe5c, Offset: 0xcf0
// Size: 0x354
function function_31df4786(var_165b239b = 1, allow_ads = 1) {
    assert(!isdefined(self.var_31df4786));
    self.var_31df4786 = 1;
    self val::set(#"hash_681a4eb9df49482f", "disable_weapon_cycling", 1);
    self val::set(#"hash_681a4eb9df49482f", "disable_weapon_reload", 1);
    self val::set(#"hash_681a4eb9df49482f", "disable_weapon_pickup", 1);
    self val::set(#"hash_681a4eb9df49482f", "disable_offhand_weapons", 1);
    self val::set(#"hash_681a4eb9df49482f", "disable_offhand_special", 1);
    self val::set(#"hash_681a4eb9df49482f", "disable_aim_assist", 1);
    self val::set(#"hash_681a4eb9df49482f", "allow_crouch", 0);
    self val::set(#"hash_681a4eb9df49482f", "allow_prone", 0);
    self val::set(#"hash_681a4eb9df49482f", "allow_sprint", 0);
    self val::set(#"hash_681a4eb9df49482f", "allow_jump", 0);
    self val::set(#"hash_681a4eb9df49482f", "allow_climb", 0);
    self val::set(#"hash_681a4eb9df49482f", "allow_mantle", 0);
    self val::set(#"hash_681a4eb9df49482f", "allow_melee_victim", 0);
    if (!var_165b239b) {
        self val::set(#"hash_681a4eb9df49482f", "disable_weapons", 1);
    }
    if (!allow_ads) {
        self val::set(#"hash_681a4eb9df49482f", "allow_ads", 0);
    }
    if (!function_1fac6486(self getcurrentweapon())) {
        self val::set(#"hash_681a4eb9df49482f", "allow_melee", 0);
    }
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xfaf281e9, Offset: 0x1050
// Size: 0x2e
function function_9123bbf0() {
    self val::reset_all(#"hash_681a4eb9df49482f");
    self.var_31df4786 = undefined;
}

// Namespace action_utility/action_utility
// Params 5, eflags: 0x2 linked
// Checksum 0xb60f12fb, Offset: 0x1088
// Size: 0x616
function function_2795d678(encumbered, var_165b239b, var_37e68004, allow_ads, var_6a87e928) {
    player = self;
    assert(isplayer(player));
    pistol = undefined;
    if (!isdefined(var_165b239b)) {
        var_165b239b = 1;
    }
    if (!isdefined(var_37e68004)) {
        var_37e68004 = 0;
    }
    if (!isdefined(allow_ads)) {
        allow_ads = 1;
    }
    if (encumbered) {
        if (!isdefined(player.var_74c52b3d)) {
            self.var_74c52b3d = spawnstruct();
            self function_31df4786(var_165b239b, allow_ads);
            player.var_74c52b3d.movespeedscale = player getmovespeedscale();
            player.var_74c52b3d.var_c9e720e2 = getdvar(#"bg_viewbobamplitudestanding");
            player.var_74c52b3d.var_c9e720e2 = string(player.var_74c52b3d.var_c9e720e2[0]) + " " + string(player.var_74c52b3d.var_c9e720e2[1]);
            player.var_74c52b3d.viewbobmax = getdvarfloat(#"bg_bobmax");
            player.var_74c52b3d.var_945795a5 = getdvarint(#"bg_bobtranstime");
            var_b56db8c = function_e46cbbf7();
            player setmovespeedscale(var_b56db8c);
            player thread function_854fc491(var_6a87e928);
            if (var_165b239b) {
                if (var_37e68004) {
                    pistol = player function_d338e637();
                    if (isdefined(pistol)) {
                        player.var_74c52b3d.weapon_list = player getweaponslist();
                        player.var_74c52b3d.weapon_last = player getcurrentweapon();
                        if (!isdefined(player.var_74c52b3d.weapon_last) || player.var_74c52b3d.weapon_last.basename == "none") {
                            player.var_74c52b3d.weapon_last = level.player.last_weapon;
                        }
                        player switchtoweapon(pistol);
                    }
                }
                if (isdefined(player.var_74c52b3d.weapon_list)) {
                    foreach (weap in player.var_74c52b3d.weapon_list) {
                        if (isdefined(pistol) && weap != pistol) {
                            player takeweapon(weap);
                        }
                    }
                }
            }
            self prompts::function_e79f51ec([#"actions", #"doors", #"body_carry"]);
            self flag::set("encumbered");
        }
        return;
    }
    if (isdefined(player.var_74c52b3d)) {
        self function_9123bbf0();
        player setmovespeedscale(player.var_74c52b3d.movespeedscale);
        player thread function_854fc491();
        if (isdefined(player.var_74c52b3d.weapon_list)) {
            foreach (weap in player.var_74c52b3d.weapon_list) {
                if (isdefined(pistol) && weap != pistol) {
                    player giveweapon(weap);
                }
            }
        }
        if (isdefined(player.var_74c52b3d.weapon_last)) {
            player switchtoweapon(player.var_74c52b3d.weapon_last);
        }
        self prompts::function_398ab9eb();
        self flag::clear("encumbered");
    }
    player.var_74c52b3d = undefined;
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xa505180b, Offset: 0x16a8
// Size: 0x184
function function_854fc491(var_6a87e928) {
    player = self;
    assert(isplayer(player));
    player endon(#"death");
    self notify("74e9614dd06b695a");
    self endon("74e9614dd06b695a");
    if (isdefined(var_6a87e928)) {
        if (!isdefined(var_6a87e928)) {
            var_6a87e928 = [];
        } else if (!isarray(var_6a87e928)) {
            var_6a87e928 = array(var_6a87e928);
        }
    }
    if (isdefined(var_6a87e928)) {
        lastmode = -1;
        while (true) {
            newmode = lastmode;
            if (player function_29fd0abd() && var_6a87e928.size > 1) {
                newmode = 1;
            } else {
                newmode = 0;
            }
            if (lastmode != newmode) {
                player util::function_5f1df718(var_6a87e928[newmode]);
            }
            lastmode = newmode;
            waitframe(1);
        }
        return;
    }
    player util::function_5f1df718(undefined);
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x8b68e8a1, Offset: 0x1838
// Size: 0xa2
function function_d338e637() {
    foreach (weap in self getweaponslist()) {
        if (weapons::ispistol(weap)) {
            return weap;
        }
    }
    return undefined;
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x0
// Checksum 0x6aa61ac2, Offset: 0x18e8
// Size: 0xa
function function_c4e06b5a() {
    return "j_spinelower";
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x0
// Checksum 0x9dfcb0e2, Offset: 0x1900
// Size: 0x184
function function_eef2dca9(guys) {
    assert(isplayer(self));
    var_17813638 = spawnstruct();
    var_17813638.angles = self.angles;
    var_17813638.origin = self.origin + self getvelocity() * float(function_60d95f53()) / 1000;
    if (!isdefined(guys)) {
        guys = [];
    } else if (!isarray(guys)) {
        guys = array(guys);
    }
    foreach (guy in guys) {
        if (isdefined(guy)) {
            guy dontinterpolate();
        }
    }
    return var_17813638;
}

// Namespace action_utility/action_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xb2f7c5ab, Offset: 0x1a90
// Size: 0x266
function function_b82cae8f(linktype, var_5596253c = 1) {
    offset = (0, 0, -60);
    player = getplayers()[0];
    if (self.var_47f0a724 === 2) {
        offset = (0, 0, 0);
    }
    if (is_true(linktype) && self.var_47f0a724 !== linktype) {
        self clientfield::set("link_to_camera", linktype);
        self.var_47f0a724 = linktype;
        return;
    }
    if (!is_true(linktype) && is_true(self.var_47f0a724)) {
        self clientfield::set("link_to_camera", 0);
        if (is_true(var_5596253c)) {
            origin = player getplayercamerapos();
            angles = player getplayerangles();
            axis = anglestoaxis(angles);
            origin += offset[0] * axis.forward;
            origin += offset[1] * axis.right;
            origin += offset[2] * axis.up;
            if (isactor(self)) {
                self teleport(origin, angles);
            } else {
                self.origin = origin;
                self.angles = angles;
                self dontinterpolate();
            }
        }
        self.var_47f0a724 = undefined;
    }
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xdfc8fd10, Offset: 0x1d00
// Size: 0x68
function function_bda1ed48() {
    var_9d19b745 = 400;
    assert(isplayer(self));
    return lengthsquared(self getvelocity()) > var_9d19b745;
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x42b7919f, Offset: 0x1d70
// Size: 0x6c
function function_3fbe0931(*action) {
    self notify(#"hash_4dff86580406a1af");
    self function_2795d678(0);
    self allow_weapon(1);
    self val::reset_all(#"action");
}

// Namespace action_utility/action_utility
// Params 4, eflags: 0x2 linked
// Checksum 0x1b69a50c, Offset: 0x1de8
// Size: 0x316
function allow_weapon(allowed, forced, gesture, var_dfce6e2d) {
    if (!allowed) {
        if (!isdefined(gesture)) {
            gesture = "ges_body_shield_gundown_quick";
        }
        self.var_15c4009c = (isdefined(self.var_15c4009c) ? self.var_15c4009c : 0) + 1;
        if (self.var_15c4009c === 1) {
            self val::set(#"hash_1759513a118d68fd", "disable_weapon_fire", 1);
            self val::set(#"hash_1759513a118d68fd", "disable_weapon_reload", 1);
            self val::set(#"hash_1759513a118d68fd", "disable_weapon_pickup", 1);
            self val::set(#"hash_1759513a118d68fd", "disable_weapon_cycling", 1);
            self val::set(#"hash_1759513a118d68fd", "disable_offhand_weapons", 1);
            self val::set(#"hash_1759513a118d68fd", "disable_offhand_special", 1);
            self.var_621f8539 = gesture;
            if (!is_true(var_dfce6e2d) && !function_1c2cb657(self getcurrentweapon())) {
                self thread gesture_play(self.var_621f8539);
            }
        }
        return;
    }
    if (isdefined(self.var_15c4009c)) {
        self.var_15c4009c -= 1;
        if (is_true(forced) || self.var_15c4009c <= 0) {
            self val::reset_all(#"hash_1759513a118d68fd");
            self val::reset_all(#"hash_58b9fd1cfcf4a27d");
            if (!function_1c2cb657(self getcurrentweapon())) {
                if (isdefined(gesture)) {
                    self thread gesture_play(gesture);
                } else if (isdefined(self.var_621f8539)) {
                    self thread gesture_stop(self.var_621f8539);
                }
            }
            self.var_15c4009c = undefined;
            self.var_621f8539 = undefined;
        }
    }
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x0
// Checksum 0x90cf8230, Offset: 0x2108
// Size: 0xf2
function function_1e9599a7(other) {
    self.weapon = other.weapon;
    self.primaryweapon = other.primaryweapon;
    self.secondaryweapon = other.secondaryweapon;
    self.sidearm = other.sidearm;
    self.grenadeweapon = other.grenadeweapon;
    self.weaponinfo = other.weaponinfo;
    if (!isdefined(self.a)) {
        self.a = spawnstruct();
        self.a.weaponpos = [];
        self.a.weaponposdropping = [];
    }
    if (isdefined(other.a)) {
        self.a.weaponpos = other.a.weaponpos;
    }
    self.var_9d46265b = other.var_9d46265b;
}

// Namespace action_utility/action_utility
// Params 6, eflags: 0x0
// Checksum 0x2ca58706, Offset: 0x2208
// Size: 0x2c2
function function_b5d8286c(action, var_17813638, var_3c30cb35, anim_name, victim, phase) {
    var_fc8116b2 = self function_462c34d0(action, var_17813638, anim_name, victim, phase);
    if (isdefined(var_fc8116b2.var_17813638) && isdefined(var_fc8116b2.var_17813638.target)) {
        var_3c30cb35 = arraycombine(var_3c30cb35, getentarray(var_fc8116b2.var_17813638.target, "targetname"));
    }
    if (isdefined(var_fc8116b2.var_17813638) && isdefined(var_fc8116b2.var_17813638.script_linkto)) {
        var_3c30cb35 = arraycombine(var_3c30cb35, getentarray(var_fc8116b2.var_17813638.script_linkto, "script_linkname"));
    }
    var_3c131b96 = undefined;
    foreach (ent in var_3c30cb35) {
        if (ent === self || !isdefined(var_3c131b96)) {
            var_3c131b96 = ent;
        }
        ent.var_3f4de57b = level.var_f467e5b0.anims[ent.animname][var_fc8116b2.anim_name];
        ent notify(#"new_scripted_anim");
        ent thread function_3f4de57b(var_fc8116b2.anim_name);
    }
    if (isdefined(var_3c131b96)) {
        wait(getanimlength(var_3c131b96.var_3f4de57b));
    }
    foreach (ent in var_3c30cb35) {
        ent.var_3f4de57b = undefined;
    }
    return var_fc8116b2.var_da0c6cb;
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xac0ef5e7, Offset: 0x24d8
// Size: 0x194
function function_aee5f6a6(var_b56433f8) {
    self notify("55dd956a145bde6");
    self endon("55dd956a145bde6");
    index = randomintrange(1, 4);
    self playrumbleonentity(#"reload_small");
    var_6f861737 = var_b56433f8 + "_pain_" + index;
    if (is_true(self.var_de5476af)) {
        var_6f861737 = var_b56433f8 + "_ads_pain_" + index;
    }
    if (isdefined(level.var_f467e5b0.anims[#"generic"][var_6f861737])) {
        self.takedown.body thread function_3f4de57b(var_6f861737, 0);
        self.var_6639d45b function_3f4de57b(var_6f861737, 0);
        loop_anim = self function_47ffa6b8(var_b56433f8);
        self.takedown.body thread function_d621e6d6(loop_anim);
        self.var_6639d45b thread function_d621e6d6(loop_anim);
    }
}

// Namespace action_utility/action_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xb437c34c, Offset: 0x2678
// Size: 0xd6
function function_1e132b9f(blendtime, var_df65246e) {
    self notify(#"hash_23e6132220ac0e4d");
    self notify(#"new_scripted_anim");
    if (!isdefined(blendtime)) {
        blendtime = 0.2;
    }
    if (!isdefined(var_df65246e)) {
        var_df65246e = 1;
    }
    if (isdefined(self.var_d621e6d6)) {
        if (var_df65246e) {
            self clearanim(self.var_d621e6d6, blendtime);
        }
        self.var_d621e6d6 = undefined;
    }
    if (isdefined(self.var_3f4de57b)) {
        if (var_df65246e) {
            self clearanim(self.var_3f4de57b, blendtime);
        }
        self.var_3f4de57b = undefined;
    }
}

// Namespace action_utility/action_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x364719c9, Offset: 0x2758
// Size: 0x1a4
function function_3f4de57b(var_d1b14335, blendtime = isdefined(level.var_f467e5b0.blend[self.animname][var_d1b14335]) ? level.var_f467e5b0.blend[self.animname][var_d1b14335] : 0.2, var_df65246e = 1) {
    self function_1e132b9f(blendtime, var_df65246e);
    self endon(#"death", #"entitydeleted", #"hash_23e6132220ac0e4d");
    animplay = level.var_f467e5b0.anims[self.animname][var_d1b14335];
    assert(isdefined(animplay));
    self thread animation::play(animplay, self.origin, self.angles, 1, blendtime, blendtime);
    self.var_3f4de57b = animplay;
    wait(getanimlength(animplay));
    self.var_3f4de57b = undefined;
    if (var_df65246e) {
        self clearanim(animplay, blendtime);
    }
}

// Namespace action_utility/action_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x85af4953, Offset: 0x2908
// Size: 0x1b8
function function_d621e6d6(var_eea30707, blendtime) {
    if (isdefined(self.var_d621e6d6) && self.var_d621e6d6 == level.var_f467e5b0.anims[self.animname][var_eea30707]) {
        return;
    }
    if (!isdefined(blendtime)) {
        blendtime = isdefined(level.var_f467e5b0.blend[self.animname][var_eea30707]) ? level.var_f467e5b0.blend[self.animname][var_eea30707] : 0.2;
    }
    self function_1e132b9f(blendtime);
    self endon(#"death");
    self endon(#"entitydeleted");
    self endon(#"hash_23e6132220ac0e4d");
    var_d5bcc254 = level.var_f467e5b0.anims[self.animname][var_eea30707];
    self thread animation::play(var_d5bcc254, self.origin, self.angles, 1, blendtime, blendtime);
    self.var_d621e6d6 = var_d5bcc254;
    while (isdefined(var_d5bcc254)) {
        self setanimtime(var_d5bcc254, 0);
        animlength = getanimlength(var_d5bcc254);
        wait(animlength);
    }
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xc38a38f, Offset: 0x2ac8
// Size: 0x86
function function_47ffa6b8(var_b56433f8) {
    suffix = "";
    if (is_true(self.var_de5476af)) {
        suffix += "_ads";
    }
    suffix += "_loop";
    if (self function_bda1ed48()) {
        suffix += "_walk";
    }
    return var_b56433f8 + suffix;
}

// Namespace action_utility/action_utility
// Params 5, eflags: 0x2 linked
// Checksum 0xf33eba97, Offset: 0x2b58
// Size: 0x27a
function function_462c34d0(action, var_17813638, anim_name, victim, phase) {
    assert(isplayer(self));
    key = actions::function_4e61a046(action.name, phase);
    var_b3d30f5f = undefined;
    if (isdefined(victim) && isdefined(victim.var_9d46265b) && isdefined(victim.var_9d46265b[key])) {
        var_b3d30f5f = victim.var_9d46265b[key];
    } else if (isdefined(self.var_9d46265b) && isdefined(self.var_9d46265b[key])) {
        var_b3d30f5f = self.var_9d46265b[key];
    } else if (isdefined(level.var_9d46265b) && isdefined(level.var_9d46265b[key])) {
        var_b3d30f5f = level.var_9d46265b[key];
    }
    result = spawnstruct();
    result.anim_name = anim_name;
    result.var_17813638 = var_17813638;
    result.var_da0c6cb = 0;
    result.blend_time = 0.2;
    if (isdefined(var_b3d30f5f)) {
        result.anim_name = var_b3d30f5f[0];
        if (isdefined(var_b3d30f5f[1])) {
            result.var_17813638 = var_b3d30f5f[1];
            result.var_5e5653b2 = 1;
        }
        result.var_da0c6cb = 1;
    }
    var_386b7517 = self.var_6639d45b.animname;
    if (isdefined(level.var_f467e5b0.blend[var_386b7517]) && isdefined(level.var_f467e5b0.blend[var_386b7517][result.anim_name])) {
        result.blend_time = level.var_f467e5b0.blend[var_386b7517][result.anim_name];
        result.var_7d26075f = 1;
    }
    return result;
}

// Namespace action_utility/action_utility
// Params 2, eflags: 0x0
// Checksum 0x812b9011, Offset: 0x2de0
// Size: 0x1f4
function function_4cbb6ca7(anim_name, var_f09f326c) {
    assert(isplayer(self));
    assert(isdefined(self.var_6639d45b));
    var_4c384fa8 = self.var_6639d45b;
    if (!isarray(var_f09f326c)) {
        var_d89d1589 = [];
        if (isdefined(level.var_f467e5b0.blend[#"generic"])) {
            var_d89d1589[#"generic"] = level.var_f467e5b0.blend[#"generic"][anim_name];
        }
        if (isdefined(level.var_f467e5b0.blend[var_4c384fa8.animname])) {
            var_d89d1589[var_4c384fa8.animname] = level.var_f467e5b0.blend[var_4c384fa8.animname][anim_name];
        }
        level.var_f467e5b0.blend[#"generic"][anim_name] = var_f09f326c;
        level.var_f467e5b0.blend[var_4c384fa8.animname][anim_name] = var_f09f326c;
        return var_d89d1589;
    } else {
        level.var_f467e5b0.blend[#"generic"][anim_name] = var_f09f326c[#"generic"];
        level.var_f467e5b0.blend[var_4c384fa8.animname][anim_name] = var_f09f326c[var_4c384fa8.animname];
    }
    return undefined;
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x8a6bd338, Offset: 0x2fe0
// Size: 0x194
function function_1c2992ed(enabled) {
    var_49b6c927 = is_true(self clientfield::get_to_player("fake_ads"));
    var_4f735d6e = is_true(enabled);
    if (var_4f735d6e && !var_49b6c927) {
        self clientfield::set_to_player("fake_ads", 1);
        self easing::ease_dvar("bg_aimSpreadScale", 1, 0.2, 0.2, #"sine");
        self capturnrate(45, 90);
        return;
    }
    if (!var_4f735d6e && var_49b6c927) {
        self clientfield::set_to_player("fake_ads", 0);
        self easing::ease_dvar("bg_aimSpreadScale", 1, 1, 0.2, #"sine");
        self capturnrate(90, 260);
    }
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x1e522407, Offset: 0x3180
// Size: 0xdc
function function_6e8e5902(ender) {
    self notify(#"hash_420f563c810c5f2c");
    self endon(#"hash_420f563c810c5f2c");
    result = self waittill(ender, #"hash_4a7c2a6c1d3c2382", #"level_restarting");
    if (result._notify !== "level_restarting") {
        self thread function_1c2992ed(0);
    } else {
        setsaveddvar(#"bg_aimspreadscale", 1);
    }
    self capturnrate(0, 0);
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x0
// Checksum 0x314d781b, Offset: 0x3268
// Size: 0x9a
function function_7920d338(notifyevent) {
    self endon(notifyevent, #"disconnect");
    waitframe(1);
    while (self getcurrentweapon().basename == "none") {
        waitframe(1);
    }
    while (self getweaponammoclip(self getcurrentweapon()) > 0) {
        waitframe(1);
    }
    self notify(notifyevent);
}

// Namespace action_utility/action_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xab1eb5a5, Offset: 0x3310
// Size: 0xba
function function_98f117ad(var_36a368e3, type = "") {
    if (type.size > 0) {
        type = "_" + type;
    }
    weap = self getcurrentweapon();
    suffix = "_rifle";
    if (weapons::islauncher(weap) && type == "_ads") {
        suffix = "_rpg";
    }
    return var_36a368e3 + suffix + type;
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x53e2967e, Offset: 0x33d8
// Size: 0x20e
function function_35d0bd11(var_4b5540a0) {
    assert(isai(self));
    self flag::clear("stealth_enabled");
    if (is_true(var_4b5540a0)) {
        self.ignoreall = 1;
        self.ignoreme = 1;
        self battlechatter::function_2ab9360b(0);
        self notsolid();
        self clearenemy();
        self setgoal(self.origin);
        self thread function_91639a4c(1);
        self animcustom(&function_e9aef609);
        self.var_4b5540a0 = 1;
        return;
    }
    self.ignoreme = 0;
    self battlechatter::function_2ab9360b(1);
    self util::delay(float(function_60d95f53()) / 1000, undefined, &solid);
    self setgoal(self.origin);
    self thread function_91639a4c(0);
    if (isdefined(self.magic_bullet_shield)) {
        self util::stop_magic_bullet_shield();
    }
    self.var_4b5540a0 = undefined;
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x65d46702, Offset: 0x35f0
// Size: 0x4a
function function_e9aef609() {
    self endon(#"killanimscript");
    self animmode("nogravity");
    self waittill(#"never");
}

// Namespace action_utility/action_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x234f1e54, Offset: 0x3648
// Size: 0x2c2
function function_c0f7b46e(fullbody, *var_df65246e, linktype = 1) {
    assert(isplayer(self));
    if (!isdefined(self.var_6639d45b)) {
        self.var_6639d45b = spawn("script_model", self.origin);
        if (isdefined(self.var_6639d45b)) {
            self.var_6639d45b.angles = self.angles;
            self.var_6639d45b useanimtree("generic");
            self.var_6639d45b.animname = "player";
            self.var_6639d45b notsolid();
            self.var_6639d45b hide();
            self.var_6639d45b.health = 100;
            self.var_6639d45b setowner(self);
            self.var_6639d45b.team = self.team;
        }
    }
    var_41206ae3 = self function_5d23af5b();
    if (isdefined(var_41206ae3)) {
        self.var_6639d45b setmodel(var_41206ae3);
    }
    var_b4d88433 = self function_cde23658();
    if (isdefined(self.var_6639d45b.var_b4d88433)) {
        self.var_6639d45b detach(self.var_6639d45b.var_b4d88433);
        self.var_6639d45b.var_b4d88433 = undefined;
    }
    if (is_true(var_df65246e) && isdefined(var_b4d88433)) {
        self.var_6639d45b attach(var_b4d88433);
        self.var_6639d45b.var_b4d88433 = var_b4d88433;
    }
    self.var_6639d45b function_b82cae8f(linktype);
    self.var_6639d45b function_1fac41e4(self function_19124308());
    self.var_6639d45b hide();
    return self.var_6639d45b;
}

// Namespace action_utility/action_utility
// Params 4, eflags: 0x2 linked
// Checksum 0xcc8ed727, Offset: 0x3918
// Size: 0x94
function function_464d0412(fullbody, var_4c384fa8, var_df65246e, linktype) {
    assert(isplayer(self));
    self function_c0f7b46e(fullbody, var_df65246e, linktype);
    if (!isdefined(var_4c384fa8)) {
        var_4c384fa8 = self.var_6639d45b;
    }
    if (isdefined(var_4c384fa8)) {
        var_4c384fa8 show();
    }
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xd91c5cf4, Offset: 0x39b8
// Size: 0x7c
function function_76e2ec80(var_4c384fa8) {
    assert(isplayer(self));
    if (!isdefined(var_4c384fa8)) {
        var_4c384fa8 = self.var_6639d45b;
    }
    if (isdefined(var_4c384fa8)) {
        var_4c384fa8 hide();
        var_4c384fa8 function_1e132b9f();
    }
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x2e3b4dc2, Offset: 0x3a40
// Size: 0x174
function function_b0190b65(action) {
    assert(isplayer(self));
    self.takedown.var_84ade654 = 1;
    curweap = self getcurrentweapon();
    if (isdefined(curweap) && curweap.name !== #"none") {
        self.last_weapon = curweap;
    }
    self.takedown.stance[action.name] = self getstance();
    self setstance("stand");
    self val::set(#"hash_16b14161e87e9ac4", "allow_crouch", 0);
    self val::set(#"hash_16b14161e87e9ac4", "allow_prone", 0);
    self gesture_play("ges_body_shield_gundown_quick");
    self function_9d7828b0(0.5);
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x1f16d5ed, Offset: 0x3bc0
// Size: 0x3c
function function_9d7828b0(delay) {
    self util::delay(delay, "stop_disable_weapons_offscreen", &function_5faaaecd);
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xa0d40af2, Offset: 0x3c08
// Size: 0x8c
function function_5faaaecd() {
    self function_6179ffe7(self getcurrentweapon());
    self val::set(#"hash_58b9fd1cfcf4a27d", "disable_weapons", 2);
    wait(0.5);
    if (isdefined(self.var_621f8539)) {
        self thread gesture_stop(self.var_621f8539);
    }
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x71e54e9e, Offset: 0x3ca0
// Size: 0xfc
function function_44a46209(var_d8ba335a) {
    assert(isplayer(self));
    self val::reset_all(#"hash_16b14161e87e9ac4");
    if (!is_true(self.takedown.var_84ade654)) {
        return;
    }
    if (!self.var_6639d45b function_30b535ff(0)) {
        self function_76e2ec80();
    }
    if (isdefined(var_d8ba335a)) {
        self setstance(var_d8ba335a);
    }
    self.takedown.var_84ade654 = undefined;
    self val::reset_all(#"hash_58b9fd1cfcf4a27d");
}

// Namespace action_utility/action_utility
// Params 7, eflags: 0x2 linked
// Checksum 0x46a5908e, Offset: 0x3da8
// Size: 0xbc
function gesture_play(gesture = "", target, var_584fcd3e, blendtime, starttime, var_8021ec1b, stopall) {
    if (isgesture(gesture)) {
        self thread function_6f3e9127(gesture, target, var_584fcd3e, blendtime, starttime, var_8021ec1b, stopall);
        return;
    }
    /#
        iprintln("39ccfd1ac8ddccb" + gesture + "<unknown string>");
    #/
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xd0fd302c, Offset: 0x3e70
// Size: 0x16
function function_b56ad054() {
    self.takedown.var_adad6efa = 1;
}

// Namespace action_utility/action_utility
// Params 7, eflags: 0x6 linked
// Checksum 0xfbd20bbc, Offset: 0x3e90
// Size: 0x15c
function private function_6f3e9127(gesture, target, var_584fcd3e, *blendtime, starttime, var_8021ec1b, stopall) {
    self notify("39ccfd1ac8ddccb");
    self endon("39ccfd1ac8ddccb");
    assert(isgesture(target));
    self endon(target + "_stop");
    var_66f0ae81 = undefined;
    if (is_true(self.takedown.var_adad6efa)) {
        self.takedown.var_adad6efa = undefined;
        self function_44a46209();
    }
    while (self function_b2ec14ab()) {
        waitframe(1);
        var_66f0ae81 = 1;
    }
    if (is_true(var_66f0ae81)) {
        waitframe(1);
    }
    self playgestureviewmodel(target, var_584fcd3e, blendtime, 0, starttime, var_8021ec1b, stopall);
}

// Namespace action_utility/action_utility
// Params 3, eflags: 0x2 linked
// Checksum 0xe3b4a057, Offset: 0x3ff8
// Size: 0xac
function gesture_stop(gesture, *outtime, var_8021ec1b) {
    if (!isdefined(outtime)) {
        return;
    }
    if (isdefined(outtime) && isgesture(outtime)) {
        self notify(outtime + "_stop");
        self stopgestureviewmodel(outtime, 0, var_8021ec1b);
        return;
    }
    if (isdefined(outtime)) {
        /#
            iprintln("39ccfd1ac8ddccb" + outtime + "<unknown string>");
        #/
    }
}

// Namespace action_utility/action_utility
// Params 3, eflags: 0x2 linked
// Checksum 0xc7a27353, Offset: 0x40b0
// Size: 0xac
function scene_play(scene, player, victim) {
    a_ents = [];
    a_ents[#"player"] = player;
    a_ents[#"victim"] = victim;
    if (isdefined(level.var_c8b4a78a)) {
        level.var_c8b4a78a.scene = scene;
        level.var_c8b4a78a.var_17813638 = self;
    }
    self scene::play(scene, a_ents);
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x0
// Checksum 0x4b6c5d9, Offset: 0x4168
// Size: 0x64
function scene_stop() {
    if (isdefined(level.var_c8b4a78a.scene) && isdefined(level.var_c8b4a78a.var_17813638)) {
        level.var_c8b4a78a.var_17813638 scene::stop(level.var_c8b4a78a.scene);
    }
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x7057f38c, Offset: 0x41d8
// Size: 0x92
function function_91639a4c(var_ee1fe147) {
    self notify("2cb5a47e02c20ef");
    self endon("2cb5a47e02c20ef");
    self function_a17b179f(var_ee1fe147);
    if (is_true(var_ee1fe147)) {
        self endon(#"death");
        self waittill(#"hash_7884feb21ff33557");
        self.var_d5bd339b = 1;
        return;
    }
    self.var_d5bd339b = undefined;
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x7eba60ee, Offset: 0x4278
// Size: 0x4e4
function function_71180c30(isolated) {
    if (!isdefined(self)) {
        return;
    }
    assert(isactor(self));
    victim = self;
    if (is_true(isolated) && !isdefined(victim.var_419b4b2)) {
        victim flag::set("in_action");
        victim.var_419b4b2 = spawnstruct();
        victim.var_419b4b2.ignoreall = victim.ignoreall;
        victim.var_419b4b2.ignoreme = victim.ignoreme;
        victim.var_419b4b2.var_6eed8aea = victim.var_6eed8aea;
        victim.var_419b4b2.magic_bullet_shield = victim.magic_bullet_shield;
        victim.var_419b4b2.dontattackme = victim.dontattackme;
        victim.var_419b4b2.diequietly = victim.diequietly;
        victim.var_419b4b2.var_e9c62827 = victim.var_e9c62827;
        victim.var_419b4b2.var_3544dda3 = victim flag::get("scripted_lookat_disable");
        victim thread function_91639a4c(1);
        victim flag::set("scripted_lookat_disable");
        victim.ignoreall = 1;
        victim.ignoreme = 1;
        victim.syncedmeleetarget = undefined;
        victim.var_6eed8aea = 0;
        victim.dontattackme = 1;
        victim.diequietly = 1;
        if (isdefined(victim.var_d26a48de)) {
            victim [[ victim.var_d26a48de ]]();
        }
        victim.var_419b4b2.var_c2eaacf4 = victim spawner::function_461ce3e9();
        victim notify(#"killanimscript");
        if (!is_true(victim.delayeddeath)) {
            victim thread util::magic_bullet_shield();
        }
        victim lookatpos(undefined);
        victim notsolid();
        victim setforcenocull();
        victim.var_e9c62827 = 1;
        return;
    }
    if (isdefined(victim.var_419b4b2)) {
        victim thread function_91639a4c(0);
        victim.ignoreall = victim.var_419b4b2.ignoreall;
        victim.ignoreme = victim.var_419b4b2.ignoreme;
        victim.var_6eed8aea = victim.var_419b4b2.var_6eed8aea;
        victim.in_melee_death = undefined;
        victim solid();
        victim removeforcenocull();
        victim.var_e9c62827 = victim.var_419b4b2.var_e9c62827;
        victim.dontattackme = victim.var_419b4b2.dontattackme;
        victim.diequietly = victim.var_419b4b2.diequietly;
        if (!is_true(victim.var_419b4b2.var_3544dda3)) {
            victim flag::clear("scripted_lookat_disable");
        }
        if (!is_true(victim.var_419b4b2.magic_bullet_shield)) {
            victim thread util::stop_magic_bullet_shield();
        }
        if (isdefined(victim.var_419b4b2.var_c2eaacf4)) {
            victim spawner::go_to_node(victim.var_419b4b2.var_c2eaacf4);
        }
        victim.var_419b4b2 = undefined;
        victim flag::clear("in_action");
        getplayers()[0] actions::function_942d9213();
    }
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x44250224, Offset: 0x4768
// Size: 0x174
function function_1a2a3654() {
    assert(isplayer(self));
    currentweapon = self getcurrentweapon();
    if (!function_a06867b0(currentweapon)) {
        return currentweapon;
    }
    result = undefined;
    var_b0e9905e = -1;
    foreach (weapon in self getweaponslist()) {
        if (weapon !== currentweapon && !function_a06867b0(weapon)) {
            weaponammo = self getweaponammoclip(weapon);
            if (!isdefined(result) || weaponammo > var_b0e9905e) {
                result = weapon;
                var_b0e9905e = weaponammo;
            }
        }
    }
    return result;
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xe65b7f87, Offset: 0x48e8
// Size: 0x12a
function function_a06867b0(weapon) {
    if (!isweapon(weapon)) {
        return true;
    }
    if (is_true(weapon.isboltaction)) {
        return true;
    }
    if (is_true(weapon.isgrenadeweapon)) {
        return true;
    }
    if (isdefined(level.var_e3f5eafc) && weapon === level.var_e3f5eafc) {
        return true;
    }
    if (isdefined(level.var_42db149f) && weapon === level.var_42db149f) {
        return true;
    }
    if (weapon.name == #"launcher_freefire_t9" || weapon.name == #"hash_1e25706a023b5e09" || weapon.name == #"launcher_freefire_t9_upgraded") {
        return true;
    }
    return false;
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x1939fdaf, Offset: 0x4a20
// Size: 0x92
function function_1c2cb657(weapon) {
    if (!isweapon(weapon)) {
        return false;
    }
    if (!is_true(weapon.ismeleeweapon) && (!is_true(weapon.isbulletweapon) || is_true(weapon.issniperweapon))) {
        return true;
    }
    return false;
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xfca8e8ca, Offset: 0x4ac0
// Size: 0x72
function function_1fac6486(weapon) {
    if (!isweapon(weapon)) {
        return false;
    }
    if (is_true(weapon.ismeleeweapon) && !is_true(weapon.isbulletweapon)) {
        return true;
    }
    return false;
}

// Namespace action_utility/action_utility
// Params 3, eflags: 0x2 linked
// Checksum 0xbcb1dc98, Offset: 0x4b40
// Size: 0x1b8
function function_396e2076(var_860605de = 1, var_4170b151 = 1, do_wait = 0) {
    result = 0;
    e_player = getplayers()[0];
    if (is_true(var_860605de) && e_player flag::get("body_shield_active")) {
        result = 1;
        assert(isdefined(e_player.takedown.body_shield.actor) && isai(e_player.takedown.body_shield.actor), "<unknown string>");
        e_player.takedown.body_shield.actor delete();
        if (do_wait) {
            wait(2.75);
        }
    } else if (is_true(var_4170b151)) {
        result = isdefined(e_player.takedown.body);
        level notify(#"drop_corpse");
        if (do_wait && result) {
            wait(1.25);
        }
    }
    return result;
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xd8c85bce, Offset: 0x4d00
// Size: 0x34
function function_e2fcacb2(time = 3) {
    self thread function_cc15d11(time);
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x8a20ddba, Offset: 0x4d40
// Size: 0xc4
function private function_cc15d11(time) {
    self notify("9aa41f49060e5fb");
    self endon("9aa41f49060e5fb");
    assert(isplayer(self));
    self endon(#"death");
    if (time > 0) {
        self val::set(#"hash_1ac08695042a6154", "disablegadgets", 1);
        wait(time);
    }
    self val::reset_all(#"hash_1ac08695042a6154");
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x96b422c3, Offset: 0x4e10
// Size: 0x82
function function_29fd0abd() {
    assert(isplayer(self));
    curweap = self getcurrentweapon();
    if (!is_true(curweap.aimdownsight)) {
        return 0;
    }
    return self adsbuttonpressed();
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x809cbf74, Offset: 0x4ea0
// Size: 0x274
function function_d76eed10(action) {
    assert(isplayer(self));
    step = 10;
    trace_pos = playerphysicstrace(self.origin + (0, 0, 1), self.origin);
    if (trace_pos != self.origin) {
        trace_pos = playerphysicstrace(self.takedown.start_origin + (0, 0, step), self.origin + (0, 0, step));
        if (trace_pos[0] != self.origin[0] || trace_pos[1] != self.origin[1]) {
            trace_pos += vectornormalize(self.takedown.start_origin - self.origin);
        }
        trace_pos = playerphysicstrace(trace_pos, trace_pos - (0, 0, step));
        var_f5aab51b = playerphysicstrace(trace_pos + (0, 0, 1), trace_pos);
        if (trace_pos != var_f5aab51b) {
            /#
                msg = "<unknown string>" + action.name + "<unknown string>" + self.takedown.start_origin[0] + "<unknown string>" + self.takedown.start_origin[1] + "<unknown string>" + self.takedown.start_origin[2] + "<unknown string>";
                iprintlnbold(msg);
                println(msg + "<unknown string>");
            #/
            trace_pos = self.takedown.start_origin;
        }
        self setorigin(trace_pos);
    }
}

// Namespace action_utility/action_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xd39bf7b4, Offset: 0x5120
// Size: 0x228
function function_fdff1cf3(forwarddist = 30) {
    assert(isdefined(self.takedown));
    if (!isdefined(self.takedown.var_b44d4135)) {
        self.takedown.var_b44d4135 = [];
    }
    if (!isdefined(self.takedown.var_b187389a)) {
        self.takedown.var_b187389a = [];
    }
    if (isdefined(self.takedown.var_b44d4135[forwarddist]) && gettime() == self.takedown.var_b44d4135[forwarddist]) {
        return self.takedown.var_b187389a[forwarddist];
    }
    zoffset = (0, 0, 8);
    start = self.origin + zoffset;
    end = start + anglestoforward(self.angles) * forwarddist + zoffset;
    self.takedown.var_b187389a[forwarddist] = 0;
    radius = 15;
    trace = physicstrace(start, end, (radius * -1, radius * -1, 0), (radius, radius, 70), undefined, 32 | 1, 32768 | 8388608);
    if (trace[#"fraction"] == 1) {
        self.takedown.var_b187389a[forwarddist] = 1;
    }
    self.takedown.var_b44d4135[forwarddist] = gettime();
    return self.takedown.var_b187389a[forwarddist];
}


// Atian COD Tools GSC CW decompiler test
#using script_3819e7a1427df6d2;
#using script_27ef3076a14eb66a;
#using script_1478fbd17fe393cf;
#using script_35ae72be7b4fec10;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace snipercam;

// Namespace snipercam/snipercam
// Params 0, eflags: 0x5
// Checksum 0x5b76a1d4, Offset: 0x1a0
// Size: 0x34
function private autoexec __init__system__() {
    system::register("snipercam", &function_f64316de, undefined, undefined, undefined);
}

// Namespace snipercam/snipercam
// Params 3, eflags: 0x2 linked
// Checksum 0xb43c2ceb, Offset: 0x1e0
// Size: 0xd4
function set_enabled(enabled, on_damage = 0, var_895878e1 = 3) {
    assert(isactor(self));
    if (is_true(enabled)) {
        self.var_ca3bd64e = var_895878e1;
        self.var_fa99a047 = on_damage;
        self thread function_b5597fc3();
        return;
    }
    aiutility::removeaioverridedamagecallback(self, &function_4ad903f4);
}

/#

    // Namespace snipercam/snipercam
    // Params 2, eflags: 0x0
    // Checksum 0xfdb66e17, Offset: 0x2c0
    // Size: 0x64
    function function_5d276f5b(var_895878e1, victim) {
        player = getplayers()[0];
        victim.var_ca3bd64e = var_895878e1;
        victim thread function_856a28c3(0, player);
    }

#/

// Namespace snipercam/snipercam
// Params 0, eflags: 0x6 linked
// Checksum 0x9f089411, Offset: 0x330
// Size: 0x64
function private function_f64316de() {
    clientfield::register("actor", "start_snipercam", 1, 2, "int");
    clientfield::register("actor", "stop_snipercam", 1, 1, "int");
}

// Namespace snipercam/snipercam
// Params 0, eflags: 0x6 linked
// Checksum 0xb77ca251, Offset: 0x3a0
// Size: 0x2c
function private function_b5597fc3() {
    waitframe(1);
    aiutility::addaioverridedamagecallback(self, &function_4ad903f4);
}

// Namespace snipercam/snipercam
// Params 13, eflags: 0x6 linked
// Checksum 0xcce5ce54, Offset: 0x3d8
// Size: 0x21c
function private function_4ad903f4(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, *var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, modelindex) {
    if (is_true(var_fd90b0bb.isbulletweapon) && (isplayer(idamage) || isplayer(eattacker))) {
        if (!isdefined(weapon) || weapon === "MOD_RIFLE_BULLET" || weapon === "MOD_PISTOL_BULLET") {
            mindist = 800;
            attacker = idamage;
            if (!isplayer(attacker)) {
                attacker = eattacker;
            }
            if (isdefined(self.var_8a3fb9e2)) {
                mindist = self.var_8a3fb9e2;
            }
            if (distancesquared(self.origin, attacker.origin) > sqr(mindist)) {
                if (self.var_fa99a047 || !self.var_fa99a047 && self.health - idflags <= 0) {
                    var_afe2c3af = !is_true(self.var_fa99a047);
                    self set_enabled(0);
                    self thread function_856a28c3(var_afe2c3af, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, modelindex);
                    return 0;
                }
            }
        }
    }
    return idflags;
}

// Namespace snipercam/snipercam
// Params 13, eflags: 0x6 linked
// Checksum 0xd528aa84, Offset: 0x600
// Size: 0x53c
function private function_856a28c3(var_afe2c3af, einflictor, eattacker, *idamage, *idflags, *smeansofdeath, weapon, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex, *modelindex) {
    assert(isplayer(boneindex) || isplayer(psoffsettime));
    self notify(#"hash_ae39942308147bf");
    if (shitloc) {
        self.var_4a438c2b = 1;
        util::magic_bullet_shield(self);
    }
    self setentitypaused(1);
    if (isplayer(boneindex)) {
        player = boneindex;
    } else {
        player = psoffsettime;
    }
    player flag::set("snipercam");
    namespace_61e6d095::function_28027c42(#"hash_d7f94b2708cafa2");
    player val::set(#"snipercam", "freezecontrols", 1);
    player val::set(#"snipercam", "takedamage", 0);
    player val::set(#"snipercam", "show_weapon_hud", 0);
    player val::set(#"snipercam", "show_hit_marker", 0);
    player val::set(#"snipercam", "show_compass", 0);
    player val::set(#"snipercam", "show_crosshair", 0);
    hint_tutorial::function_57a24ab5(0);
    parms = function_83d35e98(player, player geteye(), player getplayerangles(), self, self.var_ca3bd64e);
    player.var_35ee6252 = undefined;
    setslowmotion(1, 0.5, 0);
    self clientfield::set("start_snipercam", self.var_ca3bd64e);
    var_b487436a = 1.3 * 0.1;
    wait(parms.var_684cf08c);
    setslowmotion(0.5, 1, 0.5);
    self setentitypaused(0);
    player ghost();
    self notify(#"hash_3d799b8c342663fa");
    self clientfield::set("start_snipercam", 0);
    if (shitloc) {
        util::stop_magic_bullet_shield(self);
        self.var_4a438c2b = 0;
        self.diequietly = 1;
        self setnormalhealth(1);
        self kill(player.origin, player, player, modelindex);
    }
    wait(parms.var_6051349d);
    self clientfield::set("stop_snipercam", 1);
    wait(0.1);
    self notify(#"hash_377b8997737880e7");
    hint_tutorial::function_57a24ab5(1);
    player val::reset_all(#"snipercam");
    player show();
    self clientfield::set("stop_snipercam", 0);
    player flag::clear("snipercam");
    namespace_61e6d095::function_4279fd02(#"hash_d7f94b2708cafa2");
}


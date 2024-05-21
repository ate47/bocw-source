// Atian COD Tools GSC CW decompiler test
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_6b6510e124bad778;
#using script_1b0b07ff57d1dde3;
#using script_350cffecd05ef6cf;
#using script_1ee011cd0961afd7;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
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

#namespace namespace_41cb996;

// Namespace namespace_41cb996
// Method(s) 7 Total 7
class class_9b9784aa {

    var m_type;
    var var_3b56e950;
    var var_ce5a8850;
    var var_f7688f8b;

    // Namespace class_9b9784aa/namespace_41cb996
    // Params 0, eflags: 0xa linked
    // Checksum 0xb1b3989f, Offset: 0x318
    // Size: 0x2a
    constructor() {
        var_f7688f8b = "";
        var_3b56e950 = undefined;
        var_ce5a8850 = [];
    }

    // Namespace namespace_9b9784aa/namespace_41cb996
    // Params 0, eflags: 0x2 linked
    // Checksum 0xccb0d59b, Offset: 0x518
    // Size: 0xa
    function getname() {
        return var_f7688f8b;
    }

    // Namespace namespace_9b9784aa/namespace_41cb996
    // Params 0, eflags: 0x2 linked
    // Checksum 0x89fa9fcb, Offset: 0x530
    // Size: 0xa
    function function_4db878e1() {
        return var_3b56e950;
    }

    // Namespace namespace_9b9784aa/namespace_41cb996
    // Params 0, eflags: 0x2 linked
    // Checksum 0x99c11c30, Offset: 0x500
    // Size: 0xa
    function gettype() {
        return m_type;
    }

    // Namespace namespace_9b9784aa/namespace_41cb996
    // Params 1, eflags: 0x2 linked
    // Checksum 0x4c6f1928, Offset: 0x548
    // Size: 0x50
    function function_91c18b19(weaponlevel) {
        assert(weaponlevel >= 0 && weaponlevel <= 2, "<unknown string>");
        return var_ce5a8850[weaponlevel];
    }

    // Namespace namespace_9b9784aa/namespace_41cb996
    // Params 3, eflags: 0x2 linked
    // Checksum 0x505abbe4, Offset: 0x360
    // Size: 0x198
    function init(var_49d95ac1, type, var_985105b) {
        var_f7688f8b = var_49d95ac1;
        m_type = type;
        var_3b56e950 = var_985105b;
        var_ce5a8850[var_ce5a8850.size] = getweapon(var_f7688f8b);
        assert(isdefined(var_ce5a8850[0]));
        var_ce5a8850[var_ce5a8850.size] = getweapon(var_f7688f8b + "_1");
        var_ce5a8850[var_ce5a8850.size] = getweapon(var_f7688f8b + "_2");
        var_ce5a8850[1] = var_ce5a8850[1] != level.weaponnone ? var_ce5a8850[1] : var_ce5a8850[0];
        var_ce5a8850[2] = var_ce5a8850[2] != level.weaponnone ? var_ce5a8850[2] : var_ce5a8850[1];
    }

}

// Namespace namespace_41cb996/namespace_41cb996
// Params 2, eflags: 0x2 linked
// Checksum 0xc5dc2d2f, Offset: 0x718
// Size: 0x84
function function_377d91b2(name, type) {
    weaponpack = new class_9b9784aa();
    level.doa.var_e57e1d34[level.doa.var_e57e1d34.size] = weaponpack;
    [[ weaponpack ]]->init(name, type, function_bacdbafd(name));
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 1, eflags: 0x2 linked
// Checksum 0xb39a404e, Offset: 0x7a8
// Size: 0xa2
function function_dc699ae6(name) {
    foreach (var_f5c7c2f0 in level.doa.var_e57e1d34) {
        if ([[ var_f5c7c2f0 ]]->getname() == name) {
            return var_f5c7c2f0;
        }
    }
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 0, eflags: 0x2 linked
// Checksum 0xfdef109c, Offset: 0x858
// Size: 0x202
function init() {
    level.doa.var_e57e1d34 = [];
    level.doa.var_d7e090f7 = [];
    level.doa.var_d7e090f7[#"zombietron_impaler"] = &function_ed0da451;
    level.doa.var_d7e090f7[#"zombietron_impaler_1"] = &function_3d40d138;
    level.doa.var_d7e090f7[#"zombietron_impaler_2"] = &function_bcd45061;
    level.doa.var_5b088fde = getweapon("zombietron_launcher_secondary");
    level.doa.default_weapon = getweapon("zombietron_lmg");
    impaler = getweapon("zombietron_impaler");
    impaler.var_a8e39382 = 5;
    impaler.var_69baf44a = 2;
    impaler.var_f9fc5587 = getweapon("zombietron_ray_gun");
    impaler = getweapon("zombietron_impaler_1");
    impaler.var_a8e39382 = 5;
    impaler.var_69baf44a = 2;
    impaler.var_f9fc5587 = getweapon("zombietron_ray_gun_1");
    impaler = getweapon("zombietron_impaler_2");
    impaler.var_a8e39382 = 5;
    impaler.var_69baf44a = 2;
    impaler.var_f9fc5587 = getweapon("zombietron_ray_gun_2");
}

// Namespace namespace_41cb996/missile_fire
// Params 1, eflags: 0x20
// Checksum 0x1fedeedb, Offset: 0xa68
// Size: 0xbc
function event_handler[missile_fire] missilefired(eventstruct) {
    if (isdefined(eventstruct.weapon.var_a8e39382) && isdefined(eventstruct.projectile)) {
        level thread namespace_ec06fe4a::function_bd89b452(eventstruct.weapon.var_a8e39382, eventstruct.projectile);
        return;
    }
    if (isdefined(eventstruct.projectile)) {
        eventstruct.projectile thread namespace_ec06fe4a::function_70b34352(9.8);
        level thread namespace_ec06fe4a::function_bd89b452(10, eventstruct.projectile);
    }
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 0, eflags: 0x2 linked
// Checksum 0xa0ca41c7, Offset: 0xb30
// Size: 0x3fc
function updateweapon() {
    if (!isdefined(self.doa) || !isdefined(self.doa.var_fd5fcb75) || isdefined(self.doa.vehicle)) {
        return;
    }
    if (gettime() < self.doa.var_909a4dd5 || !namespace_dfc652ee::function_f759a457() || is_true(self.doa.var_57eaec6e)) {
        return;
    }
    if (self.doa.var_d8955419 > 0) {
        decay = 1 + self.doa.weaponlevel * 0.5;
        if (self isfiring()) {
            decay = int(decay * (3 - self.doa.var_d6b75dff));
        }
        self.doa.var_d8955419 -= decay;
        if (self.doa.var_d8955419 < 0) {
            self.doa.var_d8955419 = 0;
        }
    } else if (self.doa.weaponlevel > 0) {
        self.doa.weaponlevel--;
        self.doa.var_d8955419 = 1023;
        if (self.doa.var_fd5fcb75 === self.doa.var_ed8fde10 && self.doa.weaponlevel == 0) {
            self.doa.var_d8955419 = 0;
        }
        self function_a5a7bbb7([[ self.doa.weaponpack ]]->function_91c18b19(self.doa.weaponlevel));
        weaponlevel = self.doa.weaponlevel;
        self.doa.var_9c7d56c1 = [[ self.doa.weaponpack ]]->function_91c18b19(weaponlevel);
        if (self namespace_1c2a96f9::function_d5b51f1e()) {
            weaponlevel = math::clamp(self.doa.weaponlevel + level.doa.var_6c58d51, self.doa.weaponlevel, 2);
            self.doa.var_4eda72ee = [[ self.doa.weaponpack ]]->function_91c18b19(weaponlevel);
        }
        self namespace_e32bb68::function_3a59ec34("evt_doa_pickup_weapon_downgraded");
        /#
            namespace_1e25ad94::debugmsg("<unknown string>" + self.name + "<unknown string>" + self.doa.weaponlevel + "<unknown string>" + [[ self.doa.weaponpack ]]->getname());
        #/
    }
    if (self.doa.var_fd5fcb75 != self.doa.var_ed8fde10) {
        if (self.doa.var_d8955419 == 0 && self.doa.weaponlevel == 0) {
            self function_6c4d9896(self.doa.var_ed8fde10);
        }
    }
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 1, eflags: 0x2 linked
// Checksum 0x723d0176, Offset: 0xf38
// Size: 0x3ea
function function_51e99bc7(amount = 1) {
    if (!isdefined(self.doa.weaponpack)) {
        return;
    }
    if (is_true(self.doa.respawning)) {
        return;
    }
    self.doa.var_d8955419 += int(64 * amount);
    if (self.doa.var_d8955419 >= 1024) {
        if (self.doa.weaponlevel < 2) {
            oldlevel = self.doa.weaponlevel;
            self.doa.weaponlevel += int(self.doa.var_d8955419 / 1024);
            if (self.doa.weaponlevel > 2) {
                self.doa.weaponlevel = 2;
            }
            if (oldlevel == 1 && self.doa.weaponlevel == 2) {
                self thread namespace_6e90e490::function_47e11416(5);
            }
            self.doa.var_d8955419 -= (self.doa.weaponlevel - oldlevel) * 1024;
            time = gettime() + 2000;
            if (self.doa.var_909a4dd5 < time) {
                self.doa.var_909a4dd5 = time;
            }
            self function_a5a7bbb7([[ self.doa.weaponpack ]]->function_91c18b19(self.doa.weaponlevel));
            self namespace_e32bb68::function_3a59ec34("evt_doa_pickup_weapon_upgraded");
            /#
                namespace_1e25ad94::debugmsg("<unknown string>" + self.name + "<unknown string>" + self.doa.weaponlevel + "<unknown string>" + [[ self.doa.weaponpack ]]->getname());
            #/
        } else {
            self.doa.var_d8955419 = 1023;
        }
    }
    self.doa.var_d8955419 = math::clamp(self.doa.var_d8955419, 0, 1023);
    weaponlevel = self.doa.weaponlevel;
    self.doa.var_9c7d56c1 = [[ self.doa.weaponpack ]]->function_91c18b19(weaponlevel);
    if (self namespace_1c2a96f9::function_d5b51f1e()) {
        weaponlevel = math::clamp(self.doa.weaponlevel + level.doa.var_6c58d51, self.doa.weaponlevel, 2);
        self.doa.var_4eda72ee = [[ self.doa.weaponpack ]]->function_91c18b19(weaponlevel);
    }
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 0, eflags: 0x2 linked
// Checksum 0xeeaa77d6, Offset: 0x1330
// Size: 0x84
function function_d5bd34b4() {
    if (self.doa.var_fd5fcb75 === self.doa.var_ed8fde10 && self.doa.var_d8955419 == 0) {
        self function_51e99bc7(16 - 1);
    }
    self function_51e99bc7(16);
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 2, eflags: 0x2 linked
// Checksum 0x9b3a891a, Offset: 0x13c0
// Size: 0x4d6
function function_6c4d9896(var_9de8aead, weaponpickup = 0) {
    profilestart();
    if (!isdefined(self.doa)) {
        profilestop();
        return;
    }
    if (!isplayer(self)) {
        profilestop();
        return;
    }
    if (is_true(weaponpickup)) {
        fill = 1;
        if (self.doa.var_fd5fcb75 === var_9de8aead) {
            if (var_9de8aead === self.doa.var_ed8fde10 && self.doa.var_d8955419 == 0) {
                self function_51e99bc7(16 - 1);
            }
            self function_51e99bc7(16);
            if (self.doa.weaponlevel == 2) {
                if (isdefined(self.doa.var_7d46d3b9)) {
                    self [[ self.doa.var_7d46d3b9 ]]([[ self.doa.weaponpack ]]->gettype());
                }
            }
            profilestop();
            return;
        }
    }
    if (self.doa.var_fd5fcb75 !== var_9de8aead) {
        self notify(#"hash_6edec00b6bae610a");
        self.doa.weaponpack = function_dc699ae6(var_9de8aead);
        self.doa.var_fd5fcb75 = var_9de8aead;
        self.doa.weapontype = [[ self.doa.weaponpack ]]->gettype();
        self.doa.var_909a4dd5 = 0;
        self.doa.var_3327c78f = 0;
        if (self.doa.weaponlevel == 0) {
            if (is_true(fill) && var_9de8aead === self.doa.var_ed8fde10 || self namespace_1c2a96f9::function_9e59136f()) {
                self.doa.weaponlevel = 1;
            }
        } else {
            fill = 0;
        }
        weaponlevel = self.doa.weaponlevel;
        self.doa.var_9c7d56c1 = [[ self.doa.weaponpack ]]->function_91c18b19(weaponlevel);
        if (self namespace_1c2a96f9::function_d5b51f1e()) {
            weaponlevel = math::clamp(self.doa.weaponlevel + level.doa.var_6c58d51, self.doa.weaponlevel, 2);
            self.doa.var_4eda72ee = [[ self.doa.weaponpack ]]->function_91c18b19(weaponlevel);
        }
        self function_a5a7bbb7([[ self.doa.weaponpack ]]->function_91c18b19(self.doa.weaponlevel));
        var_fa033f5 = [[ self.doa.weaponpack ]]->function_4db878e1();
        if (isdefined(var_fa033f5)) {
            self thread [[ var_fa033f5 ]]();
        }
    } else {
        self function_a5a7bbb7([[ self.doa.weaponpack ]]->function_91c18b19(self.doa.weaponlevel));
    }
    if (is_true(fill)) {
        self.doa.var_d8955419 = 1023;
    }
    /#
        namespace_1e25ad94::debugmsg("<unknown string>" + self.name + "<unknown string>" + self.doa.var_fd5fcb75 + "<unknown string>" + (is_true(fill) ? "<unknown string>" : "<unknown string>"));
        self thread function_a91422ce();
    #/
    profilestop();
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 1, eflags: 0x2 linked
// Checksum 0x80428343, Offset: 0x18a0
// Size: 0x17a
function function_8b7acf56(var_c16ab4b2 = 1) {
    if (var_c16ab4b2) {
        self.doa.var_d8955419 = 0;
        self.doa.weaponlevel = 0;
        self function_6c4d9896(self.doa.var_ed8fde10);
    } else {
        self takeallweapons();
        self.doa.var_fd5fcb75 = undefined;
    }
    if (isdefined(self.doa.weaponpack)) {
        weaponlevel = self.doa.weaponlevel;
        self.doa.var_9c7d56c1 = [[ self.doa.weaponpack ]]->function_91c18b19(weaponlevel);
        if (self namespace_1c2a96f9::function_d5b51f1e()) {
            weaponlevel = math::clamp(self.doa.weaponlevel + level.doa.var_6c58d51, self.doa.weaponlevel, 2);
            self.doa.var_4eda72ee = [[ self.doa.weaponpack ]]->function_91c18b19(weaponlevel);
        }
    }
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 2, eflags: 0x2 linked
// Checksum 0xc73156c4, Offset: 0x1a28
// Size: 0x198
function function_a5a7bbb7(weapon, *data) {
    if (!isplayer(self)) {
        return;
    }
    self notify(#"hash_5939a17bc20f2010");
    if (is_true(level.var_b08350e5)) {
        if (isdefined(self.doa.oldweapon)) {
            self takeweapon(self.doa.oldweapon);
        }
        self.doa.oldweapon = self.doa.currentweapon;
    } else {
        self takeallweapons();
    }
    self giveweapon(data);
    self switchtoweaponimmediate(data);
    self.doa.currentweaponname = data.name;
    self.doa.currentweapon = data;
    if (self.doa.weaponlevel == 2) {
        if (isdefined(self.doa.var_7d46d3b9)) {
            self [[ self.doa.var_7d46d3b9 ]]([[ self.doa.weaponpack ]]->gettype());
        }
    }
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 0, eflags: 0x0
// Checksum 0x2102b20a, Offset: 0x1bc8
// Size: 0x60
function function_a91422ce() {
    self notify(#"hash_36ad2ac26d17068a");
    self endon(#"hash_36ad2ac26d17068a");
    self endon(#"disconnect");
    results = self waittill(#"weapon_fired");
    /#
    #/
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 0, eflags: 0x2 linked
// Checksum 0xaa7e7686, Offset: 0x1c30
// Size: 0xb8
function function_6b6cc0a8() {
    self notify("1d455bdfc1fd3f13");
    self endon("1d455bdfc1fd3f13");
    self endon(#"disconnect");
    self endon(#"hash_6edec00b6bae610a");
    while (true) {
        result = self waittill(#"missile_fire");
        if (isdefined(result.weapon) && result.weapon.name === #"zombietron_launcher_2") {
            self thread function_64adaae3();
        }
    }
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 1, eflags: 0x2 linked
// Checksum 0x738a4373, Offset: 0x1cf0
// Size: 0x2c
function function_bacdbafd(weaponpack) {
    if (weaponpack == "zombietron_launcher") {
        return &function_6b6cc0a8;
    }
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 6, eflags: 0x2 linked
// Checksum 0x524f15bd, Offset: 0x1d28
// Size: 0x6c
function function_ed0da451(ai, *idamage, eattacker, vdir, *smeansofdeath, *weapon) {
    vdir namespace_e32bb68::function_3a59ec34("wpn_doa_buzzsaw_impact_zombie");
    vdir namespace_ed80aead::function_1f275794(weapon, smeansofdeath);
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 6, eflags: 0x2 linked
// Checksum 0x78bbe424, Offset: 0x1da0
// Size: 0xb4
function function_3d40d138(ai, idamage, eattacker, vdir, *smeansofdeath, *weapon) {
    eattacker namespace_e32bb68::function_3a59ec34("wpn_doa_buzzsaw_impact_zombie");
    namespace_ed80aead::trygibbinglimb(eattacker, vdir, undefined, undefined, math::cointoss() ? "right_arm_upper" : "left_arm_upper");
    eattacker namespace_ed80aead::function_1f275794(weapon, smeansofdeath);
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 6, eflags: 0x2 linked
// Checksum 0x8a4f3580, Offset: 0x1e60
// Size: 0x12c
function function_bcd45061(ai, idamage, eattacker, vdir, *smeansofdeath, *weapon) {
    eattacker namespace_e32bb68::function_3a59ec34("wpn_doa_buzzsaw_impact_zombie");
    if (!is_true(eattacker.boss) && randomint(100) < 20) {
        eattacker namespace_ed80aead::function_586ef822();
        return;
    }
    namespace_ed80aead::trygibbinghead(eattacker, vdir, undefined, undefined, "head", 0, 1);
    namespace_ed80aead::trygibbinglimb(eattacker, vdir, undefined, undefined, math::cointoss() ? "right_arm_upper" : "left_arm_upper");
    eattacker namespace_ed80aead::function_1f275794(weapon, smeansofdeath);
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 0, eflags: 0x2 linked
// Checksum 0x3c3446f6, Offset: 0x1f98
// Size: 0x25c
function function_64adaae3() {
    enemies = namespace_ec06fe4a::function_8ff7f92c(self.team);
    if (enemies.size == 0) {
        return;
    }
    var_e44e800b = arraysortclosest(enemies, self.origin, enemies.size, 0, 4096);
    var_742a1b0d = [];
    foreach (guy in var_e44e800b) {
        if (is_true(guy.boss)) {
            continue;
        }
        if (util::within_fov(self.origin, self.angles, guy.origin, 0.8)) {
            var_742a1b0d[var_742a1b0d.size] = guy;
        }
        if (var_742a1b0d.size >= 2) {
            break;
        }
    }
    if (var_742a1b0d.size == 0) {
        return;
    }
    target1 = var_742a1b0d[0];
    target2 = var_742a1b0d.size < 1 ? var_742a1b0d[0] : var_742a1b0d[1];
    v_spawn = self gettagorigin("tag_flash");
    v_dir = anglestoforward(self.angles) * 50;
    if (!isdefined(v_spawn)) {
        v_spawn = self.origin;
    }
    var_ce35a286 = v_spawn + v_dir + (0, 0, 50);
    self thread function_eae80c2(v_spawn, var_ce35a286, target1);
    waitframe(1);
    self thread function_eae80c2(v_spawn, var_ce35a286, target2);
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 4, eflags: 0x2 linked
// Checksum 0x9ae2ae2e, Offset: 0x2200
// Size: 0xf4
function function_eae80c2(origin, var_ce35a286, target, var_7aea2f21 = 0.1) {
    self endon(#"disconnect");
    self endon(#"death");
    if (namespace_ec06fe4a::function_a8975c67(32)) {
        magicbullet(level.doa.var_5b088fde, origin, var_ce35a286, self);
        result = self waittill(#"missile_fire");
        wait(var_7aea2f21);
        if (isdefined(target) && isdefined(result.projectile)) {
            result.projectile missile_settarget(target);
        }
    }
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 2, eflags: 0x2 linked
// Checksum 0xce19c76, Offset: 0x2300
// Size: 0xc2
function ui_menu_ftue_itemshop(*timesec, var_effbd38b = 1) {
    time = gettime();
    if (self.doa.var_909a4dd5 < time && is_true(var_effbd38b)) {
        self thread function_a0a68431();
    }
    self.doa.var_909a4dd5 = time + int(self namespace_1c2a96f9::function_4808b985(8) * 1000);
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 0, eflags: 0x2 linked
// Checksum 0x6d63c20b, Offset: 0x23d0
// Size: 0x134
function function_a0a68431() {
    self notify("7be06012f999ab75");
    self endon("7be06012f999ab75");
    self endon(#"disconnect");
    self thread namespace_83eb6304::turnofffx("ammo_unlimited");
    util::wait_network_frame();
    self namespace_83eb6304::function_3ecfde67("ammo_unlimited");
    while (isdefined(self) && self.doa.var_909a4dd5 > gettime()) {
        result = self waittilltimeout(0.25, #"hash_6edec00b6bae610a", #"player_died");
        if (result._notify === "timeout") {
            continue;
        }
    }
    self.doa.var_909a4dd5 = 0;
    if (isdefined(self)) {
        self thread namespace_83eb6304::turnofffx("ammo_unlimited");
    }
}


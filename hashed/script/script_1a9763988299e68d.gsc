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

    // Namespace class_9b9784aa/namespace_41cb996
    // Params 0, eflags: 0xa linked
    // Checksum 0xb1b3989f, Offset: 0x318
    // Size: 0x2a
    __constructor() {
        self.var_f7688f8b = "";
        self.var_3b56e950 = undefined;
        self.var_ce5a8850 = [];
    }

    // Namespace namespace_9b9784aa/namespace_41cb996
    // Params 0, eflags: 0x82 linked class_linked
    // Checksum 0x80f724d1, Offset: 0x350
    // Size: 0x4
    function __destructor() {
        
    }

    // Namespace namespace_9b9784aa/namespace_41cb996
    // Params 0, eflags: 0x2 linked
    // Checksum 0xccb0d59b, Offset: 0x518
    // Size: 0xa
    function getname() {
        return self.var_f7688f8b;
    }

    // Namespace namespace_9b9784aa/namespace_41cb996
    // Params 0, eflags: 0x2 linked
    // Checksum 0x89fa9fcb, Offset: 0x530
    // Size: 0xa
    function function_4db878e1() {
        return self.var_3b56e950;
    }

    // Namespace namespace_9b9784aa/namespace_41cb996
    // Params 0, eflags: 0x2 linked
    // Checksum 0x99c11c30, Offset: 0x500
    // Size: 0xa
    function gettype() {
        return self.m_type;
    }

    // Namespace namespace_9b9784aa/namespace_41cb996
    // Params 1, eflags: 0x2 linked
    // Checksum 0x4c6f1928, Offset: 0x548
    // Size: 0x50
    function function_91c18b19(weaponlevel) {
        /#
            assert(weaponlevel >= 0 && weaponlevel <= 2, "<unknown string>");
        #/
        return self.var_ce5a8850[weaponlevel];
    }

    // Namespace namespace_9b9784aa/namespace_41cb996
    // Params 3, eflags: 0x2 linked
    // Checksum 0x505abbe4, Offset: 0x360
    // Size: 0x198
    function init(var_49d95ac1, type, var_985105b) {
        self.var_f7688f8b = var_49d95ac1;
        self.m_type = type;
        self.var_3b56e950 = var_985105b;
        self.var_ce5a8850[self.var_ce5a8850.size] = getweapon(self.var_f7688f8b);
        /#
            assert(isdefined(self.var_ce5a8850[0]));
        #/
        self.var_ce5a8850[self.var_ce5a8850.size] = getweapon(self.var_f7688f8b + "_1");
        self.var_ce5a8850[self.var_ce5a8850.size] = getweapon(self.var_f7688f8b + "_2");
        self.var_ce5a8850[1] = self.var_ce5a8850[1] != level.weaponnone ? self.var_ce5a8850[1] : self.var_ce5a8850[0];
        self.var_ce5a8850[2] = self.var_ce5a8850[2] != level.weaponnone ? self.var_ce5a8850[2] : self.var_ce5a8850[1];
    }

}

// Namespace namespace_41cb996/namespace_41cb996
// Params 2, eflags: 0x2 linked
// Checksum 0xc5dc2d2f, Offset: 0x718
// Size: 0x84
function function_377d91b2(name, type) {
    weaponpack = new class_9b9784aa();
    level.var_8cff5775.var_e57e1d34[level.var_8cff5775.var_e57e1d34.size] = weaponpack;
    [[ weaponpack ]]->init(name, type, function_bacdbafd(name));
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 1, eflags: 0x2 linked
// Checksum 0xb39a404e, Offset: 0x7a8
// Size: 0xa2
function function_dc699ae6(name) {
    foreach (var_f5c7c2f0 in level.var_8cff5775.var_e57e1d34) {
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
    level.var_8cff5775.var_e57e1d34 = [];
    level.var_8cff5775.var_d7e090f7 = [];
    level.var_8cff5775.var_d7e090f7[#"hash_507c5922ba1a158f"] = &function_ed0da451;
    level.var_8cff5775.var_d7e090f7[#"hash_7f5a36c91b249e73"] = &function_3d40d138;
    level.var_8cff5775.var_d7e090f7[#"hash_7f5a37c91b24a026"] = &function_bcd45061;
    level.var_8cff5775.var_5b088fde = getweapon("zombietron_launcher_secondary");
    level.var_8cff5775.var_c6e5e8d9 = getweapon("zombietron_lmg");
    var_16e2303b = getweapon("zombietron_impaler");
    var_16e2303b.var_a8e39382.var_16e2303b = 5;
    var_16e2303b.var_69baf44a.var_16e2303b = 2;
    var_16e2303b.var_f9fc5587.var_16e2303b = getweapon("zombietron_ray_gun");
    var_16e2303b = getweapon("zombietron_impaler_1");
    var_16e2303b.var_a8e39382.var_16e2303b = 5;
    var_16e2303b.var_69baf44a.var_16e2303b = 2;
    var_16e2303b.var_f9fc5587.var_16e2303b = getweapon("zombietron_ray_gun_1");
    var_16e2303b = getweapon("zombietron_impaler_2");
    var_16e2303b.var_a8e39382.var_16e2303b = 5;
    var_16e2303b.var_69baf44a.var_16e2303b = 2;
    var_16e2303b.var_f9fc5587.var_16e2303b = getweapon("zombietron_ray_gun_2");
}

// Namespace namespace_41cb996/missile_fire
// Params 1, eflags: 0x20
// Checksum 0x1fedeedb, Offset: 0xa68
// Size: 0xbc
function event_handler[missile_fire] function_55af2576(eventstruct) {
    if (isdefined(eventstruct.weapon.var_a8e39382) && isdefined(eventstruct.projectile)) {
        level thread namespace_ec06fe4a::function_bd89b452(eventstruct.weapon.var_a8e39382, eventstruct.projectile);
    } else if (isdefined(eventstruct.projectile)) {
        eventstruct.projectile thread namespace_ec06fe4a::function_70b34352(9.8);
        level thread namespace_ec06fe4a::function_bd89b452(10, eventstruct.projectile);
    }
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 0, eflags: 0x2 linked
// Checksum 0xa0ca41c7, Offset: 0xb30
// Size: 0x3fc
function function_61c84fc9() {
    if (!isdefined(self.var_8cff5775) || !isdefined(self.var_8cff5775.var_fd5fcb75) || isdefined(self.var_8cff5775.vehicle)) {
        return;
    }
    if (gettime() < self.var_8cff5775.var_909a4dd5 || !namespace_dfc652ee::function_f759a457() || is_true(self.var_8cff5775.var_57eaec6e)) {
        return;
    }
    if (self.var_8cff5775.var_d8955419 > 0) {
        decay = 1 + self.var_8cff5775.weaponlevel * 0.5;
        if (self isfiring()) {
            decay = int(decay * (3 - self.var_8cff5775.var_d6b75dff));
        }
        self.var_8cff5775.var_d8955419 = self.var_8cff5775.var_d8955419 - decay;
        if (self.var_8cff5775.var_d8955419 < 0) {
            self.var_8cff5775.var_d8955419 = 0;
        }
    } else if (self.var_8cff5775.weaponlevel > 0) {
        self.var_8cff5775.weaponlevel--;
        self.var_8cff5775.var_d8955419 = 1023;
        if (self.var_8cff5775.var_fd5fcb75 === self.var_8cff5775.var_ed8fde10 && self.var_8cff5775.weaponlevel == 0) {
            self.var_8cff5775.var_d8955419 = 0;
        }
        self function_a5a7bbb7([[ self.var_8cff5775.weaponpack ]]->function_91c18b19(self.var_8cff5775.weaponlevel));
        weaponlevel = self.var_8cff5775.weaponlevel;
        self.var_8cff5775.var_9c7d56c1 = [[ self.var_8cff5775.weaponpack ]]->function_91c18b19(weaponlevel);
        if (self namespace_1c2a96f9::function_d5b51f1e()) {
            weaponlevel = math::clamp(self.var_8cff5775.weaponlevel + level.var_8cff5775.var_6c58d51, self.var_8cff5775.weaponlevel, 2);
            self.var_8cff5775.var_4eda72ee = [[ self.var_8cff5775.weaponpack ]]->function_91c18b19(weaponlevel);
        }
        self namespace_e32bb68::function_3a59ec34("evt_doa_pickup_weapon_downgraded");
        /#
            function_f5f0c0f8("<unknown string>" + self.name + "<unknown string>" + self.var_8cff5775.weaponlevel + "<unknown string>" + [[ self.var_8cff5775.weaponpack ]]->getname());
        #/
    }
    if (self.var_8cff5775.var_fd5fcb75 != self.var_8cff5775.var_ed8fde10) {
        if (self.var_8cff5775.var_d8955419 == 0 && self.var_8cff5775.weaponlevel == 0) {
            self function_6c4d9896(self.var_8cff5775.var_ed8fde10);
        }
    }
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 1, eflags: 0x2 linked
// Checksum 0x723d0176, Offset: 0xf38
// Size: 0x3ea
function function_51e99bc7(amount = 1) {
    if (!isdefined(self.var_8cff5775.weaponpack)) {
        return;
    }
    if (is_true(self.var_8cff5775.var_70c50ae0)) {
        return;
    }
    self.var_8cff5775.var_d8955419 = self.var_8cff5775.var_d8955419 + int(64 * amount);
    if (self.var_8cff5775.var_d8955419 >= 1024) {
        if (self.var_8cff5775.weaponlevel < 2) {
            var_fe38469a = self.var_8cff5775.weaponlevel;
            self.var_8cff5775.weaponlevel = self.var_8cff5775.weaponlevel + int(self.var_8cff5775.var_d8955419 / 1024);
            if (self.var_8cff5775.weaponlevel > 2) {
                self.var_8cff5775.weaponlevel = 2;
            }
            if (var_fe38469a == 1 && self.var_8cff5775.weaponlevel == 2) {
                self thread namespace_6e90e490::function_47e11416(5);
            }
            self.var_8cff5775.var_d8955419 = self.var_8cff5775.var_d8955419 - (self.var_8cff5775.weaponlevel - var_fe38469a) * 1024;
            time = gettime() + 2000;
            if (self.var_8cff5775.var_909a4dd5 < time) {
                self.var_8cff5775.var_909a4dd5 = time;
            }
            self function_a5a7bbb7([[ self.var_8cff5775.weaponpack ]]->function_91c18b19(self.var_8cff5775.weaponlevel));
            self namespace_e32bb68::function_3a59ec34("evt_doa_pickup_weapon_upgraded");
            /#
                function_f5f0c0f8("<unknown string>" + self.name + "<unknown string>" + self.var_8cff5775.weaponlevel + "<unknown string>" + [[ self.var_8cff5775.weaponpack ]]->getname());
            #/
        } else {
            self.var_8cff5775.var_d8955419 = 1023;
        }
    }
    self.var_8cff5775.var_d8955419 = math::clamp(self.var_8cff5775.var_d8955419, 0, 1023);
    weaponlevel = self.var_8cff5775.weaponlevel;
    self.var_8cff5775.var_9c7d56c1 = [[ self.var_8cff5775.weaponpack ]]->function_91c18b19(weaponlevel);
    if (self namespace_1c2a96f9::function_d5b51f1e()) {
        weaponlevel = math::clamp(self.var_8cff5775.weaponlevel + level.var_8cff5775.var_6c58d51, self.var_8cff5775.weaponlevel, 2);
        self.var_8cff5775.var_4eda72ee = [[ self.var_8cff5775.weaponpack ]]->function_91c18b19(weaponlevel);
    }
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 0, eflags: 0x2 linked
// Checksum 0xeeaa77d6, Offset: 0x1330
// Size: 0x84
function function_d5bd34b4() {
    if (self.var_8cff5775.var_fd5fcb75 === self.var_8cff5775.var_ed8fde10 && self.var_8cff5775.var_d8955419 == 0) {
        self function_51e99bc7(16 - 1);
    }
    self function_51e99bc7(16);
}

// Namespace namespace_41cb996/namespace_41cb996
// Params 2, eflags: 0x2 linked
// Checksum 0x9b3a891a, Offset: 0x13c0
// Size: 0x4d6
function function_6c4d9896(var_9de8aead, var_462e473e = 0) {
    profilestart();
    if (!isdefined(self.var_8cff5775)) {
        profilestop();
        return;
    }
    if (!isplayer(self)) {
        profilestop();
        return;
    }
    if (is_true(var_462e473e)) {
        fill = 1;
        if (self.var_8cff5775.var_fd5fcb75 === var_9de8aead) {
            if (var_9de8aead === self.var_8cff5775.var_ed8fde10 && self.var_8cff5775.var_d8955419 == 0) {
                self function_51e99bc7(16 - 1);
            }
            self function_51e99bc7(16);
            if (self.var_8cff5775.weaponlevel == 2) {
                if (isdefined(self.var_8cff5775.var_7d46d3b9)) {
                    self [[ self.var_8cff5775.var_7d46d3b9 ]]([[ self.var_8cff5775.weaponpack ]]->gettype());
                }
            }
            profilestop();
            return;
        }
    }
    if (self.var_8cff5775.var_fd5fcb75 !== var_9de8aead) {
        self notify(#"hash_6edec00b6bae610a");
        self.var_8cff5775.weaponpack = function_dc699ae6(var_9de8aead);
        self.var_8cff5775.var_fd5fcb75 = var_9de8aead;
        self.var_8cff5775.weapontype = [[ self.var_8cff5775.weaponpack ]]->gettype();
        self.var_8cff5775.var_909a4dd5 = 0;
        self.var_8cff5775.var_3327c78f = 0;
        if (self.var_8cff5775.weaponlevel == 0) {
            if (is_true(fill) && var_9de8aead === self.var_8cff5775.var_ed8fde10 || self namespace_1c2a96f9::function_9e59136f()) {
                self.var_8cff5775.weaponlevel = 1;
            }
        } else {
            fill = 0;
        }
        weaponlevel = self.var_8cff5775.weaponlevel;
        self.var_8cff5775.var_9c7d56c1 = [[ self.var_8cff5775.weaponpack ]]->function_91c18b19(weaponlevel);
        if (self namespace_1c2a96f9::function_d5b51f1e()) {
            weaponlevel = math::clamp(self.var_8cff5775.weaponlevel + level.var_8cff5775.var_6c58d51, self.var_8cff5775.weaponlevel, 2);
            self.var_8cff5775.var_4eda72ee = [[ self.var_8cff5775.weaponpack ]]->function_91c18b19(weaponlevel);
        }
        self function_a5a7bbb7([[ self.var_8cff5775.weaponpack ]]->function_91c18b19(self.var_8cff5775.weaponlevel));
        var_fa033f5 = [[ self.var_8cff5775.weaponpack ]]->function_4db878e1();
        if (isdefined(var_fa033f5)) {
            self thread [[ var_fa033f5 ]]();
        }
    } else {
        self function_a5a7bbb7([[ self.var_8cff5775.weaponpack ]]->function_91c18b19(self.var_8cff5775.weaponlevel));
    }
    if (is_true(fill)) {
        self.var_8cff5775.var_d8955419 = 1023;
    }
    /#
        function_f5f0c0f8("<unknown string>" + self.name + "<unknown string>" + self.var_8cff5775.var_fd5fcb75 + "<unknown string>" + (is_true(fill) ? "<unknown string>" : "<unknown string>"));
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
        self.var_8cff5775.var_d8955419 = 0;
        self.var_8cff5775.weaponlevel = 0;
        self function_6c4d9896(self.var_8cff5775.var_ed8fde10);
    } else {
        self takeallweapons();
        self.var_8cff5775.var_fd5fcb75 = undefined;
    }
    if (isdefined(self.var_8cff5775.weaponpack)) {
        weaponlevel = self.var_8cff5775.weaponlevel;
        self.var_8cff5775.var_9c7d56c1 = [[ self.var_8cff5775.weaponpack ]]->function_91c18b19(weaponlevel);
        if (self namespace_1c2a96f9::function_d5b51f1e()) {
            weaponlevel = math::clamp(self.var_8cff5775.weaponlevel + level.var_8cff5775.var_6c58d51, self.var_8cff5775.weaponlevel, 2);
            self.var_8cff5775.var_4eda72ee = [[ self.var_8cff5775.weaponpack ]]->function_91c18b19(weaponlevel);
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
        if (isdefined(self.var_8cff5775.oldweapon)) {
            self takeweapon(self.var_8cff5775.oldweapon);
        }
        self.var_8cff5775.oldweapon = self.var_8cff5775.currentweapon;
    } else {
        self takeallweapons();
    }
    self giveweapon(data);
    self switchtoweaponimmediate(data);
    self.var_8cff5775.currentweaponname = data.name;
    self.var_8cff5775.currentweapon = data;
    if (self.var_8cff5775.weaponlevel == 2) {
        if (isdefined(self.var_8cff5775.var_7d46d3b9)) {
            self [[ self.var_8cff5775.var_7d46d3b9 ]]([[ self.var_8cff5775.weaponpack ]]->gettype());
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
    results = undefined;
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
    while (1) {
        result = undefined;
        result = self waittill(#"missile_fire");
        if (isdefined(result.weapon) && result.weapon.name === #"hash_63eb2c3f688a6bbc") {
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
    } else {
        namespace_ed80aead::trygibbinghead(eattacker, vdir, undefined, undefined, "head", 0, 1);
        namespace_ed80aead::trygibbinglimb(eattacker, vdir, undefined, undefined, math::cointoss() ? "right_arm_upper" : "left_arm_upper");
        eattacker namespace_ed80aead::function_1f275794(weapon, smeansofdeath);
    }
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
    target2 = var_742a1b0d.size < 1 ? var_742a1b0d[1] : var_742a1b0d[0];
    v_spawn = self gettagorigin("tag_flash");
    v_dir = anglestoforward(self.angles) * 50;
    if (!isdefined(v_spawn)) {
        v_spawn = self.origin;
    }
    var_ce35a286 = v_spawn + v_dir + vectorscale((0, 0, 1), 50);
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
        magicbullet(level.var_8cff5775.var_5b088fde, origin, var_ce35a286, self);
        result = undefined;
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
function function_41a10718(*timesec, var_effbd38b = 1) {
    time = gettime();
    if (self.var_8cff5775.var_909a4dd5 < time && is_true(var_effbd38b)) {
        self thread function_a0a68431();
    }
    self.var_8cff5775.var_909a4dd5 = time + int(self namespace_1c2a96f9::function_4808b985(8) * 1000);
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
    while (isdefined(self) && self.var_8cff5775.var_909a4dd5 > gettime()) {
        result = undefined;
        result = self waittilltimeout(0.25, #"hash_6edec00b6bae610a", #"player_died");
        if (result._notify === "timeout") {
            continue;
        }
    }
    self.var_8cff5775.var_909a4dd5 = 0;
    if (isdefined(self)) {
        self thread namespace_83eb6304::turnofffx("ammo_unlimited");
    }
}

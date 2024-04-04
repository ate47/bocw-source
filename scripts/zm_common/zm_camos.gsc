// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_pack_a_punch_util.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\activecamo_shared.gsc;

#namespace zm_camos;

// Namespace zm_camos/zm_camos
// Params 0, eflags: 0x5
// Checksum 0xd246a47d, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_camos", &preinit, undefined, undefined, undefined);
}

// Namespace zm_camos/zm_camos
// Params 0, eflags: 0x6 linked
// Checksum 0x416f9aea, Offset: 0xf8
// Size: 0x44
function private preinit() {
    level.var_f06de157 = &function_264bcab7;
    level.var_3993dc8e = &function_4092decc;
    level.var_b219667f = 1;
}

// Namespace zm_camos/zm_camos
// Params 1, eflags: 0x2 linked
// Checksum 0xf648403c, Offset: 0x148
// Size: 0xb0
function function_79be4786(weapon) {
    weapon = function_264bcab7(weapon);
    weaponoptions = self getbuildkitweaponoptions(weapon);
    var_3ded6a21 = getcamoindex(weaponoptions);
    var_a99ac61d = getactivecamo(var_3ded6a21);
    if (!isdefined(var_a99ac61d) || var_a99ac61d == #"") {
        return;
    }
    return var_3ded6a21;
}

// Namespace zm_camos/zm_camos
// Params 1, eflags: 0x2 linked
// Checksum 0xc2125618, Offset: 0x200
// Size: 0x8c
function function_7c982eb6(weapon) {
    weapon = function_264bcab7(weapon);
    s_active_camo = function_e5ed6edb(weapon);
    if (isdefined(s_active_camo)) {
        weaponstate = s_active_camo.var_dd54a13b[weapon];
        if (isdefined(weaponstate) && isdefined(weaponstate.stagenum)) {
            return weaponstate.stagenum;
        }
    }
}

// Namespace zm_camos/zm_camos
// Params 2, eflags: 0x2 linked
// Checksum 0x6b050a06, Offset: 0x298
// Size: 0xd4
function function_6f75f3d3(weapon, current_weaponoptions) {
    var_515e20e6 = zm_weapons::is_weapon_upgraded(weapon);
    weapon = function_264bcab7(weapon);
    if (self function_6b9dce34(weapon)) {
        return getcamoindex(current_weaponoptions);
    }
    if (var_515e20e6 && isdefined(self.var_3f021416) && isdefined(self.var_3f021416[weapon])) {
        return self.var_3f021416[weapon];
    }
    if (isdefined(current_weaponoptions)) {
        return getcamoindex(current_weaponoptions);
    }
}

// Namespace zm_camos/zm_camos
// Params 3, eflags: 0x2 linked
// Checksum 0xb7355683, Offset: 0x378
// Size: 0x204
function function_4f727cf5(weapon, weaponoptions, var_b07a5171 = 0) {
    weapon = function_264bcab7(weapon);
    if (!isdefined(weaponoptions)) {
        weaponoptions = self getbuildkitweaponoptions(weapon);
    }
    if (isdefined(weaponoptions) && self function_6b9dce34(weapon)) {
        return getcamoindex(weaponoptions);
    }
    if (!isdefined(level.pack_a_punch_camo_index)) {
        if (isdefined(weaponoptions)) {
            return getcamoindex(weaponoptions);
        }
        return;
    }
    if (isdefined(level.pack_a_punch_camo_index_number_variants)) {
        if (!isdefined(self.var_3f021416)) {
            self.var_3f021416 = [];
        } else if (!isarray(self.var_3f021416)) {
            self.var_3f021416 = array(self.var_3f021416);
        }
        var_e5c037f4 = self.var_3f021416[weapon];
        if (var_b07a5171 && isdefined(var_e5c037f4) && var_e5c037f4 >= level.pack_a_punch_camo_index) {
            var_c44040bf = var_e5c037f4 + 1;
            if (var_c44040bf >= level.pack_a_punch_camo_index + level.pack_a_punch_camo_index_number_variants) {
                var_c44040bf = level.pack_a_punch_camo_index;
            }
        } else {
            n_offset = randomintrange(0, level.pack_a_punch_camo_index_number_variants);
            var_c44040bf = level.pack_a_punch_camo_index + n_offset;
        }
        self.var_3f021416[weapon] = var_c44040bf;
        return var_c44040bf;
    }
    return level.pack_a_punch_camo_index;
}

// Namespace zm_camos/zm_camos
// Params 2, eflags: 0x2 linked
// Checksum 0xae4ced0, Offset: 0x588
// Size: 0x4c
function function_a24c564f(var_c34665fc, weapon) {
    weapon = function_264bcab7(weapon);
    self notify(var_c34665fc, {#weapon:weapon});
}

// Namespace zm_camos/zm_camos
// Params 1, eflags: 0x2 linked
// Checksum 0x307a3ff2, Offset: 0x5e0
// Size: 0x4a
function function_264bcab7(weapon) {
    if (isdefined(weapon) && weapon != level.weaponnone) {
        weapon = zm_weapons::function_93cd8e76(weapon, 1);
    }
    return weapon;
}

// Namespace zm_camos/zm_camos
// Params 1, eflags: 0x6 linked
// Checksum 0x70717572, Offset: 0x638
// Size: 0xee
function private function_e5ed6edb(weapon) {
    weaponoptions = self getbuildkitweaponoptions(weapon);
    if (!isdefined(self.pers) || !isdefined(self.pers[#"activecamo"])) {
        return;
    }
    var_3ded6a21 = getcamoindex(weaponoptions);
    var_a99ac61d = getactivecamo(var_3ded6a21);
    if (!isdefined(var_a99ac61d) || !isdefined(self.pers[#"activecamo"][var_a99ac61d])) {
        return;
    }
    return self.pers[#"activecamo"][var_a99ac61d];
}

// Namespace zm_camos/zm_camos
// Params 1, eflags: 0x6 linked
// Checksum 0x5bbc5937, Offset: 0x730
// Size: 0x52
function private function_6b9dce34(weapon) {
    if (isdefined(self function_79be4786(weapon))) {
        return true;
    }
    if (self function_1744e243(weapon) != 0) {
        return true;
    }
    return false;
}

// Namespace zm_camos/zm_camos
// Params 1, eflags: 0x2 linked
// Checksum 0xa1487669, Offset: 0x790
// Size: 0x144
function function_7b29c2d2(weapon) {
    if (!isdefined(self.var_88ebd633)) {
        self.var_88ebd633 = {};
    }
    var_fcad15af = function_264bcab7(weapon);
    if (!isdefined(self.var_88ebd633.var_92177fec) || self.var_88ebd633.var_92177fec != var_fcad15af) {
        self.var_88ebd633.var_92177fec = var_fcad15af;
        self.var_88ebd633.var_d9449a3 = 0;
    }
    self.var_88ebd633.var_d9449a3++;
    if (self.var_88ebd633.var_d9449a3 >= 5) {
        self thread activecamo::function_896ac347(weapon, #"rapid_kills", 1);
        self.var_88ebd633.var_d9449a3 = 0;
        self notify(#"hash_7e9b17b054c01cb3");
        return;
    }
    if (self.var_88ebd633.var_d9449a3 == 1) {
        self thread function_160898c();
    }
}

// Namespace zm_camos/zm_camos
// Params 0, eflags: 0x6 linked
// Checksum 0x7719fa52, Offset: 0x8e0
// Size: 0x4e
function private function_160898c() {
    self notify(#"hash_7e9b17b054c01cb3");
    self endon(#"death", #"hash_7e9b17b054c01cb3");
    wait(5);
    self.var_88ebd633.var_d9449a3 = 0;
}

// Namespace zm_camos/zm_camos
// Params 1, eflags: 0x2 linked
// Checksum 0x7c9e9e64, Offset: 0x938
// Size: 0x144
function function_432cf6d(weapon) {
    if (!isdefined(self.var_88ebd633)) {
        self.var_88ebd633 = {};
    }
    var_fcad15af = function_264bcab7(weapon);
    if (!isdefined(self.var_88ebd633.var_d45de2ae) || self.var_88ebd633.var_d45de2ae != var_fcad15af) {
        self.var_88ebd633.var_d45de2ae = var_fcad15af;
        self.var_88ebd633.var_bcacb3a3 = 0;
    }
    self.var_88ebd633.var_bcacb3a3++;
    if (self.var_88ebd633.var_bcacb3a3 >= 5) {
        self thread activecamo::function_896ac347(weapon, #"rapid_headshots", 1);
        self.var_88ebd633.var_bcacb3a3 = 0;
        self notify(#"hash_3dbf3a8521ba1621");
        return;
    }
    if (self.var_88ebd633.var_bcacb3a3 == 1) {
        self thread function_d01affa9();
    }
}

// Namespace zm_camos/zm_camos
// Params 0, eflags: 0x6 linked
// Checksum 0xd0e9ef8a, Offset: 0xa88
// Size: 0x4e
function private function_d01affa9() {
    self notify(#"hash_3dbf3a8521ba1621");
    self endon(#"death", #"hash_3dbf3a8521ba1621");
    wait(7);
    self.var_88ebd633.var_bcacb3a3 = 0;
}

// Namespace zm_camos/zm_camos
// Params 1, eflags: 0x2 linked
// Checksum 0x5a57bdcf, Offset: 0xae0
// Size: 0xfc
function function_4092decc(weapon) {
    if (zm_weapons::is_weapon_upgraded(weapon)) {
        self activecamo::function_896ac347(weapon, #"pap_weapon_packed", 1);
        if (zm_pap_util::function_7352d8cc(weapon)) {
            self activecamo::function_896ac347(weapon, #"pap_weapon_double_packed", 1);
        }
    } else {
        self function_a24c564f(#"reset_pack", weapon);
    }
    self callback::callback(#"hash_478f81e3bb0950dd", {#weapon:weapon});
}


// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\item_world.csc;
#using script_3d35e2ff167b3a82;
#using scripts\core_common\ai\systems\gib.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\zm_common\zm_weapons.csc;
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_6fc19861;

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 0, eflags: 0x5
// Checksum 0x2b3c126d, Offset: 0x2f8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_4c62174ea005e84e", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 0, eflags: 0x6 linked
// Checksum 0x4e8772f5, Offset: 0x350
// Size: 0x55c
function private preinit() {
    clientfield::register("actor", "" + #"hash_d1d4ed99da50a4b", 28000, 1, "int", &function_72dbb6b0, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_403f172f69819024", 28000, 1, "int", &function_c4b67b53, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_2b223a333ab436cd", 28000, 1, "int", &function_3a8acde0, 0, 0);
    clientfield::register("actor", "" + #"hash_4189b622ab06c2d5", 28000, 1, "counter", &function_6f0e3ec, 0, 0);
    clientfield::register("actor", "" + #"hash_5c2324e6d994b886", 28000, 1, "counter", &function_21f99cd2, 0, 0);
    clientfield::register("allplayers", "" + #"hash_5d6139b1ce0e7c82", 28000, 2, "int", &function_f564024f, 0, 0);
    clientfield::register("toplayer", "" + #"hash_13f32f06b0e858dd", 28000, 3, "int", &function_36ef6d02, 0, 0);
    callback::on_weapon_change(&on_weapon_change);
    if (!isdefined(level.var_5bc34f35)) {
        level.var_5bc34f35 = [];
    } else if (!isarray(level.var_5bc34f35)) {
        level.var_5bc34f35 = array(level.var_5bc34f35);
    }
    level.var_5bc34f35[0] = #"hash_6395e1f6c15c9836";
    level.var_5bc34f35[1] = #"hash_5f6d3a2792178e29";
    level.var_5bc34f35[2] = #"hash_23d733932ddd62b4";
    if (!isdefined(level.var_5d881f3a)) {
        level.var_5d881f3a = [];
    } else if (!isarray(level.var_5d881f3a)) {
        level.var_5d881f3a = array(level.var_5d881f3a);
    }
    level.var_5d881f3a[0] = #"hash_5e4a019c329ade68";
    level.var_5d881f3a[1] = #"hash_439ea8dd5a16d629";
    level.var_5d881f3a[2] = #"hash_5055722139451102";
    if (!isdefined(level.var_9a8b65b)) {
        level.var_9a8b65b = [];
    } else if (!isarray(level.var_9a8b65b)) {
        level.var_9a8b65b = array(level.var_9a8b65b);
    }
    level.var_9a8b65b[0] = #"hash_3c90d5c126974d0f";
    level.var_9a8b65b[1] = #"hash_21bb9d616abf305a";
    level.var_9a8b65b[2] = #"hash_2884c0d1a250451d";
    if (!isdefined(level.var_b421585f)) {
        level.var_b421585f = [];
    } else if (!isarray(level.var_b421585f)) {
        level.var_b421585f = array(level.var_b421585f);
    }
    level.var_b421585f[0] = #"hash_1eb0fcd268ad64f9";
    level.var_b421585f[1] = #"hash_7d68903fe1e1885a";
    level.var_b421585f[2] = #"hash_1b5cc8850bb5d913";
    level.var_6614c251 = &function_6247981b;
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 0, eflags: 0x2 linked
// Checksum 0x5eb04511, Offset: 0x8b8
// Size: 0x34
function postinit() {
    zm_weapons::function_8389c033(#"ww_axe_gun_melee_t9", #"ww_axe_gun_melee_t9");
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0xf5f46037, Offset: 0x8f8
// Size: 0x2ac
function on_weapon_change(params) {
    if (self == level || !isplayer(self)) {
        return;
    }
    localclientnum = params.localclientnum;
    weapon = self function_d2c2b168();
    if (function_17a14a22(weapon)) {
        self function_4a8e6688(localclientnum);
        self function_413411e1();
        self thread function_5167b40a(localclientnum, weapon);
        self function_1807e3d(localclientnum, function_2da7c1b7(weapon));
        self thread function_710eb784(localclientnum);
        self thread function_a9fa384(localclientnum);
        self notify(#"hash_7d6901432c3a2ec4");
        return;
    }
    if (isdefined(self.var_84d6a3cc)) {
        killfx(localclientnum, self.var_84d6a3cc);
        self.var_84d6a3cc = undefined;
        self.var_13f276b7 = undefined;
    }
    self notify(#"hash_12304702f9d44271");
    if (function_cb769ba9(weapon)) {
        self function_45a91739(localclientnum);
        self function_413411e1();
        self function_4ddede67(localclientnum, function_2da7c1b7(weapon));
        self thread function_bf8b2d3f(localclientnum);
        self thread function_299fd631(localclientnum);
        self thread function_36fddaa2(localclientnum);
        self.var_960d365a = 0;
        self thread function_d09aaf1a(localclientnum);
        return;
    }
    self notify(#"hash_7d6901432c3a2ec4");
    self function_4a8e6688(localclientnum);
    self function_45a91739(localclientnum);
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0x49e429d1, Offset: 0xbb0
// Size: 0x74
function function_58d581b6(weapon) {
    if (isdefined(weapon)) {
        switch (weapon.name) {
        case #"hash_7eab88123b09e2c":
        case #"hash_18696150427f2efb":
        case #"ww_axe_gun_melee_t9_upgraded":
        case #"ww_axe_gun_melee_t9":
            return true;
        }
    }
    return false;
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0xc4ab3577, Offset: 0xc30
// Size: 0x54
function function_17a14a22(weapon) {
    if (isdefined(weapon)) {
        switch (weapon.name) {
        case #"ww_axe_gun_melee_t9_upgraded":
        case #"ww_axe_gun_melee_t9":
            return true;
        }
    }
    return false;
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0xdae2e348, Offset: 0xc90
// Size: 0x54
function function_cb769ba9(weapon) {
    if (isdefined(weapon)) {
        switch (weapon.name) {
        case #"hash_7eab88123b09e2c":
        case #"hash_18696150427f2efb":
            return true;
        }
    }
    return false;
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0xc9a4f8e4, Offset: 0xcf0
// Size: 0x54
function function_2da7c1b7(weapon) {
    if (isdefined(weapon)) {
        switch (weapon.name) {
        case #"hash_7eab88123b09e2c":
        case #"ww_axe_gun_melee_t9_upgraded":
            return true;
        }
    }
    return false;
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 2, eflags: 0x2 linked
// Checksum 0xc7e2d2d3, Offset: 0xd50
// Size: 0x4c6
function function_5167b40a(localclientnum, weapon) {
    self endon(#"death", #"weapon_change", #"hash_20766a971f7a55b4");
    self notify("46b9e8dbcaf46fe1");
    self endon("46b9e8dbcaf46fe1");
    while (true) {
        var_a1796c91 = self function_cb96958d(localclientnum, weapon);
        is_upgraded = function_2da7c1b7(weapon);
        if (!isdefined(var_a1796c91) || is_true(self.var_b7a5e43f)) {
            if (isdefined(self.var_84d6a3cc)) {
                killfx(localclientnum, self.var_84d6a3cc);
            }
            self.var_13f276b7 = undefined;
        } else if (isdefined(self.var_13f276b7)) {
            if (self.var_13f276b7 != var_a1796c91) {
                if (isdefined(self.var_84d6a3cc)) {
                    killfx(localclientnum, self.var_84d6a3cc);
                }
                if (self zm_utility::function_f8796df3(localclientnum)) {
                    if (viewmodelhastag(localclientnum, "tag_base_fx")) {
                        if (is_upgraded) {
                            self.var_84d6a3cc = playviewmodelfx(localclientnum, level.var_9a8b65b[var_a1796c91], "tag_base_fx");
                        } else {
                            self.var_84d6a3cc = playviewmodelfx(localclientnum, level.var_5bc34f35[var_a1796c91], "tag_base_fx");
                        }
                    }
                } else if (isdefined(self gettagorigin("tag_base_fx"))) {
                    if (is_upgraded) {
                        self.var_84d6a3cc = util::playfxontag(localclientnum, level.var_b421585f[var_a1796c91], self, "tag_base_fx");
                    } else {
                        self.var_84d6a3cc = util::playfxontag(localclientnum, level.var_5d881f3a[var_a1796c91], self, "tag_base_fx");
                    }
                }
                self.var_13f276b7 = var_a1796c91;
                if (!self util::function_50ed1561(localclientnum)) {
                    self notify(#"hash_18778af2c8b8b9dc");
                    self thread zm_utility::function_ae3780f1(localclientnum, self.var_84d6a3cc, #"hash_18778af2c8b8b9dc");
                }
            }
        } else {
            if (self zm_utility::function_f8796df3(localclientnum)) {
                if (viewmodelhastag(localclientnum, "tag_base_fx")) {
                    if (is_upgraded) {
                        self.var_84d6a3cc = playviewmodelfx(localclientnum, level.var_9a8b65b[var_a1796c91], "tag_base_fx");
                    } else {
                        self.var_84d6a3cc = playviewmodelfx(localclientnum, level.var_5bc34f35[var_a1796c91], "tag_base_fx");
                    }
                }
            } else if (isdefined(self gettagorigin("tag_base_fx"))) {
                if (is_upgraded) {
                    self.var_84d6a3cc = util::playfxontag(localclientnum, level.var_b421585f[var_a1796c91], self, "tag_base_fx");
                } else {
                    self.var_84d6a3cc = util::playfxontag(localclientnum, level.var_5d881f3a[var_a1796c91], self, "tag_base_fx");
                }
            }
            self.var_13f276b7 = var_a1796c91;
            if (!self util::function_50ed1561(localclientnum)) {
                self notify(#"hash_18778af2c8b8b9dc");
                self thread zm_utility::function_ae3780f1(localclientnum, self.var_84d6a3cc, #"hash_18778af2c8b8b9dc");
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 2, eflags: 0x2 linked
// Checksum 0x8d59510b, Offset: 0x1220
// Size: 0xd6
function function_cb96958d(localclientnum, weapon) {
    altweapon = weapon.altweapon;
    if (isdefined(altweapon)) {
        var_726cb2b4 = getweaponammoclip(localclientnum, altweapon);
        var_698d1f70 = self getweaponammostock(localclientnum, altweapon);
        var_84a2de70 = altweapon.maxammo;
        if (var_698d1f70 == var_84a2de70) {
            return 2;
        } else if (var_698d1f70 == 0 && var_726cb2b4 == 0) {
            return 0;
        } else {
            return 1;
        }
        return;
    }
    return undefined;
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 2, eflags: 0x2 linked
// Checksum 0xf591d04e, Offset: 0x1300
// Size: 0x238
function function_6247981b(localclientnum, itementry) {
    if (!isdefined(localclientnum)) {
        return 0;
    }
    data = item_world::function_a7e98a1a(localclientnum);
    var_b84949d0 = undefined;
    var_cb5aea38 = [17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1];
    foreach (slot in var_cb5aea38) {
        slot_item = data.inventory.items[slot];
        if (!isdefined(slot_item)) {
            continue;
        }
        slot_weapon = self namespace_a0d533d1::function_2b83d3ff(slot_item);
        if (function_58d581b6(slot_weapon)) {
            var_b84949d0 = slot_weapon;
            break;
        }
    }
    if (isdefined(var_b84949d0)) {
        if (itementry.name === #"axe_gun_energetic_shard_item_t9") {
            if (isdefined(self.var_c926b4fc) && self.var_c926b4fc >= 5) {
                return 4194304;
            } else {
                return 0;
            }
        } else {
            var_d354e19e = function_cb96958d(localclientnum, var_b84949d0);
            if (var_d354e19e === 2) {
                return 4194304;
            } else {
                return 0;
            }
        }
        return;
    }
    return 2097152;
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 7, eflags: 0x2 linked
// Checksum 0xbe6b8cac, Offset: 0x1540
// Size: 0x1fc
function function_72dbb6b0(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self thread function_a77b707(fieldname);
        self playrenderoverridebundle(#"hash_20021a924b743e3e");
        if (!isdefined(self.var_97928c44)) {
            self playsound(fieldname, #"hash_3376f5f8d417f9f1");
            self.var_97928c44 = self playloopsound(#"hash_42793df46bf25c17", undefined, (0, 0, 40));
        }
        return;
    }
    self util::playfxontag(fieldname, #"hash_7192edc12ac2b6a4", self, "J_SpineLower");
    playrumbleonposition(fieldname, #"hash_28b45e4b4d42f3f8", self.origin);
    if (isdefined(self.var_97928c44)) {
        self stoploopsound(self.var_97928c44);
        self.var_97928c44 = undefined;
    }
    playsound(fieldname, #"hash_7c352e97b08234f4", self.origin + (0, 0, 40));
    self stoprenderoverridebundle(#"hash_20021a924b743e3e");
    self thread function_82a54d90(fieldname);
    self hide();
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0xa5ad506b, Offset: 0x1748
// Size: 0x20c
function function_a77b707(localclientnum) {
    if (!isdefined(self.var_6a8a5f47)) {
        self.var_6a8a5f47 = [];
    }
    if (isdefined(self.var_6a8a5f47[localclientnum])) {
        return;
    }
    self.var_72dbb6b0[localclientnum] = [];
    function_8974fc4a(localclientnum, #"hash_b01b5e755fa10a", "torso", "j_spinelower");
    if (!self gibclientutils::isgibbed(localclientnum, self, 8)) {
        function_8974fc4a(localclientnum, #"hash_4741906c90121375", "chin", "j_head");
    }
    if (!self gibclientutils::isgibbed(localclientnum, self, 16)) {
        function_8974fc4a(localclientnum, #"hash_72dea7e99c30c2d6", "right_arm", "j_elbow_ri");
    }
    if (!self gibclientutils::isgibbed(localclientnum, self, 32)) {
        function_8974fc4a(localclientnum, #"hash_72dea1e99c30b8a4", "left_arm", "j_elbow_le");
    }
    if (!self gibclientutils::isgibbed(localclientnum, self, 128)) {
        function_8974fc4a(localclientnum, #"hash_611a35f466db296c", "right_leg", "j_knee_ri");
    }
    if (!self gibclientutils::isgibbed(localclientnum, self, 256)) {
        function_8974fc4a(localclientnum, #"hash_6105b5f466c9a6e2", "left_leg", "j_knee_le");
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 4, eflags: 0x2 linked
// Checksum 0xf5a44ad8, Offset: 0x1960
// Size: 0x4a
function function_8974fc4a(localclientnum, fx, key, tag) {
    self.var_6a8a5f47[localclientnum][key] = util::playfxontag(localclientnum, fx, self, tag);
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0x1c96bfb9, Offset: 0x19b8
// Size: 0xb4
function function_82a54d90(localclientnum) {
    self endon(#"death");
    if (isdefined(self.var_6a8a5f47) && isdefined(self.var_6a8a5f47[localclientnum])) {
        keys = getarraykeys(self.var_6a8a5f47[localclientnum]);
        for (i = 0; i < keys.size; i++) {
            function_6e2eda79(localclientnum, keys[i]);
        }
        self.var_6a8a5f47[localclientnum] = undefined;
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 2, eflags: 0x2 linked
// Checksum 0x3f8a0bff, Offset: 0x1a78
// Size: 0x3c
function function_6e2eda79(localclientnum, key) {
    deletefx(localclientnum, self.var_6a8a5f47[localclientnum][key]);
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 7, eflags: 0x2 linked
// Checksum 0xf4c13ea0, Offset: 0x1ac0
// Size: 0x11e
function function_c4b67b53(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_104490e2 = util::playfxontag(fieldname, #"hash_6151ad74ed1a70e6", self, "tag_origin");
        if (!isdefined(self.var_59dd8d3e)) {
            self.var_59dd8d3e = self playloopsound(#"hash_79b4ac1c1aed9056");
        }
        return;
    }
    if (isdefined(self.var_104490e2)) {
        killfx(fieldname, self.var_104490e2);
        self.var_104490e2 = undefined;
    }
    if (isdefined(self.var_59dd8d3e)) {
        self stoploopsound(self.var_59dd8d3e);
        self.var_59dd8d3e = undefined;
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 7, eflags: 0x2 linked
// Checksum 0x59cee8e6, Offset: 0x1be8
// Size: 0x11e
function function_3a8acde0(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_104490e2 = util::playfxontag(fieldname, #"hash_195fabff27c05c1f", self, "tag_origin");
        if (!isdefined(self.var_59dd8d3e)) {
            self.var_59dd8d3e = self playloopsound(#"hash_79b4ac1c1aed9056");
        }
        return;
    }
    if (isdefined(self.var_104490e2)) {
        killfx(fieldname, self.var_104490e2);
        self.var_104490e2 = undefined;
    }
    if (isdefined(self.var_59dd8d3e)) {
        self stoploopsound(self.var_59dd8d3e);
        self.var_59dd8d3e = undefined;
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 7, eflags: 0x2 linked
// Checksum 0xdede5f32, Offset: 0x1d10
// Size: 0x9c
function function_6f0e3ec(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::playfxontag(bwastimejump, #"hash_16217ad682d25c31", self, "J_Spine4");
    playsound(bwastimejump, #"hash_54b94d7ce3b3829a", self.origin + (0, 0, 25));
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 7, eflags: 0x2 linked
// Checksum 0x18a0d6ae, Offset: 0x1db8
// Size: 0x9c
function function_21f99cd2(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::playfxontag(bwastimejump, #"hash_5b7fecd9069a79a2", self, "J_Spine4");
    playsound(bwastimejump, #"hash_54b94d7ce3b3829a", self.origin + (0, 0, 25));
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 7, eflags: 0x2 linked
// Checksum 0xc43a9c20, Offset: 0x1e60
// Size: 0xfa
function function_f564024f(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(self.var_bab1a4cb)) {
        self stoploopsound(self.var_bab1a4cb);
        self.var_bab1a4cb = undefined;
    }
    if (bwastimejump == 1) {
        self.var_bab1a4cb = self playloopsound(#"hash_4166b3feb34a26ae", undefined, (0, 0, 50));
        return;
    }
    if (bwastimejump == 2) {
        self.var_bab1a4cb = self playloopsound(#"hash_2204d8749b6a599b", undefined, (0, 0, 50));
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 7, eflags: 0x2 linked
// Checksum 0x1327f563, Offset: 0x1f68
// Size: 0x9c
function function_36ef6d02(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.var_c926b4fc = bwastimejump - 1;
    weapon = self function_d2c2b168();
    if (function_58d581b6(weapon)) {
        self function_413411e1();
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 0, eflags: 0x2 linked
// Checksum 0x53037688, Offset: 0x2010
// Size: 0x54a
function function_413411e1() {
    if (!isdefined(self.var_c926b4fc)) {
        return;
    }
    switch (self.var_c926b4fc) {
    case 0:
        self function_60baf83(#"hash_2c13b8c4a279fcc5");
        self function_60baf83(#"hash_20f8b2c49b7e5461");
        self function_60baf83(#"hash_21149ec49b96ad1d");
        self function_60baf83(#"hash_224204b4ff32ed94");
        self function_60baf83(#"hash_7aaef7109d7bff11");
        self function_2f16cef6(#"hash_334400c4a621888e");
        break;
    case 1:
        self function_60baf83(#"hash_334400c4a621888e");
        self function_60baf83(#"hash_20f8b2c49b7e5461");
        self function_60baf83(#"hash_21149ec49b96ad1d");
        self function_60baf83(#"hash_224204b4ff32ed94");
        self function_60baf83(#"hash_7aaef7109d7bff11");
        self function_2f16cef6(#"hash_2c13b8c4a279fcc5");
        break;
    case 2:
        self function_60baf83(#"hash_334400c4a621888e");
        self function_60baf83(#"hash_2c13b8c4a279fcc5");
        self function_60baf83(#"hash_21149ec49b96ad1d");
        self function_60baf83(#"hash_224204b4ff32ed94");
        self function_60baf83(#"hash_7aaef7109d7bff11");
        self function_2f16cef6(#"hash_20f8b2c49b7e5461");
        break;
    case 3:
        self function_60baf83(#"hash_334400c4a621888e");
        self function_60baf83(#"hash_2c13b8c4a279fcc5");
        self function_60baf83(#"hash_20f8b2c49b7e5461");
        self function_60baf83(#"hash_224204b4ff32ed94");
        self function_60baf83(#"hash_7aaef7109d7bff11");
        self function_2f16cef6(#"hash_21149ec49b96ad1d");
        break;
    case 4:
        self function_60baf83(#"hash_334400c4a621888e");
        self function_60baf83(#"hash_2c13b8c4a279fcc5");
        self function_60baf83(#"hash_20f8b2c49b7e5461");
        self function_60baf83(#"hash_7aaef7109d7bff11");
        self function_2f16cef6(#"hash_21149ec49b96ad1d");
        self function_2f16cef6(#"hash_224204b4ff32ed94");
        break;
    case 5:
        self function_60baf83(#"hash_334400c4a621888e");
        self function_60baf83(#"hash_2c13b8c4a279fcc5");
        self function_60baf83(#"hash_20f8b2c49b7e5461");
        self function_2f16cef6(#"hash_21149ec49b96ad1d");
        self function_2f16cef6(#"hash_224204b4ff32ed94");
        self function_2f16cef6(#"hash_7aaef7109d7bff11");
        break;
    default:
        return;
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0x38b2699d, Offset: 0x2568
// Size: 0x54
function function_60baf83(var_ee6bcd51) {
    if (isplayer(self)) {
        self zm_utility::function_f933b697(var_ee6bcd51);
    }
    self stoprenderoverridebundle(var_ee6bcd51);
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0x38188647, Offset: 0x25c8
// Size: 0x84
function function_2f16cef6(var_ee6bcd51) {
    if (isplayer(self)) {
        if (self zm_utility::function_10df0b9c(var_ee6bcd51)) {
            self playrenderoverridebundle(var_ee6bcd51);
        }
        self zm_utility::function_8065ace2(var_ee6bcd51);
        return;
    }
    self playrenderoverridebundle(var_ee6bcd51);
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 2, eflags: 0x6 linked
// Checksum 0xa7b33114, Offset: 0x2658
// Size: 0x5e4
function private function_1807e3d(localclientnum, is_upgraded) {
    if (self zm_utility::function_f8796df3(localclientnum)) {
        if (viewmodelhastag(localclientnum, "tag_front_fx")) {
            if (!isdefined(self.var_384a4cdc)) {
                if (is_true(is_upgraded)) {
                    self.var_384a4cdc = playviewmodelfx(localclientnum, #"hash_6c26c1b6666191d7", "tag_front_fx");
                } else {
                    self.var_384a4cdc = playviewmodelfx(localclientnum, #"hash_530fd01a386be23e", "tag_front_fx");
                }
            }
            if (!isdefined(self.var_467ce941)) {
                if (is_true(is_upgraded)) {
                    self.var_467ce941 = playviewmodelfx(localclientnum, #"hash_70935884eb69c00f", "tag_front_fx");
                } else {
                    self.var_467ce941 = playviewmodelfx(localclientnum, #"hash_27ed0f02151ab936", "tag_front_fx");
                }
            }
        }
        if (viewmodelhastag(localclientnum, "tag_clip_fx")) {
            if (!isdefined(self.var_3afdb5f7)) {
                if (is_true(is_upgraded)) {
                    self.var_3afdb5f7 = playviewmodelfx(localclientnum, #"hash_70935884eb69c00f", "tag_clip_fx");
                } else {
                    self.var_3afdb5f7 = playviewmodelfx(localclientnum, #"hash_27ed0f02151ab936", "tag_clip_fx");
                }
            }
        }
        if (viewmodelhastag(localclientnum, "tag_foregrip_fx")) {
            if (!isdefined(self.var_393f3aea)) {
                if (is_true(is_upgraded)) {
                    self.var_393f3aea = playviewmodelfx(localclientnum, #"hash_70935884eb69c00f", "tag_foregrip_fx");
                } else {
                    self.var_393f3aea = playviewmodelfx(localclientnum, #"hash_27ed0f02151ab936", "tag_foregrip_fx");
                }
            }
        }
    } else {
        if (isdefined(self gettagorigin("tag_front_fx"))) {
            if (!isdefined(self.var_384a4cdc)) {
                if (is_true(is_upgraded)) {
                    self.var_384a4cdc = util::playfxontag(localclientnum, #"hash_65d872a4708a2015", self, "tag_front_fx");
                } else {
                    self.var_384a4cdc = util::playfxontag(localclientnum, #"hash_5308c41a3865af2c", self, "tag_front_fx");
                }
            }
            if (!isdefined(self.var_467ce941)) {
                if (is_true(is_upgraded)) {
                    self.var_467ce941 = util::playfxontag(localclientnum, #"hash_39009cb2c0d92c8d", self, "tag_front_fx");
                } else {
                    self.var_467ce941 = util::playfxontag(localclientnum, #"hash_27e623021514bc84", self, "tag_front_fx");
                }
            }
        }
        if (isdefined(self gettagorigin("tag_clip_fx"))) {
            if (!isdefined(self.var_3afdb5f7)) {
                if (is_true(is_upgraded)) {
                    self.var_3afdb5f7 = util::playfxontag(localclientnum, #"hash_39009cb2c0d92c8d", self, "tag_clip_fx");
                } else {
                    self.var_3afdb5f7 = util::playfxontag(localclientnum, #"hash_27e623021514bc84", self, "tag_clip_fx");
                }
            }
        }
        if (isdefined(self gettagorigin("tag_foregrip_fx"))) {
            if (!isdefined(self.var_393f3aea)) {
                if (is_true(is_upgraded)) {
                    self.var_393f3aea = util::playfxontag(localclientnum, #"hash_39009cb2c0d92c8d", self, "tag_foregrip_fx");
                } else {
                    self.var_393f3aea = util::playfxontag(localclientnum, #"hash_27e623021514bc84", self, "tag_foregrip_fx");
                }
            }
        }
    }
    if (!self util::function_50ed1561(localclientnum)) {
        self notify(#"hash_259cb4838b6dd45a");
        self thread zm_utility::function_ae3780f1(localclientnum, self.var_384a4cdc, #"hash_259cb4838b6dd45a");
        self thread zm_utility::function_ae3780f1(localclientnum, self.var_467ce941, #"hash_259cb4838b6dd45a");
        self thread zm_utility::function_ae3780f1(localclientnum, self.var_3afdb5f7, #"hash_259cb4838b6dd45a");
        self thread zm_utility::function_ae3780f1(localclientnum, self.var_393f3aea, #"hash_259cb4838b6dd45a");
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x6 linked
// Checksum 0x264f5a23, Offset: 0x2c48
// Size: 0xf6
function private function_45a91739(localclientnum) {
    if (isdefined(self.var_384a4cdc)) {
        killfx(localclientnum, self.var_384a4cdc);
        self.var_384a4cdc = undefined;
    }
    if (isdefined(self.var_467ce941)) {
        killfx(localclientnum, self.var_467ce941);
        self.var_467ce941 = undefined;
    }
    if (isdefined(self.var_3afdb5f7)) {
        killfx(localclientnum, self.var_3afdb5f7);
        self.var_3afdb5f7 = undefined;
    }
    if (isdefined(self.var_393f3aea)) {
        killfx(localclientnum, self.var_393f3aea);
        self.var_393f3aea = undefined;
    }
    self notify(#"hash_259cb4838b6dd45a");
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0x5ef752b4, Offset: 0x2d48
// Size: 0xf2
function function_710eb784(localclientnum) {
    self endon(#"death", #"hash_12304702f9d44271");
    self notify("1162ec3942c053c7");
    self endon("1162ec3942c053c7");
    while (true) {
        self waittillmatch({#notetrack:"axe_gun_melee_altdrop"}, #"notetrack");
        self function_45a91739(localclientnum);
        self notify(#"hash_20766a971f7a55b4");
        if (isdefined(self.var_84d6a3cc)) {
            killfx(localclientnum, self.var_84d6a3cc);
            self.var_84d6a3cc = undefined;
            self.var_13f276b7 = undefined;
        }
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 2, eflags: 0x6 linked
// Checksum 0xfd653857, Offset: 0x2e48
// Size: 0x4ec
function private function_4ddede67(localclientnum, is_upgraded) {
    if (self zm_utility::function_f8796df3(localclientnum)) {
        if (viewmodelhastag(localclientnum, "tag_flash")) {
            if (!isdefined(self.var_2fb11b7d)) {
                if (is_true(is_upgraded)) {
                    self.var_2fb11b7d = playviewmodelfx(localclientnum, #"hash_9e3fb4ca8e51b67", "tag_flash");
                } else {
                    self.var_2fb11b7d = playviewmodelfx(localclientnum, #"hash_12a9caea822d486e", "tag_flash");
                }
            }
        }
        if (viewmodelhastag(localclientnum, "tag_foregrip_fx")) {
            if (!isdefined(self.var_e0c5e0fb)) {
                if (is_true(is_upgraded)) {
                    self.var_e0c5e0fb = playviewmodelfx(localclientnum, #"hash_58bc72cc43986b8a", "tag_foregrip_fx");
                } else {
                    self.var_e0c5e0fb = playviewmodelfx(localclientnum, #"hash_5048984591ec7d39", "tag_foregrip_fx");
                }
            }
        }
        if (viewmodelhastag(localclientnum, "tag_clip_fx")) {
            if (!is_true(self.var_960d365a)) {
                if (!isdefined(self.var_db9746bd)) {
                    if (is_true(is_upgraded)) {
                        self.var_db9746bd = playviewmodelfx(localclientnum, #"hash_7a41b13912db7647", "tag_clip_fx");
                    } else {
                        self.var_db9746bd = playviewmodelfx(localclientnum, #"hash_21ddd383c5f1da8e", "tag_clip_fx");
                    }
                }
                self function_2f16cef6(#"hash_7e341bfa0d589119");
            }
        }
    } else {
        if (isdefined(self gettagorigin("tag_flash"))) {
            if (!isdefined(self.var_2fb11b7d)) {
                if (is_true(is_upgraded)) {
                    self.var_2fb11b7d = util::playfxontag(localclientnum, #"hash_5f5845649d3a9a5", self, "tag_flash");
                } else {
                    self.var_2fb11b7d = util::playfxontag(localclientnum, #"hash_12a2beea8227155c", self, "tag_flash");
                }
            }
        }
        if (isdefined(self gettagorigin("tag_foregrip_fx"))) {
            if (!isdefined(self.var_e0c5e0fb)) {
                if (is_true(is_upgraded)) {
                    self.var_e0c5e0fb = util::playfxontag(localclientnum, #"hash_3e005fe29fa7615c", self, "tag_foregrip_fx");
                } else {
                    self.var_e0c5e0fb = util::playfxontag(localclientnum, #"hash_504ea44591f0fd4b", self, "tag_foregrip_fx");
                }
            }
        }
        if (isdefined(self gettagorigin("tag_clip_fx"))) {
            if (!isdefined(self.var_db9746bd)) {
                if (is_true(is_upgraded)) {
                    self.var_db9746bd = util::playfxontag(localclientnum, #"hash_5249aab7a046b05", self, "tag_clip_fx");
                } else {
                    self.var_db9746bd = util::playfxontag(localclientnum, #"hash_21d6c783c5eba77c", self, "tag_clip_fx");
                }
            }
        }
    }
    if (!self util::function_50ed1561(localclientnum)) {
        self notify(#"hash_3cb42c1e674648eb");
        self thread zm_utility::function_ae3780f1(localclientnum, self.var_2fb11b7d, #"hash_3cb42c1e674648eb");
        self thread zm_utility::function_ae3780f1(localclientnum, self.var_e0c5e0fb, #"hash_3cb42c1e674648eb");
        self thread zm_utility::function_ae3780f1(localclientnum, self.var_db9746bd, #"hash_3cb42c1e674648eb");
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x6 linked
// Checksum 0x9648c955, Offset: 0x3340
// Size: 0xde
function private function_4a8e6688(localclientnum) {
    if (isdefined(self.var_2fb11b7d)) {
        killfx(localclientnum, self.var_2fb11b7d);
        self.var_2fb11b7d = undefined;
    }
    if (isdefined(self.var_e0c5e0fb)) {
        killfx(localclientnum, self.var_e0c5e0fb);
        self.var_e0c5e0fb = undefined;
    }
    if (isdefined(self.var_db9746bd)) {
        killfx(localclientnum, self.var_db9746bd);
        self.var_db9746bd = undefined;
    }
    self function_60baf83(#"hash_7e341bfa0d589119");
    self notify(#"hash_3cb42c1e674648eb");
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0x5525a991, Offset: 0x3428
// Size: 0xa0
function function_bf8b2d3f(localclientnum) {
    self endon(#"death", #"hash_7d6901432c3a2ec4");
    self notify("275b14cced19b9b6");
    self endon("275b14cced19b9b6");
    while (true) {
        self waittillmatch({#notetrack:"axe_gun_smg_altdrop"}, #"notetrack");
        self function_4a8e6688(localclientnum);
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0x94613166, Offset: 0x34d0
// Size: 0xc8
function function_299fd631(localclientnum) {
    self endon(#"death", #"weapon_change");
    self notify("6444629ec0754469");
    self endon("6444629ec0754469");
    while (true) {
        self waittillmatch({#notetrack:"mag_out"}, #"notetrack");
        self.var_960d365a = 1;
        weapon = self function_d2c2b168();
        self function_4a8e6688(localclientnum);
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0xffaed6ec, Offset: 0x35a0
// Size: 0xe0
function function_36fddaa2(localclientnum) {
    self endon(#"death", #"weapon_change");
    self notify("60871ca768f2b5a0");
    self endon("60871ca768f2b5a0");
    while (true) {
        self waittillmatch({#notetrack:"mag_in"}, #"notetrack");
        self.var_960d365a = 0;
        weapon = self function_d2c2b168();
        self function_4ddede67(localclientnum, function_2da7c1b7(weapon));
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0xd2d734f3, Offset: 0x3688
// Size: 0x106
function function_a9fa384(localclientnum) {
    self endon(#"death", #"weapon_change");
    self notify("5ad42f683de2e91e");
    self endon("5ad42f683de2e91e");
    while (true) {
        if (!isdefined(self.var_a0d6f528) && !isigcactive(localclientnum)) {
            waitframe(1);
            continue;
        }
        self.var_b7a5e43f = 1;
        self function_45a91739(localclientnum);
        while (isdefined(self.var_a0d6f528) || isigcactive(localclientnum)) {
            waitframe(1);
        }
        self.var_b7a5e43f = 0;
        self function_1807e3d(localclientnum);
        waitframe(1);
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0x23e17dce, Offset: 0x3798
// Size: 0x186
function function_d09aaf1a(localclientnum) {
    self endon(#"death", #"weapon_change");
    self notify("32ec893b83e00d31");
    self endon("32ec893b83e00d31");
    while (true) {
        if (!self function_f69ceea9(localclientnum) && !isdefined(self.var_a0d6f528) && !isigcactive(localclientnum)) {
            waitframe(1);
            continue;
        }
        self function_4a8e6688(localclientnum);
        while (self function_f69ceea9(localclientnum) || isdefined(self.var_a0d6f528) || isigcactive(localclientnum)) {
            waitframe(1);
        }
        weapon = self function_d2c2b168();
        if (function_cb769ba9(weapon)) {
            is_upgraded = function_2da7c1b7(weapon);
            self function_4ddede67(localclientnum, is_upgraded);
        }
        waitframe(1);
    }
}

// Namespace namespace_6fc19861/namespace_6fc19861
// Params 1, eflags: 0x2 linked
// Checksum 0x28a23165, Offset: 0x3928
// Size: 0x44
function function_f69ceea9(localclientnum) {
    if (self zm_utility::function_f8796df3(localclientnum)) {
        return ismeleeing(localclientnum);
    }
    return 0;
}


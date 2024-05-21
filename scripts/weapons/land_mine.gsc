// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using script_1cc417743d7c262d;
#using scripts\core_common\globallogic\globallogic_score.gsc;
#using scripts\core_common\entityheadicons_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\dev_shared.gsc;
#using scripts\core_common\damage.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\battlechatter.gsc;

#namespace land_mine;

// Namespace land_mine/land_mine
// Params 0, eflags: 0x5
// Checksum 0x6632b5f6, Offset: 0x1a0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"land_mine", &preinit, undefined, &finalize, undefined);
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0x2b3217ee, Offset: 0x1f0
// Size: 0xdc
function preinit() {
    if (!isdefined(level.var_261f640c)) {
        level.var_261f640c = spawnstruct();
    }
    level.var_261f640c.var_9e2c9bc2 = [];
    weaponobjects::function_e6400478(#"land_mine", &function_14428e95, 0);
    if (sessionmodeiscampaigngame()) {
        weaponobjects::function_e6400478(#"hash_675e85b293a65c14", &function_14428e95, 0);
    }
    callback::on_player_killed(&onplayerkilled);
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0x65e963ea, Offset: 0x2d8
// Size: 0x50
function finalize() {
    if (isdefined(level.var_1b900c1d)) {
        [[ level.var_1b900c1d ]](getweapon(#"land_mine"), &function_bff5c062);
    }
}

// Namespace land_mine/land_mine
// Params 1, eflags: 0x2 linked
// Checksum 0xe61f14ee, Offset: 0x330
// Size: 0x24e
function function_14428e95(var_cd03ffa) {
    var_cd03ffa.watchforfire = 1;
    var_cd03ffa.ownergetsassist = 1;
    var_cd03ffa.ignoredirection = 1;
    var_cd03ffa.immediatedetonation = 1;
    var_cd03ffa.immunespecialty = "specialty_landminetrigger";
    var_cd03ffa.var_8eda8949 = (0, 0, 0);
    var_cd03ffa.detectiongraceperiod = 0;
    var_cd03ffa.stuntime = 1;
    var_cd03ffa.var_10efd558 = "switched_field_upgrade";
    if (isdefined(var_cd03ffa.weapon.customsettings)) {
        var_6f1c6122 = getscriptbundle(var_cd03ffa.weapon.customsettings);
        assert(isdefined(var_6f1c6122));
        level.var_261f640c.var_a74161cc = var_6f1c6122;
        var_cd03ffa.activationdelay = isdefined(level.var_261f640c.var_a74161cc.var_a3fd61e7) ? level.var_261f640c.var_a74161cc.var_a3fd61e7 : 0;
        var_cd03ffa.timeout = isdefined(level.var_261f640c.var_a74161cc.var_bd063370) ? level.var_261f640c.var_a74161cc.var_bd063370 : 3000;
    }
    var_cd03ffa.ondetonatecallback = &function_3bcaeef4;
    var_cd03ffa.onspawn = &function_6392cd30;
    var_cd03ffa.ondamage = &function_6d1a12d3;
    var_cd03ffa.stun = &weaponobjects::weaponstun;
    var_cd03ffa.onfizzleout = &weaponobjects::weaponobjectfizzleout;
    var_cd03ffa.ontimeout = &weaponobjects::weaponobjectfizzleout;
    var_cd03ffa.var_994b472b = &function_fb1ccfa6;
    level.var_261f640c.var_74ac4720 = var_cd03ffa;
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0xf2fb273d, Offset: 0x588
// Size: 0x62
function function_80b82a4d() {
    return self flag::get(#"hash_5f2dea08efab6bbc") ? isdefined(self.var_396b2ca4.origin) ? self.var_396b2ca4.origin : self.origin : self.origin;
}

// Namespace land_mine/land_mine
// Params 4, eflags: 0x2 linked
// Checksum 0xfce89e51, Offset: 0x5f8
// Size: 0xec
function function_fe8abb3(var_651a8943, vposition, vforward, vup) {
    if (isdefined(var_651a8943)) {
        var_54d68ee6 = isdefined(vposition) ? vposition : function_80b82a4d();
        var_bec4f825 = groundtrace(var_54d68ee6 + (0, 0, 70), var_54d68ee6 + (0, 0, -100), 0, self);
        var_4be8e019 = self getfxfromsurfacetable(var_651a8943, var_bec4f825[#"surfacetype"]);
        playfx(var_4be8e019, var_54d68ee6, vforward, vup);
    }
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0x624609cd, Offset: 0x6f0
// Size: 0xd2
function function_c2111ea5() {
    var_396b2ca4 = spawn("script_model", self.origin);
    var_396b2ca4.angles = self.angles;
    var_396b2ca4.owner = self.owner;
    var_396b2ca4 setowner(self.owner);
    var_396b2ca4.team = self.team;
    var_396b2ca4 setteam(self.team);
    var_396b2ca4 enablelinkto();
    var_396b2ca4 linkto(self);
    self.var_396b2ca4 = var_396b2ca4;
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0xe41757c2, Offset: 0x7d0
// Size: 0x190
function function_b0bc024c() {
    var_2624b6bd = isdefined(level.var_261f640c.var_a74161cc.var_2a7507d) ? level.var_261f640c.var_a74161cc.var_2a7507d : 0;
    if (var_2624b6bd > 0) {
        var_54d68ee6 = function_80b82a4d();
        foreach (entity in getentitiesinradius(var_54d68ee6, isdefined(level.var_261f640c.var_a74161cc.var_b922e118) ? level.var_261f640c.var_a74161cc.var_b922e118 : 0)) {
            if (function_512af0bb(entity)) {
                entity dodamage(var_2624b6bd, var_54d68ee6, self.owner, self, undefined, "MOD_EXPLOSIVE", 0, self.weapon);
            }
        }
    }
}

// Namespace land_mine/land_mine
// Params 3, eflags: 0x2 linked
// Checksum 0x81abe760, Offset: 0x968
// Size: 0x5c
function function_3bcaeef4(attacker, weapon, target) {
    function_fe8abb3(level.var_261f640c.var_a74161cc.var_f374e513);
    weaponobjects::proximitydetonate(attacker, weapon, target);
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0x309b188, Offset: 0x9d0
// Size: 0x7c
function function_f7f83267() {
    function_fe8abb3(level.var_261f640c.var_a74161cc.var_4699084d);
    if (isdefined(self.weapon.projexplosionsound)) {
        self playsound(self.weapon.projexplosionsound);
    }
    self delete();
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0x3182aba4, Offset: 0xa58
// Size: 0x134
function function_338f99f5() {
    self endon(#"death", #"detonating");
    if (self.var_83cc2c9 !== 1) {
        self playsound(isdefined(level.var_261f640c.var_a74161cc.var_a021aadb) ? level.var_261f640c.var_a74161cc.var_a021aadb : "");
        self.var_83cc2c9 = 1;
    }
    wait(isdefined(level.var_261f640c.var_a74161cc.var_4c3ef8d4) ? level.var_261f640c.var_a74161cc.var_4c3ef8d4 : 0);
    function_b0bc024c();
    weaponobjects::proximityweaponobject_dodetonation(level.var_261f640c.var_74ac4720, undefined, function_80b82a4d());
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0x2d1c829b, Offset: 0xb98
// Size: 0x394
function function_b6dde12d() {
    self endon(#"death");
    if (isdefined(self.var_396b2ca4)) {
        waitframe(1);
        /#
            function_bb195195("<unknown string>");
        #/
        if (level.var_261f640c.var_a74161cc.var_69ff03c3 === 1) {
            var_a883d625 = self.var_396b2ca4.var_f20af839;
        } else {
            var_a883d625 = (0, 0, 1);
        }
        playsoundatposition(isdefined(level.var_261f640c.var_a74161cc.var_df4a92e4) ? level.var_261f640c.var_a74161cc.var_df4a92e4 : "", self.var_396b2ca4.origin);
        playrumbleonposition(#"hash_718ba886b3205e3f", self.var_396b2ca4.origin);
        function_fe8abb3(level.var_261f640c.var_a74161cc.var_d9aa8220, undefined, var_a883d625);
        var_36ef4af8 = isdefined(level.var_261f640c.var_a74161cc.var_fc21999b) ? level.var_261f640c.var_a74161cc.var_fc21999b : 10;
        var_d9c1b66c = isdefined(level.var_261f640c.var_a74161cc.var_54f4d94) ? level.var_261f640c.var_a74161cc.var_54f4d94 : 300;
        var_30d9899f = isdefined(level.var_261f640c.var_a74161cc.var_4c600aeb) ? level.var_261f640c.var_a74161cc.var_4c600aeb : 200;
        var_118c0bbc = isdefined(level.var_261f640c.var_a74161cc.var_34eaeabd) ? level.var_261f640c.var_a74161cc.var_34eaeabd : 100;
        var_d1e53dda = isdefined(level.var_261f640c.var_a74161cc.var_b0b1c21b) ? level.var_261f640c.var_a74161cc.var_b0b1c21b : 100;
        if (isdefined(self.owner)) {
            owner = self.owner;
        } else {
            owner = undefined;
        }
        self cylinderdamage(var_a883d625 * var_d1e53dda, self.var_396b2ca4.origin, var_36ef4af8, var_d9c1b66c, var_30d9899f, var_118c0bbc, owner, "MOD_EXPLOSIVE", self.weapon);
        /#
            self.var_396b2ca4 function_bdff0e71(var_a883d625, var_d1e53dda, var_36ef4af8, var_d9c1b66c);
        #/
        self delete();
    }
}

// Namespace land_mine/land_mine
// Params 1, eflags: 0x2 linked
// Checksum 0xc3b57969, Offset: 0xf38
// Size: 0x94
function function_cb491e62(var_789c84fd) {
    if (level.var_261f640c.var_a74161cc.var_69ff03c3 !== 1) {
        var_fade8670 = self.var_396b2ca4 getangles();
        var_506743ed = (0, var_fade8670[1], 0);
        self.var_396b2ca4 rotateto(var_506743ed, var_789c84fd, 0, 0);
    }
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0x2f9adc7b, Offset: 0xfd8
// Size: 0x4ec
function function_6cbaafc6() {
    self endon(#"death");
    self.canthack = 1;
    if (self.var_83cc2c9 !== 1) {
        self playsound(isdefined(level.var_261f640c.var_a74161cc.var_9a29cecd) ? level.var_261f640c.var_a74161cc.var_9a29cecd : "");
        self.var_83cc2c9 = 1;
    }
    wait(isdefined(level.var_261f640c.var_a74161cc.var_88b0248b) ? level.var_261f640c.var_a74161cc.var_88b0248b : 0);
    /#
        function_bb195195("<unknown string>");
    #/
    self.var_396b2ca4 setmodel(self.model);
    self ghost();
    self notsolid();
    self.var_396b2ca4 unlink();
    if (level.var_261f640c.var_a74161cc.var_99f70df7 === 1) {
        self.var_396b2ca4.var_f20af839 = vectornormalize(anglestoup(self.var_396b2ca4.angles));
    } else {
        self.var_396b2ca4.var_f20af839 = (0, 0, 1);
    }
    var_f0efa00d = isdefined(level.var_261f640c.var_a74161cc.var_1065654c) ? level.var_261f640c.var_a74161cc.var_1065654c : 25;
    self flag::set(#"hash_5f2dea08efab6bbc");
    var_78983824 = self.var_396b2ca4.origin + self.var_396b2ca4.var_f20af839 * var_f0efa00d;
    var_7895a956 = isdefined(level.var_261f640c.var_a74161cc.var_564c2203) ? level.var_261f640c.var_a74161cc.var_564c2203 : 1;
    playsoundatposition(isdefined(level.var_261f640c.var_a74161cc.var_69029368) ? level.var_261f640c.var_a74161cc.var_69029368 : "", self.var_396b2ca4.origin);
    self.var_396b2ca4 moveto(var_78983824, var_7895a956, 0, var_7895a956);
    function_cb491e62(var_7895a956 * 0.25);
    function_fe8abb3(level.var_261f640c.var_a74161cc.var_5afd2a1d, undefined, self.var_396b2ca4.var_f20af839);
    self.var_396b2ca4 waittilltimeout(var_7895a956, #"movedone");
    var_b6bebc60 = isdefined(level.var_261f640c.var_a74161cc.var_b140445d) ? level.var_261f640c.var_a74161cc.var_b140445d : 10;
    var_3503290a = isdefined(level.var_261f640c.var_a74161cc.var_dfc89b2a) ? level.var_261f640c.var_a74161cc.var_dfc89b2a : 1;
    self.var_396b2ca4 moveto(self.var_396b2ca4.origin + (0, 0, -1) * var_b6bebc60, var_3503290a, var_3503290a, 0);
    self.var_396b2ca4 waittilltimeout(var_3503290a, #"movedone");
    function_b6dde12d();
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0x7fc4909c, Offset: 0x14d0
// Size: 0xf6
function function_4e2fe8ed() {
    var_dfb72bf5 = self.var_d2318975;
    /#
        foreach (var_a58f4914 in getarraykeys(var_dfb72bf5)) {
            function_bb195195(var_a58f4914 + "<unknown string>");
        }
    #/
    if (self.var_d235cef4.size == 0) {
        if (var_dfb72bf5.size > 0) {
            /#
                function_bb195195("<unknown string>");
            #/
            self.var_7e7d9d86 = gettime();
        }
    }
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0x888fc879, Offset: 0x15d0
// Size: 0x22e
function function_bb441173() {
    if (isdefined(self.var_7e7d9d86)) {
        var_cc84da8f = float(gettime() - self.var_7e7d9d86) / 1000;
        var_39eb023 = (isdefined(level.var_261f640c.var_a74161cc.var_c367e5) ? level.var_261f640c.var_a74161cc.var_c367e5 : 0.25) - var_cc84da8f;
        if (var_39eb023 <= 0) {
            /#
                function_bb195195("<unknown string>");
            #/
            self.var_937978c9 = int((isdefined(level.var_261f640c.var_a74161cc.var_af22b5dc) ? level.var_261f640c.var_a74161cc.var_af22b5dc : 3) * 1000);
            self.var_9a25b7e0 = int((isdefined(level.var_261f640c.var_a74161cc.var_af22b5dc) ? level.var_261f640c.var_a74161cc.var_af22b5dc : 3) * 1000);
            self.var_5a64415f = int((isdefined(level.var_261f640c.var_a74161cc.var_98ba0e9b) ? level.var_261f640c.var_a74161cc.var_98ba0e9b : 0) * 1000);
        } else {
            /#
                function_bb195195("<unknown string>" + var_39eb023);
            #/
        }
        self.var_7e7d9d86 = undefined;
    }
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0x95012741, Offset: 0x1808
// Size: 0x62
function function_975a46a() {
    if (!isvehicle(self)) {
        return false;
    }
    var_c1d7860f = self getvehoccupants();
    if (isdefined(var_c1d7860f.size) && var_c1d7860f.size != 0) {
        return false;
    }
    return true;
}

// Namespace land_mine/land_mine
// Params 1, eflags: 0x2 linked
// Checksum 0xae2e7753, Offset: 0x1878
// Size: 0x96
function function_512af0bb(entity) {
    return self != entity && weaponobjects::proximityweaponobject_validtriggerentity(level.var_261f640c.var_74ac4720, entity) && !weaponobjects::proximityweaponobject_isspawnprotected(level.var_261f640c.var_74ac4720, entity) && !weaponobjects::isjammed() && !entity function_975a46a();
}

// Namespace land_mine/land_mine
// Params 1, eflags: 0x2 linked
// Checksum 0xb788280d, Offset: 0x1918
// Size: 0xdc
function function_bf99f93f(entity) {
    var_a58f4914 = entity getentitynumber();
    if (!isdefined(self.var_d235cef4[var_a58f4914])) {
        self.var_d235cef4[var_a58f4914] = 0;
    }
    self.var_d235cef4[var_a58f4914]++;
    if (!isdefined(self.var_d2318975[var_a58f4914])) {
        /#
            self function_bb195195(var_a58f4914 + "<unknown string>");
        #/
        self function_bb441173();
        return;
    }
    arrayremoveindex(self.var_d2318975, var_a58f4914, 1);
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0x4c7b41e, Offset: 0x1a00
// Size: 0x148
function function_53909c68() {
    self.var_c65aa5bf = undefined;
    if (self.var_c3e7ab73 !== 1) {
        foreach (player in getplayers(undefined, function_80b82a4d(), isdefined(level.var_261f640c.var_a74161cc.var_29467698) ? level.var_261f640c.var_a74161cc.var_29467698 : 180)) {
            if (self function_512af0bb(player) && !player isinvehicle()) {
                self.var_c65aa5bf = 1;
                self function_bf99f93f(player);
            }
        }
    }
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0x9dc2c075, Offset: 0x1b50
// Size: 0x1d8
function function_6b505982() {
    self.var_e5845f1 = undefined;
    if (self.var_c3e7ab73 !== 1) {
        position = function_80b82a4d();
        foreach (actor in function_fd768835(self.team, position, isdefined(level.var_261f640c.var_a74161cc.var_29467698) ? level.var_261f640c.var_a74161cc.var_29467698 : 180)) {
            if (!isactor(actor) || !isalive(actor)) {
                continue;
            }
            if (self function_512af0bb(actor)) {
                if (is_true(self.var_e5845f1) || sighttracepassed(actor geteyeapprox(), position + (0, 0, 30), 0, self)) {
                    self.var_e5845f1 = 1;
                    self function_bf99f93f(actor);
                }
            }
        }
    }
}

// Namespace land_mine/land_mine
// Params 1, eflags: 0x2 linked
// Checksum 0x296e80ad, Offset: 0x1d30
// Size: 0x218
function function_a5b5d269(vehicle) {
    var_f37028af = isdefined(level.var_261f640c.var_a74161cc.var_40e96f5e) ? level.var_261f640c.var_a74161cc.var_40e96f5e : 25;
    var_c174cf1 = anglestoup(self.angles);
    var_54d68ee6 = self function_80b82a4d();
    var_938b52b8 = self getboundsmidpoint();
    var_9080bd0b = var_54d68ee6 + var_938b52b8 + var_c174cf1 * var_f37028af * -1;
    var_e5cf14da = vehicle.origin + rotatepoint(vehicle.mins, vehicle.angles);
    var_e945d0d7 = vehicle.origin + rotatepoint(vehicle.maxs, vehicle.angles);
    /#
        drawdebugline(var_9080bd0b, var_9080bd0b + var_c174cf1 * var_f37028af * 2);
        drawdebugline(var_9080bd0b, var_e5cf14da);
        drawdebugline(var_9080bd0b, var_e945d0d7);
    #/
    var_c8846d83 = vectordot(var_c174cf1, var_e5cf14da - var_9080bd0b) > 0;
    var_afda0584 = vectordot(var_c174cf1, var_e945d0d7 - var_9080bd0b) > 0;
    return var_c8846d83 && var_afda0584;
}

// Namespace land_mine/land_mine
// Params 2, eflags: 0x2 linked
// Checksum 0x975bf808, Offset: 0x1f50
// Size: 0x152
function function_85f3cf29(vehicle, var_ce282718) {
    var_54d68ee6 = self function_80b82a4d();
    var_938b52b8 = self getboundsmidpoint();
    var_6f827f51 = (var_ce282718, var_ce282718, var_ce282718);
    var_302c9a00 = vehicle getboundsmidpoint();
    var_be6be396 = vehicle getboundshalfsize();
    /#
        function_f8d33ba4(var_54d68ee6 + var_938b52b8, var_6f827f51 * -1, var_6f827f51, self.angles);
        function_f8d33ba4(vehicle.origin + var_302c9a00, var_be6be396 * -1, var_be6be396, vehicle.angles);
    #/
    return function_ecdf9b24(var_54d68ee6 + var_938b52b8, self.angles, var_6f827f51, vehicle.origin + var_302c9a00, vehicle.angles, var_be6be396);
}

// Namespace land_mine/land_mine
// Params 1, eflags: 0x2 linked
// Checksum 0x7bfb5617, Offset: 0x20b0
// Size: 0x7c
function function_372e295b(vehicle) {
    return function_85f3cf29(vehicle, isdefined(level.var_261f640c.var_a74161cc.var_40e96f5e) ? level.var_261f640c.var_a74161cc.var_40e96f5e : 25) && function_a5b5d269(vehicle);
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0xef99a13a, Offset: 0x2138
// Size: 0x148
function function_e761fbc2() {
    self.var_1096f0a1 = undefined;
    if (self.var_3c07863f !== 1) {
        foreach (vehicle in getentitiesinradius(function_80b82a4d(), isdefined(level.var_261f640c.var_a74161cc.var_40e96f5e) ? level.var_261f640c.var_a74161cc.var_40e96f5e : 25, 12)) {
            if (self function_512af0bb(vehicle) && function_372e295b(vehicle)) {
                self.var_1096f0a1 = 1;
                self function_bf99f93f(vehicle);
            }
        }
    }
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0xcc335f5e, Offset: 0x2288
// Size: 0x140
function function_3e2ef4c6() {
    foreach (var_f9982904 in level.var_261f640c.var_9e2c9bc2) {
        if (!isdefined(var_f9982904) || var_f9982904.var_3c07863f === 1) {
            continue;
        }
        var_f9982904.var_d2318975 = isdefined(var_f9982904.var_d235cef4) ? var_f9982904.var_d235cef4 : [];
        var_f9982904.var_d235cef4 = [];
        var_f9982904 function_53909c68();
        var_f9982904 function_e761fbc2();
        if (sessionmodeiscampaigngame()) {
            var_f9982904 function_6b505982();
        }
        var_f9982904 function_4e2fe8ed();
    }
}

// Namespace land_mine/land_mine
// Params 1, eflags: 0x2 linked
// Checksum 0xea23a301, Offset: 0x23d0
// Size: 0x2c0
function function_de00142b(var_659a9f4f) {
    foreach (var_f9982904 in level.var_261f640c.var_9e2c9bc2) {
        if (isdefined(var_f9982904)) {
            if (var_f9982904.var_c65aa5bf === 1) {
                var_f9982904.var_937978c9 -= var_659a9f4f;
                /#
                    var_f9982904 function_bb195195("<unknown string>" + float(var_f9982904.var_937978c9) / 1000);
                #/
                if (var_f9982904.var_937978c9 < 0) {
                    var_f9982904.var_c3e7ab73 = 1;
                    var_f9982904 thread function_6cbaafc6();
                }
            }
            if (var_f9982904.var_1096f0a1 === 1) {
                var_f9982904.var_5a64415f -= var_659a9f4f;
                /#
                    var_f9982904 function_bb195195("<unknown string>" + float(var_f9982904.var_5a64415f) / 1000);
                #/
                if (var_f9982904.var_5a64415f < 0) {
                    var_f9982904.var_3c07863f = 1;
                    if (flag::get(#"hash_5f2dea08efab6bbc")) {
                        var_f9982904 thread function_b6dde12d();
                    } else {
                        var_f9982904 thread function_338f99f5();
                    }
                }
            }
            if (var_f9982904.var_e5845f1 === 1) {
                var_f9982904.var_9a25b7e0 -= var_659a9f4f;
                /#
                    var_f9982904 function_bb195195("<unknown string>" + float(var_f9982904.var_9a25b7e0) / 1000);
                #/
                if (var_f9982904.var_9a25b7e0 < 0) {
                    var_f9982904.var_c3e7ab73 = 1;
                    var_f9982904 thread function_6cbaafc6();
                }
            }
        }
    }
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0x2675efd4, Offset: 0x2698
// Size: 0xec
function function_63c13dff() {
    self notify("727218002c901371");
    self endon("727218002c901371");
    if (!isdefined(level.var_261f640c.var_1270895)) {
        level.var_261f640c.var_1270895 = gettime();
    }
    while (true) {
        var_77c4d94d = gettime();
        profilestart();
        function_3e2ef4c6();
        function_de00142b(var_77c4d94d - level.var_261f640c.var_1270895);
        profilestop();
        if (level.var_261f640c.var_9e2c9bc2.size == 0) {
            level.var_261f640c.var_1270895 = undefined;
            break;
        }
        level.var_261f640c.var_1270895 = var_77c4d94d;
        waitframe(1);
    }
}

// Namespace land_mine/land_mine
// Params 1, eflags: 0x2 linked
// Checksum 0xc1633a0a, Offset: 0x2790
// Size: 0x1c
function function_fb1ccfa6(*player) {
    weaponobjects::weaponobjectfizzleout();
}

// Namespace land_mine/land_mine
// Params 2, eflags: 0x2 linked
// Checksum 0xa7c7df8a, Offset: 0x27b8
// Size: 0x32c
function function_6392cd30(var_cd03ffa, owner) {
    self endon(#"death");
    callback::function_d8abfc3d(#"on_entity_deleted", &function_ee5d9464);
    self.var_e744cea3 = &function_df5749e2;
    self.var_3f9bd15 = &function_9b8337c3;
    self.var_63be5750 = &function_7bc9fe48;
    self.delete_on_death = 1;
    self.var_48d842c3 = 1;
    self.var_515d6dda = 1;
    self function_619a5c20();
    self.var_937978c9 = int((isdefined(level.var_261f640c.var_a74161cc.var_af22b5dc) ? level.var_261f640c.var_a74161cc.var_af22b5dc : 3) * 1000);
    self.var_9a25b7e0 = int((isdefined(level.var_261f640c.var_a74161cc.var_af22b5dc) ? level.var_261f640c.var_a74161cc.var_af22b5dc : 3) * 1000);
    self.var_5a64415f = int((isdefined(level.var_261f640c.var_a74161cc.var_98ba0e9b) ? level.var_261f640c.var_a74161cc.var_98ba0e9b : 0) * 1000);
    self util::waittillnotmoving();
    if (self depthinwater() > 10) {
        weaponobjects::weaponobjectfizzleout();
    }
    if (var_cd03ffa.activationdelay) {
        wait(var_cd03ffa.activationdelay);
    }
    self playsound(#"hash_59ac94ba0cea7587");
    owner battlechatter::function_fc82b10(self.weapon, self.origin, self);
    function_c2111ea5();
    var_a58f4914 = self getentitynumber();
    level.var_261f640c.var_9e2c9bc2[var_a58f4914] = self;
    level thread function_63c13dff();
    /#
        self thread function_47ff3ce7();
    #/
}

// Namespace land_mine/land_mine
// Params 0, eflags: 0x2 linked
// Checksum 0xdcb032df, Offset: 0x2af0
// Size: 0x64
function function_ee5d9464() {
    if (isdefined(self.var_396b2ca4)) {
        self.var_396b2ca4 deletedelay();
    }
    arrayremoveindex(level.var_261f640c.var_9e2c9bc2, self getentitynumber());
}

// Namespace land_mine/land_mine
// Params 1, eflags: 0x2 linked
// Checksum 0x710a525d, Offset: 0x2b60
// Size: 0x5d4
function function_6d1a12d3(var_cd03ffa) {
    self endon(#"death");
    self setcandamage(1);
    self.maxhealth = 100000;
    self.health = self.maxhealth;
    self.damagetaken = 0;
    while (true) {
        var_cc5d20f7 = self waittill(#"damage");
        eattacker = var_cc5d20f7.attacker;
        weapon = var_cc5d20f7.weapon;
        ndamage = var_cc5d20f7.amount;
        type = var_cc5d20f7.mod;
        idflags = var_cc5d20f7.flags;
        inflictor = var_cc5d20f7.inflictor;
        eattacker = self [[ level.figure_out_attacker ]](eattacker);
        if (isvehicle(inflictor) && type === "MOD_CRUSH") {
            continue;
        }
        if (isdefined(weapon)) {
            self weaponobjects::weapon_object_do_damagefeedback(weapon, eattacker, type, var_cc5d20f7.inflictor);
            if (var_cd03ffa.stuntime > 0 && weapon.dostun) {
                self thread weaponobjects::stunstart(var_cd03ffa, var_cd03ffa.stuntime);
                continue;
            }
        }
        if (!level.weaponobjectdebug && level.teambased && isplayer(eattacker) && isdefined(self.owner)) {
            if (!level.hardcoremode && !util::function_fbce7263(self.owner.team, eattacker.pers[#"team"]) && self.owner != eattacker) {
                continue;
            }
        }
        if (!isvehicle(self) && !damage::friendlyfirecheck(self.owner, eattacker)) {
            continue;
        }
        self.damagetaken += ndamage;
        if (self.damagetaken < (isdefined(level.var_261f640c.var_a74161cc.var_d56aa2d4) ? level.var_261f640c.var_a74161cc.var_d56aa2d4 : 15)) {
            continue;
        }
        if (isdefined(var_cd03ffa.isfataldamage) && !self [[ var_cd03ffa.isfataldamage ]](var_cd03ffa, eattacker, weapon, ndamage)) {
            continue;
        }
        if (util::function_fbce7263(eattacker.team, self.team)) {
            killstreaks::function_e729ccee(eattacker, weapon);
        }
        break;
    }
    if (level.weaponobjectexplodethisframe) {
        wait(0.1 + randomfloat(0.4));
    } else {
        waitframe(1);
    }
    level.weaponobjectexplodethisframe = 1;
    thread weaponobjects::resetweaponobjectexplodethisframe();
    self entityheadicons::setentityheadicon("none");
    if (isdefined(type) && (issubstr(type, "MOD_GRENADE_SPLASH") || issubstr(type, "MOD_GRENADE") || issubstr(type, "MOD_EXPLOSIVE"))) {
        self.waschained = 1;
    }
    if (isdefined(idflags) && idflags & 8) {
        self.wasdamagedfrombulletpenetration = 1;
    }
    self.wasdamaged = 1;
    if (isplayer(eattacker) && eattacker != self.owner && util::function_fbce7263(eattacker.team, self.team)) {
        var_46aa2edd = self.owner weaponobjects::function_8481fc06(self.weapon) > 1;
        self.owner thread globallogic_audio::function_6daffa93(self.weapon, var_46aa2edd);
        eattacker challenges::destroyedequipment(weapon);
        self battlechatter::function_d2600afc(eattacker, self.owner, self.weapon);
        self.owner globallogic_score::function_5829abe3(eattacker, weapon, self.weapon);
    }
    function_f7f83267();
}

// Namespace land_mine/land_mine
// Params 2, eflags: 0x2 linked
// Checksum 0xe5fb739b, Offset: 0x3140
// Size: 0x210
function function_bff5c062(landmine, attackingplayer) {
    var_f3ab6571 = landmine.owner weaponobjects::function_8481fc06(landmine.weapon) > 1;
    landmine.owner thread globallogic_audio::function_a2cde53d(landmine.weapon, var_f3ab6571);
    landmine.owner weaponobjects::hackerremoveweapon(landmine);
    landmine weaponobjects::function_fb7b0024(landmine.owner);
    landmine.team = attackingplayer.team;
    landmine setteam(attackingplayer.team);
    landmine.owner = attackingplayer;
    landmine setowner(attackingplayer);
    landmine weaponobjects::function_386fa470(attackingplayer);
    landmine weaponobjects::function_931041f8(attackingplayer);
    if (isdefined(landmine) && isdefined(level.var_f1edf93f)) {
        _station_up_to_detention_center_triggers = [[ level.var_f1edf93f ]]();
        if (isdefined(_station_up_to_detention_center_triggers) ? _station_up_to_detention_center_triggers : 0) {
            landmine notify(#"cancel_timeout");
            landmine thread weaponobjects::weapon_object_timeout(landmine.var_2d045452, _station_up_to_detention_center_triggers);
        }
    }
    landmine thread weaponobjects::function_6d8aa6a0(attackingplayer, landmine.var_2d045452);
    if (isdefined(level.var_b7bc3c75.var_1d3ef959)) {
        attackingplayer [[ level.var_b7bc3c75.var_1d3ef959 ]]();
    }
}

// Namespace land_mine/land_mine
// Params 15, eflags: 0x2 linked
// Checksum 0x1e1fe415, Offset: 0x3358
// Size: 0xb0
function function_df5749e2(*einflictor, *eattacker, *idamage, *idflags, *smeansofdeath, *weapon, *vpoint, *vdir, *shitloc, *vdamageorigin, *psoffsettime, *damagefromunderneath, *modelindex, *partname, *vsurfacenormal) {
    if (isdefined(self.var_4f5edd7d)) {
        return (self.maxhealth * self.var_4f5edd7d * 0.01);
    }
    return self.maxhealth;
}

// Namespace land_mine/land_mine
// Params 1, eflags: 0x2 linked
// Checksum 0xb358cf0f, Offset: 0x3410
// Size: 0x22c
function onplayerkilled(params) {
    weapon = params.weapon;
    eattacker = params.eattacker;
    einflictor = params.einflictor;
    if (weapon.name == #"land_mine" && eattacker util::isenemyplayer(self)) {
        if (self isinvehicle()) {
            if (!isdefined(einflictor.var_3c0a7eef)) {
                einflictor.var_3c0a7eef = [];
            }
            sparams = spawnstruct();
            sparams.player = self;
            sparams.playerentnum = self getentitynumber();
            sparams.vehicle = self getvehicleoccupied();
            sparams.var_33c9fbd5 = gettime();
            if (!isdefined(einflictor.var_3c0a7eef)) {
                einflictor.var_3c0a7eef = [];
            } else if (!isarray(einflictor.var_3c0a7eef)) {
                einflictor.var_3c0a7eef = array(einflictor.var_3c0a7eef);
            }
            einflictor.var_3c0a7eef[einflictor.var_3c0a7eef.size] = sparams;
            return;
        }
        if (!isdefined(einflictor.var_f6aff8ff)) {
            einflictor.var_f6aff8ff = [];
        }
        entnum = self getentitynumber();
        if (!isdefined(einflictor.var_f6aff8ff[entnum])) {
            einflictor.var_f6aff8ff[entnum] = 1;
            if (isdefined(level.var_b7bc3c75.var_fbbc4c75)) {
                eattacker [[ level.var_b7bc3c75.var_fbbc4c75 ]](einflictor);
            }
        }
    }
}

// Namespace land_mine/land_mine
// Params 5, eflags: 0x2 linked
// Checksum 0xdef2987e, Offset: 0x3648
// Size: 0x54
function function_7bc9fe48(*eattacker, *einflictor, *weapon, *smeansofdeath, *damage) {
    self shellshock(#"hash_160e95f6745dddf3", 0.5);
}

// Namespace land_mine/land_mine
// Params 9, eflags: 0x2 linked
// Checksum 0xc2821b39, Offset: 0x36a8
// Size: 0x1ec
function function_9b8337c3(einflictor, eattacker, *idamage, *smeansofdeath, *weapon, *vdir, *shitloc, *psoffsettime, occupants) {
    if (isdefined(occupants.size) && occupants.size > 0) {
        foreach (occupant in occupants) {
            if (psoffsettime util::isenemyplayer(occupant)) {
                shitloc function_af9b1762(psoffsettime, occupant getentitynumber());
                break;
            }
        }
        return;
    }
    if (isdefined(shitloc.var_3c0a7eef)) {
        foreach (sparams in shitloc.var_3c0a7eef) {
            if (self == sparams.vehicle && sparams.var_33c9fbd5 == gettime()) {
                shitloc function_af9b1762(psoffsettime, sparams.playerentnum);
                break;
            }
        }
    }
}

// Namespace land_mine/land_mine
// Params 2, eflags: 0x2 linked
// Checksum 0xf6004e38, Offset: 0x38a0
// Size: 0xe8
function function_af9b1762(eattacker, victimentnum) {
    scoreevents = globallogic_score::function_3cbc4c6c(self.weapon.var_2e4a8800);
    if (isdefined(scoreevents.var_f8792376)) {
        scoreevents::processscoreevent(scoreevents.var_f8792376, eattacker, undefined, self.weapon, undefined);
    }
    if (!isdefined(self.var_f6aff8ff)) {
        self.var_f6aff8ff = [];
    }
    if (!isdefined(self.var_f6aff8ff[victimentnum])) {
        self.var_f6aff8ff[victimentnum] = 1;
        if (isdefined(level.var_b7bc3c75.var_fbbc4c75)) {
            eattacker [[ level.var_b7bc3c75.var_fbbc4c75 ]](self);
        }
    }
}

/#

    // Namespace land_mine/land_mine
    // Params 2, eflags: 0x0
    // Checksum 0x3e32b8a1, Offset: 0x3990
    // Size: 0xa4
    function function_bb195195(var_c208f27f, var_d71889f) {
        if (!isdefined(var_d71889f)) {
            var_d71889f = 2;
        }
        if (getdvarint(#"hash_3c54e6d747dd7a6d", 0) >= var_d71889f) {
            var_a58f4914 = self getentitynumber();
            println("<unknown string>" + var_a58f4914 + "<unknown string>" + var_c208f27f);
        }
    }

    // Namespace land_mine/land_mine
    // Params 0, eflags: 0x0
    // Checksum 0xdbcc8836, Offset: 0x3a40
    // Size: 0x23e
    function function_47ff3ce7() {
        self endon(#"death");
        if (getdvarint(#"hash_3c54e6d747dd7a6d", 0) >= 1) {
            while (true) {
                var_54d68ee6 = function_80b82a4d();
                dev::debug_sphere(var_54d68ee6, isdefined(level.var_261f640c.var_a74161cc.var_29467698) ? level.var_261f640c.var_a74161cc.var_29467698 : 25, (1, 0.85, 0), 0.25, 1);
                dev::debug_sphere(var_54d68ee6, isdefined(level.var_261f640c.var_a74161cc.var_40e96f5e) ? level.var_261f640c.var_a74161cc.var_40e96f5e : 180, (0, 1, 0), 0.25, 1);
                if (isdefined(self.weapon.explosioninnerradius)) {
                    dev::debug_sphere(var_54d68ee6, self.weapon.explosioninnerradius, (0, 0, 1), 0.25, 1);
                }
                if (isdefined(self.weapon.explosionradius)) {
                    dev::debug_sphere(var_54d68ee6, self.weapon.explosionradius, (1, 0, 0), 0.25, 1);
                }
                if (isdefined(level.var_261f640c.var_a74161cc.var_b922e118)) {
                    dev::debug_sphere(var_54d68ee6, level.var_261f640c.var_a74161cc.var_b922e118, (1, 0, 1), 0.25, 1);
                }
                waitframe(1);
            }
        }
    }

    // Namespace land_mine/land_mine
    // Params 4, eflags: 0x0
    // Checksum 0x57647f07, Offset: 0x3c88
    // Size: 0xc4
    function function_bdff0e71(var_a883d625, var_d1e53dda, var_36ef4af8, var_d9c1b66c) {
        if (getdvarint(#"hash_3c54e6d747dd7a6d", 0) >= 1) {
            cylinder(self.origin, self.origin + var_a883d625 * var_d1e53dda, var_36ef4af8, (0, 0, 1), 0, 200);
            cylinder(self.origin, self.origin + var_a883d625 * var_d1e53dda, var_d9c1b66c, (1, 0, 0), 0, 200);
        }
    }

    // Namespace land_mine/land_mine
    // Params 4, eflags: 0x0
    // Checksum 0x1425413b, Offset: 0x3d58
    // Size: 0x84
    function function_f8d33ba4(pos, mins, maxs, angles) {
        if (getdvarint(#"hash_3c54e6d747dd7a6d", 0) >= 1) {
            box(pos, mins, maxs, angles, (0, 1, 1), 1, 0, 25);
        }
    }

    // Namespace land_mine/land_mine
    // Params 2, eflags: 0x0
    // Checksum 0xbf12ce8d, Offset: 0x3de8
    // Size: 0x6c
    function drawdebugline(start, end) {
        if (getdvarint(#"hash_3c54e6d747dd7a6d", 0) >= 1) {
            line(start, end, (0, 1, 1), undefined, undefined, 200);
        }
    }

#/

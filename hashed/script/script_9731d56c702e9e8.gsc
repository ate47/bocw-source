#using script_35ae72be7b4fec10;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\cp_common\util;

#namespace land_mine_placed;

// Namespace land_mine_placed/land_mine_placed
// Params 0, eflags: 0x5
// Checksum 0x8b140fe9, Offset: 0x150
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"land_mine_placed", &init_preload, &init_postload, undefined, undefined);
}

// Namespace land_mine_placed/land_mine_placed
// Params 0, eflags: 0x0
// Checksum 0x447be357, Offset: 0x1a8
// Size: 0x34
function init_preload() {
    clientfield::register("scriptmover", "show_blink_fx", 1, 1, "int");
}

// Namespace land_mine_placed/land_mine_placed
// Params 0, eflags: 0x0
// Checksum 0xeee1fbc4, Offset: 0x1e8
// Size: 0x184
function init_postload() {
    var_cdb289d1 = getentarray("land_mine_placed", "targetname");
    array::thread_all(var_cdb289d1, &function_9d51d7af);
    level.var_577c9750 = {#weapon:getweapon(#"land_mine")};
    level.var_577c9750.var_f46e77d2 = getscriptbundle(level.var_577c9750.weapon.customsettings);
    level.var_577c9750.var_8431008d = [#"hash_1e89bd63e2bcf606", #"hash_1e89bc63e2bcf453", #"hash_1e89bb63e2bcf2a0"];
    level.var_577c9750.var_554a6e45 = 0;
    callback::add_weapon_damage(level.var_577c9750.weapon, &function_72be8a4f);
    callback::function_c046382d(&function_c046382d);
}

// Namespace land_mine_placed/land_mine_placed
// Params 0, eflags: 0x0
// Checksum 0x20cb2d79, Offset: 0x378
// Size: 0x144
function function_9d51d7af() {
    self endon(#"death");
    self.t_proximity = spawn("trigger_radius", self.origin, 0, 100, 16);
    self.var_a003405c = "mine" + self getentitynumber();
    badplace_cylinder(self.var_a003405c, 0, self.origin, 120, 16, #"axis", #"allies");
    self util::create_cursor_hint(undefined, (0, 0, 1), #"hash_79be03e00c4c3770", 160, undefined, &function_2371350, undefined, 200, 5);
    self clientfield::set("show_blink_fx", 1);
    self thread function_8108fc93();
    self thread function_dfea2d4b();
}

// Namespace land_mine_placed/land_mine_placed
// Params 1, eflags: 0x0
// Checksum 0xba09ee97, Offset: 0x4c8
// Size: 0x22c
function function_fbf401a1(b_shot = 0) {
    self setcandamage(0);
    if (b_shot) {
        self function_9a72f627(level.var_577c9750.var_f46e77d2.var_4699084d);
        playsoundatposition(level.var_577c9750.weapon.projexplosionsound, self.origin);
        radiusdamage(self.origin, 50, 100, 50, self, "MOD_EXPLOSIVE", level.var_577c9750.weapon);
        playrumbleonposition(#"tactical_rumble", self.origin);
    } else {
        self function_9a72f627(level.var_577c9750.var_f46e77d2.var_d9aa8220);
        playsoundatposition(level.var_577c9750.var_f46e77d2.var_df4a92e4, self.origin);
        radiusdamage(self.origin, 200, 200, 100, self, "MOD_EXPLOSIVE", level.var_577c9750.weapon);
        physicsexplosionsphere(self.origin, 200, 50, 1);
        playrumbleonposition(#"hash_718ba886b3205e3f", self.origin);
    }
    self clientfield::set("show_blink_fx", 0);
    self delete();
}

// Namespace land_mine_placed/land_mine_placed
// Params 5, eflags: 0x0
// Checksum 0x26aeaedc, Offset: 0x700
// Size: 0x6c
function function_72be8a4f(*eattacker, *einflictor, *weapon, *meansofdeath, *damage) {
    if (isplayer(self)) {
        self shellshock(#"hash_160e95f6745dddf3", 0.5);
    }
}

// Namespace land_mine_placed/land_mine_placed
// Params 0, eflags: 0x0
// Checksum 0xda4d545b, Offset: 0x778
// Size: 0x9c
function function_dfea2d4b() {
    self endon(#"death");
    self setcandamage(1);
    self.health = 1000000;
    self waittill(#"damage");
    self util::remove_cursor_hint(#"use");
    wait 0.15;
    self thread function_fbf401a1(1);
}

// Namespace land_mine_placed/land_mine_placed
// Params 0, eflags: 0x0
// Checksum 0xe9e6d792, Offset: 0x820
// Size: 0xe4
function function_8108fc93() {
    self endoncallback(&function_dc857fe9, #"death", #"disarmed");
    self.t_proximity waittill(#"trigger");
    self util::remove_cursor_hint(#"use");
    playsoundatposition(level.var_577c9750.var_f46e77d2.var_9a29cecd, self.origin);
    self clientfield::set("show_blink_fx", 0);
    wait 0.5;
    self function_3a68b759();
}

// Namespace land_mine_placed/land_mine_placed
// Params 0, eflags: 0x0
// Checksum 0xc5572a7b, Offset: 0x910
// Size: 0x1c4
function function_3a68b759() {
    self endon(#"death");
    self function_9a72f627(level.var_577c9750.var_f46e77d2.var_5afd2a1d);
    playsoundatposition(level.var_577c9750.var_f46e77d2.var_69029368, self.origin);
    self moveto(self.origin + (0, 0, level.var_577c9750.var_f46e77d2.var_1065654c), level.var_577c9750.var_f46e77d2.var_564c2203, 0, level.var_577c9750.var_f46e77d2.var_564c2203);
    self waittilltimeout(level.var_577c9750.var_f46e77d2.var_564c2203, #"movedone");
    self moveto(self.origin - (0, 0, level.var_577c9750.var_f46e77d2.var_b140445d), level.var_577c9750.var_f46e77d2.var_dfc89b2a, level.var_577c9750.var_f46e77d2.var_dfc89b2a, 0);
    self waittilltimeout(level.var_577c9750.var_f46e77d2.var_dfc89b2a, #"movedone");
    self function_fbf401a1();
}

// Namespace land_mine_placed/land_mine_placed
// Params 1, eflags: 0x0
// Checksum 0x4b880766, Offset: 0xae0
// Size: 0x98
function function_2371350(s_info) {
    self notify(#"disarmed");
    self clientfield::set("show_blink_fx", 0);
    playsoundatposition(#"wpn_semtex_alert", self.origin);
    s_info.player playrumbleonentity("gadget_deploy_small");
    level notify(#"hash_16165b3f25c881f4");
}

// Namespace land_mine_placed/land_mine_placed
// Params 1, eflags: 0x0
// Checksum 0x72921ea2, Offset: 0xb80
// Size: 0x64
function function_dc857fe9(*s_notify) {
    if (isdefined(self.var_c1286f25)) {
        level namespace_61e6d095::remove(self.var_c1286f25);
    }
    badplace_delete(self.var_a003405c);
    self.t_proximity delete();
}

// Namespace land_mine_placed/land_mine_placed
// Params 1, eflags: 0x0
// Checksum 0x1414aa, Offset: 0xbf0
// Size: 0xac
function function_9a72f627(var_7a91115e) {
    a_trace = groundtrace(self.origin + (0, 0, 70), self.origin + (0, 0, -100), 0, self);
    str_fx = self getfxfromsurfacetable(var_7a91115e, a_trace[#"surfacetype"]);
    playfx(str_fx, self.origin);
}

// Namespace land_mine_placed/land_mine_placed
// Params 1, eflags: 0x0
// Checksum 0x3a7a6b91, Offset: 0xca8
// Size: 0x6c
function function_c046382d(s_info) {
    if (s_info.weapon === level.var_577c9750.weapon) {
        level.var_85b00b2b = #"hash_71946e53985f8dbb";
        level.var_30eb363 = array::random(level.var_577c9750.var_8431008d);
    }
}


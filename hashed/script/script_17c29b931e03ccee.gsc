// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\gametypes\globallogic_utils.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using script_4721de209091b1a6;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using script_1cc417743d7c262d;

#namespace nuke;

// Namespace nuke/nuke
// Params 0, eflags: 0x5
// Checksum 0x756fba4c, Offset: 0x170
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"nuke", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace nuke/nuke
// Params 0, eflags: 0x6 linked
// Checksum 0x96d39c48, Offset: 0x1c0
// Size: 0x158
function private preinit() {
    killstreaks::register_killstreak("killstreak_nuke", &function_41743630);
    clientfield::register("scriptmover", "" + #"hash_494d8af20db4dc73", 1, 1, "int");
    clientfield::register("world", "" + #"hash_6a6a21b8c5e1528e", 1, 1, "int");
    clientfield::register("world", "" + #"hash_1559e8163efbdb7a", 1, 1, "int");
    clientfield::register("world", "" + #"hash_50ae988d8c6973f5", 1, 2, "int");
    callback::function_5fb139ea(&function_5fb139ea);
    level.var_e4c3d310 = 0;
}

// Namespace nuke/nuke
// Params 1, eflags: 0x2 linked
// Checksum 0x55fa2a82, Offset: 0x320
// Size: 0x64
function function_5fb139ea(*params) {
    if (!isdefined(level.var_e4c3d310) || level.var_e4c3d310 <= 0) {
        return;
    }
    function_a109b3d3();
    function_b830d52b();
    function_70159dea();
}

// Namespace nuke/nuke
// Params 1, eflags: 0x2 linked
// Checksum 0x3eb9ebf0, Offset: 0x390
// Size: 0xc0
function function_41743630(*killstreaktype) {
    if (self killstreakrules::iskillstreakallowed("nuke", self.team) == 0) {
        return false;
    }
    killstreak_id = self killstreakrules::killstreakstart("nuke", self.team);
    if (killstreak_id == -1) {
        return false;
    }
    self namespace_f9b02f80::play_killstreak_start_dialog("nuke", self.team, killstreak_id);
    self thread function_65cd04d7(killstreak_id);
    return true;
}

// Namespace nuke/nuke
// Params 1, eflags: 0x6 linked
// Checksum 0x47a80bb, Offset: 0x458
// Size: 0x424
function private function_65cd04d7(killstreak_id) {
    level endon(#"game_ended");
    bundle = getscriptbundle("killstreak_nuke");
    level childthread function_36f60a32(bundle.var_74843f3d);
    level childthread function_20ad31c5(bundle.var_6ffdf342, bundle.var_5b844ce9, bundle.var_ec8a339f, bundle.var_b41208d8);
    level childthread function_cb5a1440(bundle.var_20359558);
    level childthread function_e57eeb2e(bundle.var_90fc42f5, bundle.var_6e56ae76);
    level childthread function_ee2773cf(bundle.var_282f1f45);
    level childthread function_cf719322(bundle.var_32d43333);
    level childthread function_67753fb9(bundle.var_ab95dfc6, bundle.var_fe584224);
    var_b39c9060 = util::spawn_model("tag_origin", self.origin, self.angles);
    var_b39c9060.team = self.team;
    var_b39c9060.killstreak_id = killstreak_id;
    var_b39c9060.owner = self;
    playsoundatposition(#"hash_7d507d7d8807c64d", (0, 0, 0));
    level thread function_5649bd08();
    level.var_e4c3d310++;
    function_221192e6();
    wait(isdefined(bundle.var_e78db223) ? bundle.var_e78db223 : 0);
    foreach (player in getplayers()) {
        attacker = player.team === self.team ? undefined : self;
        player dodamage(player.health + 1000, player.origin, attacker, attacker, undefined, "MOD_EXPLOSIVE", 0, getweapon(#"nuke"));
    }
    if (isdefined(level.var_e0118bbd)) {
        [[ level.var_e0118bbd ]](self);
    }
    function_cfb9032f();
    wait(5);
    function_70159dea();
    foreach (player in getplayers()) {
        if (isalive(player)) {
            continue;
        }
        player forcespawnplayer();
    }
    var_b39c9060 function_176ca790();
}

// Namespace nuke/nuke
// Params 0, eflags: 0x2 linked
// Checksum 0x19b94418, Offset: 0x888
// Size: 0x7c
function function_176ca790() {
    self killstreakrules::killstreakstop("nuke", self.team, self.killstreak_id);
    function_a109b3d3();
    level.var_e4c3d310--;
    if (level.var_e4c3d310 < 0) {
        level.var_e4c3d310 = 0;
    }
    function_b830d52b();
}

// Namespace nuke/nuke
// Params 0, eflags: 0x2 linked
// Checksum 0x293cd07b, Offset: 0x910
// Size: 0x20
function function_5649bd08() {
    if (is_true(level.var_2179a6bf)) {
        return;
    }
}

// Namespace nuke/nuke
// Params 1, eflags: 0x6 linked
// Checksum 0xe50c6c40, Offset: 0x938
// Size: 0x154
function private function_36f60a32(delay) {
    wait(isdefined(delay) ? delay : 0);
    playsoundatposition(#"hash_36412d3d8dabf70e", (0, 0, 0));
    var_1c3c21f1 = function_ec196fb0();
    var_5ac13eb1 = struct::get_array(#"hash_4b493e0124411b31", "targetname");
    if (var_5ac13eb1.size == 0 && !isdefined(var_1c3c21f1)) {
        return;
    }
    if (!isdefined(level.var_667ac9a6)) {
        var_b50f54e3 = var_5ac13eb1[randomint(var_5ac13eb1.size)];
        if (isdefined(var_1c3c21f1)) {
            var_b50f54e3 = var_1c3c21f1;
        }
        level.var_667ac9a6 = util::spawn_model("tag_origin", var_b50f54e3.origin, var_b50f54e3.angles);
        level.var_667ac9a6 clientfield::set("" + #"hash_494d8af20db4dc73", 1);
    }
}

// Namespace nuke/nuke
// Params 0, eflags: 0x6 linked
// Checksum 0x103e4a0a, Offset: 0xa98
// Size: 0x66
function private function_ec196fb0() {
    if (!isdefined(level.var_4c887efb) || !isdefined(level.var_4c887efb.origin)) {
        return;
    }
    if (!isdefined(level.var_4c887efb.angles)) {
        level.var_4c887efb.angles = (0, 0, 0);
    }
    return level.var_4c887efb;
}

// Namespace nuke/nuke
// Params 4, eflags: 0x6 linked
// Checksum 0x3c8658ac, Offset: 0xb08
// Size: 0x1a0
function private function_20ad31c5(var_cf0e251a = 0, var_1c09d5b2, var_ddd9f485, var_4bfe0994) {
    wait(var_cf0e251a);
    if (isdefined(var_1c09d5b2)) {
        foreach (player in getplayers()) {
            player function_66337ef1(var_1c09d5b2);
        }
    }
    if (!isdefined(var_ddd9f485)) {
        var_ddd9f485 = 0;
    }
    var_f8555e = var_ddd9f485 - var_cf0e251a;
    wait(var_f8555e);
    if (isdefined(var_4bfe0994)) {
        foreach (player in getplayers()) {
            player stoprumble(var_1c09d5b2);
            player function_66337ef1(var_4bfe0994);
        }
    }
}

// Namespace nuke/nuke
// Params 1, eflags: 0x6 linked
// Checksum 0x3d38a40d, Offset: 0xcb0
// Size: 0xc8
function private function_cb5a1440(delay) {
    wait(isdefined(delay) ? delay : 0);
    foreach (player in getplayers()) {
        player val::set(#"hash_681dc6934afec109", "show_hud", 0);
    }
}

// Namespace nuke/nuke
// Params 2, eflags: 0x6 linked
// Checksum 0x27a78dec, Offset: 0xd80
// Size: 0xe0
function private function_e57eeb2e(delay, gesture) {
    if (!isdefined(gesture)) {
        return;
    }
    gestures::function_ba4529d4(gesture);
    wait(isdefined(delay) ? delay : 0);
    foreach (player in getplayers()) {
        player gestures::play_gesture(gesture, undefined, 1);
    }
}

// Namespace nuke/nuke
// Params 1, eflags: 0x2 linked
// Checksum 0x31ca5470, Offset: 0xe68
// Size: 0x54
function function_ee2773cf(delay) {
    wait(isdefined(delay) ? delay : 0);
    level clientfield::set("" + #"hash_6a6a21b8c5e1528e", 1);
}

// Namespace nuke/nuke
// Params 1, eflags: 0x2 linked
// Checksum 0xc72a19c1, Offset: 0xec8
// Size: 0x54
function function_cf719322(delay) {
    wait(isdefined(delay) ? delay : 0);
    level clientfield::set("" + #"hash_1559e8163efbdb7a", 1);
}

// Namespace nuke/nuke
// Params 2, eflags: 0x2 linked
// Checksum 0xab136450, Offset: 0xf28
// Size: 0xc4
function function_67753fb9(var_f4d36dde = 0, var_8259c81c) {
    wait(isdefined(var_f4d36dde) ? var_f4d36dde : 0);
    level clientfield::set("" + #"hash_50ae988d8c6973f5", 1);
    if (!isdefined(var_8259c81c)) {
        var_8259c81c = 0;
    }
    var_68a17fa6 = var_8259c81c - var_f4d36dde;
    wait(var_68a17fa6);
    level clientfield::set("" + #"hash_50ae988d8c6973f5", 2);
}

// Namespace nuke/nuke
// Params 0, eflags: 0x2 linked
// Checksum 0x9c88db36, Offset: 0xff8
// Size: 0x1e0
function function_a109b3d3() {
    level clientfield::set("" + #"hash_6a6a21b8c5e1528e", 0);
    level clientfield::set("" + #"hash_1559e8163efbdb7a", 0);
    bundle = getscriptbundle("killstreak_nuke");
    var_1c09d5b2 = bundle.var_5b844ce9;
    var_4bfe0994 = bundle.var_b41208d8;
    gesture = bundle.var_6e56ae76;
    foreach (player in getplayers()) {
        player val::reset(#"hash_681dc6934afec109", "show_hud");
        if (isdefined(var_1c09d5b2)) {
            player stoprumble(var_1c09d5b2);
        }
        if (isdefined(var_4bfe0994)) {
            player stoprumble(var_4bfe0994);
        }
        if (isdefined(gesture) && player isgestureplaying(gesture)) {
            player stopgestureviewmodel(gesture);
        }
    }
}

// Namespace nuke/nuke
// Params 0, eflags: 0x6 linked
// Checksum 0x3dc043e, Offset: 0x11e0
// Size: 0x24
function private function_221192e6() {
    level.var_cd3361fa = level.killcammode;
    level.killcammode = 0;
}

// Namespace nuke/nuke
// Params 0, eflags: 0x6 linked
// Checksum 0x65e7367d, Offset: 0x1210
// Size: 0x32
function private function_b830d52b() {
    if (isdefined(level.var_cd3361fa)) {
        level.killcammode = level.var_cd3361fa;
        level.var_cd3361fa = undefined;
    }
}

// Namespace nuke/nuke
// Params 0, eflags: 0x2 linked
// Checksum 0x262d1984, Offset: 0x1250
// Size: 0x6
function function_e3dc00a() {
    return false;
}

// Namespace nuke/nuke
// Params 0, eflags: 0x2 linked
// Checksum 0x78fdd45d, Offset: 0x1260
// Size: 0x138
function forcespawnplayer() {
    if (!isplayer(self)) {
        return;
    }
    if (isalive(self)) {
        return;
    }
    if (self.pers[#"team"] === #"spectator") {
        return;
    }
    if (self isremotecontrolling() && self.currentspectatingclient == -1) {
        return;
    }
    if (!globallogic_utils::isvalidclass(self.pers[#"class"])) {
        self.pers[#"class"] = "CLASS_CUSTOM1";
        self.curclass = self.pers[#"class"];
    }
    if (!self function_8b1a219a()) {
        self closeingamemenu();
    }
    self thread [[ level.spawnclient ]]();
}

// Namespace nuke/nuke
// Params 0, eflags: 0x6 linked
// Checksum 0x37fcc4f6, Offset: 0x13a0
// Size: 0x2c
function private function_cfb9032f() {
    level.var_f28d79cb = level.mayspawn;
    level.mayspawn = &function_e3dc00a;
}

// Namespace nuke/nuke
// Params 0, eflags: 0x6 linked
// Checksum 0x910c0357, Offset: 0x13d8
// Size: 0x22
function private function_70159dea() {
    level.mayspawn = level.var_f28d79cb;
    level.var_f28d79cb = undefined;
}


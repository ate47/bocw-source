// Atian COD Tools GSC CW decompiler test
#using scripts\abilities\gadgets\gadget_health_regen.gsc;
#using script_7a8ad4f66d2967a6;
#using scripts\cp_common\skipto.gsc;
#using script_32399001bdb550da;
#using script_6f5cbd9bf3de5019;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\vehicleriders_shared.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_b7cfe907;

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 3, eflags: 0x2 linked
// Checksum 0xc39db1e1, Offset: 0xc00
// Size: 0x574
function function_27e76b4c(var_39a61773, var_c027e5d, var_8703bf11 = 1) {
    if (!isdefined(level.var_7466d419)) {
        assert(isdefined(getent("spawner_hero_gunner", "t9_arm_intro_passenger_idle")), "t9_arm_intro_enterhuey_sittingonedge_");
        level.var_7466d419 = vehicle::simple_spawn_single("spawner_heli_player");
        params = spawnstruct();
        params.no_clear_movement = var_8703bf11;
        params.var_a22ee662 = var_8703bf11;
        level.var_7466d419 vehicle_ai::set_state("scripted", params);
        level.var_7466d419 setowner(level.player);
        level.var_7466d419.owner = level.player;
        level.var_7466d419.soundmod = "heli";
        level.var_7466d419.var_54b19f55 = 1;
        if (var_39a61773 === "heli_spawn_airbase") {
            var_7c2d9419 = 1;
        }
        function_28dd3085(var_7c2d9419);
        if (var_39a61773 === "heli_spawn_airbase") {
            level.var_7466d419 thread scene::play(#"hash_65f973650bb861a3", "Shot 1");
        } else if (var_39a61773 === "heli_spawn_mortar") {
            level.var_7466d419 thread scene::play(#"hash_65f973650bb861a3", "Shot 2");
        }
    }
    var_671a17f9 = [0, 1, 2];
    for (i = 0; i <= 5; i++) {
        level.var_7466d419 setseatoccupied(i, 1);
    }
    if (isdefined(var_39a61773)) {
        if (isstring(var_39a61773)) {
            var_8d9b91de = getent(var_39a61773, "script_noteworthy");
            if (!isdefined(var_8d9b91de)) {
                var_8d9b91de = getvehiclenode(var_39a61773, "script_noteworthy");
            }
        }
        if (!isdefined(var_8d9b91de)) {
            var_8d9b91de = struct::get(var_39a61773, "script_noteworthy");
        }
        if (isdefined(var_8d9b91de)) {
            level.var_7466d419.origin = var_8d9b91de.origin;
            level.var_7466d419.angles = var_8d9b91de.angles;
        }
    }
    if (isdefined(var_c027e5d)) {
        if (var_c027e5d == 3 || var_c027e5d == 4 || var_c027e5d == 5) {
            assertmsg("<unknown string>");
        }
        if (var_c027e5d == 0) {
            if (level.var_7466d419.vehicletype != #"hash_75cd743f7ce45c03") {
                level.var_7466d419 setvehicletype(#"hash_75cd743f7ce45c03");
            }
        } else if (level.var_7466d419.vehicletype != #"hash_508d62164fdfd53c") {
            level.var_7466d419 setvehicletype(#"hash_508d62164fdfd53c");
        }
        level.var_7466d419 setseatoccupied(var_c027e5d, 0);
        level.var_7466d419 makevehicleusable();
        level.var_7466d419 usevehicle(level.player, var_c027e5d);
        arrayremovevalue(var_671a17f9, var_c027e5d);
        level.var_7466d419 makevehicleunusable();
        if (var_c027e5d == 0) {
            level.var_7466d419 vehicle_ai::set_state("driving");
        }
    } else {
        level.var_7466d419 makevehicleunusable();
    }
    level flag::set("flag_armada_player_chopper_spawned");
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0x8301c0f4, Offset: 0x1180
// Size: 0x1a4
function function_28dd3085(var_7c2d9419) {
    function_75972637();
    if (is_true(var_7c2d9419)) {
        level.var_7466d419.reflection = getent("reflection_intro", "targetname");
        level.var_7466d419.var_3ac8868 = getent("reflection_intro_cab", "targetname");
    } else {
        level.var_7466d419.reflection = getent("reflection_heli_crash", "targetname");
        level.var_7466d419.var_3ac8868 = getent("reflection_heli_crash_cab", "targetname");
    }
    if (isdefined(level.var_7466d419.reflection)) {
        level.var_7466d419.reflection linkto(level.var_7466d419, "tag_body_animate", (24, 0, -48), (0, 0, 0));
    }
    if (isdefined(level.var_7466d419.var_3ac8868)) {
        level.var_7466d419.var_3ac8868 linkto(level.var_7466d419, "tag_body_animate", (88, 0, -48), (0, 0, 0));
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0x553f9aca, Offset: 0x1330
// Size: 0xe2
function function_75972637() {
    if (isdefined(level.var_7466d419.reflection)) {
        level.var_7466d419.reflection unlink();
        level.var_7466d419.reflection.origin = (0, 0, -2000);
        level.var_7466d419.reflection = undefined;
    }
    if (isdefined(level.var_7466d419.var_3ac8868)) {
        level.var_7466d419.var_3ac8868 unlink();
        level.var_7466d419.var_3ac8868.origin = (0, 0, -2000);
        level.var_7466d419.var_3ac8868 = undefined;
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0xd8a582f5, Offset: 0x1420
// Size: 0x1a6
function function_8a8a52ab() {
    self endon(#"death");
    assert(isdefined(level.var_7466d419), "<unknown string>");
    assert(isdefined(level.var_7466d419.turretweapon), "<unknown string>");
    weapon = level.var_7466d419.turretweapon;
    while (true) {
        while (!self function_e01d381a() && !self reloadbuttonpressed()) {
            waitframe(1);
        }
        if (self hasweapon(weapon) && self getweaponammoclip(weapon) != self getweaponammoclipsize(weapon)) {
            self setweaponammoclip(weapon, 0);
            level.var_7466d419 function_1f68c1f7(0, 0);
        }
        while (level.player function_e01d381a() || level.player reloadbuttonpressed()) {
            waitframe(1);
        }
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0x50e7d093, Offset: 0x15d0
// Size: 0x11c
function function_f305c075() {
    level flag::wait_till(#"all_players_spawned");
    level.var_d3e0f34c = vehicle::simple_spawn_single("spawner_player_chopper_crashed");
    level.var_d3e0f34c setcandamage(0);
    level.var_d3e0f34c setowner(level.player);
    level.var_d3e0f34c.owner = level.player;
    level.var_d3e0f34c.soundmod = "heli";
    level.var_d3e0f34c.var_54b19f55 = 1;
    level.var_d3e0f34c makevehicleunusable();
    if (isdefined(level.var_7466d419.var_6bbdd0a5)) {
        level.var_7466d419.var_6bbdd0a5 delete();
    }
}

/#

    // Namespace namespace_b7cfe907/namespace_862012f3
    // Params 1, eflags: 0x0
    // Checksum 0x29ba45d7, Offset: 0x16f8
    // Size: 0xcc
    function function_bda8e87c(time) {
        var_d2352269 = getdvarint(#"hash_161a6ec03efc35e9", 3);
        if (var_d2352269 == 0) {
            if ("<unknown string>" == "<unknown string>") {
                adddebugcommand("<unknown string>");
            } else {
                adddebugcommand("<unknown string>");
            }
            self endon(#"death");
            wait(time);
            adddebugcommand("<unknown string>");
        }
    }

#/

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0xdc4076ab, Offset: 0x17d0
// Size: 0x3a2
function function_d777fe61(var_b54b1d1d) {
    chopper = level.var_7466d419;
    if (!isdefined(var_b54b1d1d)) {
        return;
    }
    if (var_b54b1d1d === 3 || var_b54b1d1d === 4 || var_b54b1d1d === 5) {
        return;
    }
    var_4485dea3 = chopper getoccupantseat(level.player);
    if (var_b54b1d1d === var_4485dea3) {
        return;
    }
    if (var_b54b1d1d === 0) {
        if (chopper.vehicletype != #"hash_75cd743f7ce45c03") {
            chopper setvehicletype(#"hash_75cd743f7ce45c03");
            chopper namespace_f36ad2eb::function_38ae4287();
        }
    }
    if (!isdefined(var_4485dea3) || var_4485dea3 === -1) {
        chopper makevehicleusable();
        chopper setseatoccupied(var_b54b1d1d, 0);
        chopper usevehicle(level.player, var_b54b1d1d);
        chopper makevehicleunusable();
    } else {
        if (var_b54b1d1d != 0 && chopper getheliheightlock()) {
            chopper setheliheightlock(0);
            chopper setheliheightcap(0);
        }
        chopper makevehicleusable();
        chopper setseatoccupied(var_b54b1d1d, 0);
        chopper function_1090ca(level.player, var_b54b1d1d);
        chopper setseatoccupied(var_4485dea3, 1);
        chopper makevehicleunusable();
    }
    if (var_b54b1d1d != 0) {
        if (chopper.vehicletype != #"hash_508d62164fdfd53c") {
            chopper setvehicletype(#"hash_508d62164fdfd53c");
        }
        chopper turretcleartarget(1);
        chopper turretcleartarget(2);
        params = spawnstruct();
        params.no_clear_movement = 1;
        params.var_a22ee662 = 1;
        chopper setheliheightlock(0);
        chopper setheliheightcap(0);
        chopper vehicle_ai::set_state("scripted", params);
    } else {
        chopper vehicle_ai::set_state("driving");
        chopper function_803e9bf3(1);
    }
    chopper.team = #"allies";
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0xd73b65ab, Offset: 0x1b80
// Size: 0x144
function function_9c308f91(is_immediate = 0) {
    chopper = level.var_7466d419;
    if (is_immediate) {
        chopper setspeedimmediate(150, 100, 100);
    } else {
        chopper setspeed(150, 100, 100);
    }
    chopper setyawspeed(60, 200, 200);
    chopper cleartargetyaw();
    chopper cleargoalyaw();
    chopper setmaxpitchroll(25, 40);
    chopper.var_cb55c804 = 256;
    chopper setneargoalnotifydist(chopper.var_cb55c804);
    chopper sethoverparams(30, 10, 5);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0xe5c5d23, Offset: 0x1cd0
// Size: 0x144
function function_37fc8bb(is_immediate = 0) {
    chopper = level.var_7466d419;
    if (is_immediate) {
        chopper setspeedimmediate(150, 100, 100);
    } else {
        chopper setspeed(150, 100, 100);
    }
    chopper setyawspeed(30, 60, 60);
    chopper cleartargetyaw();
    chopper cleargoalyaw();
    chopper setmaxpitchroll(45, 45);
    chopper.var_cb55c804 = 256;
    chopper setneargoalnotifydist(chopper.var_cb55c804);
    chopper sethoverparams(30, 10, 5);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0x2505e85a, Offset: 0x1e20
// Size: 0x312
function function_9ebb66cb() {
    self flag::wait_till(#"loadout_given");
    self setcharacterbodytype(1);
    self setcharacteroutfit(1);
    self util::function_a5318821();
    a_weapon_list = self getweaponslist();
    foreach (weapon in a_weapon_list) {
        if (!is_true(weapon.var_29d24e37)) {
            self takeweapon(weapon);
        }
    }
    if (isdefined(level.weaponbasemeleeheld) && self hasweapon(level.weaponbasemeleeheld)) {
        self takeweapon(level.weaponbasemeleeheld);
    }
    if (!function_34163738()) {
        function_544b0755();
        function_10684aff();
    }
    var_cc76bf54 = self getweaponslistprimaries();
    current_weapon = self getcurrentweapon();
    foreach (weapon in var_cc76bf54) {
        weapon_class = weapon.weapclass;
        if (isdefined(weapon.weapclass) && isinarray(["rifle", "mg", "smg", "spread", "rocketlauncher"], weapon.weapclass) && current_weapon !== weapon) {
            self switchtoweaponimmediate(weapon);
            return;
        }
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0xc0832ac6, Offset: 0x2140
// Size: 0x13c
function function_10684aff() {
    weapon = getweapon(#"hash_4ff481a4f55ed901", array("fastreload"));
    if (!self hasweapon(weapon)) {
        self giveweapon(weapon);
        self switchtoweaponimmediate(weapon);
        self setspawnweapon(weapon);
        self givemaxammo(weapon);
    }
    weapon = getweapon(#"pistol_semiauto_t9", array("extclip"));
    if (!self hasweapon(weapon)) {
        self giveweapon(weapon);
        self givemaxammo(weapon);
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0xf70a935d, Offset: 0x2288
// Size: 0xe4
function function_544b0755() {
    frag = getweapon(#"frag_grenade");
    if (!self hasweapon(frag)) {
        self giveweapon(frag);
        var_efa5472a = skipto::function_5a61e21a()[0];
        if (var_efa5472a === "armada_intro") {
            var_c76a870a = 1;
        } else {
            var_c76a870a = frag.maxammo;
        }
        self setweaponammoclip(frag, var_c76a870a);
        self setweaponammostock(frag, var_c76a870a);
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x0
// Checksum 0x80e5cf5d, Offset: 0x2378
// Size: 0x5c
function function_6d74acf3() {
    var_bd1c473f = getweapon(#"hash_55c23f24d806e3a6");
    self giveweapon(var_bd1c473f);
    self switchtoweaponimmediate(var_bd1c473f);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 3, eflags: 0x2 linked
// Checksum 0xe2a4a6df, Offset: 0x23e0
// Size: 0xb4
function function_4fa636c5(start_node, var_212b9b37 = 0, var_2747d300) {
    if (!isdefined(var_2747d300)) {
        while (!isdefined(level.var_7466d419)) {
            waitframe(1);
        }
        var_2747d300 = level.var_7466d419;
    }
    if (var_2747d300 flag::get("flag_orbit_chopper_ascending")) {
        var_2747d300 flag::wait_till_clear("flag_orbit_chopper_ascending");
    }
    level thread namespace_486c0593::function_6973d387(start_node, var_212b9b37, var_2747d300);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0x6b92b08c, Offset: 0x24a0
// Size: 0x9da
function function_6a03d24d(var_d3440450) {
    switch (var_d3440450) {
    case #"armada_intro":
    case #"armada_flyin":
        function_27e76b4c("heli_spawn_airbase", undefined, 0);
        function_14a42357(0, struct::get("spawn_vip_intro", "targetname"));
        function_e1635dfe(0, struct::get("spawn_vip_intro", "targetname"));
        function_ed68628c(0, struct::get("spawn_vip_intro", "targetname"));
        function_882e6973(0, struct::get("spawn_vip_intro", "targetname"), 0);
        break;
    case #"hash_303b184d24152e6a":
        function_27e76b4c("heli_spawn_airbase", 2);
        function_14a42357(1);
        function_e1635dfe(1);
        function_ed68628c(1);
        break;
    case #"hash_1884fe67d203defa":
        function_27e76b4c("heli_spawn_airbase", 2);
        function_d5d40694();
        function_ed68628c(1);
        break;
    case #"hash_24f8004f04e29031":
        function_27e76b4c("heli_spawn_firebase_checkin", 2);
        function_d5d40694();
        function_ed68628c(0, struct::get("spawn_vip_intro", "targetname"));
        break;
    case #"hash_5ba1cebca2018024":
        function_27e76b4c("heli_spawn_fly_to_branch", 0);
        function_d5d40694();
        function_ed68628c(1);
        break;
    case #"hash_6397100038fc0825":
        function_27e76b4c("heli_spawn_fly_to_branch_reached", 0);
        function_d5d40694();
        function_ed68628c(1);
        break;
    case #"hash_77a0b655f39c2bd0":
        function_27e76b4c("heli_spawn_fly_to_branch_mortar", 0);
        function_14a42357(1);
        function_e1635dfe(1);
        function_ed68628c(1);
        function_882e6973(1);
        vehicle::get_in(level.vip, level.var_7466d419, "crew");
        break;
    case #"armada_mortar_orbit":
        function_27e76b4c("heli_spawn_mortar");
        function_14a42357(1);
        function_e1635dfe(1);
        function_ed68628c(1);
        level.buddy function_1f7fdfdb(1);
        break;
    case #"armada_mortar_start":
        function_27e76b4c("heli_spawn_mortar", 2);
        function_14a42357(1);
        function_e1635dfe(1);
        function_ed68628c(1);
        break;
    case #"armada_mortar_exfil":
        function_ed68628c(0, struct::get("mortar_exfil_sim_spawn_loc", "targetname"));
        break;
    case #"hash_5beb082ca4e77486":
        function_27e76b4c("heli_spawn_mortar_exit_to_bamboo", 0);
        function_d5d40694();
        function_ed68628c(1);
        break;
    case #"hash_7b186002f3b2a8d2":
        function_27e76b4c("heli_spawn_bamboo_exit", 0);
        function_d5d40694();
        function_ed68628c(1);
        function_882e6973(1);
        break;
    case #"hash_26c770abea50b0af":
        function_27e76b4c("heli_spawn_bamboo", 2);
        function_d5d40694();
        function_ed68628c(1);
        break;
    case #"hash_18e570d80fb44818":
    case #"hash_23a89628ff715703":
        function_27e76b4c("heli_spawn_bamboo");
        function_d5d40694();
        function_ed68628c(0);
        function_882e6973(0);
        break;
    case #"hash_1883c7f222b5148a":
        function_27e76b4c("heli_spawn_bamboo");
        function_d5d40694();
        function_ed68628c(0, getent("bamboo_vip_end_spawn", "targetname"));
        function_882e6973(0, getent("bamboo_buddy_end_spawn", "targetname"));
        break;
    case #"hash_d9f7dbd88b82743":
        function_27e76b4c("heli_spawn_mortar_exit_to_firebase", 0);
        function_d5d40694();
        function_ed68628c(1);
        function_882e6973(1);
        break;
    case #"hash_1d34f56e80987e86":
        function_27e76b4c("heli_spawn_bamboo_exit", 0);
        function_d5d40694();
        function_ed68628c(1);
        function_882e6973(1);
        break;
    case #"hash_e6b8714bb3258c2":
        function_27e76b4c("heli_spawn_firebase_defend");
        function_d5d40694();
        function_ed68628c(1);
        function_882e6973(1);
        break;
    case #"hash_463da5a40abee8ee":
        function_27e76b4c("heli_spawn_firebase_orbit", 2);
        function_d5d40694();
        function_ed68628c(1);
        function_882e6973(1);
        break;
    case #"armada_crash_start":
        function_27e76b4c("heli_spawn_crash", 2, 1);
        function_14a42357(0);
        function_e1635dfe(0);
        function_166083c9(0);
        function_882e6973(0, undefined, 1);
        function_ed68628c(0, undefined, 1);
        break;
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0x13b52f94, Offset: 0x2e88
// Size: 0x4c
function function_d5d40694() {
    function_14a42357(1);
    function_e1635dfe(1);
    function_166083c9(1);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 4, eflags: 0x2 linked
// Checksum 0xfaa8cc29, Offset: 0x2ee0
// Size: 0x1dc
function function_882e6973(var_249b1ae1, var_8d9b91de, bullet_shield = 1, var_dfab43c3 = 1) {
    if (!isdefined(level.vip)) {
        if (var_dfab43c3) {
            level.vip = spawner::simple_spawn_single("spawner_hero_vip_hat");
        } else {
            level.vip = spawner::simple_spawn_single("spawner_hero_vip");
        }
    }
    if (isdefined(level.vip)) {
        if (is_true(bullet_shield)) {
            util::magic_bullet_shield(level.vip);
        }
        if (is_true(var_249b1ae1)) {
            if (!isdefined(level.vip.var_5574287b) || isdefined(level.vip.var_5574287b) && !issubstr(level.vip.var_5574287b, "crew")) {
                vehicle::get_in(level.vip, level.var_7466d419, "crew");
            }
        } else if (isdefined(var_8d9b91de)) {
            level.vip forceteleport(var_8d9b91de.origin);
        }
    }
    level flag::set("flag_armada_vip_spawned");
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 3, eflags: 0x2 linked
// Checksum 0xabfef18e, Offset: 0x30c8
// Size: 0x194
function function_ed68628c(var_249b1ae1, var_8d9b91de, bullet_shield = 1) {
    if (!isdefined(level.buddy)) {
        level.buddy = spawner::simple_spawn_single("spawner_hero_buddy");
    }
    if (isdefined(level.buddy)) {
        if (is_true(bullet_shield)) {
            util::magic_bullet_shield(level.buddy);
        }
        if (is_true(var_249b1ae1)) {
            if (!isdefined(level.buddy.var_5574287b) || isdefined(level.buddy.var_5574287b) && !issubstr(level.buddy.var_5574287b, "crew")) {
                vehicle::get_in(level.buddy, level.var_7466d419, "crew");
            }
        } else if (isdefined(var_8d9b91de)) {
            level.buddy forceteleport(var_8d9b91de.origin);
        }
    }
    level flag::set("flag_armada_buddy_spawned");
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 3, eflags: 0x2 linked
// Checksum 0xf3f7b67f, Offset: 0x3268
// Size: 0x1ec
function function_14a42357(var_249b1ae1, var_8d9b91de, bullet_shield = 1) {
    if (!isdefined(level.pilot)) {
        level.pilot = spawner::simple_spawn_single("spawner_hero_pilot", &function_8ee9aaa6);
        level.pilot val::set("chopper_crew", "ignoreall", 1);
    }
    if (isdefined(level.pilot)) {
        if (is_true(bullet_shield)) {
            util::magic_bullet_shield(level.pilot);
        }
        if (is_true(var_249b1ae1)) {
            if (!isdefined(level.pilot.var_5574287b) || isdefined(level.pilot.var_5574287b) && !issubstr(level.pilot.var_5574287b, "driver")) {
                vehicle::get_in(level.pilot, level.var_7466d419, "driver");
            }
            level.var_7466d419.var_3ab15a92 = level.pilot;
        } else if (isdefined(var_8d9b91de)) {
            level.pilot forceteleport(var_8d9b91de.origin);
        }
    }
    level flag::set("flag_armada_pilot_spawned");
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 3, eflags: 0x2 linked
// Checksum 0x4aded4b, Offset: 0x3460
// Size: 0x1ec
function function_e1635dfe(var_249b1ae1, var_8d9b91de, bullet_shield = 1) {
    if (!isdefined(level.copilot)) {
        level.copilot = spawner::simple_spawn_single("spawner_hero_copilot", &function_8ee9aaa6);
        level.copilot val::set("chopper_crew", "ignoreall", 1);
    }
    if (isdefined(level.copilot)) {
        if (is_true(bullet_shield)) {
            util::magic_bullet_shield(level.copilot);
        }
        if (is_true(var_249b1ae1)) {
            if (!isdefined(level.copilot.var_5574287b) || isdefined(level.copilot.var_5574287b) && !issubstr(level.copilot.var_5574287b, "passenger1")) {
                vehicle::get_in(level.copilot, level.var_7466d419, "passenger1");
            }
            level.var_7466d419.var_1b27c13b = level.copilot;
        } else if (isdefined(var_8d9b91de)) {
            level.copilot forceteleport(var_8d9b91de.origin);
        }
    }
    level flag::set("flag_armada_copilot_spawned");
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 4, eflags: 0x2 linked
// Checksum 0xa4c883d, Offset: 0x3658
// Size: 0x1f4
function function_166083c9(var_249b1ae1, var_8d9b91de, bullet_shield = 1, var_8ba4e144 = 1) {
    if (!isdefined(level.gunner)) {
        if (var_8ba4e144) {
            str_spawner = "spawner_hero_gunner_clothanim";
        } else {
            str_spawner = "spawner_hero_gunner";
        }
        level.gunner = spawner::simple_spawn_single(str_spawner, &function_8ee9aaa6);
    }
    if (isdefined(level.gunner)) {
        if (is_true(bullet_shield)) {
            util::magic_bullet_shield(level.gunner);
        }
        if (is_true(var_249b1ae1)) {
            if (!isdefined(level.gunner.var_5574287b) || isdefined(level.gunner.var_5574287b) && !issubstr(level.gunner.var_5574287b, "gunner1")) {
                vehicle::get_in(level.gunner, level.var_7466d419, "gunner1");
            }
            level.var_7466d419.var_55772303 = level.gunner;
        } else if (isdefined(var_8d9b91de)) {
            level.gunner forceteleport(var_8d9b91de.origin);
        }
    }
    level flag::set("flag_armada_gunner_spawned");
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0xcd8ea7df, Offset: 0x3858
// Size: 0x44
function function_8ee9aaa6() {
    self ai::gun_remove();
    self val::set("chopper_crew", "ignoreme", 1);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0x2e9792df, Offset: 0x38a8
// Size: 0x16e
function function_1f7fdfdb(var_91270791 = 0) {
    if (!isalive(self)) {
        return;
    }
    if (isdefined(var_91270791) && isstring(var_91270791)) {
        var_91270791 = 1;
    }
    if (level.buddy === self) {
        hatmodel = #"hash_1826381ccc7fdad7";
        var_a914e969 = "j_head";
    } else if (level.vip === self) {
        return;
    } else {
        return;
    }
    if (var_91270791) {
        if (!isdefined(self.hatmodel) || self.hatmodel !== hatmodel) {
            if (isdefined(self.hatmodel)) {
                self detach(self.hatmodel, var_a914e969);
            }
            self attach(hatmodel, var_a914e969);
            self.hatmodel = hatmodel;
        }
        return;
    }
    if (isdefined(self.hatmodel)) {
        self detach(self.hatmodel, var_a914e969);
        self.hatmodel = undefined;
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 5, eflags: 0x2 linked
// Checksum 0x3c222bc3, Offset: 0x3a20
// Size: 0x358
function function_3af72756(chopper, rider, seat, var_16b12a45 = 1, immediate = 1) {
    if (!(isdefined(chopper) && isdefined(rider) && isdefined(seat))) {
        return;
    }
    if (!isdefined(rider.var_ec30f5da)) {
        return;
    }
    if (isdefined(chopper) && isalive(chopper)) {
        switch (seat) {
        case #"driver":
            chopper flag::clear("driver_occupied");
            break;
        case #"passenger1":
            chopper flag::clear("passenger1_occupied");
            break;
        case #"gunner1":
            chopper flag::clear("gunner1_occupied");
            break;
        case #"gunner2":
            chopper flag::clear("gunner2_occupied");
            break;
        case #"crew":
            seat = rider.var_5574287b;
            flag = seat + "_occupied";
            chopper flag::clear(flag);
            break;
        }
        if (isdefined(chopper.var_761c973.riders) && isdefined(chopper.var_761c973) && isdefined(chopper.var_761c973.riders[seat]) && chopper.var_761c973.riders[seat] == rider) {
            chopper.var_761c973.riders[seat] = undefined;
        }
    }
    if (is_true(immediate)) {
        rider flag::clear(#"scriptedanim");
        rider stopanimscripted();
    } else {
        rider animation::stop();
    }
    if (var_16b12a45) {
        rider unlink();
    }
    rider flag::clear("in_vehicle");
    rider flag::clear("riding_vehicle");
    rider.vehicle = undefined;
    rider.var_ec30f5da = undefined;
    rider animation::set_death_anim(undefined);
    rider notify(#"exiting_vehicle");
    rider notify(#"exited_vehicle");
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 5, eflags: 0x2 linked
// Checksum 0x15646a5e, Offset: 0x3d80
// Size: 0x2cc
function function_53c06d6e(var_80561a4a = 0, turn_on_lights = 1, var_dbce26d4 = 1, var_3f8e3ea9 = 1, var_52fa354e = 1) {
    var_8734dfd9 = undefined;
    var_7cb53dc = undefined;
    var_5e36f96c = undefined;
    var_d20a4380 = undefined;
    var_87c3ba4a = undefined;
    if (isstring(var_80561a4a)) {
        params = strtok(var_80561a4a, ",");
        if (isdefined(params[0])) {
            var_8734dfd9 = params[0];
        } else {
            var_8734dfd9 = 0;
        }
        if (isdefined(params[1])) {
            var_87c3ba4a = params[1];
        } else {
            var_87c3ba4a = turn_on_lights;
        }
        if (isdefined(params[2])) {
            var_7cb53dc = params[2];
        } else {
            var_7cb53dc = var_dbce26d4;
        }
        if (isdefined(params[3])) {
            var_5e36f96c = params[3];
        } else {
            var_5e36f96c = var_3f8e3ea9;
        }
        if (isdefined(params[4])) {
            var_d20a4380 = params[4];
        } else {
            var_d20a4380 = var_52fa354e;
        }
    } else {
        var_8734dfd9 = var_80561a4a;
        var_87c3ba4a = turn_on_lights;
        var_7cb53dc = var_dbce26d4;
        var_5e36f96c = var_3f8e3ea9;
        var_d20a4380 = var_52fa354e;
    }
    if (is_true(var_7cb53dc)) {
        self vehicle::toggle_tread_fx(1);
    }
    if (is_true(var_5e36f96c)) {
        self vehicle::toggle_exhaust_fx(1);
    }
    if (is_true(var_d20a4380)) {
        self thread function_7e3b4837(var_8734dfd9);
    }
    self function_388cae02(1);
    if (!is_true(self.nolights) || is_true(var_87c3ba4a)) {
        self vehicle::lights_on();
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0xc70aa1e5, Offset: 0x4058
// Size: 0x284
function function_9ac0bc90(params) {
    if (!isdefined(self)) {
        return;
    }
    if (!(self.vehicleclass === "helicopter")) {
        return;
    }
    if (is_true(self.var_2295c5e7)) {
        return;
    }
    var_aa7e595e = [];
    if (isdefined(params)) {
        if (isstring(params)) {
            var_c3c542c6 = strtok(params, ",");
            if (var_c3c542c6.size > 0) {
                foreach (string in var_c3c542c6) {
                    if (!isdefined(var_aa7e595e)) {
                        var_aa7e595e = [];
                    } else if (!isarray(var_aa7e595e)) {
                        var_aa7e595e = array(var_aa7e595e);
                    }
                    var_aa7e595e[var_aa7e595e.size] = int(string);
                }
            }
        } else {
            var_aa7e595e = params;
        }
    }
    if (isdefined(var_aa7e595e) && isarray(var_aa7e595e) && var_aa7e595e.size > 0) {
        level thread function_68d5d346(self, var_aa7e595e);
    } else {
        level thread function_68d5d346(self, [0, 1, 6, 7, 8, 9, 10]);
    }
    self.var_2295c5e7 = 1;
    callback::function_d8abfc3d(#"on_vehicle_killed", &function_f1804e09);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0x4f03665d, Offset: 0x42e8
// Size: 0x21c
function function_80a8e837(params) {
    if (!isdefined(self)) {
        return;
    }
    if (!(self.vehicleclass === "boat")) {
        return;
    }
    if (is_true(self.var_2295c5e7)) {
        return;
    }
    var_aa7e595e = [];
    if (isdefined(params)) {
        if (isstring(params)) {
            var_c3c542c6 = strtok(params, ",");
            if (var_c3c542c6.size > 0) {
                foreach (string in var_c3c542c6) {
                    if (!isdefined(var_aa7e595e)) {
                        var_aa7e595e = [];
                    } else if (!isarray(var_aa7e595e)) {
                        var_aa7e595e = array(var_aa7e595e);
                    }
                    var_aa7e595e[var_aa7e595e.size] = int(string);
                }
            }
        } else {
            var_aa7e595e = params;
        }
    }
    level thread function_68d5d346(self, [0, 1, 2, 3, 4]);
    self.var_2295c5e7 = 1;
    callback::function_d8abfc3d(#"on_vehicle_killed", &function_f1804e09);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0x67b2f130, Offset: 0x4510
// Size: 0x168
function function_1eff410c(a_ents) {
    foreach (ent in a_ents) {
        if (!isdefined(ent)) {
            continue;
        }
        if (ent.vehicleclass === "helicopter" && !is_true(ent.var_c1ba62b6)) {
            ent.var_c1ba62b6 = 1;
            ent function_388cae02(0.2);
        }
        if (ent.vehicleclass === "helicopter") {
            if (issentient(ent)) {
                ent function_60d50ea4();
            }
            ent.do_scripted_crash = 0;
            ent.script_cheap = 1;
            ent.delete_on_death = 1;
            ent function_d733412a(0);
        }
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0xb474a1aa, Offset: 0x4680
// Size: 0x180
function function_a641ac8b(a_ents) {
    foreach (ent in a_ents) {
        if (!isdefined(ent)) {
            continue;
        }
        if (ent.vehicleclass === "helicopter" && !is_true(ent.var_c1ba62b6)) {
            ent.var_c1ba62b6 = 1;
            ent function_388cae02(1);
        }
        if (ent.vehicleclass === "boat" || ent.vehicleclass === "helicopter") {
            if (issentient(ent)) {
                ent function_60d50ea4();
            }
            ent.do_scripted_crash = 0;
            ent.script_cheap = 1;
            ent.delete_on_death = 1;
            ent function_d733412a(0);
        }
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 2, eflags: 0x2 linked
// Checksum 0x1e0459d4, Offset: 0x4808
// Size: 0x198
function function_68d5d346(vehicle, a_positions) {
    if (!isdefined(a_positions)) {
        a_positions = [];
    } else if (!isarray(a_positions)) {
        a_positions = array(a_positions);
    }
    if (vehicle.vehicleclass === "helicopter") {
        foreach (position in a_positions) {
            level thread function_b50b1da4(vehicle, position);
        }
        return;
    }
    if (vehicle.vehicleclass === "boat") {
        foreach (position in a_positions) {
            level thread function_d01d891(vehicle, position);
        }
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 2, eflags: 0x2 linked
// Checksum 0xff961930, Offset: 0x49a8
// Size: 0x50c
function function_d01d891(boat, position) {
    boat endon(#"death", #"hash_2ec2df211f113591");
    level endon(#"game_ended");
    var_ef41a687 = [];
    str_model = #"hash_262ebc4f609e2513";
    weapon_name = undefined;
    if (!isdefined(boat.var_16826e92)) {
        boat.var_16826e92 = util::spawn_anim_model("tag_origin", boat.origin + (0, 0, 32), boat.angles);
        boat.var_16826e92 linkto(boat);
    }
    tag = "tag_origin";
    switch (position) {
    case 0:
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_gear_up_pt2_boat_driver";
        break;
    case 1:
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_gear_up_pt2_boat_guy01";
        break;
    case 2:
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_gear_up_pt2_boat_guy02";
        break;
    case 3:
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_gear_up_pt2_boat_guy03";
        break;
    case 4:
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_gear_up_pt2_boat_guy04";
        break;
    default:
        assertmsg("<unknown string>");
        break;
    }
    fake_guy = util::spawn_anim_model(str_model, boat.origin, boat.angles);
    fake_guy makefakeai();
    fake_guy setnosunshadow();
    if (isdefined(position)) {
        fake_guy.var_b11e7fca = position;
    }
    if (isdefined(weapon_name)) {
        weapon = getweapon(weapon_name);
        fake_guy animation::attach_weapon(weapon);
    }
    if (!isdefined(boat.var_ad845fd6)) {
        boat.var_ad845fd6 = [];
    } else if (!isarray(boat.var_ad845fd6)) {
        boat.var_ad845fd6 = array(boat.var_ad845fd6);
    }
    boat.var_ad845fd6[boat.var_ad845fd6.size] = fake_guy;
    fake_guy endon(#"death");
    var_307b7390 = array::random(var_ef41a687);
    if (isdefined(var_307b7390) && isdefined(fake_guy) && fake_guy hasanimtree()) {
        fake_guy animation::play(var_307b7390, boat.var_16826e92, tag, 1, 0.2, 0.1, undefined, undefined, undefined, 0);
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 3, eflags: 0x2 linked
// Checksum 0x4e1d548f, Offset: 0x4ec0
// Size: 0x884
function function_b50b1da4(helicopter, position, var_f37b2ff0) {
    helicopter endon(#"death", #"hash_2ec2df211f113591");
    level endon(#"game_ended");
    var_ef41a687 = [];
    str_model = #"hash_262ebc4f609e2513";
    weapon_name = undefined;
    tag = "tag_body_animate";
    switch (position) {
    case 0:
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_intro_driver_idle";
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_intro_driver_takeoff";
        str_model = #"hash_4d52bea52bd00dbd";
        break;
    case 1:
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_intro_passenger_idle";
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_intro_passenger_takeoff";
        str_model = #"hash_421500ac712b73b2";
        break;
    case 6:
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_intro_crew_6_idle";
        weapon_name = #"hash_4ff481a4f55ed901";
        break;
    case 7:
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_intro_minigun_7_idle_guy01";
        break;
    case 8:
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_intro_minigun_8_idle_guy02";
        break;
    case 9:
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_intro_enterhuey_sittingonedge_9_idle_guy01";
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_intro_enterhuey_sittingonedge_9_idle_guy02";
        weapon_name = #"hash_4ff481a4f55ed901";
        break;
    case 10:
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_intro_enterhuey_sittingonedge_10_idle_guy01";
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "t9_arm_intro_enterhuey_sittingonedge_10_idle_guy02";
        weapon_name = #"hash_4ff481a4f55ed901";
        break;
    case 11:
        if (!isdefined(var_ef41a687)) {
            var_ef41a687 = [];
        } else if (!isarray(var_ef41a687)) {
            var_ef41a687 = array(var_ef41a687);
        }
        var_ef41a687[var_ef41a687.size] = "ai_t9_crw_lg_heli_base_rifle_11_idle_cover";
        weapon_name = #"hash_4ff481a4f55ed901";
        break;
    default:
        assertmsg("<unknown string>");
        break;
    }
    fake_guy = util::spawn_anim_model(str_model, helicopter.origin, helicopter.angles);
    fake_guy makefakeai();
    fake_guy setnosunshadow();
    if (isdefined(position)) {
        fake_guy.var_b11e7fca = position;
    }
    if (isdefined(weapon_name)) {
        weapon = getweapon(weapon_name);
        fake_guy animation::attach_weapon(weapon);
    }
    helicopter.var_2295c5e7 = 1;
    if (!isdefined(helicopter.var_ad845fd6)) {
        helicopter.var_ad845fd6 = [];
    } else if (!isarray(helicopter.var_ad845fd6)) {
        helicopter.var_ad845fd6 = array(helicopter.var_ad845fd6);
    }
    helicopter.var_ad845fd6[helicopter.var_ad845fd6.size] = fake_guy;
    fake_guy endon(#"death");
    if (isdefined(var_f37b2ff0)) {
        if (position == 9 || position == 10) {
            if (var_f37b2ff0 == "climbin") {
                var_307b7390 = "t9_arm_intro_crew_" + position + "_idle";
            } else if (var_f37b2ff0 == "climbin2") {
                var_307b7390 = "t9_arm_intro_enterhuey_sittingonedge_" + position + "_idle_guy01";
            } else if (var_f37b2ff0 == "climbin_slow") {
                var_307b7390 = "t9_arm_intro_enterhuey_sittingonedge_" + position + "_idle_guy02";
            }
        }
    }
    if (!isdefined(var_307b7390)) {
        var_307b7390 = array::random(var_ef41a687);
    }
    if (isdefined(var_307b7390) && isdefined(fake_guy) && fake_guy hasanimtree()) {
        fake_guy animation::play(var_307b7390, helicopter, tag, 1, 0.2, 0.1, undefined, undefined, undefined, 0);
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0xccb5256c, Offset: 0x5750
// Size: 0x4c
function function_a7574a48(params) {
    if (!isdefined(self)) {
        return;
    }
    self function_5677b6eb(params);
    waittillframeend();
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0xf2a0f91a, Offset: 0x57a8
// Size: 0x114
function function_5677b6eb(*params) {
    if (is_true(self.var_2295c5e7) && isarray(self.var_ad845fd6)) {
        self notify(#"hash_2ec2df211f113591");
        foreach (guy in self.var_ad845fd6) {
            if (isdefined(guy)) {
                guy delete();
            }
        }
        self.var_2295c5e7 = 0;
        if (isdefined(self.var_16826e92)) {
            self.var_16826e92 delete();
        }
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0x710196e7, Offset: 0x58c8
// Size: 0x3c
function function_f1804e09(*s_params) {
    if (!is_true(self.var_2295c5e7)) {
        return;
    }
    self function_5677b6eb();
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0x2823c778, Offset: 0x5910
// Size: 0x6c
function function_388cae02(speed) {
    if (!isdefined(speed)) {
        return;
    }
    var_918dc1be = speed;
    if (isstring(speed)) {
        var_918dc1be = float(speed);
    }
    self setrotorspeed(var_918dc1be);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0x876b5794, Offset: 0x5988
// Size: 0x494
function function_ed1b0fb(params) {
    if (isarray(params)) {
    } else {
        args = strtok(params, ",");
        foreach (arg in args) {
            var_102cf4ae = strtok(arg, "=");
            switch (var_102cf4ae[0]) {
            case #"pitch":
                var_e1f655e4 = float(var_102cf4ae[1]);
                break;
            case #"pitchmin":
                pitchmin = float(var_102cf4ae[1]);
                break;
            case #"pitchmax":
                pitchmax = float(var_102cf4ae[1]);
                break;
            case #"yaw":
                var_35c7ad6e = float(var_102cf4ae[1]);
                break;
            case #"yawmin":
                yawmin = float(var_102cf4ae[1]);
                break;
            case #"yawmax":
                yawmax = float(var_102cf4ae[1]);
                break;
            case #"roll":
                roll = float(var_102cf4ae[1]);
                break;
            case #"duration":
                duration = float(var_102cf4ae[1]);
                break;
            case #"freqpitch":
                freqpitch = float(var_102cf4ae[1]);
                break;
            case #"freqyaw":
                freqyaw = float(var_102cf4ae[1]);
                break;
            }
        }
    }
    level.player endon(#"death");
    source = level.player.origin;
    if (isdefined(pitchmin) && isdefined(pitchmax)) {
        pitch = randomfloatrange(pitchmin, pitchmax);
    } else if (isdefined(var_e1f655e4)) {
        pitch = var_e1f655e4;
    } else {
        pitch = randomfloatrange(0.025, 0.075);
    }
    if (isdefined(yawmin) && isdefined(yawmax)) {
        yaw = randomfloatrange(yawmin, yawmax);
    } else if (isdefined(var_35c7ad6e)) {
        yaw = var_35c7ad6e;
    } else {
        yaw = randomfloatrange(0.025, 0.075);
    }
    if (!isdefined(roll)) {
        roll = 0;
    }
    if (!isdefined(duration)) {
        duration = 1;
    }
    if (!isdefined(freqpitch)) {
        freqpitch = 8;
    }
    if (!isdefined(freqyaw)) {
        freqyaw = 8;
    }
    screenshake(source, pitch, yaw, roll, duration, 0, 0, 0, freqpitch, freqyaw);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0x89e5e72e, Offset: 0x5e28
// Size: 0x124
function function_7e3b4837(var_80561a4a) {
    self endon(#"death", #"exit_vehicle");
    if (is_true(var_80561a4a)) {
        if (isdefined(self.var_42cfec27) && self.var_42cfec27 != "") {
            var_b0c85051 = soundgetplaybacktime(self.var_42cfec27) * 0.001;
            var_b0c85051 -= 0.5;
            if (var_b0c85051 > 0) {
                var_b0c85051 = math::clamp(var_b0c85051, 0.25, 1.5);
                self playsound(self.var_42cfec27);
                wait(var_b0c85051);
            }
        }
    }
    self vehicle::toggle_sounds(1);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 2, eflags: 0x2 linked
// Checksum 0x60b52a60, Offset: 0x5f58
// Size: 0x1a4
function function_f48ca525(target, tag) {
    self notify(#"firing_rockets");
    forward = anglestoforward(self.angles);
    valid_tags = ["tag_flash", "tag_flash2", "tag_flash3", "tag_flash4"];
    var_30d08334 = getweapon(#"hash_122de34f5e3e0a10");
    rockettag = tag;
    if (!isdefined(rockettag)) {
        rockettag = array::random(valid_tags);
    }
    rocketorigin = self gettagorigin(rockettag);
    if (isdefined(rocketorigin)) {
        targetorigin = rocketorigin + forward * 10000;
        rocket = magicbullet(var_30d08334, rocketorigin, rocketorigin + forward, self);
        if (isdefined(target) && isdefined(rocket)) {
            rocket missile_settarget(target, (0, 0, 0));
        }
        return;
    }
    /#
        iprintln("<unknown string>");
    #/
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 2, eflags: 0x2 linked
// Checksum 0xbd81c3a7, Offset: 0x6108
// Size: 0x94
function delete_on_flag(var_1be62bdc, var_47a79f85) {
    self endon(#"death");
    level flag::wait_till(var_1be62bdc);
    if (isdefined(self)) {
        if (is_true(var_47a79f85)) {
            self scene::stop(1);
        }
        self deletedelay();
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x0
// Checksum 0x1bfa22ec, Offset: 0x61a8
// Size: 0x32
function function_f767a2b5(name) {
    if (!isdefined(name)) {
        return undefined;
    }
    return getent(name, "targetname");
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 3, eflags: 0x0
// Checksum 0xe001b8e5, Offset: 0x61e8
// Size: 0x1a2
function function_5f587847(guys, num, timeoutlength) {
    result = undefined;
    newarray = [];
    for (i = 0; i < guys.size; i++) {
        if (isalive(guys[i])) {
            newarray[newarray.size] = guys[i];
        }
    }
    guys = newarray;
    ent = spawnstruct();
    if (isdefined(timeoutlength)) {
        ent thread ai::waittill_dead_timeout(timeoutlength);
    }
    ent.count = guys.size;
    if (isdefined(num) && num < ent.count) {
        ent.count = num;
    }
    array::thread_all(guys, &ai::waittill_dead_or_dying_thread, ent);
    result = "kill_count_reached";
    while (ent.count > 0) {
        waitresult = ent waittill(#"waittill_dead_guy_dead_or_dying", #"thread_timed_out");
        if (waitresult._notify == "thread_timed_out") {
            result = "timeout";
            break;
        }
    }
    return result;
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 2, eflags: 0x0
// Checksum 0xe30a3c14, Offset: 0x6398
// Size: 0x44
function function_7f1beef3(var_6fa615ee, s_flag) {
    level flag::wait_till(s_flag);
    level exploder::exploder(var_6fa615ee);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 2, eflags: 0x0
// Checksum 0xdfca0c74, Offset: 0x63e8
// Size: 0x3c
function function_dab73ba9(var_6fa615ee, s_notify) {
    self waittill(s_notify);
    level exploder::exploder(var_6fa615ee);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 3, eflags: 0x2 linked
// Checksum 0x34a8bc3b, Offset: 0x6430
// Size: 0x4c
function function_c312f777(var_6fa615ee, s_notify, var_7928fb3d) {
    level endon(var_7928fb3d);
    level waittill(s_notify);
    level exploder::stop_exploder(var_6fa615ee);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 6, eflags: 0x0
// Checksum 0xd09b4987, Offset: 0x6488
// Size: 0x108
function function_6a00dfe2(var_6fa615ee, s_flag, n_min_delay, n_max_delay, var_91eb2583, var_7928fb3d) {
    if (isdefined(var_7928fb3d)) {
        level endon(var_7928fb3d);
    }
    if (isdefined(var_91eb2583)) {
        level endon(var_91eb2583);
    }
    if (!isdefined(n_min_delay)) {
        n_min_delay = 3;
    }
    if (!isdefined(n_max_delay)) {
        n_max_delay = 6;
    }
    if (isdefined(s_flag)) {
        level flag::wait_till(s_flag);
    }
    if (isdefined(var_91eb2583) && isdefined(var_7928fb3d)) {
        level thread function_c312f777(var_6fa615ee, var_91eb2583, var_7928fb3d);
    }
    while (true) {
        level exploder::exploder(var_6fa615ee);
        wait(randomfloatrange(n_min_delay, n_max_delay));
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0xec79343a, Offset: 0x6598
// Size: 0x9c
function function_38a76cc5(*params) {
    self notify(#"hash_35c2f46a1018a427");
    self endon(#"hash_35c2f46a1018a427", #"death");
    wait(5);
    level.players[0] thread gadget_health_regen::enable_healing_after_wait(1, getweapon(#"hash_2282181c251e68e"), 0, 0, level.players[0]);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x0
// Checksum 0x369e0220, Offset: 0x6640
// Size: 0xa4
function function_b641036c(time) {
    players = getplayers();
    players[0] val::set(#"script_godmode", "takedamage", 0);
    if (isdefined(time)) {
        wait(time);
    } else {
        wait(3);
    }
    players[0] val::reset(#"script_godmode", "takedamage");
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0xd6ab5182, Offset: 0x66f0
// Size: 0xfc
function function_6666cad6(var_90a59057) {
    self endon(#"death", #"disconnect");
    self val::set(#"armada_intro", "show_crosshair", 0);
    self val::set(#"armada_intro", "allow_crouch", 0);
    self val::set(#"armada_intro", "allow_prone", 0);
    level flag::wait_till("flag_intro_player_vm_done");
    self thread function_786284e9();
    self thread function_4b13f5b3(var_90a59057);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0x6a3fba97, Offset: 0x67f8
// Size: 0x148
function function_786284e9() {
    level endon(#"hash_51a413763f592840");
    self endon(#"death", #"disconnect");
    self shoulddoinitialweaponraise(getweapon(#"shotgun_pump_t9"), 0);
    self shoulddoinitialweaponraise(getweapon(#"pistol_semiauto_t9"), 0);
    self util::function_749362d7(1);
    while (true) {
        self waittill(#"weapon_dropped");
        self util::function_749362d7(0);
        self function_8ce803d();
        self waittill(#"weapon_change_complete");
        self util::function_749362d7(1);
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0xb55462bf, Offset: 0x6948
// Size: 0x1dc
function function_8ce803d() {
    self val::set(#"low_ready", "disable_weapon_fire", 1);
    self val::set(#"low_ready", "show_weapon_hud", 0);
    self val::set(#"low_ready", "allow_jump", 0);
    self val::set(#"low_ready", "allow_double_jump", 0);
    self val::set(#"low_ready", "allow_sprint", 0);
    self val::set(#"low_ready", "disable_offhand_weapons", 1);
    self val::set(#"low_ready", "disable_offhand_special", 1);
    self val::set(#"low_ready", "allow_ads", 0);
    self val::set(#"low_ready", "disable_aim_assist", 1);
    self val::set(#"low_ready", "allow_prone", 0);
    self val::set(#"low_ready", "allow_melee", 0);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0xd95a4bec, Offset: 0x6b30
// Size: 0x1cc
function function_4b13f5b3(var_90a59057) {
    level endon(#"hash_51a413763f592840", #"hash_5fb8f6d91601e807");
    level.vip endon(#"death");
    self endon(#"death");
    var_efbb6f89 = undefined;
    var_d724342a = sqr(300);
    if (isdefined(var_90a59057)) {
        self util::blend_movespeedscale(0.43, 0.05);
        level flag::wait_till(var_90a59057);
    }
    while (!level flag::get("flag_intro_adler_at_chopper")) {
        if (distance2dsquared(self.origin, level.vip.origin) > var_d724342a) {
            if (is_true(var_efbb6f89)) {
                var_efbb6f89 = 0;
                self util::blend_movespeedscale(0.7, 2);
            }
        } else if (!is_true(var_efbb6f89)) {
            var_efbb6f89 = 1;
            self util::blend_movespeedscale(0.43, 2);
        }
        wait(2);
    }
    self util::blend_movespeedscale(0.7, 2);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 1, eflags: 0x2 linked
// Checksum 0x2b6a7013, Offset: 0x6d08
// Size: 0x100
function function_d3acba36(str_team) {
    var_ace948f9 = array(level.vip, level.buddy, level.pilot, level.copilot, level.gunner, level.var_7466d419);
    foreach (ai in getaiteamarray(str_team)) {
        if (!isinarray(var_ace948f9, ai)) {
            ai delete();
        }
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x0
// Checksum 0xa71bdf3d, Offset: 0x6e10
// Size: 0x88
function function_48fcfe89() {
    level notify(#"hash_77eb6b782116ef53");
    level endon(#"hash_77eb6b782116ef53");
    time = 0;
    step = 0.05;
    while (true) {
        iprintln("t: " + time);
        time += step;
        wait(step);
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 3, eflags: 0x0
// Checksum 0x83b0023e, Offset: 0x6ea0
// Size: 0x74
function function_cd4caf1c(goal, min_delay, max_delay) {
    self endon(#"death");
    if (isdefined(min_delay) && isdefined(max_delay)) {
        wait(randomfloatrange(min_delay, max_delay));
    }
    self setgoal(goal);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0x167980ff, Offset: 0x6f20
// Size: 0x94
function function_1c2abcda() {
    if (!isdefined(level.gunner) || !isdefined(level.var_7466d419)) {
        return;
    }
    var_c28c8682 = level.var_7466d419 getoccupantseat(level.gunner);
    if (var_c28c8682 === 1) {
        return;
    }
    level.var_7466d419 usevehicle(level.gunner, 1);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 3, eflags: 0x2 linked
// Checksum 0x7672c854, Offset: 0x6fc0
// Size: 0x10c
function function_abeb9b2d(var_e503e5a9, var_fd343efd, var_95d10fa4 = 0) {
    if (is_true(var_e503e5a9)) {
        level thread lui::screen_fade_out(var_fd343efd, "white", "pstfx_teleport_fade");
        wait(0.75);
        level.player clientfield::set_to_player("" + #"hash_7474973a37272b2c", 1);
        return;
    }
    level thread lui::screen_fade_in(var_fd343efd, "white", "pstfx_teleport_fade", undefined, var_95d10fa4);
    wait(0.15);
    level.player clientfield::set_to_player("" + #"hash_7474973a37272b2c", 0);
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0x85ac194a, Offset: 0x70d8
// Size: 0x24
function function_51923449() {
    level flag::increment(#"hash_4a3cb4ddb57b2393");
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0xc5d5f2e1, Offset: 0x7108
// Size: 0x24
function function_f1a80dd() {
    level flag::decrement(#"hash_4a3cb4ddb57b2393");
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0xb46267ed, Offset: 0x7138
// Size: 0x22
function function_3f693cc5() {
    return level flag::get(#"hash_4a3cb4ddb57b2393");
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0x8f9a532a, Offset: 0x7168
// Size: 0x14e
function function_ca2b95a() {
    foreach (weapon in self getweaponslistprimaries()) {
        if (isdefined(weapon.weapclass) && isinarray(["rifle", "mg", "smg", "spread", "rocketlauncher"], weapon.weapclass)) {
            mdl_weapon = spawn("script_model", (0, 0, 0));
            waitframe(1);
            mdl_weapon useweaponmodel(weapon);
            return mdl_weapon;
        }
    }
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 0, eflags: 0x2 linked
// Checksum 0x5c8e7e88, Offset: 0x72c0
// Size: 0x64
function function_34163738() {
    missionid = savegame::function_8136eb5a();
    if (isdefined(world.mapdata[missionid][#"transient"].var_2e7c022f)) {
        savegame::function_7396472d();
        return true;
    }
    return false;
}

// Namespace namespace_b7cfe907/namespace_862012f3
// Params 3, eflags: 0x2 linked
// Checksum 0x2772e366, Offset: 0x7330
// Size: 0x14c
function function_2647f901(var_44a53a25, var_a586dc85 = 1, n_scale = 1.6) {
    if (function_72a9e321()) {
        return;
    }
    var_bb964aea = getdvar(#"hash_6e88cc9d089fd2b6");
    var_cda33ee6 = getdvar(#"hash_27a2597778a64794");
    setdvar(#"hash_6e88cc9d089fd2b6", var_a586dc85);
    setdvar(#"hash_27a2597778a64794", n_scale);
    level flag::wait_till(var_44a53a25);
    setdvar(#"hash_6e88cc9d089fd2b6", var_bb964aea);
    setdvar(#"hash_27a2597778a64794", var_cda33ee6);
}

/#

    // Namespace namespace_b7cfe907/namespace_862012f3
    // Params 0, eflags: 0x0
    // Checksum 0x5101785c, Offset: 0x7488
    // Size: 0x7e
    function function_a079809e() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        while (true) {
            var_f55e1260 = level.var_7466d419 getoccupantseat(level.gunner);
            iprintln("<unknown string>" + var_f55e1260);
            wait(1);
        }
    }

    // Namespace namespace_b7cfe907/namespace_862012f3
    // Params 3, eflags: 0x0
    // Checksum 0x4f7f9a82, Offset: 0x7510
    // Size: 0xa6
    function function_becb869c(string, var_52763577, offset) {
        if (!isdefined(offset)) {
            offset = (0, 0, 0);
        }
        self endon(#"death");
        if (isdefined(var_52763577)) {
            level endon(var_52763577);
        }
        while (true) {
            print3d(self.origin + offset, string, (0, 1, 0), 1, 0.6, 1, 1);
            waitframe(1);
        }
    }

#/

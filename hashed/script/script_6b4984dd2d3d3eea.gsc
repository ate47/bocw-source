// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.gsc;
#using scripts\weapons\deployable.gsc;
#using script_129de3d06592c013;
#using scripts\mp_common\gametypes\spy.gsc;
#using script_647623c4304d91a5;
#using scripts\mp_common\laststand.gsc;
#using scripts\mp_common\devgui.gsc;
#using script_167b322dbacbc3f5;
#using script_2b86db900e522510;
#using script_4e6bcfa8856b2a96;
#using script_1267bfe8aee25f0d;
#using scripts\killstreaks\mp\supplydrop.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using script_340a2e805e35f7a2;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\battlechatter.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using script_26187575f84f8d07;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\item_supply_drop.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\item_drop.gsc;
#using script_1cc417743d7c262d;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_e51f0bc1;

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x7dd9e7f7, Offset: 0x6f8
// Size: 0xc6c
function init() {
    init_clientfields();
    level.var_a08e14c4 = [];
    level.var_56a47a6d = [];
    level.var_28f7b75b = 0;
    level.var_1424a0f7 = isdefined(getgametypesetting(#"hash_78ef73321456f43")) ? getgametypesetting(#"hash_78ef73321456f43") : 6;
    level.var_f1f9d4a8 = [];
    level.var_149c4466 = isdefined(getgametypesetting(#"hash_4def31fb13f77143")) ? getgametypesetting(#"hash_4def31fb13f77143") : 3;
    level.var_50ee8e07 = 0;
    level.var_9aae8079 = 0;
    level.var_9d295460 = getweapon(#"hash_2e39312fd8e5cd84");
    weaponobjects::function_e6400478("listening_device_spy", &function_b8862f14, 0);
    deployable::register_deployable(getweapon("listening_device_spy"));
    namespace_b77e8eb1::init();
    function_dd83b835();
    level.var_6f347042 = [];
    level.var_1561d604[0] = "A";
    level.var_1561d604[1] = "B";
    level.var_1561d604[2] = "C";
    level.var_380ab324 = [];
    level.var_380ab324[0] = "bomb_timer_a";
    level.var_380ab324[1] = "bomb_timer_b";
    level.var_380ab324[2] = "bomb_timer_c";
    level.var_24ab7fb2 = isdefined(getgametypesetting(#"hash_78b20ae470a01292")) ? getgametypesetting(#"hash_78b20ae470a01292") : 3;
    level.var_bdad494e = 0;
    level.var_696298a2 = getweapon(#"hash_65e0ee8201178c85");
    level.var_b06a1891 = isdefined(getgametypesetting(#"hash_448f94b2a3abdbb9")) ? getgametypesetting(#"hash_448f94b2a3abdbb9") : 0;
    level.var_f4a1440c = isdefined(getgametypesetting(#"hash_f9fc752cf48653")) ? getgametypesetting(#"hash_f9fc752cf48653") : 0;
    level.var_46f2c796 = isdefined(getgametypesetting(#"hash_982be25d9d36fcb")) ? getgametypesetting(#"hash_982be25d9d36fcb") : 0;
    level.var_df0e3396 = isdefined(getgametypesetting(#"hash_1d499326eb13b66c")) ? getgametypesetting(#"hash_1d499326eb13b66c") : 15;
    level.var_18a272f7 = isdefined(getgametypesetting(#"hash_63fe288deafe5821")) ? getgametypesetting(#"hash_63fe288deafe5821") : 3;
    level.var_f134c2d9 = isdefined(getgametypesetting(#"hash_3ab94ffb22b21621")) ? getgametypesetting(#"hash_3ab94ffb22b21621") : 3;
    level.var_7be27374 = isdefined(getgametypesetting(#"hash_6c52e236b57ecfc7")) ? getgametypesetting(#"hash_6c52e236b57ecfc7") : 10;
    level.var_60693fca = (isdefined(getgametypesetting(#"hash_37aefeabeef0ec6c")) ? getgametypesetting(#"hash_37aefeabeef0ec6c") : 0) * 100;
    level.var_60e3f99c = isdefined(getgametypesetting(#"hash_596f0d24dcb80932")) ? getgametypesetting(#"hash_596f0d24dcb80932") : 75;
    level.dirtybombusebar = dirtybomb_usebar::register();
    level.var_346345d6 = [];
    level.var_7fc395cf = [];
    level.var_619e1acb = isdefined(getgametypesetting(#"hash_74a3df587177c521")) ? getgametypesetting(#"hash_74a3df587177c521") : 1;
    level.var_1a4fbac2 = #"hash_672cc4d184d7a489";
    level.var_1c099f6 = isdefined(getgametypesetting(#"hash_703f4557d14fb593")) ? getgametypesetting(#"hash_703f4557d14fb593") : 30;
    level.var_e8ccafc7 = isdefined(getgametypesetting(#"spymodeairdrop")) ? getgametypesetting(#"spymodeairdrop") : 1;
    level.var_aeea9663 = level.var_a1f33484 === 2 || level.var_a1f33484 === 4;
    var_a31854ad = level.var_e8ccafc7 == 1;
    if (var_a31854ad && !level.var_aeea9663) {
        level.var_79f9f7c9 = 0.2;
        level thread spy_air_drop();
    }
    level.var_e27df64e = [];
    level.var_baf27058 = 0;
    level.var_ffca3315 = 0;
    level.var_5fd149b8 = 0;
    level.var_dbd12457 = undefined;
    level.var_bd0bdf7f = undefined;
    level.var_92a0168 = 0;
    level.var_4ef4217d = [1, 2];
    level.var_fb241b1c = isdefined(getgametypesetting(#"hash_7fb080cd5805ab0e")) ? getgametypesetting(#"hash_7fb080cd5805ab0e") : 1;
    level.var_667896a2 = isdefined(getgametypesetting(#"hash_54d3af9a3a11cc4c")) ? getgametypesetting(#"hash_54d3af9a3a11cc4c") : 30;
    level.var_8ecd8fc = 3;
    level.var_8f05fdec = undefined;
    level.var_1f3c26ce = "A";
    level.var_ae5ae85 = [];
    level.var_ae5ae85[0] = 15;
    level.var_ae5ae85[1] = 20;
    level.var_ae5ae85[2] = 25;
    level.var_4d963525 = 2;
    level.var_7ed001b8 = 1;
    level.var_c5c6c8d = 1;
    level.var_338739ee = encodedradio_usebar::register();
    level flag::wait_till("spy_player_spawned");
    level thread function_dfead3bd();
    callback::add_callback(#"on_item_pickup", &function_29b3a0db);
    level thread function_83abdf0f();
    if (level.var_a1f33484 === 3 || level.var_a1f33484 === 4) {
        println("wz/fx9_dirtybomb_exp" + level.var_a1f33484);
    } else {
        level function_1d3f6978();
    }
    /#
        setdvar(#"hash_10645544b712102b", 1);
        setdvar(#"hash_754c46bbe0d34c1c", 1);
        setdvar(#"hash_37330fea8b092111", 1);
        setdvar(#"hash_321291c63cac2b90", 1);
        setdvar(#"hash_5aed39322a728acf", 0);
        setdvar(#"hash_354f446f06244074", 0);
        init_devgui();
        if (getdvarint(#"hash_74074ce39d0658e7", 0)) {
            level.var_b06a1891 = 3;
            level.var_f4a1440c = 3;
            level.var_18a272f7 = 3;
            level.var_f134c2d9 = 3;
            level.var_7be27374 = 10;
            level.var_46f2c796 = 30;
            level.var_7108bd31 = 15;
            level.var_c0839e43 = 1;
            level.var_de7aa071 = 5;
        }
        if (getdvarint(#"hash_18eb81e69f2ae566", 0)) {
            level.var_1c099f6 = 3;
        }
    #/
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x251e114f, Offset: 0x1370
// Size: 0x244
function init_clientfields() {
    clientfield::register("missile", "" + #"hash_51901507983013f5", 28000, 1, "int");
    clientfield::register("toplayer", "using_bomb", 28000, 1, "int");
    clientfield::register("toplayer", "to_player_notification", 28000, 5, "int");
    clientfield::register("world", "bomb_id", 28000, 2, "int");
    clientfield::register("world", "wanted_client_num", 28000, 5, "int");
    clientfield::register("scriptmover", "" + #"hash_732102339886b628", 28000, 1, "int");
    clientfield::register("missile", "" + #"hash_7850e541b1606b4a", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_3b8f220452f1fe4c", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_3cb0242230f3f716", 28000, 2, "int");
    clientfield::register("vehicle", "" + #"hash_508b8b3b9ba62e53", 28000, 1, "int");
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x57a7dd15, Offset: 0x15c0
// Size: 0x154
function function_dfead3bd() {
    var_8041e93b = randomintrangeinclusive(1, 1);
    /#
        if (getdvarint(#"hash_3388c9f954c1ee7d", 0) > 0) {
            var_8041e93b = getdvarint(#"hash_3388c9f954c1ee7d", 0);
        }
    #/
    switch (var_8041e93b) {
    case 1:
        if (!level.var_aeea9663) {
            level thread function_acd49487();
            level thread function_1b0509bc();
        }
        level thread function_e1bdbf18();
        level thread function_866cb710();
        level thread function_433059c2();
        level thread function_391ca293();
        break;
    }
    level flag::wait_till("spy_role_assigned");
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x540ada82, Offset: 0x1720
// Size: 0x14
function function_acd49487() {
    function_8af77a();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x82d8e77e, Offset: 0x1740
// Size: 0x7a
function function_8af77a() {
    level.var_57834a59 = struct::get_array("dead_drop_cache", "targetname");
    if (level.var_57834a59.size == 0) {
        return;
    }
    function_600da5f9();
    function_c421c41c();
    if (level.var_56a47a6d.size == 0) {
        return;
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x4e28450, Offset: 0x17c8
// Size: 0x18c
function function_600da5f9() {
    level.var_57834a59 = array::randomize(level.var_57834a59);
    if (isdefined(level.var_57834a59[0].var_40202a48)) {
        foreach (cache in level.var_57834a59) {
            if (!isdefined(level.var_56a47a6d[cache.var_40202a48])) {
                level.var_56a47a6d[cache.var_40202a48] = cache;
            }
            if (level.var_56a47a6d.size >= level.var_1424a0f7) {
                break;
            }
        }
        return;
    }
    level.var_56a47a6d = level.var_57834a59;
    for (i = level.var_56a47a6d.size; i > level.var_1424a0f7; i--) {
        level.var_56a47a6d = array::remove_index(level.var_56a47a6d, i - 1);
    }
    level.var_1424a0f7 = level.var_56a47a6d.size;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x45b200a5, Offset: 0x1960
// Size: 0x3ec
function function_c421c41c() {
    foreach (var_82018b7b in level.var_56a47a6d) {
        switch (var_82018b7b.script_noteworthy) {
        case #"hash_35c71e67afe0f613":
            var_82018b7b.ent = util::spawn_model(#"hash_3f79700b4c8b327", var_82018b7b.origin, var_82018b7b.angles);
            offsets = (0, 0, 0);
            angle_offset = (0, 0, 0);
            break;
        case #"hash_40a6adb2c1c40c2e":
            var_82018b7b.ent = util::spawn_model(#"hash_49177879638cb988", var_82018b7b.origin, var_82018b7b.angles);
            offsets = (0, 0, 0);
            angle_offset = (0, 0, 0);
            break;
        case #"hash_3281dab5a1b18571":
            var_82018b7b.ent = util::spawn_model(#"hash_2c9a5eca3b688903", var_82018b7b.origin, var_82018b7b.angles);
            offsets = (0, 0, 0);
            angle_offset = (0, 90, 0);
            break;
        case #"hash_4addf532891d92fd":
            var_82018b7b.ent = util::spawn_model(#"hash_846cad22084113e", var_82018b7b.origin, var_82018b7b.angles);
            offsets = (0, 0, 0);
            angle_offset = (0, 0, 0);
            break;
        case #"hash_6e14e020492b407e":
            var_82018b7b.ent = util::spawn_model(#"hash_30455e319cf79076", var_82018b7b.origin, var_82018b7b.angles);
            offsets = (0, 0, 0);
            angle_offset = (0, 90, 0);
            break;
        case #"hash_1e7660df795b3996":
        default:
            var_82018b7b.ent = util::spawn_model(#"hash_30455e319cf79076", var_82018b7b.origin, var_82018b7b.angles);
            offsets = (0, 0, 0);
            angle_offset = (0, 0, 0);
            break;
        }
        var_82018b7b.state = 0;
        var_82018b7b thread function_2f371ccf();
        var_82018b7b thread function_31f25d73(offsets, angle_offset, 60, 50);
        var_82018b7b thread function_d0c47f4f(offsets, 60, 50);
        var_82018b7b.objectiveid = gameobjects::get_next_obj_id();
        var_82018b7b thread function_94dd997d(var_82018b7b.objectiveid, var_82018b7b.ent.origin - offsets, #"hash_2dd87a01ed89ce75");
        /#
            var_82018b7b thread function_280f72f9();
        #/
    }
    /#
        level thread function_a36ba8c8();
    #/
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0xe5ac7da0, Offset: 0x1d58
// Size: 0x8c
function private function_2f371ccf() {
    level endon(#"game_ended");
    level waittill(#"hash_2f26b8ad3c26a7cb", #"hash_63497adad2aaccba");
    self.ent setcandamage(1);
    self.ent.allowdeath = 0;
    self thread function_8f54d37c();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0x2d4d27a1, Offset: 0x1df0
// Size: 0xfc
function private function_8f54d37c() {
    self endon(#"death");
    self.ent endon(#"death");
    level endon(#"game_ended");
    self notify("6bb78f58f12a8548");
    self endon("6bb78f58f12a8548");
    if (is_true(level.gameended)) {
        return;
    }
    waitresult = self.ent waittill(#"damage");
    attacker = waitresult.attacker;
    if (isdefined(self.destroytrigger)) {
        self.destroytrigger delete();
    }
    if (!isdefined(attacker)) {
        return;
    }
    self function_3a93afbe(attacker);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0xd2f44084, Offset: 0x1ef8
// Size: 0x2fc
function function_3a93afbe(attacker) {
    var_db24292 = self.ent;
    var_db24292 endon(#"death");
    var_db24292 thread item_world::loop_sound("wpn_semtex_alert", 0.84);
    wait(3);
    if (!isdefined(attacker)) {
        return;
    }
    playfx(#"hash_131031222bb89ea", self.origin);
    playsoundatposition(#"hash_2f1ae087d02ed33f", self.origin);
    var_db24292 radiusdamage(self.ent.origin, 128, 50, 10, undefined, "MOD_EXPLOSIVE", getweapon(#"supplydrop"));
    if (self.state == 1 || self.state == 0) {
        self.var_4bb88f2f = self.state;
        self.state = 2;
        if (isdefined(attacker.var_d7e8ad6f) && attacker.var_d7e8ad6f != 1) {
            scoreevents::processscoreevent(#"hash_6df613ae5e0ce3a5", attacker);
        }
        if (self.var_4bb88f2f == 0) {
            level.var_28f7b75b++;
        }
    }
    arrayremovevalue(level.var_56a47a6d, self);
    self function_f3da38fe();
    self.ent clientfield::set("" + #"hash_732102339886b628", 0);
    level thread function_4f53c9a2(2);
    if (level.var_28f7b75b == level.var_1424a0f7) {
        level thread function_4f53c9a2(4);
        otherplayers = array::exclude(spy::function_7a7907d4(), spy::function_3919b452(1));
        globallogic_audio::function_61e17de0("spyDeadDropCachesDestroyed", otherplayers);
    }
    if (isdefined(self.trigger)) {
        self.trigger delete();
    }
    if (isdefined(var_db24292)) {
        var_db24292 delete();
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 4, eflags: 0x4
// Checksum 0x24fd62b3, Offset: 0x2200
// Size: 0x19c
function private function_31f25d73(offsets, angle_offset, trigger_length, trigger_height) {
    level endon(#"game_ended");
    level waittill(#"hash_2f26b8ad3c26a7cb", #"hash_63497adad2aaccba");
    self.ent clientfield::set("" + #"hash_732102339886b628", 1);
    self.trigger = spawn("trigger_radius_use", self.origin + offsets, 0, trigger_length, trigger_height);
    self.trigger triggerignoreteam();
    self.trigger triggerenable(1);
    self.trigger function_ea899419();
    self.trigger sethintstring(#"hash_64fe596059ab7e0e");
    self.trigger.deaddrop = self;
    var_e28a70e = angle_offset;
    self.trigger callback::on_trigger(&function_13f62d64, undefined, var_e28a70e);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x4
// Checksum 0xfb315a09, Offset: 0x23a8
// Size: 0x27c
function private function_13f62d64(triggerstruct, angle_offset) {
    if (is_true(level.gameended)) {
        return;
    }
    activator = triggerstruct.activator;
    deaddrop = self.deaddrop;
    if (deaddrop.state != 0) {
        return;
    }
    if (isdefined(deaddrop.trigger.activator)) {
        return;
    }
    var_e28a70e = angle_offset;
    deaddrop function_92d262c6(var_e28a70e);
    waitframe(1);
    if (deaddrop.state == 0) {
        deaddrop.var_4bb88f2f = deaddrop.state;
        deaddrop.state = 1;
        level.var_28f7b75b++;
        if (activator.var_d7e8ad6f == 1) {
            scoreevents::processscoreevent(#"hash_2fc60929647a812b", activator);
        }
    }
    arrayremovevalue(level.var_56a47a6d, deaddrop);
    if (level.var_28f7b75b >= level.var_1424a0f7 && isdefined(deaddrop.var_4bb88f2f)) {
        level.var_28f7b75b = level.var_1424a0f7;
        thread globallogic_audio::function_61e17de0("spyDeadDropCachesOpened", spy::function_3919b452(1));
    }
    level thread function_4f53c9a2(3);
    if (level.var_28f7b75b == level.var_1424a0f7) {
        level thread function_4f53c9a2(4);
    }
    deaddrop function_f3da38fe();
    if (isdefined(deaddrop.trigger)) {
        deaddrop.trigger delete();
    }
    if (!isdefined(deaddrop.ent)) {
        return;
    }
    deaddrop.ent clientfield::set("" + #"hash_732102339886b628", 0);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 3, eflags: 0x4
// Checksum 0xd1200715, Offset: 0x2630
// Size: 0x13c
function private function_d0c47f4f(offsets, trigger_length, trigger_height) {
    level endon(#"game_ended");
    level waittill(#"hash_2f26b8ad3c26a7cb");
    if (isdefined(self)) {
        self.destroytrigger = spawn("trigger_radius_use", self.origin + offsets, 0, trigger_length, trigger_height);
        self.destroytrigger triggerenable(1);
        self.destroytrigger triggerignoreteam();
        self.destroytrigger.deaddrop = self;
        self.destroytrigger thread function_a961266f(self.owner);
        self.destroytrigger sethintstring(#"hash_4e6ee75bff4f0f60");
        self.destroytrigger callback::on_trigger(&function_479e8def);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0x25b9a01b, Offset: 0x2778
// Size: 0xac
function private function_479e8def(triggerstruct) {
    if (is_true(level.gameended)) {
        return;
    }
    activator = triggerstruct.activator;
    var_db24292 = self.deaddrop.ent;
    damage = 10001;
    var_db24292 dodamage(damage, var_db24292.origin, activator);
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0x73e441be, Offset: 0x2830
// Size: 0xcc
function private function_92d262c6(angle_offset) {
    self notify("3f10c93126d4f19b");
    self endon("3f10c93126d4f19b");
    count = randomintrange(5, 6);
    dropstruct = {#origin:self.origin, #angles:self.angles + angle_offset, #var_738dfc81:count};
    dropstruct namespace_65181344::function_fd87c780(#"hash_335d72a3810450f7", count, 3);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xedd39228, Offset: 0x2908
// Size: 0xa4
function get_player_tactical_grenade() {
    a_weapons = self getweaponslist();
    foreach (weapon in a_weapons) {
        if (weapon.istacticalgrenade) {
            return weapon;
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0x48c3865c, Offset: 0x29b8
// Size: 0xd8
function private function_ea899419() {
    self setinvisibletoall();
    level flag::wait_till("spy_role_assigned");
    foreach (player in getplayers()) {
        if (player.var_d7e8ad6f === 1) {
            self setvisibletoplayer(player);
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0xa0196be4, Offset: 0x2a98
// Size: 0x14a
function function_b8862f14(watcher) {
    watcher.watchforfire = 1;
    watcher.activatesound = #"wpn_claymore_alert";
    watcher.hackable = 1;
    watcher.hackertoolradius = level.equipmenthackertoolradius;
    watcher.hackertooltimems = level.equipmenthackertooltimems;
    watcher.ownergetsassist = 1;
    watcher.ignoredirection = undefined;
    watcher.immediatedetonation = 1;
    watcher.immunespecialty = "specialty_immunetriggerbetty";
    watcher.var_8eda8949 = (0, 0, 0);
    watcher.stuntime = 1;
    watcher.ondetonatecallback = &listening_device::function_ad011f90;
    watcher.onfizzleout = &weaponobjects::weaponobjectfizzleout;
    watcher.onspawn = &function_8bdff396;
    watcher.stun = &weaponobjects::weaponstun;
    watcher.var_994b472b = &listening_device::function_7b26afb;
    watcher.var_10efd558 = "switched_field_upgrade";
    watcher.ondestroyed = &listening_device::function_8af865a6;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x0
// Checksum 0xd40c57ea, Offset: 0x2bf0
// Size: 0x12c
function function_8bdff396(watcher, player) {
    weaponobjects::onspawnproximitygrenadeweaponobject(watcher, player);
    self.weapon = getweapon(#"hash_2e39312fd8e5cd84");
    self.var_48d842c3 = 1;
    self.var_515d6dda = 1;
    self function_619a5c20();
    if (!isdefined(level.var_b7bd6b6d)) {
        level.var_b7bd6b6d = [];
    }
    team = player.team;
    if (isdefined(team)) {
        if (!isdefined(level.var_b7bd6b6d[team])) {
            level.var_b7bd6b6d[team] = [];
        }
        level.var_b7bd6b6d[team][self getentitynumber()] = self;
    }
    player battlechatter::function_fc82b10(self.weapon, self.origin, self);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x1380d001, Offset: 0x2d28
// Size: 0x14
function function_433059c2() {
    function_6ef2c4e5();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xf3e85856, Offset: 0x2d48
// Size: 0x7a
function function_6ef2c4e5() {
    level.var_cd6cf4fb = struct::get_array("listening_device", "targetname");
    if (level.var_cd6cf4fb.size == 0) {
        return;
    }
    function_50e09e10();
    function_3fef0b35();
    if (level.var_f1f9d4a8.size == 0) {
        return;
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xcbd7bd87, Offset: 0x2dd0
// Size: 0xe4
function function_50e09e10() {
    level.var_cd6cf4fb = array::randomize(level.var_cd6cf4fb);
    foreach (var_422dd59a in level.var_cd6cf4fb) {
        if (!isdefined(level.var_f1f9d4a8[var_422dd59a.script_noteworthy])) {
            level.var_f1f9d4a8[var_422dd59a.script_noteworthy] = var_422dd59a;
        }
        if (level.var_f1f9d4a8.size >= level.var_149c4466) {
            break;
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x8f872265, Offset: 0x2ec0
// Size: 0x188
function function_3fef0b35() {
    level flag::wait_till("spy_player_spawned");
    wait(1);
    level flag::wait_till("spy_role_assigned");
    if (getplayers().size <= 1) {
        return;
    }
    foreach (p in spy::function_3919b452(1)) {
        if (isdefined(p)) {
            player = p;
            break;
        }
    }
    if (isdefined(player)) {
        foreach (var_422dd59a in level.var_f1f9d4a8) {
            var_422dd59a thread function_8f295af0(player);
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0x572936c8, Offset: 0x3050
// Size: 0x27c
function function_8f295af0(player) {
    if (!isdefined(player.var_108457e7)) {
        player.var_108457e7 = [];
    }
    player.var_108457e7[level.var_9d295460.name] = 1;
    player giveweapon(level.var_9d295460);
    self.e_device = player magicgrenadetype(level.var_9d295460, self.origin, anglestoforward(self.angles));
    self.e_device setcandamage(1);
    self.e_device.state = 0;
    self.var_dfb87540 = [];
    foreach (p in getplayers()) {
        if (isdefined(p.var_d7e8ad6f) && p.var_d7e8ad6f == 1) {
            if (p !== player) {
                self thread function_2eae1b23(p);
            }
        }
    }
    self thread function_78a857df((0, 0, 0), 80, 30);
    self thread function_b48a9edd((0, 0, 0), 80, 30);
    self.e_device thread function_8832951f();
    self.objectiveid = gameobjects::get_next_obj_id();
    self thread function_94dd997d(self.objectiveid, self.e_device.origin, #"hash_38959d566b3eac6");
    /#
        self thread function_cf8dbb2();
    #/
    player takeweapon(level.var_9d295460);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0xad405ddd, Offset: 0x32d8
// Size: 0x184
function function_2eae1b23(player) {
    if (!isdefined(player.var_108457e7)) {
        player.var_108457e7 = [];
    }
    player.var_108457e7[level.var_9d295460.name] = 1;
    player giveweapon(level.var_9d295460);
    var_dfb87540 = player magicgrenadetype(level.var_9d295460, self.origin, anglestoforward(self.angles));
    if (!isdefined(self.var_dfb87540)) {
        self.var_dfb87540 = [];
    } else if (!isarray(self.var_dfb87540)) {
        self.var_dfb87540 = array(self.var_dfb87540);
    }
    self.var_dfb87540[self.var_dfb87540.size] = var_dfb87540;
    var_dfb87540 thread function_7ddae2fa(self);
    var_dfb87540 setmodel(#"tag_origin");
    var_dfb87540 thread function_8832951f();
    player takeweapon(level.var_9d295460);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 3, eflags: 0x4
// Checksum 0xb33866d6, Offset: 0x3468
// Size: 0x244
function private function_78a857df(offsets, trigger_length, trigger_height) {
    level endon(#"game_ended");
    level waittill(#"hash_2f26b8ad3c26a7cb");
    if (!isdefined(self) || !isdefined(self.e_device)) {
        return;
    }
    self.e_device clientfield::set("" + #"hash_7850e541b1606b4a", 1);
    self.e_device.trigger = spawn("trigger_radius_use", self.origin + offsets, 0, trigger_length, trigger_height);
    self.e_device.trigger triggerenable(1);
    self.e_device.trigger triggerignoreteam();
    self.e_device.trigger setignoreentfortrigger(self.e_device);
    self.e_device.trigger.var_422dd59a = self;
    self.e_device.trigger thread function_aa539a6d();
    self.e_device.trigger sethintstring(#"hash_3181b7331c52ff62");
    self.e_device.trigger enablelinkto();
    self.e_device.trigger linkto(self.e_device);
    self.e_device thread weaponobjects::watchusetrigger(self.e_device.trigger, &function_4d118352);
    self.e_device thread watchshutdown(self);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 3, eflags: 0x4
// Checksum 0xc36f0c59, Offset: 0x36b8
// Size: 0x224
function private function_b48a9edd(offsets, trigger_length, trigger_height) {
    level endon(#"game_ended");
    level waittill(#"hash_2f26b8ad3c26a7cb");
    if (isdefined(self) && isdefined(self.e_device)) {
        self.e_device.destroytrigger = spawn("trigger_radius_use", self.origin + offsets, 0, trigger_length, trigger_height);
        self.e_device.destroytrigger triggerenable(1);
        self.e_device.destroytrigger triggerignoreteam();
        self.e_device.destroytrigger setignoreentfortrigger(self.e_device);
        self.e_device.destroytrigger.var_422dd59a = self;
        self.e_device.destroytrigger thread function_a961266f(self.owner);
        self.e_device.destroytrigger sethintstring(#"hash_4e6ee75bff4f0f60");
        self.e_device.destroytrigger enablelinkto();
        self.e_device.destroytrigger linkto(self.e_device);
        self.e_device thread weaponobjects::watchusetrigger(self.e_device.destroytrigger, &function_ee5d41fb);
        self.e_device thread watchshutdown(self);
        self.e_device thread function_152526e9();
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0xf00287f8, Offset: 0x38e8
// Size: 0x25c
function private watchshutdown(var_422dd59a) {
    level endon(#"game_ended");
    self notify("21b2890179c0dec5");
    self endon("21b2890179c0dec5");
    self waittill(#"death", #"detonating");
    if (isdefined(self.trigger)) {
        self.trigger delete();
    }
    if (isdefined(self.destroytrigger)) {
        self.destroytrigger delete();
    }
    arrayremovevalue(level.var_f1f9d4a8, var_422dd59a);
    foreach (var_dfb87540 in var_422dd59a.var_dfb87540) {
        arrayremovevalue(var_422dd59a.var_dfb87540, var_dfb87540);
        if (isdefined(var_dfb87540)) {
            var_dfb87540 delete();
        }
    }
    var_422dd59a function_f3da38fe();
    if (var_422dd59a.e_device.state == 0) {
        level.var_50ee8e07++;
    }
    if (level.var_50ee8e07 >= level.var_149c4466) {
        /#
        #/
        level.var_50ee8e07 = level.var_149c4466;
        globallogic_audio::function_61e17de0("spyFieldMicsAllDestroyed", spy::function_7a7907d4());
    } else {
        globallogic_audio::function_61e17de0("spyFieldMicsOneDestroyed", spy::function_7a7907d4());
    }
    level thread function_4f53c9a2(5);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0x67efceaf, Offset: 0x3b50
// Size: 0x118
function private function_152526e9() {
    level endon(#"game_ended");
    self endon(#"death");
    self.destroytrigger endon(#"trigger");
    waitresult = self waittill(#"damage");
    if (isdefined(waitresult.attacker.var_d7e8ad6f) && waitresult.attacker.var_d7e8ad6f != 0 && waitresult.attacker.var_d7e8ad6f != 1) {
        if (!level.var_9aae8079) {
            scoreevents::processscoreevent(#"hash_43ada57ff4fe7173", waitresult.attacker);
            level.var_9aae8079 = 1;
            wait(0.5);
            level.var_9aae8079 = 0;
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0xb81e85a0, Offset: 0x3c70
// Size: 0xf8
function private function_a961266f(*owner) {
    self setinvisibletoall();
    level flag::wait_till("spy_role_assigned");
    foreach (player in getplayers()) {
        if (player.var_d7e8ad6f === 2 || player.var_d7e8ad6f === 3) {
            self setvisibletoplayer(player);
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0x8da77c24, Offset: 0x3d70
// Size: 0x5c
function private function_8832951f() {
    if (isdefined(self)) {
        self clientfield::set("isJammed", 1);
        self clientfield::set("" + #"hash_51901507983013f5", 1);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x4
// Checksum 0x3649caa8, Offset: 0x3dd8
// Size: 0x1ec
function private function_4d118352(attacker, *callback_data) {
    self endon(#"death");
    if (is_true(level.gameended)) {
        return;
    }
    if (self.state != 0) {
        return;
    }
    self notify(#"hash_666be90931a4b0e8");
    self.state = 1;
    if (isdefined(self)) {
        self clientfield::set("isJammed", 0);
    } else {
        /#
        #/
    }
    if (isdefined(self.trigger)) {
        self.trigger delete();
    }
    waitframe(1);
    level.var_50ee8e07++;
    globallogic_audio::function_61e17de0("spyFieldMicsOneActivated", level.players);
    if (level.var_50ee8e07 >= level.var_149c4466) {
        /#
        #/
        level.var_50ee8e07 = level.var_149c4466;
    }
    level thread function_4f53c9a2(6);
    self function_f3da38fe();
    if (isdefined(callback_data) && isdefined(callback_data.var_d7e8ad6f) && callback_data.var_d7e8ad6f == 1) {
        scoreevents::processscoreevent(#"hash_76317d58cb5c932b", callback_data);
    }
    if (isdefined(self)) {
        self clientfield::set("" + #"hash_51901507983013f5", 0);
        return;
    }
    /#
    #/
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x4
// Checksum 0x823baaed, Offset: 0x3fd0
// Size: 0xa8
function private function_ee5d41fb(attacker, *callback_data) {
    weaponobjects::proximitydetonate(callback_data);
    self thread battlechatter::function_d2600afc(callback_data, self.owner, self.weapon);
    if (!level.var_9aae8079) {
        scoreevents::processscoreevent(#"hash_43ada57ff4fe7173", callback_data);
        level.var_9aae8079 = 1;
        wait(0.5);
        level.var_9aae8079 = 0;
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0x7fc2c270, Offset: 0x4080
// Size: 0xd8
function private function_aa539a6d() {
    self setinvisibletoall();
    level flag::wait_till("spy_role_assigned");
    foreach (player in getplayers()) {
        if (player.var_d7e8ad6f === 1) {
            self setvisibletoplayer(player);
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0x76724bc, Offset: 0x4160
// Size: 0xb4
function function_7ddae2fa(var_422dd59a) {
    level endon(#"game_ended");
    self endon(#"death");
    var_422dd59a endon(#"death");
    var_422dd59a.e_device waittill(#"hash_666be90931a4b0e8");
    if (isdefined(self)) {
        self clientfield::set("isJammed", 0);
        self clientfield::set("" + #"hash_51901507983013f5", 0);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x4a7f8390, Offset: 0x4220
// Size: 0x14
function function_e1bdbf18() {
    function_be0f9cd1();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x6208854e, Offset: 0x4240
// Size: 0xe4
function function_be0f9cd1() {
    level.var_3a104443 = struct::get_array("dirty_bomb", "targetname");
    level.var_4df4ae35 = getentarray("dirty_bomb_clip", "targetname");
    if (level.var_3a104443.size == 0) {
        return;
    }
    assert(level.var_3a104443.size <= 5);
    function_a26b337e();
    if (level.var_346345d6.size == 0) {
        return;
    }
    function_87b2107c(level.var_346345d6);
    function_10a5e8b5();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x166868, Offset: 0x4330
// Size: 0xe4
function function_a26b337e() {
    level.var_3a104443 = array::randomize(level.var_3a104443);
    foreach (dirtybomb in level.var_3a104443) {
        if (!isdefined(level.var_346345d6[dirtybomb.script_noteworthy])) {
            level.var_346345d6[dirtybomb.script_noteworthy] = dirtybomb;
        }
        if (level.var_346345d6.size >= level.var_24ab7fb2) {
            break;
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0xad129869, Offset: 0x4420
// Size: 0x12a
function function_87b2107c(&structs) {
    var_e8a4ae59 = 64;
    var_a3c01952 = 1024;
    foreach (struct in structs) {
        startorigin = struct.origin + (0, 0, var_e8a4ae59);
        endorigin = startorigin - (0, 0, var_a3c01952);
        trace = physicstraceex(startorigin, endorigin, (-0.5, -0.5, -0.5), (0.5, 0.5, 0.5), undefined, 1);
        struct.origin = trace[#"position"];
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x719df734, Offset: 0x4558
// Size: 0x118
function function_10a5e8b5() {
    level flag::wait_till("spy_player_spawned");
    index = 0;
    level.var_24ab7fb2 = level.var_346345d6.size;
    foreach (bomb in level.var_346345d6) {
        if (!isdefined(bomb.state)) {
            bomb thread function_f37d284();
            bomb function_99c4c4e5();
            index++;
            /#
                bomb thread function_621faf6f();
            #/
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0x8e8da2ab, Offset: 0x4678
// Size: 0x264
function private function_f37d284() {
    level endon(#"game_ended");
    self.model = util::spawn_model(#"hash_367f8d58e71dd1d8", self.origin, self.angles);
    self.model function_619a5c20();
    self.bombindex = int(self.script_noteworthy) - 1;
    self.objective_id = gameobjects::get_next_obj_id();
    objective = undefined;
    switch (self.bombindex) {
    case 0:
        objective = #"hash_4858b34dd7dae1f7";
        break;
    case 1:
        objective = #"hash_4858b44dd7dae3aa";
        break;
    case 2:
        objective = #"hash_4858b54dd7dae55d";
        break;
    }
    level waittill(#"hash_2f26b8ad3c26a7cb");
    if (isdefined(objective)) {
        objective_add(self.objective_id, "active", self.model.origin + (0, 0, 50), objective);
        if (!isdefined(level.var_a08e14c4)) {
            level.var_a08e14c4 = [];
        } else if (!isarray(level.var_a08e14c4)) {
            level.var_a08e14c4 = array(level.var_a08e14c4);
        }
        if (!isinarray(level.var_a08e14c4, self.objective_id)) {
            level.var_a08e14c4[level.var_a08e14c4.size] = self.objective_id;
        }
        objective_setgamemodeflags(self.objective_id, 1);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x9326f257, Offset: 0x48e8
// Size: 0x3c
function function_99c4c4e5() {
    self.state = 4;
    self thread function_6a9ca122();
    self thread function_f135f23a();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0xcd408bb4, Offset: 0x4930
// Size: 0x30c
function private function_6a9ca122() {
    level endon(#"game_ended");
    level waittill(#"hash_2f26b8ad3c26a7cb");
    self.trigger = spawn("trigger_radius_use", self.origin + (0, 0, 40), 0, 120, 50, 1);
    self.trigger triggerignoreteam();
    self.trigger setcursorhint("HINT_NOICON");
    self.trigger triggerenable(1);
    self.trigger usetriggerignoreuseholdtime();
    self.trigger sethintstring("MENU/PROMPT_DIRTY_BOMB_DETONATE");
    self.trigger callback::on_trigger(&function_2f5dd98c);
    self.trigger.bomb = self;
    self.trigger.using = 0;
    self.trigger setinvisibletoall();
    self.trigger thread function_c8ba2f6b(spy::function_3919b452(1));
    self.trigger thread function_f9f4b255();
    self.var_af39ce0d = spawn("trigger_radius_use", self.origin + (0, 0, 40), 0, 120, 50, 1);
    self.var_af39ce0d triggerignoreteam();
    self.var_af39ce0d setcursorhint("HINT_NOICON");
    self.var_af39ce0d triggerenable(1);
    self.var_af39ce0d sethintstring(#"hash_62febf24d633ff3c");
    self.var_af39ce0d.bomb = self;
    self.var_af39ce0d.using = 0;
    self.var_af39ce0d setinvisibletoall();
    self.var_af39ce0d thread function_c8ba2f6b(arraycombine(spy::function_3919b452(2), spy::function_3919b452(3)));
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0xc8f2b583, Offset: 0x4c48
// Size: 0x16a
function function_c8ba2f6b(players) {
    level endon(#"game_ended");
    self endon(#"death");
    while (isdefined(self)) {
        foreach (player in players) {
            if (!isdefined(player) || !isalive(player) || !player istouching(self)) {
                continue;
            }
            if (function_ad9de896(player, self.bomb) && !is_true(self.using)) {
                self setvisibletoplayer(player);
                continue;
            }
            self setinvisibletoplayer(player);
        }
        waitframe(1);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0x5f3801b, Offset: 0x4dc0
// Size: 0x17c
function private function_f135f23a() {
    level endon(#"game_ended");
    level waittill(#"hash_2f26b8ad3c26a7cb");
    self.var_1afb163d = spawn("trigger_radius_use", self.origin + (0, 0, 45), 0, 120, 90, 1);
    self.var_1afb163d triggerignoreteam();
    self.var_1afb163d setcursorhint("HINT_NOICON");
    self.var_1afb163d triggerenable(1);
    self.var_1afb163d usetriggerignoreuseholdtime();
    self.var_1afb163d sethintstring(#"hash_325ad2dab1be0d4a");
    self.var_1afb163d.bomb = self;
    self.var_1afb163d.using = 0;
    self.var_1afb163d thread function_c8ba2f6b(spy::function_7a7907d4());
    self.var_1afb163d triggerenable(0);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0x211d3bf2, Offset: 0x4f48
// Size: 0x84
function private function_21507e81() {
    self endon(#"death");
    level endon(#"game_ended");
    wait(level.var_18a272f7);
    self triggerenable(1);
    self thread function_d037bcfd();
    self callback::on_trigger(&function_a47d0e8b);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0x9fe689f6, Offset: 0x4fd8
// Size: 0xb4
function private function_a47d0e8b(triggerstruct) {
    if (is_true(level.gameended)) {
        return;
    }
    activator = triggerstruct.activator;
    if (is_true(activator.var_9dc65a85)) {
        return;
    }
    bomb = self.bomb;
    if (bomb.state != 5) {
        return;
    }
    if (isdefined(bomb.var_1afb163d.activator)) {
        return;
    }
    activator function_40a557c3(bomb);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0x5c295435, Offset: 0x5098
// Size: 0x86
function private function_40a557c3(bomb) {
    self endon(#"disconnect");
    bomb.var_1afb163d.using = 1;
    self.var_bd76c721 = 1;
    self function_971a68c();
    bomb thread function_704fdca0(5, self);
    bomb.var_1afb163d.activator = self;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0x142b0dd8, Offset: 0x5128
// Size: 0xb4
function private function_2f5dd98c(triggerstruct) {
    if (is_true(level.gameended)) {
        return;
    }
    activator = triggerstruct.activator;
    if (is_true(activator.var_9dc65a85)) {
        return;
    }
    bomb = self.bomb;
    if (bomb.state != 4) {
        return;
    }
    if (isdefined(bomb.trigger.activator)) {
        return;
    }
    activator function_84cb44bc(bomb);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0x32b698ed, Offset: 0x51e8
// Size: 0x86
function private function_84cb44bc(bomb) {
    self endon(#"disconnect");
    bomb.trigger.using = 1;
    self.var_1eaa0d81 = 1;
    self function_971a68c();
    bomb thread function_704fdca0(4, self);
    bomb.trigger.activator = self;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xd0512e30, Offset: 0x5278
// Size: 0x13c
function function_971a68c() {
    if (self isswitchingweapons()) {
        return;
    }
    useweapon = level.var_696298a2;
    if (is_true(useweapon.var_d2751f9d)) {
        self val::set(#"gameobject_use", "disable_gestures");
    }
    if (!self hasweapon(useweapon)) {
        self giveweapon(useweapon);
    }
    self setweaponammostock(useweapon, 0);
    self setweaponammoclip(useweapon, 0);
    self switchtoweapon(useweapon);
    self disableweaponcycling();
    self disableoffhandweapons();
    self disableweaponswitchhero();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x0
// Checksum 0xdbb815f4, Offset: 0x53c0
// Size: 0x14c
function function_704fdca0(state, player) {
    self endon(#"disconnect");
    if (state == 4) {
        self.trigger.using = 1;
        player flag::set("dirtybomb_detonatingSpyMode");
        player function_3bf6db8b(self.trigger, #"hash_288548f3fca8b603");
    }
    if (state == 5) {
        self.var_1afb163d.using = 1;
        player flag::set("dirtybomb_stopCountDown");
        player function_3bf6db8b(self.var_1afb163d, #"hash_1a2812055c330ee0");
    }
    player.var_9dc65a85 = 1;
    player clientfield::set_to_player("using_bomb", 1);
    if (isdefined(self.objectiveid)) {
        objective_setplayerusing(self.objectiveid, player);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0x2dc007c1, Offset: 0x5518
// Size: 0x2fc
function private function_f9f4b255() {
    level endon(#"game_ended");
    self notify("a3579db736475a");
    self endon("a3579db736475a");
    self endon(#"death");
    prevtime = gettime();
    var_e18791f4 = int(level.var_b06a1891 * 1000);
    totalprogress = 0;
    var_b1c451bf = int(level.var_f4a1440c / 0.05 * 1000);
    bomb = self.bomb;
    while (isdefined(bomb) && bomb.state == 4) {
        if (isdefined(self.activator)) {
            var_39c4d694 = !self.activator function_cc8c84b8(bomb);
            if (var_39c4d694) {
                bomb thread function_ea25bba7(self.activator);
                self.activator function_5b2918e4();
            }
            currtime = gettime();
            deltatime = currtime - prevtime;
            progress = deltatime;
            progress = min(progress, var_b1c451bf);
            totalprogress += progress;
            /#
            #/
            if (totalprogress >= var_e18791f4) {
                bomb thread function_5c0f763b(self.activator);
                self.activator = undefined;
                break;
            }
            if (totalprogress > 0) {
                self.activator function_9db99d2f(totalprogress / var_e18791f4);
                self.activator.var_55d4f9a8 = totalprogress / var_e18791f4;
            }
            if (var_39c4d694) {
                self.activator.var_55d4f9a8 = 0;
                self.activator = undefined;
            }
        } else {
            wait(0.5);
            if (isdefined(self.activator)) {
                totalprogress = 0;
            }
        }
        if (!isdefined(self.activator)) {
            bomb.model stoploopsound(0.25);
        }
        prevtime = gettime();
        wait(0.05);
    }
    if (isdefined(bomb) && isdefined(bomb.model)) {
        bomb.model stoploopsound(0.25);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0x6a0c49e3, Offset: 0x5820
// Size: 0x134
function function_ea25bba7(player) {
    level endon(#"game_ended");
    self notify("2549a6f830841683");
    self endon("2549a6f830841683");
    if (!isplayer(player)) {
        return;
    }
    player function_80d6d39b();
    wait(1);
    if (!isdefined(self) || !isdefined(player)) {
        return;
    }
    if (self.state == 4 && isdefined(self.trigger)) {
        self.trigger.using = 0;
    }
    if (self.state == 5 && isdefined(self.var_1afb163d)) {
        self.var_1afb163d.using = 0;
    }
    player.var_9dc65a85 = 0;
    player function_5b2918e4();
    if (isdefined(self.objectiveid)) {
        objective_clearplayerusing(self.objectiveid, player);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0x57870d6c, Offset: 0x5960
// Size: 0x46
function private function_5b2918e4() {
    if (!isplayer(self)) {
        return;
    }
    if (isalive(self)) {
        self.var_1eaa0d81 = undefined;
        self.var_bd76c721 = undefined;
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0xe3a4eb0f, Offset: 0x59b0
// Size: 0x1e4
function function_5c0f763b(player) {
    if (!isdefined(player)) {
        return;
    }
    if (player.var_d7e8ad6f == 1) {
        scoreevents::processscoreevent(#"hash_71a6ffb15c50cf1c", player);
    }
    self notify(#"hash_51134d620e14f47b");
    self.var_1afb163d thread function_21507e81();
    player function_80d6d39b();
    player.var_9dc65a85 = 0;
    player function_5b2918e4();
    player namespace_4d9a1379::function_53a81144(level.var_7e569431.var_133ba5a7);
    objective_delete(self.objective_id);
    objective = undefined;
    switch (self.bombindex) {
    case 0:
        objective = #"hash_48d7c5b1dd60db7a";
        break;
    case 1:
        objective = #"hash_48d7c4b1dd60d9c7";
        break;
    case 2:
        objective = #"hash_48d7c3b1dd60d814";
        break;
    }
    objective_add(self.objective_id, "active", self.model.origin + (0, 0, 50), objective);
    self function_1283ff24(player);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0xe2715e82, Offset: 0x5ba0
// Size: 0x3b4
function function_a92717bf(player) {
    level endon(#"game_ended");
    self.trigger endon(#"death");
    if (!isdefined(player)) {
        return;
    }
    if (player.var_d7e8ad6f != 1) {
        scoreevents::processscoreevent(#"hash_b03b4a2681a3c95", player);
    }
    self notify(#"hash_319733437ca98824");
    level thread function_2398866a(7, self.bombindex);
    game.telemetry.var_f464ee1d++;
    thread globallogic_audio::function_61e17de0("spyDirtyBombStoppedDoubleAgent", spy::function_3919b452(1));
    otherplayers = array::exclude(spy::function_7a7907d4(), spy::function_3919b452(1));
    thread globallogic_audio::function_61e17de0("spyDirtyBombStopped", otherplayers);
    self.model clientfield::set("ftdb_zoneCircle", 0);
    player function_80d6d39b();
    self.var_1afb163d triggerenable(0);
    self.var_1afb163d.using = 0;
    self.model stoploopsound(0.5);
    player.var_9dc65a85 = 0;
    player function_5b2918e4();
    self.state = 4;
    objective_delete(self.objective_id);
    objective = undefined;
    switch (self.bombindex) {
    case 0:
        objective = #"hash_4858b34dd7dae1f7";
        break;
    case 1:
        objective = #"hash_4858b44dd7dae3aa";
        break;
    case 2:
        objective = #"hash_4858b54dd7dae55d";
        break;
    }
    objective_add(self.objective_id, "active", self.model.origin + (0, 0, 50), objective);
    objective_setprogress(self.objective_id, 0);
    objective_setgamemodeflags(self.objective_id, 1);
    wait(level.var_f134c2d9);
    self.trigger triggerenable(1);
    self.trigger.using = 0;
    self.var_af39ce0d triggerenable(1);
    self.var_af39ce0d.using = 0;
    self.trigger thread function_f9f4b255();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0x8a4d8f6b, Offset: 0x5f60
// Size: 0x134
function function_1283ff24(player) {
    self.state = 5;
    self.trigger triggerenable(0);
    self.var_af39ce0d triggerenable(0);
    if (isdefined(self.model)) {
        self.model namespace_b77e8eb1::function_1cb7e339();
    }
    self thread bombcountdown(player);
    objective_setgamemodeflags(self.objective_id, 2);
    self thread function_82ceca6f();
    level clientfield::set("bomb_id", self.bombindex);
    util::wait_network_frame();
    level thread function_2398866a(5, self.bombindex);
    level thread function_4f53c9a2(8);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0xade860a4, Offset: 0x60a0
// Size: 0x35c
function bombcountdown(player) {
    self notify("832a41ab9455e4");
    self endon("832a41ab9455e4");
    level endon(#"game_ended");
    self endon(#"hash_319733437ca98824");
    team = undefined;
    thread globallogic_audio::function_61e17de0("spyDirtyBombArmed", spy::function_3919b452(1));
    if (level.var_46f2c796 != 0) {
        setbombtimer(level.var_1561d604[self.bombindex], gettime() + int((level.var_18a272f7 + level.var_46f2c796) * 1000));
        setmatchflag(level.var_380ab324[self.bombindex], 1);
        wait(level.var_18a272f7);
        countdown = level.var_46f2c796;
        soundfade = 2;
        self.model playloopsound(#"hash_78cdfb1438b360bf", soundfade);
        var_5384fdb3 = int(level.var_46f2c796 / 3) * 2;
        soundfade /= 2;
        while (countdown > 0) {
            level thread function_2398866a(0);
            wait(1);
            countdown--;
            if (countdown == var_5384fdb3) {
                var_5384fdb3 -= int(level.var_46f2c796 / 3);
                self.model playloopsound(#"hash_78cdfb1438b360bf", soundfade);
                soundfade /= 2;
            }
            if (countdown == level.var_df0e3396) {
                level thread function_2398866a(8, self.bombindex, countdown);
            }
        }
        setbombtimer(level.var_1561d604[self.bombindex], 0);
        setmatchflag(level.var_380ab324[self.bombindex], 0);
        level thread function_2398866a(8, self.bombindex, 0);
        waitframe(1);
        level thread function_2398866a(0);
        if (isdefined(self.model)) {
            self.model stoploopsound(0.5);
        }
    }
    self function_91c39737(player, team);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x32b2855d, Offset: 0x6408
// Size: 0x170
function function_82ceca6f() {
    self notify("23eb71ee1071d028");
    self endon("23eb71ee1071d028");
    level endon(#"game_ended");
    self endon(#"hash_319733437ca98824");
    self endon(#"bomb_detonated");
    bomb = self;
    var_1aec1906 = int((level.var_46f2c796 + level.var_18a272f7) * 1000);
    prevtime = gettime();
    var_476aa480 = 0;
    objective_setprogress(bomb.objective_id, 0);
    while (isdefined(bomb) && bomb.state == 5) {
        if (game.state != #"playing") {
            return;
        }
        currtime = gettime();
        deltatime = currtime - prevtime;
        var_476aa480 += deltatime;
        objective_setprogress(bomb.objective_id, var_476aa480 / var_1aec1906);
        prevtime = gettime();
        wait(0.05);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 4, eflags: 0x0
// Checksum 0xa32c1068, Offset: 0x6580
// Size: 0x86
function function_93098bd9(dialogkey, team, origin, radius) {
    if (!isdefined(dialogkey)) {
        assert(0);
        return;
    }
    if (!isdefined(team)) {
        assert(0);
        return;
    }
    players = getplayers(team, origin, radius);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x0
// Checksum 0x6a1c14b1, Offset: 0x6610
// Size: 0x5e4
function function_91c39737(player, *team) {
    origin = self.origin;
    damage = level.var_60e3f99c;
    if (isdefined(self.var_1afb163d.activator)) {
        self.var_1afb163d.activator function_80d6d39b();
    }
    if (isdefined(self.var_1afb163d)) {
        self.var_1afb163d delete();
    }
    if (isdefined(self.trigger)) {
        self.trigger delete();
    }
    if (isdefined(self.var_af39ce0d)) {
        self.var_af39ce0d delete();
    }
    playsoundatposition("exp_dirty_bomb_explo", origin + (0, 0, 60));
    objective_setgamemodeflags(self.objective_id, 3);
    if (team.var_d7e8ad6f === 1) {
        scoreevents::processscoreevent(#"hash_5686e3b1c43a8c5d", team);
        team.pers[#"hash_dcca75fef649c79"] = isdefined(team.pers[#"hash_dcca75fef649c79"]) ? team.pers[#"hash_dcca75fef649c79"] + 1 : 1;
    }
    level.var_bdad494e++;
    if (level.var_bdad494e < level.var_24ab7fb2) {
        thread globallogic_audio::function_61e17de0("spyDirtyBombDetonatedDoubleAgent", spy::function_3919b452(1));
        otherplayers = array::exclude(spy::function_7a7907d4(), spy::function_3919b452(1));
        thread globallogic_audio::function_61e17de0("spyDirtyBombDetonated", otherplayers);
    }
    entities = getdamageableentarray(origin, level.var_60693fca, 1);
    foreach (entity in entities) {
        if (!isalive(entity)) {
            continue;
        }
        if (isplayer(entity)) {
            if (isdefined(team.team) && isdefined(entity.team) && entity.team == team.team) {
                entity dodamage(damage, origin, entity, self.model, undefined, "MOD_EXPLOSIVE");
                continue;
            }
        }
        entity.killcamkilledbyent = self.model.killcament;
        entity.killcament = self.model.killcament;
        entity dodamage(damage, origin, team, self.model, undefined, "MOD_EXPLOSIVE");
    }
    fwd = (0, 0, 1);
    right = (0, -1, 0);
    playfx("wz/fx9_dirtybomb_exp", origin, fwd, right);
    if (isentity(self.model)) {
        self.model delete();
    }
    level clientfield::set("bomb_id", self.bombindex);
    util::wait_network_frame();
    level thread function_2398866a(6, self.bombindex);
    level thread function_4f53c9a2(9);
    game.telemetry.var_aa6fccd3++;
    foreach (bomb in level.var_346345d6) {
        if (bomb == self) {
            arrayremovevalue(level.var_346345d6, self);
            break;
        }
    }
    self.state = 0;
    self namespace_b77e8eb1::function_a5caaee0();
    self function_dbe8450f();
    self notify(#"bomb_detonated");
    spy::function_6a1d53f3();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0x604181d3, Offset: 0x6c00
// Size: 0x270
function private function_d037bcfd() {
    level endon(#"game_ended");
    self notify("d4c29be5de246b3");
    self endon("d4c29be5de246b3");
    self endon(#"death");
    prevtime = gettime();
    var_e18791f4 = int(level.var_7be27374 * 1000);
    totalprogress = 0;
    var_60c5cea2 = undefined;
    bomb = self.bomb;
    while (isdefined(bomb) && bomb.state == 5) {
        if (isdefined(self.activator)) {
            if (isdefined(var_60c5cea2) && var_60c5cea2 != self.activator) {
                totalprogress = 0;
            }
            var_60c5cea2 = self.activator;
            var_39c4d694 = !self.activator function_cc8c84b8(bomb);
            if (var_39c4d694) {
                bomb thread function_ea25bba7(self.activator);
                self.activator function_5b2918e4();
            }
            currtime = gettime();
            deltatime = currtime - prevtime;
            progress = deltatime;
            totalprogress += progress;
            /#
            #/
            if (totalprogress >= var_e18791f4) {
                bomb thread function_a92717bf(self.activator);
                self.activator = undefined;
                break;
            }
            if (totalprogress > 0) {
                self.activator function_9db99d2f(totalprogress / var_e18791f4);
                self.activator.var_55d4f9a8 = totalprogress / var_e18791f4;
            }
            if (var_39c4d694) {
                self.activator = undefined;
            }
        } else {
            wait(0.5);
            if (isdefined(self.activator)) {
                totalprogress = 0;
            }
            var_60c5cea2 = self.activator;
        }
        prevtime = gettime();
        wait(0.05);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0x4618a1d6, Offset: 0x6e78
// Size: 0x1a0
function function_cc8c84b8(bomb) {
    if (game.state != #"playing") {
        return false;
    }
    if (bomb.state == 4) {
        if (!isalive(self)) {
            return false;
        }
        if (!self usebuttonpressed()) {
            return false;
        }
        if (!isdefined(bomb.trigger)) {
            return false;
        }
        if (!bomb.trigger istriggerenabled()) {
            return false;
        }
        if (!self istouching(bomb.trigger)) {
            return false;
        }
    }
    if (bomb.state == 5) {
        if (!isalive(self)) {
            return false;
        }
        if (!self usebuttonpressed()) {
            return false;
        }
        if (!isdefined(bomb.var_1afb163d)) {
            return false;
        }
        if (!bomb.var_1afb163d istriggerenabled()) {
            return false;
        }
        if (!self istouching(bomb.var_1afb163d)) {
            return false;
        }
    }
    if (self isinexecutionattack() || self isinexecutionvictim()) {
        return false;
    }
    return true;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x0
// Checksum 0x188f063f, Offset: 0x7020
// Size: 0xe2
function function_ad9de896(player, bomb) {
    if (!isplayer(player)) {
        assert(0);
        return 0;
    }
    if (!isdefined(bomb)) {
        assert(0);
        return 0;
    }
    if (!isdefined(bomb.model)) {
        return 0;
    }
    return is_true(bomb.model sightconetrace(player geteye(), player, anglestoforward(player.angles)));
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0x4573e282, Offset: 0x7110
// Size: 0x108
function private function_14572a9e(var_bed240f1) {
    self setinvisibletoall();
    level flag::wait_till("spy_role_assigned");
    foreach (player in getplayers()) {
        if (player.var_d7e8ad6f === 1) {
            if (var_bed240f1) {
                self setvisibletoplayer(player);
            }
            continue;
        }
        if (!var_bed240f1) {
            self setvisibletoplayer(player);
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x4
// Checksum 0x4630a844, Offset: 0x7220
// Size: 0x94
function private function_3bf6db8b(*bombtrigger, state) {
    if (!level.dirtybombusebar dirtybomb_usebar::is_open(self)) {
        level.dirtybombusebar dirtybomb_usebar::open(self, 4);
    }
    level.dirtybombusebar dirtybomb_usebar::set_state(self, state);
    level.dirtybombusebar dirtybomb_usebar::function_f0df5702(self, 0);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x111a6db4, Offset: 0x72c0
// Size: 0x184
function function_80d6d39b() {
    if (!isplayer(self)) {
        return;
    }
    self clientfield::set_to_player("using_bomb", 0);
    self.var_55d4f9a8 = 0;
    if (level.dirtybombusebar dirtybomb_usebar::is_open(self)) {
        level.dirtybombusebar dirtybomb_usebar::close(self);
    }
    self flag::clear("dirtybomb_detonatingSpyMode");
    self flag::clear("dirtybomb_stopCountDown");
    if (is_true(self.var_9dc65a85)) {
        self.var_9dc65a85 = 0;
    }
    self enableweaponcycling();
    self enableoffhandweapons();
    self enableweaponswitchhero();
    self thread take_use_weapon(level.var_696298a2);
    if (self getcurrentweapon() === level.var_696298a2) {
        self killstreaks::switch_to_last_non_killstreak_weapon();
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0x678a8b7a, Offset: 0x7450
// Size: 0xdc
function take_use_weapon(useweapon) {
    self endon(#"use_hold", #"death", #"disconnect");
    level endon(#"game_ended");
    while (self getcurrentweapon() == useweapon && !self.throwinggrenade) {
        waitframe(1);
    }
    if (is_true(useweapon.var_d2751f9d)) {
        self val::reset(#"gameobject_use", "disable_gestures");
    }
    self takeweapon(useweapon);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0x9487777e, Offset: 0x7538
// Size: 0x4c
function private function_9db99d2f(frac) {
    if (level.dirtybombusebar dirtybomb_usebar::is_open(self)) {
        level.dirtybombusebar dirtybomb_usebar::function_f0df5702(self, frac);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0xf186b9fe, Offset: 0x7590
// Size: 0xfc
function private function_dbe8450f() {
    bomb = self;
    if (isdefined(bomb.objective_id)) {
        foreach (var_55de2fcb in level.var_4df4ae35) {
            if (isdefined(var_55de2fcb)) {
                if (var_55de2fcb.script_noteworthy == bomb.script_noteworthy) {
                    var_55de2fcb delete();
                }
            }
        }
        objective_delete(bomb.objective_id);
        gameobjects::release_obj_id(bomb.objective_id);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x1cb1e6ff, Offset: 0x7698
// Size: 0x90
function function_54ad2da0() {
    foreach (bomb in level.var_346345d6) {
        if (isdefined(bomb)) {
            function_dbe8450f();
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x8790b1fa, Offset: 0x7730
// Size: 0x14
function function_dd83b835() {
    namespace_681edb36::function_dd83b835();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x23b5864f, Offset: 0x7750
// Size: 0x14
function function_866cb710() {
    function_4d0b64c3();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xe560e0fe, Offset: 0x7770
// Size: 0x7a
function function_4d0b64c3() {
    level.var_4bb6bc83 = struct::get_array("spy_plane", "targetname");
    if (level.var_4bb6bc83.size == 0) {
        return;
    }
    function_152264b8();
    function_fde3532a();
    if (level.var_7fc395cf.size == 0) {
        return;
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xa1ca3587, Offset: 0x77f8
// Size: 0x84
function function_152264b8() {
    level.var_7fc395cf = array::randomize(level.var_4bb6bc83);
    for (i = level.var_7fc395cf.size; i > level.var_619e1acb; i--) {
        level.var_7fc395cf = array::remove_index(level.var_7fc395cf, i - 1);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x11175a7f, Offset: 0x7888
// Size: 0x190
function function_fde3532a() {
    level flag::wait_till("spy_role_assigned");
    foreach (var_22a29e8a in level.var_7fc395cf) {
        point = function_4ba8fde(level.var_1a4fbac2);
        var_22a29e8a.var_46cb1dbc = item_drop::drop_item(0, point.itementry.weapon, 1, 0, point.id, var_22a29e8a.origin, undefined, 1);
        var_22a29e8a.var_46cb1dbc.var_22a29e8a = var_22a29e8a;
        var_22a29e8a.objectiveid = gameobjects::get_next_obj_id();
        var_22a29e8a thread function_94dd997d(var_22a29e8a.objectiveid, var_22a29e8a.var_46cb1dbc.origin, #"hash_71f9e2ce6583bd40");
        var_22a29e8a.state = 0;
        /#
            var_22a29e8a thread function_7542188d();
        #/
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0x96a8d541, Offset: 0x7a20
// Size: 0x17c
function function_29b3a0db(s_params) {
    if (isplayer(self) && s_params.item.itementry.name === level.var_1a4fbac2) {
        var_742e7b3d = getweapon("uav");
        currentweapon = self getcurrentweapon();
        if (currentweapon != var_742e7b3d) {
            self giveweapon(var_742e7b3d);
            self setweaponammostock(var_742e7b3d, 1);
            self switchtoweapon(var_742e7b3d);
        }
        var_22a29e8a = s_params.item.var_22a29e8a;
        arrayremovevalue(level.var_7fc395cf, var_22a29e8a);
        var_22a29e8a function_f3da38fe();
        var_22a29e8a.state = 1;
        level thread function_b432a6dd();
        scoreevents::processscoreevent(#"hash_54b8a8460c0e6ba0", self);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x624337f4, Offset: 0x7ba8
// Size: 0x1a0
function function_b432a6dd() {
    level endon(#"game_ended");
    wait(level.var_1c099f6);
    while (true) {
        a_players = array::randomize(function_a1ef346b());
        if (a_players.size) {
            foreach (player in a_players) {
                foreach (var_6978104c in level.var_4bb6bc83) {
                    var_c6fecd88 = var_6978104c has_line_of_sight(player);
                    if (!var_c6fecd88) {
                        function_152264b8();
                        function_fde3532a();
                        return;
                    }
                }
            }
        }
        wait(1);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x8234010e, Offset: 0x7d50
// Size: 0xf8
function function_fe88238c() {
    level endon(#"game_ended");
    wait(float(30000) / 1000);
    allplayers = function_a1ef346b();
    foreach (player in allplayers) {
        if (isdefined(player.team)) {
            setteamspyplane(player.team, 0);
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0xd2a0965a, Offset: 0x7e50
// Size: 0x5a
function has_line_of_sight(player) {
    eye = player util::get_eye();
    trace = sighttracepassed(self.origin, eye, 0, undefined);
    return trace;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xca8695f6, Offset: 0x7eb8
// Size: 0x6c
function spy_air_drop() {
    level endon(#"game_ended");
    level flag::wait_till("spy_role_assigned");
    /#
        level thread function_2dad9f7b();
    #/
    wait(60);
    level thread function_70b57ee6();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x2f64c098, Offset: 0x7f30
// Size: 0x4e4
function function_70b57ee6() {
    var_17bf7640 = struct::get_array("supply_portal", "targetname");
    assert(isdefined(var_17bf7640));
    s_portal = array::random(var_17bf7640);
    trace = groundtrace(s_portal.origin, s_portal.origin + (0, 0, -20000), 0, self, 0);
    if (!isdefined(trace[#"position"]) || trace[#"surfacetype"] == "none") {
        return;
    }
    drop_origin = trace[#"position"];
    heli_drop_goal = (drop_origin[0], drop_origin[1], drop_origin[2] + 800);
    rear_hatch_offset_local = getdvarint(#"scr_supplydropoffset", 0);
    goalpath = supplydrop::supplydrophelistartpath_v2_setup(heli_drop_goal, (rear_hatch_offset_local, 0, 0), 0);
    var_9ce63abb = util::get_map_name();
    switch (var_9ce63abb) {
    case #"mp_apocalypse":
        goalpath.start = (16384, 0, -2560);
        break;
    case #"mp_raid_rm":
        goalpath.start = (-7639, 20761, -483);
        break;
    }
    goal_world_offset = heli_drop_goal - goalpath.start;
    supplydrop::supplydrophelistartpath_v2_part2(heli_drop_goal, goalpath, goal_world_offset);
    startpoint = goalpath.start;
    endpoint = goalpath.path[0];
    var_57e06aea = item_supply_drop::function_47ec98c4(startpoint, endpoint, heli_drop_goal, 0, undefined, undefined, undefined, #"hash_579c1ac14abd2355");
    var_7b3f193d = level.supplydrop;
    var_b29eedbb = level.supplydropveh;
    var_b29eedbb clientfield::set("" + #"hash_508b8b3b9ba62e53", 1);
    level thread function_2398866a(13);
    level thread function_4f53c9a2(1);
    stashes = getentarray(var_7b3f193d.targetname, "targetname");
    if (isdefined(stashes) && stashes.size > 0) {
        stashes = arraysortclosest(stashes, var_7b3f193d.origin, 1, 0, 16);
        if (stashes.size <= 0) {
            return;
        }
        stash = stashes[0];
    }
    var_7b3f193d.objectiveid = gameobjects::get_next_obj_id();
    objective_add(var_7b3f193d.objectiveid, "active", var_7b3f193d, #"hash_840cc34cfa7f52b");
    if (!isdefined(level.var_a08e14c4)) {
        level.var_a08e14c4 = [];
    } else if (!isarray(level.var_a08e14c4)) {
        level.var_a08e14c4 = array(level.var_a08e14c4);
    }
    if (!isinarray(level.var_a08e14c4, var_7b3f193d.objectiveid)) {
        level.var_a08e14c4[level.var_a08e14c4.size] = var_7b3f193d.objectiveid;
    }
    var_7b3f193d thread function_c72e273f(stash);
    /#
        level thread function_2dad9f7b();
    #/
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0xf5ac24d1, Offset: 0x8420
// Size: 0x9a
function function_c72e273f(stash) {
    self endon(#"death");
    level endon(#"game_ended");
    self waittill(#"stationary");
    waitframe(1);
    while (true) {
        if (stash clientfield::get("supply_drop_fx") == 0) {
            self function_f3da38fe();
            break;
        }
        waitframe(1);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xecd9c6ff, Offset: 0x84c8
// Size: 0x8c
function function_391ca293() {
    level endon(#"game_ended");
    level waittill(#"hash_2f26b8ad3c26a7cb");
    function_1dc93253(0);
    level.var_ffca3315 = 0;
    wait(10);
    function_d5bf6df9();
    level thread function_cd002276();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xa3db283b, Offset: 0x8560
// Size: 0x8c
function function_d5bf6df9() {
    level.var_6ee76c35 = struct::get_array("encoded_radio", "targetname");
    if (level.var_6ee76c35.size == 0) {
        return;
    }
    function_1dc93253(7);
    level.var_ffca3315 = 7;
    function_b134cd55();
    function_fabc8042();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xebedef51, Offset: 0x85f8
// Size: 0x174
function function_b134cd55() {
    level.var_6ee76c35 = array::randomize(level.var_6ee76c35);
    if (isdefined(level.var_6ee76c35[0].var_40202a48)) {
        foreach (radio in level.var_6ee76c35) {
            if (isdefined(level.var_8f05fdec) && level.var_8f05fdec === radio) {
                continue;
            } else {
                level.var_e27df64e[level.var_e27df64e.size] = radio;
            }
            if (level.var_e27df64e.size >= level.var_fb241b1c) {
                break;
            }
        }
        return;
    }
    for (i = level.var_e27df64e.size; i > level.var_fb241b1c; i--) {
        level.var_e27df64e = array::remove_index(level.var_e27df64e, i - 1);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x688326e4, Offset: 0x8778
// Size: 0x314
function function_fabc8042() {
    foreach (var_4eb85e47 in level.var_e27df64e) {
        var_4eb85e47.ent = util::spawn_model(#"hash_1a3554b5405e3cbf", var_4eb85e47.origin, var_4eb85e47.angles);
        offsets = (0, 0, 0);
        var_4eb85e47.state = 0;
        var_4eb85e47.objectiveid = gameobjects::get_next_obj_id();
        var_4eb85e47 thread function_94dd997d(var_4eb85e47.objectiveid, var_4eb85e47.ent.origin - offsets, #"hash_3c511372ef417c1e");
        if (!isdefined(level.var_a08e14c4)) {
            level.var_a08e14c4 = [];
        } else if (!isarray(level.var_a08e14c4)) {
            level.var_a08e14c4 = array(level.var_a08e14c4);
        }
        if (!isinarray(level.var_a08e14c4, var_4eb85e47.objectiveid)) {
            level.var_a08e14c4[level.var_a08e14c4.size] = var_4eb85e47.objectiveid;
        }
        var_4eb85e47 thread function_945ccf34();
        var_4eb85e47 thread function_9d70f23a(offsets, 80, 50);
    }
    if (!isdefined(level.var_83b6f354)) {
        level.var_4ef4217d = array::randomize(level.var_4ef4217d);
        players = array::randomize(function_a1ef346b());
        foreach (player in players) {
            if (player.var_d7e8ad6f == 1) {
                level.var_83b6f354 = player;
                level.var_83b6f354 thread function_1a976b61();
                break;
            }
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x506ab6a8, Offset: 0x8a98
// Size: 0xec
function function_1a976b61() {
    if (!isdefined(self)) {
        return;
    }
    self endon(#"death", #"disconnect");
    if (!isplayer(self)) {
        return;
    }
    var_ca806887 = self getplayergendertype();
    if (var_ca806887 == "male") {
        level.var_bd0bdf7f = 1;
    } else if (var_ca806887 == "female") {
        level.var_bd0bdf7f = 2;
    } else {
        level.var_bd0bdf7f = 0;
    }
    function_b455be75(level.var_bd0bdf7f);
    function_57cab68b(self.var_588e0374);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0xbd4dff78, Offset: 0x8b90
// Size: 0x13e
function private function_945ccf34() {
    level endon(#"game_ended", #"hash_969b770cce81997");
    self endon(#"hash_6701ed9cbfbea517");
    level endon(#"hash_340451ac4fe07812");
    objective_setgamemodeflags(self.objectiveid, 1);
    cooldowntime = level.var_ae5ae85[level.var_baf27058];
    if (cooldowntime != 0) {
        countdown = cooldowntime;
        function_d587b657(countdown);
        wait(level.var_4d963525);
        while (countdown > 0) {
            function_d587b657(countdown);
            wait(1);
            countdown--;
        }
        function_d587b657(0);
    }
    if (!isdefined(self.objectiveid)) {
        return;
    }
    objective_setgamemodeflags(self.objectiveid, 2);
    self notify(#"hash_6701ed9cbfbea517");
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0x65a2abd6, Offset: 0x8cd8
// Size: 0xa0
function private function_d587b657(cooldowntime) {
    foreach (player in getplayers()) {
        level.var_44018194 hud_spy::function_47aa7bfd(player, cooldowntime);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 3, eflags: 0x4
// Checksum 0x2783133, Offset: 0x8d80
// Size: 0x204
function private function_9d70f23a(offsets, trigger_length, trigger_height) {
    self notify("62138b2867a99ac0");
    self endon("62138b2867a99ac0");
    level endon(#"game_ended");
    self endon(#"death");
    self waittill(#"hash_6701ed9cbfbea517");
    self.trigger = spawn("trigger_radius_use", self.origin + offsets, 0, trigger_length, trigger_height);
    self.trigger triggerignoreteam();
    self.trigger triggerenable(1);
    self.trigger usetriggerignoreuseholdtime();
    self.trigger sethintstring(#"hash_76430d002eba2777");
    self.trigger.var_4eb85e47 = self;
    self.ent clientfield::set("" + #"hash_3b8f220452f1fe4c", 1);
    self.ent playsound(#"hash_54c2b44022415883");
    self.ent playloopsound(#"hash_61dcb32e56041c08");
    util::wait_network_frame();
    self.trigger callback::on_trigger(&function_ce60e248);
    self.trigger thread function_467c95a7();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0xb08139f5, Offset: 0x8f90
// Size: 0x94
function private function_ce60e248(triggerstruct) {
    if (is_true(level.gameended)) {
        return;
    }
    activator = triggerstruct.activator;
    var_4eb85e47 = self.var_4eb85e47;
    if (var_4eb85e47.state != 0) {
        return;
    }
    if (isdefined(var_4eb85e47.trigger.activator)) {
        return;
    }
    activator function_e440f785(var_4eb85e47);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0xa87efada, Offset: 0x9030
// Size: 0x96
function private function_e440f785(radio) {
    self endon(#"hash_712d59da0c093568");
    radio.trigger setinvisibletoall();
    radio.trigger setvisibletoplayer(self);
    self.var_184d8de5 = 1;
    radio thread function_96b85abd(2, self);
    radio.trigger.activator = self;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x0
// Checksum 0x6ee35ab6, Offset: 0x90d0
// Size: 0xd2
function function_96b85abd(state, player) {
    self endon(#"hash_712d59da0c093568");
    if (state == 2) {
        if (isdefined(self.ent)) {
            self.ent playsound(#"hash_87673d07acf307c");
        }
        self.trigger setinvisibletoplayer(player, 1);
        player.var_94cae451 = self.trigger;
        player function_20fdcbf2(player.var_94cae451, #"hash_5fba3d476e0b33f8");
    }
    player.var_2597016d = 1;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x4
// Checksum 0x4e62fe6, Offset: 0x91b0
// Size: 0x94
function private function_20fdcbf2(*var_fbdcd95b, state) {
    if (!level.var_338739ee encodedradio_usebar::is_open(self)) {
        level.var_338739ee encodedradio_usebar::open(self, 4);
    }
    level.var_338739ee encodedradio_usebar::set_state(self, state);
    level.var_338739ee encodedradio_usebar::function_f0df5702(self, 0);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xcc192b47, Offset: 0x9250
// Size: 0xc6
function function_3d8b0693() {
    if (!isplayer(self)) {
        return;
    }
    if (level.var_338739ee encodedradio_usebar::is_open(self)) {
        level.var_338739ee encodedradio_usebar::close(self);
    }
    if (isdefined(self.var_94cae451)) {
        self.var_94cae451 setinvisibletoplayer(self, 0);
        self.var_94cae451 = undefined;
        return;
    }
    if (isdefined(self.var_9f133acb)) {
        self.var_9f133acb setinvisibletoplayer(self, 0);
        self.var_82d0f4cb = undefined;
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0x80f8fc9f, Offset: 0x9320
// Size: 0x4c
function private function_36d5c855(frac) {
    if (level.var_338739ee encodedradio_usebar::is_open(self)) {
        level.var_338739ee encodedradio_usebar::function_f0df5702(self, frac);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0xdd1db519, Offset: 0x9378
// Size: 0x238
function private function_467c95a7() {
    self endon(#"death");
    prevtime = gettime();
    var_e18791f4 = int(level.var_7ed001b8 * 1000);
    totalprogress = 0;
    var_b1c451bf = int(level.var_c5c6c8d / 0.05 * 1000);
    radio = self.var_4eb85e47;
    while (isdefined(radio) && radio.state == 0) {
        if (isdefined(self.activator)) {
            var_39c4d694 = !self.activator function_7386e1e6(radio);
            if (var_39c4d694) {
                radio thread function_c6a99754(self.activator);
                self.activator function_3bddd7d();
            }
            currtime = gettime();
            deltatime = currtime - prevtime;
            progress = deltatime;
            progress = min(progress, var_b1c451bf);
            totalprogress += progress;
            /#
            #/
            if (totalprogress >= var_e18791f4) {
                radio thread function_da63c523(self.activator);
                self.activator = undefined;
                break;
            }
            if (totalprogress > 0) {
                self.activator function_36d5c855(totalprogress / var_e18791f4);
            }
            if (var_39c4d694) {
                self.activator = undefined;
            }
        } else {
            wait(0.5);
            if (isdefined(self.activator)) {
                totalprogress = 0;
            }
        }
        prevtime = gettime();
        wait(0.05);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0x6719aabc, Offset: 0x95b8
// Size: 0xbc
function private function_c6a99754(player) {
    if (!isplayer(player)) {
        return;
    }
    if (isdefined(self.ent)) {
        self.ent playsound(#"hash_48980a089e33b2c9");
    }
    player function_3d8b0693();
    if (isdefined(self.trigger)) {
        self.trigger setvisibletoall();
    }
    player.var_2597016d = 0;
    player function_3bddd7d();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0x600f18d6, Offset: 0x9680
// Size: 0x3e
function private function_3bddd7d() {
    if (!isplayer(self)) {
        return;
    }
    if (isalive(self)) {
        self.var_184d8de5 = undefined;
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0x112f1db9, Offset: 0x96c8
// Size: 0x2fc
function function_da63c523(player) {
    if (!isdefined(player)) {
        return;
    }
    player function_3d8b0693();
    player.var_2597016d = 0;
    player function_3bddd7d();
    scoreevents::processscoreevent(#"hash_7d0ad10dce7ed467", player);
    if (isdefined(self.ent)) {
        self.ent playsound(#"hash_594c96bfb3d7852b");
        self.ent stoploopsound();
    }
    waitframe(1);
    arrayremovevalue(level.var_e27df64e, self);
    level.var_baf27058++;
    level thread function_4f53c9a2(13);
    game.telemetry.var_cee82c1d++;
    self thread function_61a3a6a0();
    self function_f3da38fe();
    self.state = 1;
    level.var_8f05fdec = self;
    if (isdefined(self.trigger)) {
        self.trigger delete();
    }
    if (isdefined(self.disabletrigger)) {
        self.disabletrigger delete();
    }
    if (isdefined(self.ent)) {
        self.ent delete();
    }
    player function_3d8b0693();
    var_76d7c057 = level.var_baf27058;
    if (level.var_baf27058 <= 0 || level.var_baf27058 > level.var_8ecd8fc) {
        var_76d7c057 = 1;
    }
    spies = spy::function_3919b452(1);
    if (isdefined(spies)) {
        thread globallogic_audio::function_248fc9f7("spyEncodedMessagesRead" + var_76d7c057, undefined, spies);
        thread globallogic_audio::function_61e17de0("spyEncodedMessagesHacked" + var_76d7c057, spies);
    } else {
        thread globallogic_audio::leader_dialog("spyEncodedMessagesRead" + var_76d7c057);
    }
    if (level.var_baf27058 < level.var_8ecd8fc) {
        level thread function_82c977e3();
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0x576490bc, Offset: 0x99d0
// Size: 0xf0
function function_7386e1e6(radio) {
    if (game.state != #"playing") {
        return false;
    }
    if (!isalive(self)) {
        return false;
    }
    if (!self usebuttonpressed()) {
        return false;
    }
    if (!isdefined(radio.trigger)) {
        return false;
    }
    if (!radio.trigger istriggerenabled()) {
        return false;
    }
    if (!self istouching(radio.trigger)) {
        return false;
    }
    if (self isinexecutionattack() || self isinexecutionvictim()) {
        return false;
    }
    return true;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xae5f0a7f, Offset: 0x9ac8
// Size: 0x6b6
function function_61a3a6a0() {
    self endon(#"hash_5e05e43e5c0faa69", #"death");
    level endon(#"hash_969b770cce81997", #"game_ended");
    if (isdefined(level.var_83b6f354)) {
        level.var_83b6f354 endon(#"disconnect");
    }
    switch (level.var_baf27058) {
    case 1:
        function_1dc93253(level.var_4ef4217d[0]);
        level.var_ffca3315 = 1;
        level.var_5fd149b8 += 1 << level.var_4ef4217d[0] - 1;
        util::wait_network_frame();
        level thread function_2398866a(16, undefined);
        if (isdefined(level.var_83b6f354)) {
            if (!is_true(level.var_2179a6bf)) {
                level.var_83b6f354 thread globallogic_audio::function_c246758e("spy_tension");
            }
        }
        break;
    case 2:
        function_1dc93253(level.var_4ef4217d[1]);
        level.var_ffca3315 = 2;
        level.var_5fd149b8 += 1 << level.var_4ef4217d[1] - 1;
        util::wait_network_frame();
        level thread function_2398866a(16, undefined);
        break;
    case 3:
        function_1dc93253(3);
        level.var_ffca3315 = 3;
        level.var_5fd149b8 += 1 << 2;
        util::wait_network_frame();
        level thread function_2398866a(16, undefined);
        var_9af06a57 = level.var_83b6f354;
        if (isdefined(var_9af06a57.origin)) {
            marker = spawn("script_model", var_9af06a57.origin);
            level.var_efd26964 = marker;
            var_7b57a803 = #"hash_65104254ebf2ada";
            var_ff1915b9 = #"hash_74d87a56f6e58bc7";
            marker.objidfriendly = gameobjects::get_next_obj_id();
            marker.var_81e11916 = gameobjects::get_next_obj_id();
            objective_add(marker.objidfriendly, "active", marker.origin, var_7b57a803);
            objective_add(marker.var_81e11916, "active", marker.origin, var_ff1915b9);
            objective_setinvisibletoall(marker.objidfriendly);
            objective_setinvisibletoall(marker.var_81e11916);
            marker function_a19ce5a8(var_9af06a57.origin, 400);
            util::wait_network_frame();
            marker clientfield::set("" + #"hash_3cb0242230f3f716", 1);
            marker function_61203128();
            wait(10);
            marker function_a19ce5a8(var_9af06a57.origin, 300);
            util::wait_network_frame();
            marker clientfield::set("" + #"hash_3cb0242230f3f716", 2);
            marker function_61203128();
            wait(10);
            marker function_a19ce5a8(var_9af06a57.origin, 200);
            util::wait_network_frame();
            marker clientfield::set("" + #"hash_3cb0242230f3f716", 3);
            marker function_61203128();
            wait(10);
            marker clientfield::set("" + #"hash_3cb0242230f3f716", 0);
            objective_delete(marker.objidfriendly);
            objective_delete(marker.var_81e11916);
            util::wait_network_frame();
            level.var_efd26964 = undefined;
            marker delete();
        }
        function_1dc93253(4);
        level.var_ffca3315 = 4;
        util::wait_network_frame();
        level thread function_2398866a(16, undefined);
        level.var_92a0168 = 1;
        game.telemetry.var_74b664fc = 1;
        break;
    }
    wait(5);
    self notify(#"hash_5e05e43e5c0faa69");
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xc375eb6c, Offset: 0xa188
// Size: 0x158
function function_61203128() {
    if (!isdefined(self.objidfriendly) || !isdefined(self.var_81e11916)) {
        return;
    }
    objective_setposition(self.objidfriendly, self.origin);
    objective_setposition(self.var_81e11916, self.origin);
    foreach (player in getplayers()) {
        if (player.var_d7e8ad6f === 1) {
            objective_setvisibletoplayer(self.objidfriendly, player);
            objective_setinvisibletoplayer(self.var_81e11916, player);
            continue;
        }
        objective_setvisibletoplayer(self.var_81e11916, player);
        objective_setinvisibletoplayer(self.objidfriendly, player);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x0
// Checksum 0x9eeedc29, Offset: 0xa2e8
// Size: 0x86
function function_a19ce5a8(playerorigin, var_d17e4c1e) {
    var_f71b723 = var_d17e4c1e * -1;
    xoffset = randomintrange(var_f71b723, var_d17e4c1e);
    yoffset = randomintrange(var_f71b723, var_d17e4c1e);
    self.origin = playerorigin + (xoffset, yoffset, 100);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0xa8ce8e73, Offset: 0xa378
// Size: 0xa0
function function_1dc93253(var_38ef2f1a) {
    foreach (var_dfe526e8 in getplayers()) {
        level.var_44018194 hud_spy::function_adf24ba3(var_dfe526e8, var_38ef2f1a);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0x190a00a1, Offset: 0xa420
// Size: 0xa0
function function_b455be75(var_bd0bdf7f) {
    foreach (var_dfe526e8 in getplayers()) {
        level.var_44018194 hud_spy::function_ddf21dbe(var_dfe526e8, var_bd0bdf7f);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0x2b14379e, Offset: 0xa4c8
// Size: 0xa0
function function_57cab68b(var_b233a3ce) {
    foreach (var_dfe526e8 in getplayers()) {
        level.var_44018194 hud_spy::function_410e8b54(var_dfe526e8, var_b233a3ce);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x9e262a41, Offset: 0xa570
// Size: 0x3ae
function function_cd002276() {
    level endon(#"game_ended");
    while (true) {
        if (isdefined(level.var_83b6f354)) {
            var_9af06a57 = level.var_83b6f354;
            var_9af06a57 waittill(#"death", #"disconnect");
            level notify(#"hash_969b770cce81997");
            level.var_83b6f354 = undefined;
            if (!is_true(level.var_2179a6bf) && isplayer(var_9af06a57)) {
                var_9af06a57 thread globallogic_audio::function_c246758e("none");
            }
            foreach (player in getplayers()) {
                player function_3d8b0693();
                player.var_2597016d = 0;
                player function_3bddd7d();
            }
            if (!level.var_92a0168) {
                function_1dc93253(5);
                level.var_ffca3315 = 5;
                level.var_5fd149b8 = 0;
                if (isdefined(level.var_efd26964)) {
                    marker = level.var_efd26964;
                    marker clientfield::set("" + #"hash_3cb0242230f3f716", 0);
                    util::wait_network_frame();
                    if (isdefined(marker.objidfriendly)) {
                        gameobjects::release_obj_id(marker.objidfriendly);
                        objective_delete(marker.objidfriendly);
                        marker.objidfriendly = undefined;
                    }
                    if (isdefined(marker.var_81e11916)) {
                        gameobjects::release_obj_id(marker.var_81e11916);
                        objective_delete(marker.var_81e11916);
                        marker.var_81e11916 = undefined;
                    }
                    level.var_efd26964 = undefined;
                    marker delete();
                }
                util::wait_network_frame();
                level thread function_2398866a(16, undefined);
                function_b1cbacc1();
            } else {
                function_1dc93253(6);
                level.var_ffca3315 = 6;
                util::wait_network_frame();
                level thread function_2398866a(16, undefined);
                wait(10);
                function_1dc93253(0);
                level.var_ffca3315 = 0;
            }
            break;
        }
        waitframe(1);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0xaeb036b5, Offset: 0xa928
// Size: 0x58
function private function_384c172d() {
    level endon(#"game_ended", #"hash_969b770cce81997");
    self waittill(#"disconnect");
    level notify(#"hash_969b770cce81997");
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xb5f1624, Offset: 0xa988
// Size: 0x88
function function_82c977e3() {
    level endon(#"game_ended");
    while (true) {
        a_players = array::randomize(function_a1ef346b());
        if (a_players.size) {
            function_b134cd55();
            function_fabc8042();
            return;
        }
        wait(1);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x3f415294, Offset: 0xaa18
// Size: 0x198
function function_b1cbacc1() {
    if (isdefined(level.var_e27df64e)) {
        foreach (var_4eb85e47 in level.var_e27df64e) {
            arrayremovevalue(level.var_e27df64e, var_4eb85e47);
            var_4eb85e47 function_f3da38fe();
            var_4eb85e47.state = 0;
            if (isdefined(var_4eb85e47.trigger)) {
                var_4eb85e47.trigger delete();
            }
            if (isdefined(var_4eb85e47.disabletrigger)) {
                var_4eb85e47.disabletrigger delete();
            }
            if (isdefined(var_4eb85e47.ent)) {
                var_4eb85e47.ent delete();
            }
        }
        waitframe(1);
    }
    level.var_baf27058 = 0;
    level.var_83b6f354 = undefined;
    wait(15);
    function_d5bf6df9();
    level thread function_cd002276();
    level notify(#"hash_564b2999f89731ae");
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 3, eflags: 0x0
// Checksum 0xb584a8cb, Offset: 0xabb8
// Size: 0x6c
function function_94dd997d(objective_id, origin, objective_name) {
    level endon(#"game_ended");
    level flag::wait_till("spy_role_assigned");
    objective_add(objective_id, "active", origin, objective_name);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x8a2e63d2, Offset: 0xac30
// Size: 0x56
function function_f3da38fe() {
    objective_id = self.objectiveid;
    if (isdefined(objective_id)) {
        gameobjects::release_obj_id(objective_id);
        objective_delete(objective_id);
    }
    self.objectiveid = undefined;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 4, eflags: 0x0
// Checksum 0x9becd90d, Offset: 0xac90
// Size: 0xdc
function function_702cbb0d(player, notificationid, var_2df0c486, countdowntimer) {
    if (!isdefined(player)) {
        return;
    }
    level.var_44018194 hud_spy::function_91a8637f(player, 0);
    util::wait_network_frame(1);
    if (!isdefined(player)) {
        return;
    }
    level.var_44018194 hud_spy::function_91a8637f(player, notificationid);
    if (isdefined(countdowntimer)) {
        level.var_44018194 hud_spy::function_65a4dc3c(player, countdowntimer);
    }
    if (isdefined(var_2df0c486)) {
        level.var_44018194 hud_spy::function_ceb51392(player, var_2df0c486);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 3, eflags: 0x0
// Checksum 0x9351918, Offset: 0xad78
// Size: 0x180
function function_2398866a(notificationid, var_2df0c486, countdowntimer) {
    a_players = function_a1ef346b();
    foreach (player in a_players) {
        if (isdefined(player)) {
            level.var_44018194 hud_spy::function_91a8637f(player, 0);
            if (isdefined(countdowntimer)) {
                util::wait_network_frame();
                if (isdefined(player)) {
                    level.var_44018194 hud_spy::function_65a4dc3c(player, countdowntimer);
                }
            }
            if (isdefined(var_2df0c486)) {
                util::wait_network_frame();
                if (isdefined(player)) {
                    level.var_44018194 hud_spy::function_ceb51392(player, var_2df0c486);
                }
            }
            util::wait_network_frame();
            if (isdefined(player)) {
                level.var_44018194 hud_spy::function_91a8637f(player, notificationid);
            }
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0xfa5cc856, Offset: 0xaf00
// Size: 0xc4
function function_fa207882(var_3f87bcc) {
    player = self;
    if (isdefined(player)) {
        player clientfield::set_to_player("to_player_notification", 0);
    }
    util::wait_network_frame(1);
    if (isdefined(player)) {
        player clientfield::set_to_player("to_player_notification", var_3f87bcc);
    }
    util::wait_network_frame(1);
    if (isdefined(player)) {
        player clientfield::set_to_player("to_player_notification", 0);
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0xe9ce75a8, Offset: 0xafd0
// Size: 0x1f8
function function_4f53c9a2(var_3f87bcc) {
    players = getplayers();
    foreach (player in players) {
        if (isdefined(player)) {
            player clientfield::set_to_player("to_player_notification", 0);
        }
    }
    util::wait_network_frame(1);
    foreach (player in players) {
        if (isdefined(player)) {
            player clientfield::set_to_player("to_player_notification", var_3f87bcc);
        }
    }
    util::wait_network_frame(1);
    foreach (player in players) {
        if (isdefined(player)) {
            player clientfield::set_to_player("to_player_notification", 0);
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x1efd53e5, Offset: 0xb1d0
// Size: 0x182
function function_83abdf0f() {
    map_name = util::get_map_name();
    switch (map_name) {
    case #"mp_raid_rm":
    case #"mp_kgb":
    case #"hash_418ef9f1f49298e6":
    case #"mp_village_rm":
    case #"mp_slums_rm":
    case #"mp_tundra":
        level.var_d18d7655 = 3000;
        level.var_67432513 = 3200;
        break;
    case #"mp_nuketown6":
        level.var_d18d7655 = 2400;
        level.var_67432513 = 2600;
        level.var_60693fca = 700;
        break;
    case #"mp_moscow":
        level.var_1424a0f7 = 10;
        level.var_d18d7655 = 3000;
        level.var_67432513 = 3200;
    case #"mp_zoo_rm":
        level.var_d18d7655 = 2600;
        level.var_67432513 = 2800;
        break;
    default:
        break;
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x9c093d6a, Offset: 0xb360
// Size: 0x15c
function function_1d3f6978() {
    level endon(#"game_ended");
    level.var_75689606 = [];
    var_882ee981 = struct::get("spy_waypoint_weapon_spawn_a", "targetname");
    assert(isdefined(var_882ee981), "<unknown string>");
    if (isdefined(var_882ee981.origin)) {
        level.var_75689606[0] = function_48d2ab4c(0, var_882ee981.origin);
    }
    target1 = struct::get("spy_waypoint_weapon_spawn_b", "targetname");
    assert(isdefined(target1), "<unknown string>");
    if (isdefined(target1.origin)) {
        level.var_75689606[1] = function_48d2ab4c(1, target1.origin);
    }
    level waittill(#"hash_1b006807c1efbfb");
    function_9b430395();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x0
// Checksum 0xe09bb8f8, Offset: 0xb4c8
// Size: 0x160
function function_48d2ab4c(index, position) {
    if (!isvec(position)) {
        return undefined;
    }
    marker = {};
    marker.waypoint = gameobjects::get_next_obj_id();
    objective_add(marker.waypoint, "active", position, #"hash_6410fe6e5b9752b2");
    marker.trigger = spawn("trigger_radius", position, 0, 10, 10);
    marker.trigger triggerignoreteam();
    marker.trigger triggerenable(1);
    marker.trigger setvisibletoall();
    marker.index = index;
    marker.trigger callback::on_trigger(&function_498069d0);
    objective_setvisibletoall(marker.waypoint);
    return marker;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0xd84f262a, Offset: 0xb630
// Size: 0xac
function function_498069d0(trigger) {
    if (isdefined(trigger.activator) && isdefined(self.index)) {
        var_25044baa = level.var_75689606[self.index];
        if (isdefined(var_25044baa) && isdefined(var_25044baa.waypoint)) {
            objective_setinvisibletoplayer(var_25044baa.waypoint, trigger.activator);
            var_25044baa.trigger setinvisibletoplayer(trigger.activator, 1);
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x1303ad64, Offset: 0xb6e8
// Size: 0xe0
function function_9b430395() {
    if (isdefined(level.var_75689606)) {
        foreach (area in level.var_75689606) {
            if (isdefined(area)) {
                if (isdefined(area.waypoint)) {
                    objective_delete(area.waypoint);
                }
                if (isdefined(area.trigger)) {
                    area.trigger delete();
                }
            }
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xe81942b9, Offset: 0xb7d0
// Size: 0x90
function function_1b0509bc() {
    foreach (player in getplayers()) {
        player thread function_36004926();
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x4
// Checksum 0x98d8f3cf, Offset: 0xb868
// Size: 0x70
function private function_36004926() {
    level endon(#"game_ended");
    self endon(#"death");
    while (true) {
        self waittill(#"hash_1ffe9cd291b40d2f");
        scoreevents::processscoreevent(#"hash_79238f388ae521d0", self);
    }
}

/#

    // Namespace namespace_e51f0bc1/namespace_e51f0bc1
    // Params 0, eflags: 0x0
    // Checksum 0x2b7ac526, Offset: 0xb8e0
    // Size: 0x9c
    function init_devgui() {
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
    }

    // Namespace namespace_e51f0bc1/namespace_e51f0bc1
    // Params 0, eflags: 0x4
    // Checksum 0xb5317d02, Offset: 0xb988
    // Size: 0x76
    function private function_280f72f9() {
        self endon(#"death");
        while (self.state == 0) {
            if (getdvarint(#"hash_10645544b712102b", 0)) {
                circle(self.origin, 10, (1, 0, 0));
            }
            waitframe(1);
        }
    }

    // Namespace namespace_e51f0bc1/namespace_e51f0bc1
    // Params 0, eflags: 0x0
    // Checksum 0x3d275e27, Offset: 0xba08
    // Size: 0x158
    function function_a36ba8c8() {
        while (!getdvarfloat(#"hash_5aed39322a728acf", 0)) {
            wait(1);
        }
        if (isdefined(level.var_56a47a6d)) {
            foreach (deaddrop in level.var_56a47a6d) {
                if (isdefined(deaddrop.trigger)) {
                    deaddrop.trigger delete();
                }
                deaddrop.state = 3;
                arrayremovevalue(level.var_56a47a6d, deaddrop);
            }
            waitframe(1);
        }
        setdvar(#"hash_5aed39322a728acf", 0);
        function_8af77a();
        level notify(#"hash_63497adad2aaccba");
    }

    // Namespace namespace_e51f0bc1/namespace_e51f0bc1
    // Params 0, eflags: 0x0
    // Checksum 0xba5e3b73, Offset: 0xbb68
    // Size: 0x6c
    function function_2dad9f7b() {
        while (!getdvarfloat(#"hash_354f446f06244074", 0)) {
            wait(1);
        }
        level thread function_70b57ee6();
        setdvar(#"hash_354f446f06244074", 0);
    }

    // Namespace namespace_e51f0bc1/namespace_e51f0bc1
    // Params 0, eflags: 0x4
    // Checksum 0xaf2cf990, Offset: 0xbbe0
    // Size: 0x8e
    function private function_cf8dbb2() {
        self endon(#"death");
        while (isdefined(self.e_device.state) && self.e_device.state == 0) {
            if (getdvarint(#"hash_754c46bbe0d34c1c", 0)) {
                circle(self.origin, 10, (0, 1, 0));
            }
            waitframe(1);
        }
    }

    // Namespace namespace_e51f0bc1/namespace_e51f0bc1
    // Params 0, eflags: 0x4
    // Checksum 0xabdde6f0, Offset: 0xbc78
    // Size: 0x76
    function private function_621faf6f() {
        self endon(#"death");
        while (self.state == 4) {
            if (getdvarint(#"hash_37330fea8b092111", 0)) {
                circle(self.origin, 10, (1, 1, 0));
            }
            waitframe(1);
        }
    }

    // Namespace namespace_e51f0bc1/namespace_e51f0bc1
    // Params 0, eflags: 0x4
    // Checksum 0x1e07e393, Offset: 0xbcf8
    // Size: 0x76
    function private function_7542188d() {
        self endon(#"death");
        while (self.state == 0) {
            if (getdvarint(#"hash_321291c63cac2b90", 0)) {
                circle(self.origin, 10, (0, 0, 1));
            }
            waitframe(1);
        }
    }

#/

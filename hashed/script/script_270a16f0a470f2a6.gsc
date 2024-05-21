// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_sq.gsc;
#using scripts\zm\zm_tungsten.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using script_1cf46b33555422b7;
#using scripts\zm_common\objective_manager.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_60bf0cf2;

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0xeefc4921, Offset: 0x2a0
// Size: 0x3c
function init() {
    init_clientfields();
    init_quests();
    /#
        level thread function_c72df2e9();
    #/
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0x674e7882, Offset: 0x2e8
// Size: 0xc4
function init_clientfields() {
    clientfield::register("scriptmover", "" + #"hash_5808d23568bc787", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_50dd9d9bf6b71a00", 1, 1, "counter");
    clientfield::register("scriptmover", "" + #"hash_464c0289eeaff2a8", 1, 1, "int");
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0xe3efa172, Offset: 0x3b8
// Size: 0x16c
function init_quests() {
    level zm_sq::register(#"hash_11d6906cf162270f", #"open_door", #"hash_346a14cdb51a5ad2", &function_3e0af5bf, &function_d75885b9);
    level zm_sq::register(#"hash_11d6906cf162270f", #"hash_4589490bb9502447", #"hash_346a13cdb51a591f", &function_53c64c7d, &function_bb997270);
    level zm_sq::register(#"hash_11d6906cf162270f", #"hash_6b85b8caee97658f", #"hash_346a12cdb51a576c", &function_6d459f8c, &function_6c07d63);
    if (!zm_utility::is_ee_enabled()) {
        return;
    }
    level thread function_2abef8da();
    callback::on_item_pickup(&on_item_pickup);
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 1, eflags: 0x2 linked
// Checksum 0xa51f5b9b, Offset: 0x530
// Size: 0x276
function on_item_pickup(params) {
    item = params.item;
    player_zone = zm_zonemgr::get_zone_from_position(self.origin);
    if (isplayer(self) && player_zone === "zone_pizza_kitchen" && item.itementry.name === #"ray_gun_item_sr") {
        var_a998408b = self.inventory.items[17 + 1];
        if (var_a998408b.itementry.name === #"ray_gun_item_sr") {
            self setweaponammoclip(var_a998408b.var_627c698b, 20);
            self setweaponammostock(var_a998408b.var_627c698b, 80);
            return;
        }
        var_bf5e6c17 = self.inventory.items[17 + 1 + 8 + 1];
        if (var_bf5e6c17.itementry.name === #"ray_gun_item_sr") {
            self setweaponammoclip(var_bf5e6c17.var_627c698b, 20);
            self setweaponammostock(var_bf5e6c17.var_627c698b, 80);
            return;
        }
        var_8e20899c = self.inventory.items[17 + 1 + 8 + 1 + 8 + 1];
        if (var_8e20899c.itementry.name === #"ray_gun_item_sr") {
            self setweaponammoclip(var_8e20899c.var_627c698b, 20);
            self setweaponammostock(var_8e20899c.var_627c698b, 80);
            return;
        }
    }
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x6 linked
// Checksum 0xf94abb65, Offset: 0x7b0
// Size: 0x2c
function private function_2abef8da() {
    level zm_sq::start(#"hash_11d6906cf162270f", 1);
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 1, eflags: 0x2 linked
// Checksum 0x56fbe0f1, Offset: 0x7e8
// Size: 0x334
function function_3e0af5bf(var_a276c861) {
    if (var_a276c861) {
        return;
    }
    level endon(#"end_game", #"hash_7c11e78fdf8aff43");
    level flag::wait_till("start_zombie_round_logic");
    level thread function_f71a8c71();
    var_73e56d89 = struct::get("pizza_kitchen_radio", "targetname");
    var_73888042 = getent("pizza_kitchen_door", "targetname");
    var_73888042 disconnectpaths();
    var_5a015138 = struct::get("ronnie_the_baker", "targetname");
    scene::add_scene_func(#"hash_414c49236edfc1d4", &function_a7cf8b16, "show");
    level thread scene::play(#"hash_414c49236edfc1d4", "show");
    level thread function_abd5cecb();
    var_363dd5ac = getent("vol_pizza_kitchen", "targetname");
    while (!level flag::get(#"hash_75daa75b71ca3c65")) {
        foreach (player in getplayers()) {
            if (istouching(player.origin, var_363dd5ac)) {
                level flag::set(#"hash_75daa75b71ca3c65");
                break;
            }
        }
        wait(1);
    }
    s_unitrigger = var_73888042 zm_unitrigger::create(#"hash_a3ff0135b4c5d4a", (56, 56, 100));
    zm_unitrigger::unitrigger_force_per_player_triggers(s_unitrigger, 1);
    s_unitrigger.origin += (-24, 30, 0);
    var_73888042 thread function_372852d();
    var_73888042 util::delay_notify(5, "trigger_activated");
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0xd88cc760, Offset: 0xb28
// Size: 0x10c
function function_f71a8c71() {
    level endon(#"end_game", #"hash_4836d98aa6574edc");
    var_1efd6e0f = struct::get("pizza_box_loc");
    s_unitrigger = var_1efd6e0f zm_unitrigger::create(&function_75460593, 48, &function_16dfcdea);
    zm_unitrigger::unitrigger_force_per_player_triggers(s_unitrigger, 1);
    if (!isdefined(level.var_a70c997e)) {
        level.var_a70c997e = 0;
    }
    if (!isdefined(level.var_421e3759)) {
        level.var_421e3759 = 0;
    }
    while (level.var_a70c997e < 4) {
        wait(1);
    }
    function_dca028f();
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 1, eflags: 0x2 linked
// Checksum 0xcb42fa0, Offset: 0xc40
// Size: 0x7a
function function_75460593(e_player) {
    if (!e_player flag::get(#"hash_467e4279ccacfd8a") && !e_player flag::get(#"hash_56cc1795fa5f8e21") && !zm_tungsten::function_1fd1da2b(0)) {
        return true;
    }
    return false;
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0x750e1e10, Offset: 0xcc8
// Size: 0x148
function function_16dfcdea() {
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"trigger");
        e_player = waitresult.activator;
        e_player flag::set(#"hash_467e4279ccacfd8a");
        level flag::set(#"hash_7855ea5b15a4c861");
        level.var_a70c997e += 1;
        hidemiscmodels("ts_pz_bx_" + level.var_a70c997e);
        var_1efd6e0f = struct::get("pizza_box_loc");
        playsoundatposition(#"hash_5ee8279df26f0e2a", var_1efd6e0f.origin);
        e_player thread function_51989322(45);
    }
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0xe5ea8958, Offset: 0xe18
// Size: 0x56
function function_dca028f() {
    var_1efd6e0f = struct::get("pizza_box_loc");
    if (isdefined(var_1efd6e0f.s_unitrigger)) {
        zm_unitrigger::unregister_unitrigger(var_1efd6e0f.s_unitrigger);
        var_1efd6e0f.s_unitrigger = undefined;
    }
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 1, eflags: 0x2 linked
// Checksum 0x6d502e90, Offset: 0xe78
// Size: 0x194
function function_51989322(n_time) {
    level endon(#"end_game");
    self endon(#"hash_56cc1795fa5f8e21", #"death", #"disconnect", #"hash_217479a2ecb64b4");
    self.var_349130f7 = gettime() + n_time * 1000;
    self function_626741e8(n_time);
    self thread function_63cb47df();
    self thread function_667bc5b7();
    level waittilltimeout(n_time, #"hash_4836d98aa6574edc");
    self flag::clear(#"hash_467e4279ccacfd8a");
    self notify(#"hash_59a3fb539c4b93af");
    self playsoundtoplayer(#"hash_3c67d7e5a42f65d5", self);
    if (level.var_55fd9380 luielemtext::is_open(self)) {
        level.var_55fd9380 luielemtext::close(self);
    }
    self thread objective_manager::function_a809e69a();
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 1, eflags: 0x2 linked
// Checksum 0x8e946889, Offset: 0x1018
// Size: 0x15c
function function_626741e8(n_time) {
    if (level.var_55fd9380 luielemtext::is_open(self)) {
        level.var_55fd9380 luielemtext::close(self);
    }
    level.var_55fd9380 luielemtext::open(self, 1);
    level.var_55fd9380 luielemtext::set_text(self, #"hash_5f906edd77fa8485");
    level.var_55fd9380 luielemtext::function_f97e9049(self, 50, 510);
    level.var_55fd9380 luielemtext::set_color(self, 1, 1, 1);
    level.var_55fd9380 luielemtext::set_alpha(self, 1);
    level.var_55fd9380 luielemtext::set_horizontal_alignment(self, 1);
    self thread objective_manager::function_b8278876(n_time, "pizza_delivery");
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0x7c1cee47, Offset: 0x1180
// Size: 0xc4
function function_63cb47df() {
    level endon(#"end_game");
    self endon(#"hash_59a3fb539c4b93af", #"death", #"disconnect", #"hash_217479a2ecb64b4");
    self waittill(#"hash_56cc1795fa5f8e21");
    if (level.var_55fd9380 luielemtext::is_open(self)) {
        level.var_55fd9380 luielemtext::close(self);
    }
    self thread objective_manager::function_a809e69a();
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0xa7f9afcc, Offset: 0x1250
// Size: 0x13c
function function_667bc5b7() {
    level endon(#"end_game");
    self endon(#"hash_59a3fb539c4b93af", #"death", #"disconnect", #"hash_56cc1795fa5f8e21");
    self waittill(#"hash_217479a2ecb64b4");
    self.n_time_left = self.var_349130f7 - gettime();
    if (level.var_55fd9380 luielemtext::is_open(self)) {
        level.var_55fd9380 luielemtext::close(self);
    }
    self thread objective_manager::function_a809e69a();
    self waittill(#"fasttravel_over");
    self thread function_51989322(int(float(self.n_time_left) / 1000) + 1);
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 1, eflags: 0x2 linked
// Checksum 0x3baf83dd, Offset: 0x1398
// Size: 0x274
function function_a7cf8b16(a_ents) {
    level endon(#"end_game", #"hash_bd7f36c4031280d");
    var_e82701bb = a_ents[#"hash_4b65a37172a01802"];
    var_e82701bb clientfield::set("" + #"hash_5808d23568bc787", 1);
    var_e82701bb setcandamage(1);
    var_e82701bb.health = 1000;
    var_22a80ca2 = getent("col_ronnie_raygun", "targetname");
    var_22a80ca2 disconnectpaths();
    while (var_e82701bb.health > 0) {
        s_waitresult = var_e82701bb waittill(#"damage");
        var_e82701bb clientfield::increment("" + #"hash_50dd9d9bf6b71a00", 1);
        if (s_waitresult.amount > 0) {
            var_e82701bb.health -= s_waitresult.amount;
            /#
                iprintlnbold("<unknown string>" + var_e82701bb.health);
            #/
        }
    }
    var_e82701bb clientfield::set("" + #"hash_464c0289eeaff2a8", 1);
    var_e82701bb clientfield::set("" + #"hash_5808d23568bc787", 0);
    var_22a80ca2 connectpaths();
    if (isdefined(var_22a80ca2)) {
        var_22a80ca2 delete();
    }
    level flag::set(#"hash_4836d98aa6574edc");
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0x9a4d5ff2, Offset: 0x1618
// Size: 0x164
function function_abd5cecb() {
    level endon(#"end_game");
    level flag::wait_till(#"hash_4836d98aa6574edc");
    scene::remove_scene_func(#"hash_414c49236edfc1d4", &function_a7cf8b16, "show");
    level thread scene::play(#"hash_414c49236edfc1d4", "dead");
    foreach (player in getplayers()) {
        player flag::clear(#"hash_467e4279ccacfd8a");
    }
    function_dca028f();
    function_505b6d6d();
    function_6d3d697d();
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0xb9bd02f8, Offset: 0x1788
// Size: 0x9c
function function_372852d() {
    level endon(#"end_game", #"hash_7c11e78fdf8aff43");
    self waittill(#"trigger_activated");
    zm_unitrigger::unregister_unitrigger(self.s_unitrigger);
    self.s_unitrigger = undefined;
    level flag::set(#"kitchen_door_open");
    self open_kitchen_door();
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0xe00cb8b1, Offset: 0x1830
// Size: 0x1ac
function open_kitchen_door() {
    level endon(#"end_game");
    self connectpaths();
    var_e2316f6f = getent(self.target, "targetname");
    var_6b28b1ce = struct::get("kitchen_door_node");
    var_458d730c = util::spawn_model("tag_origin", var_6b28b1ce.origin, var_6b28b1ce.angles);
    self linkto(var_458d730c);
    var_e2316f6f linkto(var_458d730c);
    var_458d730c rotateto(var_458d730c.angles + (0, 105, 0), 0.5);
    playsoundatposition(#"hash_7480a28d0d9f00f6", (3496, 8079, -332));
    var_458d730c waittill(#"rotatedone");
    self unlink();
    var_e2316f6f unlink();
    if (isdefined(var_458d730c)) {
        var_458d730c delete();
    }
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 2, eflags: 0x2 linked
// Checksum 0xd886578, Offset: 0x19e8
// Size: 0xa4
function function_d75885b9(var_a276c861, var_19e802fa) {
    if (var_a276c861 || var_19e802fa) {
        var_73888042 = getent("pizza_kitchen_door", "targetname");
        var_73888042 open_kitchen_door();
        level flag::set(#"kitchen_door_open");
        level flag::set(#"hash_7c11e78fdf8aff43");
    }
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 1, eflags: 0x2 linked
// Checksum 0xa971e21b, Offset: 0x1a98
// Size: 0x110
function function_53c64c7d(var_a276c861) {
    if (var_a276c861) {
        return;
    }
    level endon(#"end_game", #"hash_2dfa9988c9edb5dc", #"hash_4836d98aa6574edc");
    level flag::wait_till(#"hash_7855ea5b15a4c861");
    var_175ec39d = struct::get_array("dest_pizza");
    foreach (s_dest in var_175ec39d) {
        s_dest thread function_4e808365();
    }
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0x3cf56ba9, Offset: 0x1bb0
// Size: 0x11c
function function_4e808365() {
    level endon(#"end_game", #"hash_59a3fb539c4b93af", #"hash_2dfa9988c9edb5dc", #"hash_4836d98aa6574edc");
    e_activator = self zm_unitrigger::function_fac87205(&function_56d84, 64, 0, 1);
    e_activator flag::clear(#"hash_467e4279ccacfd8a");
    e_activator flag::set(#"hash_56cc1795fa5f8e21");
    util::spawn_model(self.model, self.origin, self.angles);
    playsoundatposition(#"hash_2b489ac23b273781", self.origin + (0, 0, 5));
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 1, eflags: 0x2 linked
// Checksum 0xfae39d13, Offset: 0x1cd8
// Size: 0x7c
function function_56d84(e_player) {
    if (zm_utility::is_player_valid(e_player) && e_player flag::get(#"hash_467e4279ccacfd8a")) {
        self sethintstringforplayer(e_player, #"hash_d8170fb913d4b5e");
        return true;
    }
    return false;
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 2, eflags: 0x2 linked
// Checksum 0xbe1bcc01, Offset: 0x1d60
// Size: 0xe8
function function_bb997270(var_a276c861, var_19e802fa) {
    if (var_a276c861 || var_19e802fa) {
        level flag::set(#"hash_2dfa9988c9edb5dc");
        function_505b6d6d();
        foreach (player in getplayers()) {
            player flag::set(#"hash_56cc1795fa5f8e21");
        }
    }
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0x95e105e3, Offset: 0x1e50
// Size: 0xc2
function function_505b6d6d() {
    var_175ec39d = struct::get_array("dest_pizza");
    foreach (s_dest in var_175ec39d) {
        if (isdefined(s_dest.s_unitrigger)) {
            zm_unitrigger::unregister_unitrigger(s_dest.s_unitrigger);
            s_dest.s_unitrigger = undefined;
        }
    }
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 1, eflags: 0x2 linked
// Checksum 0xe0d65f93, Offset: 0x1f20
// Size: 0xdc
function function_6d459f8c(var_a276c861) {
    if (var_a276c861) {
        return;
    }
    level endon(#"end_game", #"hash_bd7f36c4031280d", #"hash_4836d98aa6574edc");
    var_5a015138 = struct::get("ronnie_the_baker", "targetname");
    s_unitrigger = var_5a015138 zm_unitrigger::create(&function_810ff42, 48);
    zm_unitrigger::unitrigger_force_per_player_triggers(s_unitrigger, 1);
    var_5a015138 thread function_a32f14f8();
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 1, eflags: 0x2 linked
// Checksum 0x4af206a4, Offset: 0x2008
// Size: 0x7c
function function_810ff42(e_player) {
    if (zm_utility::is_player_valid(e_player) && e_player flag::get(#"hash_56cc1795fa5f8e21")) {
        self sethintstringforplayer(e_player, #"hash_2ed4696a3a664b8b");
        return true;
    }
    return false;
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0x80838732, Offset: 0x2090
// Size: 0x352
function function_a32f14f8() {
    level endon(#"end_game", #"hash_bd7f36c4031280d", #"hash_4836d98aa6574edc");
    var_e07849bb = struct::get_array("pizza_delivery_reward_loc");
    v_pos = self.origin;
    var_221a8c4b = var_e07849bb[0];
    while (true) {
        s_notify = self waittill(#"trigger_activated");
        e_activator = s_notify.e_who;
        e_activator flag::clear(#"hash_56cc1795fa5f8e21");
        if (level.var_421e3759 == struct::get_array("dest_pizza").size) {
            function_6d3d697d();
        } else {
            level.var_421e3759 += 1;
        }
        var_53313495 = array::function_a3b0f814(var_e07849bb);
        if (!isdefined(var_53313495)) {
            var_53313495 = var_221a8c4b;
        }
        var_aa4f9213 = e_activator function_a42c42c2();
        if (is_true(e_activator.var_87eb8981)) {
            zm_powerups::specific_powerup_drop(var_aa4f9213, var_53313495.origin - (0, 0, 28));
            playsoundatposition(#"hash_f7813ab3479b297", var_53313495.origin);
        } else {
            point = function_4ba8fde(var_aa4f9213);
            var_9e536071 = item_drop::drop_item(0, undefined, 1, 0, point.id, v_pos, var_53313495.angles, 0);
            var_9e536071.var_dd21aec2 = 1 | 16;
            if (var_aa4f9213 === #"armor_item_lv1_t9_sr" || var_aa4f9213 === #"ray_gun_item_sr") {
                var_53313495.origin += (0, 0, 12);
            }
            n_power = length(v_pos - var_53313495.origin) * 2;
            var_9e536071 zm_utility::fake_physicslaunch(var_53313495.origin, n_power);
            var_9e536071 playsound(#"hash_f7813ab3479b297");
        }
        e_activator.var_87eb8981 = undefined;
    }
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0xb75507fa, Offset: 0x23f0
// Size: 0x5e
function function_6d3d697d() {
    var_5a015138 = struct::get("ronnie_the_baker", "targetname");
    if (isdefined(var_5a015138.s_unitrigger)) {
        zm_unitrigger::unregister_unitrigger(var_5a015138.s_unitrigger);
        var_5a015138.s_unitrigger = undefined;
    }
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0x47c1b3d9, Offset: 0x2458
// Size: 0x152
function function_a42c42c2() {
    var_e083ecbd = randomintrangeinclusive(1, 100);
    if (var_e083ecbd <= 30) {
        if (var_e083ecbd <= 10) {
            if (function_f23f302d()) {
                str_item = #"self_revive_sr_item";
            } else {
                str_item = #"armor_item_lv1_t9_sr";
            }
        } else if (var_e083ecbd <= 20) {
            str_item = "full_ammo";
            self.var_87eb8981 = 1;
        } else {
            str_item = "double_points";
            self.var_87eb8981 = 1;
        }
    } else if (var_e083ecbd <= 65) {
        if (var_e083ecbd <= 55) {
            str_item = #"scrap_epic_item_sr";
        } else {
            str_item = #"scrap_legendary_item_sr";
        }
    } else if (var_e083ecbd <= 95) {
        str_item = #"hash_69a628368f8263f";
    } else {
        str_item = #"ray_gun_item_sr";
    }
    return str_item;
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0x6ec5804, Offset: 0x25b8
// Size: 0x92
function function_f23f302d() {
    foreach (player in getplayers()) {
        if (player.var_72249004 === 0) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 2, eflags: 0x2 linked
// Checksum 0x754cb963, Offset: 0x2658
// Size: 0x54
function function_6c07d63(var_a276c861, var_19e802fa) {
    if (var_a276c861 || var_19e802fa) {
        level flag::set(#"hash_bd7f36c4031280d");
        function_6d3d697d();
    }
}

/#

    // Namespace namespace_60bf0cf2/namespace_60bf0cf2
    // Params 0, eflags: 0x0
    // Checksum 0x7383b4b2, Offset: 0x26b8
    // Size: 0x5c
    function function_c72df2e9() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&cmd);
    }

    // Namespace namespace_60bf0cf2/namespace_60bf0cf2
    // Params 1, eflags: 0x0
    // Checksum 0x9ae12282, Offset: 0x2720
    // Size: 0x17a
    function cmd(var_acfb518f) {
        var_329d95fb = struct::get_array("<unknown string>", "<unknown string>");
        switch (var_acfb518f) {
        case #"hash_7acad1e41b4b7af3":
            foreach (var_f271f008 in var_329d95fb) {
                var_f271f008 thread function_b7549e2f(1);
            }
            break;
        case #"hash_37bd682457b237c8":
            foreach (var_f271f008 in var_329d95fb) {
                var_f271f008 thread function_b7549e2f(0);
            }
            break;
        }
    }

    // Namespace namespace_60bf0cf2/namespace_60bf0cf2
    // Params 1, eflags: 0x0
    // Checksum 0xa3155065, Offset: 0x28a8
    // Size: 0xb4
    function function_b7549e2f(state) {
        self notify("<unknown string>");
        self endon("<unknown string>");
        self endon(#"death");
        if (state) {
            while (true) {
                circle(self.origin, 10, (0, 0, 1), 0, 0, 10);
                wait(10 * float(function_60d95f53()) / 1000);
            }
        }
    }

#/

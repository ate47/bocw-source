// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using script_19367cd29a4485db;
#using scripts\zm_common\zm_intel.gsc;
#using script_34ab99a4ca1a43d;
#using script_16b1b77a76492c6a;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_12a6a726;

// Namespace namespace_12a6a726/namespace_12a6a726
// Params 0, eflags: 0x5
// Checksum 0xa5741e3b, Offset: 0x1c0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_72a9f15f4124442", &preinit, undefined, undefined, #"content_manager");
}

// Namespace namespace_12a6a726/namespace_12a6a726
// Params 0, eflags: 0x2 linked
// Checksum 0xd423f6, Offset: 0x210
// Size: 0x11c
function preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_49c3a9d150ecbb16")) && !getdvarint(#"hash_730311c63805303a", 0)) {
        return;
    }
    content_manager::register_script(#"hash_6bbb00324d163e11", &function_8ba92985, 1);
    clientfield::register("scriptmover", "sr_supply_drop_chest_fx", 1, 2, "int");
}

// Namespace namespace_12a6a726/namespace_12a6a726
// Params 1, eflags: 0x6 linked
// Checksum 0x84e79a6c, Offset: 0x338
// Size: 0x2f4
function private function_8ba92985(s_instance) {
    s_instance endon(#"cleanup");
    level flag::wait_till(#"gameplay_started");
    s_instance flag::clear("cleanup");
    s_instance callback::function_d8abfc3d(#"hash_345e9169ebba28fb", &function_db97f0ee);
    s_chest = s_instance.contentgroups[#"hash_6b1e5d8f9e70a70e"][0];
    var_3ba64fe9 = s_instance.contentgroups[#"trigger_spawn"][0];
    s_instance.var_e234ef47 = zm_utility::function_f5a222a8(#"hash_3475619554ec3ac2", s_chest.origin, &function_a1ca0279);
    wait(10);
    if (!isdefined(var_3ba64fe9.height)) {
        var_3ba64fe9.height = 5000;
    }
    if (!isdefined(var_3ba64fe9.radius)) {
        var_3ba64fe9.radius = 10000;
    }
    var_8e27c3fd = spawn("trigger_radius", var_3ba64fe9.origin, 256, var_3ba64fe9.radius, var_3ba64fe9.height);
    s_instance.var_8e27c3fd = var_8e27c3fd;
    var_8e27c3fd.target = s_chest.targetname;
    var_69b86a0a = spawn("trigger_radius", s_chest.origin - (0, 0, var_3ba64fe9.height / 2), 0, 1000, var_3ba64fe9.height);
    var_69b86a0a thread function_4dccab86(var_8e27c3fd);
    while (true) {
        var_8e27c3fd waittill(#"trigger_look", #"proximity");
        if (level flag::get(#"objective_locked")) {
            level flag::wait_till_clear(#"objective_locked");
            continue;
        }
        break;
    }
    var_8e27c3fd delete();
    var_69b86a0a delete();
    function_9212e29c(s_instance, s_chest);
}

// Namespace namespace_12a6a726/namespace_12a6a726
// Params 2, eflags: 0x2 linked
// Checksum 0xd194fef3, Offset: 0x638
// Size: 0x62
function function_a1ca0279(*v_origin_or_ent, *params) {
    if (level flag::get(#"objective_locked") && !level flag::get(#"hash_68097fc64a08e557")) {
        return false;
    }
    return true;
}

// Namespace namespace_12a6a726/namespace_12a6a726
// Params 1, eflags: 0x6 linked
// Checksum 0x9545e9a7, Offset: 0x6a8
// Size: 0x62
function private function_4dccab86(var_8e27c3fd) {
    self endon(#"death");
    while (true) {
        self waittill(#"trigger");
        if (isdefined(var_8e27c3fd)) {
            var_8e27c3fd notify(#"proximity");
        }
        wait(1);
    }
}

// Namespace namespace_12a6a726/namespace_12a6a726
// Params 0, eflags: 0x2 linked
// Checksum 0xa5db7adf, Offset: 0x718
// Size: 0x8c
function function_db97f0ee() {
    self flag::set("cleanup");
    namespace_58949729::function_ccf9be41(self);
    if (isdefined(self.var_8e27c3fd)) {
        self.var_8e27c3fd delete();
    }
    if (isdefined(self.ambush_trigger)) {
        self.ambush_trigger delete();
    }
}

// Namespace namespace_12a6a726/namespace_12a6a726
// Params 3, eflags: 0x2 linked
// Checksum 0x7b30caf7, Offset: 0x7b0
// Size: 0xc4
function function_b05e27da(magnitude = 0.3, duration = 2.5, rumble = "damage_heavy") {
    self endon(#"disconnect");
    earthquake(magnitude, duration, self.origin, 64);
    self function_66337ef1(rumble);
    wait(duration);
    self stoprumble(rumble);
}

// Namespace namespace_12a6a726/namespace_12a6a726
// Params 2, eflags: 0x2 linked
// Checksum 0xde77fba1, Offset: 0x880
// Size: 0x4f0
function function_9212e29c(s_instance, s_chest) {
    if (isdefined(level.var_fdcaf3a6) || isdefined(s_instance) && s_instance flag::get("cleanup")) {
        return;
    }
    level flag::set(#"hash_68097fc64a08e557");
    ex_elevator_overlight_indicator_ = (270, 0, 0);
    struct = spawnstruct();
    struct.origin = s_chest.origin + (0, 0, 5000);
    struct.angles = s_chest.angles;
    struct.instance = s_instance;
    array::thread_all(function_a1ef346b(), &function_b05e27da, 0.5, 6, "buzz_high");
    mdl_fx = util::spawn_model("tag_origin", s_chest.origin);
    mdl_fx fx::play(#"hash_2bfc50a526c67da3", mdl_fx.origin, mdl_fx.angles, 9.5 + 1);
    mdl_fx fx::play(#"hash_714bb51c21bb3c4", mdl_fx.origin + (0, 0, 5000), mdl_fx.angles, 9.5 + 1);
    mdl_fx playsound(#"hash_149945a98c1798a6");
    mdl_fx playloopsound(#"hash_3b2e8e212c9bfb8a");
    wait(1);
    s_chest.scriptmodel = content_manager::spawn_script_model(struct, #"hash_401a47741ffd646f", 1);
    s_chest.var_422ae63e = #"p9_fxanim_zm_gp_chest_01_lrg_bundle";
    mdl_chest = s_chest.scriptmodel;
    mdl_chest notsolid();
    mdl_chest function_619a5c20();
    mdl_chest moveto(s_chest.origin, 9.5);
    mdl_chest rotatevelocity((0, 1080 / 9.5, 0), 9.5);
    wait(9.5);
    level thread function_8fa44fea(mdl_chest);
    mdl_chest clientfield::set("sr_supply_drop_chest_fx", 1);
    glassradiusdamage(mdl_chest.origin, 600, 800, 400);
    mdl_fx stoploopsound();
    mdl_fx playsound(#"hash_6eca5f5eaa236ce3");
    mdl_fx util::deleteaftertime(3);
    trigger = content_manager::spawn_interact(s_chest, &function_19490940, #"hash_409a53f32f7cae42", undefined, 96, undefined, undefined, (0, 0, 16));
    trigger.struct = s_chest;
    trigger.var_cc1fb2d0 = namespace_58949729::function_fd5e77fa(#"gold");
    mdl_chest.trigger = trigger;
    if (!isdefined(s_instance.var_f46ace2)) {
        s_instance.var_f46ace2 = [];
    } else if (!isarray(s_instance.var_f46ace2)) {
        s_instance.var_f46ace2 = array(s_instance.var_f46ace2);
    }
    if (!isinarray(s_instance.var_f46ace2, struct)) {
        s_instance.var_f46ace2[s_instance.var_f46ace2.size] = struct;
    }
}

// Namespace namespace_12a6a726/namespace_12a6a726
// Params 1, eflags: 0x6 linked
// Checksum 0x6a678068, Offset: 0xd78
// Size: 0x124
function private function_8fa44fea(mdl_chest) {
    mdl_chest endon(#"death");
    v_loc = mdl_chest.origin;
    a_vehicles = getentitiesinradius(v_loc, 512, 12);
    foreach (vehicle in a_vehicles) {
        if (vehicle istouching(mdl_chest)) {
            vehicle launchvehicle((0, 0, 50), v_loc);
            waitframe(1);
        }
    }
    mdl_chest solid();
}

// Namespace namespace_12a6a726/namespace_12a6a726
// Params 1, eflags: 0x2 linked
// Checksum 0x1c7c5e6b, Offset: 0xea8
// Size: 0x3d8
function function_19490940(*eventstruct) {
    if (is_true(self.b_started)) {
        return;
    }
    self endon(#"death");
    instance = self.struct.parent;
    mdl_chest = self.struct.scriptmodel;
    mdl_chest endon(#"death");
    self callback::remove_on_trigger(&function_19490940);
    array::thread_all(function_a1ef346b(undefined, mdl_chest.origin, 2048), &function_b05e27da, 0.5, 1);
    var_571f5454 = self.origin;
    self.b_started = 1;
    self setinvisibletoall();
    mdl_chest clientfield::set("sr_supply_drop_chest_fx", 2);
    wait(2);
    namespace_2c949ef8::function_8b6ae460(var_571f5454, function_873ab308(), 500, 1500, undefined, undefined, undefined, undefined, undefined, 1);
    self sethintstring(#"survival/supply_drop_open");
    self setvisibletoall();
    mdl_chest clientfield::set("sr_supply_drop_chest_fx", 3);
    mdl_chest clientfield::set("reward_chest_fx", 3);
    s_result = self waittill(#"trigger");
    self thread namespace_58949729::function_8665f666(s_result);
    level thread zm_intel::function_20c3dbfd(function_a1ef346b(), mdl_chest.origin, 120, 3);
    mdl_chest thread namespace_58949729::function_1e2500f();
    namespace_58949729::function_a5d57202(instance);
    level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"event_complete", #nearbyplayers:1, #var_b0a57f8c:5000, #location:self.origin});
    players = getplayers();
    foreach (player in players) {
        player zm_stats::function_945c7ce2(#"hash_165462f560a0538c", 1);
        player zm_stats::increment_challenge_stat(#"hash_4cecac797f35ee4");
    }
}

// Namespace namespace_12a6a726/namespace_12a6a726
// Params 0, eflags: 0x6 linked
// Checksum 0x7b4783d4, Offset: 0x1288
// Size: 0xa6
function private function_873ab308() {
    var_18d554fc = int(min(level.realm, 4));
    var_aa19ae = #"hash_31755cceac541303" + var_18d554fc + "_variant_" + randomintrange(1, 4);
    if (isdefined(getscriptbundle(var_aa19ae))) {
        return var_aa19ae;
    }
}


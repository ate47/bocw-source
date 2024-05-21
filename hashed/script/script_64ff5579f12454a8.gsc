// Atian COD Tools GSC CW decompiler test
#using script_1e72319526fef936;
#using script_34ab99a4ca1a43d;
#using script_16b1b77a76492c6a;
#using script_2125dd4d7e4788a5;
#using script_4f2e2d1ba0040420;
#using script_6418a6112420d977;
#using script_6b2d896ac43eb90;
#using script_32b18d9fb454babf;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using script_437ce686d29bb81b;
#using scripts\zm_common\zm_intel.gsc;
#using scripts\zm_common\objective_manager.gsc;
#using script_2cb831533cab2794;
#using script_113dd7f0ea2a1d4f;
#using script_cf3d8fde2407bb1;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using script_340a2e805e35f7a2;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_af1ba366;

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x5
// Checksum 0xfda6058b, Offset: 0x3b8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_779f30bffb82a50e", &preinit, undefined, undefined, #"content_manager");
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x2 linked
// Checksum 0xd7cb690b, Offset: 0x408
// Size: 0x794
function preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    var_39539c05 = zm_utility::is_ee_enabled();
    var_95613111 = #"hash_50cc93a10c9d2175";
    var_a0ab1f0d = getgametypesetting(var_95613111);
    /#
        var_39539c05 = getdvarint(#"zm_ee_enabled", 0);
        var_a0ab1f0d = 1;
    #/
    if (!var_39539c05 || !var_a0ab1f0d) {
        return;
    }
    function_f3afb36c();
    level callback::add_callback(#"hash_540f54ade63017ea", &function_22f3bc59);
    content_manager::register_script(#"hash_18be5193d8310f84", &function_7cdcb903);
    content_manager::register_script(#"hash_18be5493d831149d", &function_ba2ed0f6);
    content_manager::register_script(#"hash_18be5393d83112ea", &function_830b8b01);
    var_bc4a7f19 = getdvarint(#"hash_292db25b2be947f", 0);
    var_6e1b5f33 = 0;
    if (level flag::get(#"hash_6d89e1456f61e5ab") || getdvarint(#"hash_c0b5b313ff35979", 0)) {
        if (!var_bc4a7f19) {
            objective_manager::register_script(#"mq4", &function_9ad91439, &function_83ac5bc2, #"ee", #"hash_b418b036831ea2a", var_95613111, 3, #"hash_e747f276dd2bc6c");
            var_6e1b5f33 = 1;
        }
    }
    if (var_6e1b5f33 || var_bc4a7f19) {
        content_manager::register_script(#"hash_18be4d93d83108b8", &namespace_f865255e::function_42818ffd);
        if (var_bc4a7f19) {
            setdvar(#"hash_4c7a7b0813c6765d", "ee");
            level flag::set(#"hash_6d89e1456f61e5ab");
            level flag::set(#"hash_1558183088c6ccff");
        }
    }
    clientfield::register("toplayer", "" + #"hash_5ef33fc92614c211", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_34af381c063f6611", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_6390b0f27a5057c2", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_4bedc093642e28f6", 1, 1, "int");
    clientfield::register("vehicle", "" + #"hash_7d17014634879c10", 1, 1, "counter");
    clientfield::register("vehicle", "" + #"hash_1e59af4706036a79", 1, 1, "int");
    clientfield::register("vehicle", "" + #"hash_3178e1dcaee33fd3", 1, 1, "int");
    clientfield::register("world", "" + #"hash_3d55940ffed44588", 1, 1, "int");
    clientfield::register("world", "" + #"end_of_level_corpses", 1, 1, "int");
    clientfield::register("world", "" + #"end_of_level_exfil_outro_igc_props", 1, 1, "int");
    clientfield::register("world", "" + #"hash_46265c2ce587e427", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_705c1eb33e79522b", 1, 1, "int");
    /#
        if (getdvarint(#"hash_c0b5b313ff35979", 0)) {
            setdvar(#"hash_4c7a7b0813c6765d", "<unknown string>");
            level flag::set(#"hash_4c9bb7a770c9e973");
            level flag::set(#"hash_6d89e1456f61e5ab");
        }
        if (getdvarint(#"hash_5b906952bed5efee", 0)) {
            level flag::set(#"hash_414ba7eb6d94978d");
            level flag::set(#"hash_16f61b20c3d2c610");
        }
        if (getdvarint(#"hash_27ed0b721aab06a", 0)) {
            level flag::set(#"hash_4b060b9820d4141d");
            level thread namespace_e69881c5::player_rover_pos();
        }
    #/
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x2 linked
// Checksum 0xed36a185, Offset: 0xba8
// Size: 0xac
function function_f3afb36c() {
    if (namespace_cf6efd05::function_21d402f4(#"hash_17d8f2b850883bac")) {
        level flag::set(#"hash_4c9bb7a770c9e973");
        function_f73a5c91();
        level thread function_9026620d();
    }
    if (namespace_cf6efd05::function_21d402f4(#"hash_6b772645c0ad8598")) {
        level flag::set(#"hash_6d89e1456f61e5ab");
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x2 linked
// Checksum 0xa4c6ad10, Offset: 0xc60
// Size: 0x94
function function_22f3bc59() {
    if (level flag::get(#"hash_4c9bb7a770c9e973")) {
        namespace_cf6efd05::function_c484a9be(#"hash_17d8f2b850883bac", 1);
    }
    if (level flag::get(#"hash_6d89e1456f61e5ab")) {
        namespace_cf6efd05::function_c484a9be(#"hash_6b772645c0ad8598", 1);
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x2 linked
// Checksum 0xa4b69a26, Offset: 0xd00
// Size: 0x2d8
function function_7cdcb903(instance) {
    if (!getdvarint(#"hash_5d3079579464742a", 0) && (level flag::get(#"hash_4c9bb7a770c9e973") || level.var_b48509f9 < 3) || level flag::get(#"hash_3b46a8a050e7823e")) {
        return;
    }
    level.var_ff7bf48c = [];
    var_2b357ce9 = instance.contentgroups[#"hash_5a4e996db5182fe"][0];
    var_2b357ce9.s_teleport = struct::get(var_2b357ce9.targetname, "target");
    var_edf7d1ed = 1;
    function_6b9a56f7(var_2b357ce9, var_edf7d1ed, 0, 80);
    var_2b357ce9 = instance.contentgroups[#"hash_5a4e896db51814b"][0];
    var_2b357ce9.s_teleport = struct::get(var_2b357ce9.targetname, "target");
    var_edf7d1ed = 2;
    function_6b9a56f7(var_2b357ce9, var_edf7d1ed);
    if (!var_2b357ce9 flag::get(#"hash_5c79c9319298891a")) {
        return;
    }
    var_2b357ce9 = instance.contentgroups[#"hash_5a4e796db517f98"][0];
    var_2b357ce9.s_teleport = struct::get(var_2b357ce9.targetname, "target");
    var_edf7d1ed = 3;
    function_6b9a56f7(var_2b357ce9, var_edf7d1ed);
    if (!var_2b357ce9 flag::get(#"hash_5c79c9319298891a")) {
        return;
    }
    var_2b357ce9 = instance.contentgroups[#"hash_5a4ee96db518b7d"][0];
    var_2b357ce9.s_teleport = struct::get(var_2b357ce9.targetname, "target");
    level thread function_ada90340(var_2b357ce9);
    function_6b9a56f7(var_2b357ce9);
    if (!var_2b357ce9 flag::get(#"hash_5c79c9319298891a")) {
        return;
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 4, eflags: 0x6 linked
// Checksum 0x4df1584e, Offset: 0xfe0
// Size: 0x2a4
function private function_6b9a56f7(var_2b357ce9, var_edf7d1ed, b_timeout = 1, n_radius = 160) {
    mdl_portal = content_manager::spawn_script_model(var_2b357ce9, "tag_origin");
    mdl_portal clientfield::set("" + #"hash_705c1eb33e79522b", 1);
    mdl_portal playloopsound(#"hash_78dbd059bc86c3d6");
    mdl_portal.instance = var_2b357ce9.parent;
    level.var_ff7bf48c[level.var_ff7bf48c.size] = mdl_portal;
    v_offset = (0, 0, -64);
    trigger = spawn("trigger_radius", var_2b357ce9.origin + v_offset, 0, n_radius, 128);
    trigger trigger::add_flags(16);
    trigger.instance = var_2b357ce9.parent;
    trigger.var_2b357ce9 = var_2b357ce9;
    trigger.mdl_portal = mdl_portal;
    trigger.var_3b53f898 = 6;
    var_2b357ce9.trigger = trigger;
    var_2b357ce9.var_40803981 = 1;
    trigger callback::on_trigger(&namespace_7ec6ae9f::function_1c5803d9);
    if (isdefined(var_edf7d1ed)) {
        var_2b357ce9 thread function_60e3239e(var_edf7d1ed);
    }
    if (b_timeout) {
        trigger util::deleteaftertime(45);
        mdl_portal util::deleteaftertime(44);
        s_result = var_2b357ce9 waittilltimeout(45, #"hash_5c79c9319298891a");
        if (s_result._notify === "timeout") {
            var_2b357ce9 notify(#"hash_7365db42af38f201");
            return;
        }
    }
    var_2b357ce9 waittill(#"hash_5bc4e4b06c059733");
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x459b3a74, Offset: 0x1290
// Size: 0x134
function private function_60e3239e(var_edf7d1ed) {
    self flag::wait_till(#"hash_5c79c9319298891a");
    waitframe(1);
    foreach (player in function_a1ef346b()) {
        if (player flag::get(#"hash_9f062ac608bb7e4")) {
            var_99356832 = player;
            break;
        }
    }
    if (isdefined(var_99356832)) {
        var_99356832 zm_vo::function_7622cb70(#"hash_6e97f0d54d966da6" + var_edf7d1ed, randomfloatrange(0.2, 1), 0);
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0xa39bc3f3, Offset: 0x13d0
// Size: 0x2e4
function private function_ada90340(var_2b357ce9) {
    var_dce66956 = var_2b357ce9.s_teleport;
    mdl_device = content_manager::spawn_script_model(var_dce66956, #"hash_30876ea41ba82413");
    mdl_device.angles += (0, -90, 0);
    mdl_device ghost();
    s_result = var_2b357ce9 waittill(#"hash_5bc4e4b06c059733", #"hash_7365db42af38f201");
    if (s_result._notify === #"hash_7365db42af38f201") {
        mdl_device delete();
        return;
    }
    mdl_device show();
    mdl_device playsound(#"hash_28e3e768d951d792");
    mdl_device clientfield::set("" + #"hash_705c1eb33e79522b", 1);
    s_landing = struct::get(var_dce66956.targetname, "target");
    n_wait = mdl_device zm_utility::fake_physicslaunch(s_landing.origin, 1900);
    wait(n_wait);
    mdl_device.origin = s_landing.origin;
    point = function_4ba8fde(#"item_survival_mq4_beacon_device");
    item_drop::drop_item(0, undefined, 1, point.amount, point.id, mdl_device.origin, mdl_device.angles, 0);
    mdl_device deletedelay();
    callback::on_item_pickup(&function_6c8a368);
    wait(2);
    if (!level flag::get(#"hash_4c9bb7a770c9e973")) {
        level fx::play(#"hash_2c182d8faa3b2b9", s_landing.origin, (270, 0, 0), #"hash_4c9bb7a770c9e973");
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x8710dbaa, Offset: 0x16c0
// Size: 0x114
function private function_6c8a368(eventstruct) {
    if (isplayer(self) && eventstruct.item.itementry.name === #"item_survival_mq4_beacon_device") {
        callback::remove_callback(#"on_item_pickup", &function_6c8a368);
        if (!level flag::get(#"hash_537da116d92d952f")) {
            level flag::set(#"hash_4c9bb7a770c9e973");
            function_f73a5c91();
            level thread function_9026620d();
            level zm_vo::function_7622cb70(#"hash_39648ccf27d7b75d", 0.5);
        }
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x2 linked
// Checksum 0x66d8e861, Offset: 0x17e0
// Size: 0x1b4
function function_76b5a507(*s_params) {
    namespace_dbb31ff3::function_170982ca(&function_76b5a507);
    mdl_beacon = level.var_1ea1d494.scriptmodel;
    if (isdefined(mdl_beacon)) {
        var_8746b886 = util::spawn_model(#"hash_30876ea41ba82413", mdl_beacon gettagorigin("screen_exfil_jnt") + (-4.5, 15.5, 0), mdl_beacon gettagangles("screen_exfil_jnt") + (78, 0, 0));
        var_8746b886 setscale(0.75);
        var_8746b886 linkto(mdl_beacon, "screen_exfil_jnt", (-4.5, 15.5, 0), (78, 0, 0));
        var_8746b886 playsound(#"hash_3b5cbbf2a7018a89");
        var_8746b886 playloopsound(#"hash_5c3886dfcd812df");
        mdl_beacon.var_8746b886 = var_8746b886;
        mdl_beacon showpart("screen_respond_jnt");
        level thread function_f43ecee8(mdl_beacon);
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 2, eflags: 0x2 linked
// Checksum 0x410d97ca, Offset: 0x19a0
// Size: 0x254
function function_57099652(*machine, *trigger) {
    level notify(#"hash_21533c72f7fcd47b");
    function_a9c9d2c9();
    if (level flag::get(#"hash_4c9bb7a770c9e973")) {
        foreach (e_player in function_a1ef346b()) {
            e_player clientfield::set_to_player("" + #"hash_583ce51cd4d9a904", 1);
        }
        level flag::set(#"hash_6d89e1456f61e5ab");
        namespace_cf6efd05::function_c484a9be(#"hash_6b772645c0ad8598", 1);
        mdl_beacon = level.var_1ea1d494.scriptmodel;
        if (isdefined(mdl_beacon.var_8746b886)) {
            mdl_beacon.var_8746b886 stoploopsound();
        }
        namespace_18bbc38e::function_8e64a2b1("wz_sanatorium", #"ee", #"mq4");
        level zm_vo::function_7622cb70(#"hash_6a0064de3091a957", 1);
        n_line = randomintrangeinclusive(1, 3);
        level zm_vo::function_7622cb70(#"hash_16a4d7a3a801028f" + n_line, 0.5);
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x2 linked
// Checksum 0xe046cd15, Offset: 0x1c00
// Size: 0xfc
function function_f73a5c91() {
    callback::on_connect(&function_8cb966d6);
    foreach (e_player in getplayers()) {
        e_player thread function_8cb966d6();
    }
    namespace_dbb31ff3::function_ef5e5f3(&function_76b5a507);
    namespace_dbb31ff3::function_bf90331e("beacon_choice_ravenov", &function_57099652);
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x2 linked
// Checksum 0xb3bae89d, Offset: 0x1d08
// Size: 0x7c
function function_8cb966d6() {
    level endon(#"end_game", #"hash_321d1e0f446a8d6d");
    self endon(#"disconnect");
    while (!isdefined(level.var_8bef1f53)) {
        waitframe(1);
    }
    level.var_8bef1f53 sr_beacon_menu::function_666779d(self, 2);
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x2 linked
// Checksum 0x2fb4b892, Offset: 0x1d90
// Size: 0x15c
function function_a9c9d2c9() {
    callback::remove_on_connect(&function_8cb966d6);
    level notify(#"hash_321d1e0f446a8d6d");
    namespace_dbb31ff3::function_170982ca(&function_76b5a507);
    namespace_dbb31ff3::function_b26aed81("beacon_choice_ravenov");
    if (isdefined(level.var_8bef1f53)) {
        foreach (e_player in getplayers()) {
            level.var_8bef1f53 sr_beacon_menu::function_666779d(e_player, 0);
        }
    }
    mdl_beacon = level.var_1ea1d494.scriptmodel;
    if (isdefined(mdl_beacon)) {
        mdl_beacon hidepart("screen_respond_jnt");
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x2 linked
// Checksum 0x3c20d626, Offset: 0x1ef8
// Size: 0x8c
function function_f43ecee8(mdl_beacon) {
    if (!isdefined(mdl_beacon)) {
        return;
    }
    level endon(#"end_game");
    mdl_beacon endon(#"death");
    level waittill(#"hash_29edd9425510b40d", #"hash_66a72ae427cfc39a");
    mdl_beacon hidepart("screen_respond_jnt");
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x2 linked
// Checksum 0x1c4348d7, Offset: 0x1f90
// Size: 0xac
function function_9026620d() {
    level endon(#"end_game", #"hash_21533c72f7fcd47b");
    level waittill(#"hash_345e9169ebba28fb", #"hash_3e765c26047c9f54");
    if (level flag::get(#"hash_4c9bb7a770c9e973")) {
        namespace_cf6efd05::function_c484a9be(#"hash_17d8f2b850883bac", 1);
        function_a9c9d2c9();
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x2 linked
// Checksum 0x1865fc04, Offset: 0x2048
// Size: 0x274
function function_ba2ed0f6(instance) {
    if (!level flag::get(#"hash_6d89e1456f61e5ab")) {
        return;
    }
    var_28bf3706 = instance.contentgroups[#"heli_crash"][0];
    content_manager::spawn_script_model(var_28bf3706, #"hash_6f4bd8715d49e317", 0, 0);
    var_33c42924 = content_manager::spawn_script_model(var_28bf3706, #"hash_45d5f1151627a0d2", 0, 0);
    var_33c42924 disconnectpaths(2, 0);
    level flag::wait_till(#"all_players_spawned");
    if (namespace_cf6efd05::function_85b812c9()) {
        level flag::wait_till(#"initial_fade_in_complete");
    }
    level clientfield::set("" + #"hash_3d55940ffed44588", 1);
    level exploder::exploder("fxexp_mq_heli_crash");
    level thread function_45b4534b();
    v_offset = (0, 0, -400);
    trigger = spawn("trigger_radius", var_28bf3706.origin + v_offset, 0, 800, 800);
    trigger.instance = instance;
    trigger callback::on_trigger(&function_f8b96957);
    instance.var_1c61fe4b = instance.contentgroups[#"heli_audio"][0];
    instance.var_a9ef21d = content_manager::spawn_script_model(instance.var_1c61fe4b, #"hash_20f9a15d3e077602");
    level thread namespace_e69881c5::function_206ee608();
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x108884c7, Offset: 0x22c8
// Size: 0x10c
function private function_f8b96957(eventstruct) {
    player = eventstruct.activator;
    if (!isplayer(player) || level flag::get(#"hash_11e8bad986624085") || is_true(self.b_triggered)) {
        return;
    }
    self.b_triggered = 1;
    self callback::remove_on_trigger(&function_f8b96957);
    self function_b1f268c1(self.instance.contentgroups[#"heli_crash"][0].origin, self.instance);
    self deletedelay();
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 2, eflags: 0x6 linked
// Checksum 0x8acd2799, Offset: 0x23e0
// Size: 0x24e
function private function_b1f268c1(v_loc, instance) {
    level flag::set(#"hash_11e8bad986624085");
    trigger = content_manager::spawn_interact(instance.var_1c61fe4b, &function_c8fba110, #"hash_4f43eb02fbcce2f5", undefined, undefined, undefined, 0);
    trigger.instance = instance;
    trigger.b_activated = 1;
    trigger usetriggerrequirelookat(0);
    level zm_vo::function_7622cb70(#"hash_c41aee239ce8b26");
    level zm_vo::function_7622cb70(#"hash_6587f9c1e0ab3a1f", 1);
    a_spawns = array::randomize(isdefined(instance.contentgroups[#"hash_39aeaa4632e834e2"]) ? instance.contentgroups[#"hash_39aeaa4632e834e2"] : []);
    self callback::on_trigger(&namespace_2c949ef8::function_39ee3b21, undefined, a_spawns);
    namespace_2c949ef8::function_8b6ae460(v_loc, undefined, 512, 2048, undefined, undefined, undefined, undefined, 512);
    function_701ee731(v_loc);
    instance.var_a9ef21d playloopsound(#"hash_2e77024e1f0a29f1");
    /#
        iprintlnbold("<unknown string>");
    #/
    level flag::set(#"hash_2a08b38a93336dbf");
    trigger sethintstring(#"hash_1114a7cc4d89285c");
    trigger.b_activated = undefined;
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x2c9a2be1, Offset: 0x2638
// Size: 0x376
function private function_c8fba110(eventstruct) {
    player = eventstruct.activator;
    if (!isplayer(player) || is_true(self.b_activated)) {
        return;
    }
    self triggerenable(0);
    self.b_activated = 1;
    player function_bc82f900("zm_interact_rumble");
    foreach (player in getplayers()) {
        player thread zm_intel::collect_intel(#"zmintel_survival_omega_audiolog_14", undefined, undefined, 1);
    }
    self.instance.var_a9ef21d stoploopsound();
    self.instance.var_a9ef21d playsound(#"hash_ea30fff000de600");
    self.instance.var_a9ef21d thread scene::play(#"p9_zm_ndu_reel_to_reel_audio_recorder_01_server_bundle", self.instance.var_a9ef21d);
    level flag::set(#"hash_414ba7eb6d94978d");
    self.instance.var_a9ef21d zm_vo::function_d6f8bbd9(#"hash_68609aac048f6529");
    self.instance.var_a9ef21d zm_vo::function_d6f8bbd9(#"hash_686099ac048f6376");
    self.instance.var_a9ef21d zm_vo::function_d6f8bbd9(#"hash_686098ac048f61c3");
    self.instance.var_a9ef21d zm_vo::function_d6f8bbd9(#"hash_686097ac048f6010");
    self.instance.var_a9ef21d zm_vo::function_d6f8bbd9(#"hash_68609eac048f6bf5");
    level flag::set(#"hash_16f61b20c3d2c610");
    self.instance.var_a9ef21d playsound(#"hash_19cebf2f0254187a");
    self.instance.var_a9ef21d scene::stop(#"p9_zm_ndu_reel_to_reel_audio_recorder_01_server_bundle");
    self triggerenable(1);
    self.b_activated = 0;
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 3, eflags: 0x6 linked
// Checksum 0x3010b60c, Offset: 0x29b8
// Size: 0x174
function private function_701ee731(v_loc, var_751350bb = 800, n_timeout = 120) {
    n_timeout = gettime() + int(n_timeout * 1000);
    while (gettime() < n_timeout) {
        a_ai = arraysortclosest(getaiteamarray(#"axis"), v_loc, undefined, undefined, var_751350bb);
        foreach (ai in a_ai) {
            if (ai.current_state.name === #"wander") {
                arrayremovevalue(a_ai, ai);
            }
        }
        if (!a_ai.size) {
            break;
        }
        wait(0.25);
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x6 linked
// Checksum 0xa30f7253, Offset: 0x2b38
// Size: 0x318
function private function_45b4534b() {
    level flag::wait_till(#"hash_7e250b62cf326bf9");
    wait(2.5);
    if (level flag::get(#"hash_16f61b20c3d2c610")) {
        return;
    }
    n_line = randomintrangeinclusive(1, 3);
    level zm_vo::function_7622cb70(#"hash_6bc4e8966adf89c6" + n_line);
    n_line = randomintrangeinclusive(1, 3);
    level zm_vo::function_7622cb70(#"hash_c0ed255bb2e332b" + n_line, 1);
    foreach (player in getplayers()) {
        level.var_31028c5d prototype_hud::set_active_objective_string(player, #"hash_63a0d1633ac6a8c9");
        level.var_31028c5d prototype_hud::function_817e4d10(player, 2);
    }
    level flag::wait_till(#"hash_11e8bad986624085");
    wait(3);
    foreach (player in getplayers()) {
        level.var_31028c5d prototype_hud::set_active_objective_string(player, #"hash_763264a084691d1b");
    }
    level flag::wait_till(#"hash_2a08b38a93336dbf");
    foreach (player in getplayers()) {
        level.var_31028c5d prototype_hud::set_active_objective_string(player, #"hash_7c54d598bc324520");
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x2 linked
// Checksum 0x9914ff5c, Offset: 0x2e58
// Size: 0xd4
function function_830b8b01(instance) {
    if (!level flag::get(#"hash_6d89e1456f61e5ab")) {
        return;
    }
    level thread function_f5f14ffe(instance);
    level flag::wait_till(#"hash_414ba7eb6d94978d");
    level thread function_a5864a0e();
    level thread function_99e393f3(instance);
    level thread function_e7a0cf81(instance);
    level flag::wait_till(#"hash_4b060b9820d4141d");
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x167c82a9, Offset: 0x2f38
// Size: 0x2f6
function private function_f5f14ffe(instance) {
    level flag::wait_till("moving_chest_enabled");
    if (isdefined(level.var_2c678640.zbarrier.var_e55c8b4e)) {
        zm_utility::function_bc5a54a8(level.var_2c678640.zbarrier.var_e55c8b4e);
        level.var_2c678640.zbarrier.var_e55c8b4e = undefined;
    }
    if (isdefined(level.var_2c678640.trigger)) {
        level.var_2c678640.trigger delete();
    }
    if (isdefined(level.var_2c678640.zbarrier)) {
        level.var_2c678640.zbarrier delete();
    }
    content_manager::spawn_script_model(level.var_2c678640, #"hash_7fb5646204aceaf6");
    level flag::wait_till(#"hash_414ba7eb6d94978d");
    level.var_2c678640.angles += (0, 90, 0);
    playfx(#"hash_5ee919420dab816a", level.var_2c678640.origin + (0, 0, 10), anglestoforward(level.var_2c678640.angles), anglestoup(level.var_2c678640.angles));
    wait(0.2);
    instance.var_af44ab5f = content_manager::spawn_script_model(level.var_2c678640, #"hash_7f311e8d38b7d936");
    instance.var_af44ab5f notsolid();
    trigger = content_manager::spawn_interact(level.var_2c678640, &function_4cb97b84, #"hash_2829798affdda59e", undefined, 96);
    trigger.instance = instance;
    /#
        while (true) {
            sphere(level.var_2c678640.origin - (0, 0, 24), 16, (1, 1, 0));
            waitframe(1);
        }
    #/
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x91860b2a, Offset: 0x3238
// Size: 0x84c
function private function_4cb97b84(eventstruct) {
    player = eventstruct.activator;
    var_af44ab5f = self.instance.var_af44ab5f;
    if (!isdefined(var_af44ab5f) || !isplayer(player) || is_true(player.laststand)) {
        return;
    }
    if (!is_true(self.b_activated)) {
        self.b_activated = 1;
        self triggerenable(0);
        playfxontag(#"hash_2620f801cec5ff00", var_af44ab5f, "j_spine4");
        player function_bc82f900("zm_interact_rumble");
        var_af44ab5f playsound(#"hash_1cb2156b9c85b526");
        var_af44ab5f playloopsound(#"hash_16c9b69ca21b8cb9");
        scene::add_scene_func(#"p9_sr_mq4_magic_box_bunny_bundle", &function_ea2f5d05, "dance");
        var_af44ab5f thread scene::play(#"p9_sr_mq4_magic_box_bunny_bundle", var_af44ab5f);
        namespace_2c949ef8::function_8b6ae460(self.origin, undefined, 500, 1500);
        function_701ee731(self.origin);
        var_af44ab5f playsound(#"hash_1f204d7a336581e8");
        var_af44ab5f.var_41dec230 moveto(level.var_2c678640.origin + (0, 0, 8), 1.5);
        var_af44ab5f.var_41dec230 waittill(#"movedone");
        var_af44ab5f.var_41dec230 delete();
        playfxontag(#"hash_2620f801cec5ff00", var_af44ab5f, "j_spine4");
        callback::on_item_pickup(&function_f37669b6);
        var_cc1fb2d0 = namespace_58949729::function_fd5e77fa(#"gold");
        n_items = 15;
        dropstruct = {#origin:level.var_2c678640.origin + (0, 0, 24), #angles:level.var_2c678640.angles, #var_738dfc81:n_items};
        dropstruct thread namespace_65181344::function_fd87c780(var_cc1fb2d0, n_items, 4);
        dropstruct thread namespace_65181344::function_fd87c780(#"sr_mq4_bunny_intel_drop", 1, 4);
        /#
            iprintlnbold("<unknown string>");
        #/
        self triggerenable(1);
        self.b_available = 1;
        level callback::on_laststand(&function_72caec31);
        level callback::on_disconnect(&function_6004e022);
        return;
    }
    if (is_true(self.b_available)) {
        self.b_available = 0;
        player function_bc82f900("zm_interact_rumble");
        scene::remove_scene_func(#"p9_sr_mq4_magic_box_bunny_bundle", &function_ea2f5d05, "dance");
        var_af44ab5f stoploopsound();
        var_af44ab5f playsound(#"hash_298c8c0c83309783");
        var_af44ab5f scene::stop(#"p9_sr_mq4_magic_box_bunny_bundle");
        var_af44ab5f.trigger = self;
        foreach (e_player in getplayers()) {
            if (e_player != player) {
                self setinvisibletoplayer(e_player);
            }
        }
        self usetriggerrequirelookat(0);
        self sethintstring(#"hash_63195b50ebd87df5");
        self enablelinkto();
        self linkto(var_af44ab5f, "tag_origin");
        tagname = "tag_stowed_back";
        if (!player haspart(tagname)) {
            tagname = undefined;
        }
        var_af44ab5f linkto(player, tagname, (18, -5, 2), (0, 245, 90));
        playfxontag(#"hash_2620f801cec5ff00", var_af44ab5f, "j_spine4");
        if (!level flag::get(#"hash_32f5b780908d3c59")) {
            level flag::set(#"hash_32f5b780908d3c59");
            if (level flag::get(#"hash_b1eeb838255a28b")) {
                level thread zm_vo::function_7622cb70(#"hash_40ca0d2a94efaf1b", 0.5);
            } else {
                level thread zm_vo::function_7622cb70(#"hash_721f8a35d308dba0", 0.5);
            }
        }
        player.var_67aa3392 = var_af44ab5f;
        if (!isdefined(player.var_67aa3392)) {
            return;
        }
        player flag::set(#"hash_35735a804a34da04");
        player clientfield::set_to_player("" + #"hash_5ef33fc92614c211", 1);
        player thread objective_retrieval::function_4be8796(self.instance);
        player thread objective_retrieval::function_d52adbbc(self.instance);
        player thread function_c132c1b1();
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x2 linked
// Checksum 0xbd7ce477, Offset: 0x3a90
// Size: 0xcc
function function_f37669b6(eventstruct) {
    item = eventstruct.item;
    if (isplayer(self) && item.itementry.name === #"item_zmintel_survival_requiem_document_15") {
        array::thread_all(getplayers(), &zm_intel::collect_intel, #"zmintel_survival_requiem_document_15");
        callback::remove_callback(#"on_item_pickup", &function_f37669b6);
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x2 linked
// Checksum 0x35c08e70, Offset: 0x3b68
// Size: 0xf4
function function_ea2f5d05(a_ents) {
    ent = a_ents[#"bunny"];
    var_41dec230 = util::spawn_model("tag_origin", ent.origin, ent.angles);
    ent linkto(var_41dec230);
    ent.var_41dec230 = var_41dec230;
    var_41dec230 moveto(ent.origin + (0, 0, 75), 2);
    var_41dec230 waittill(#"movedone");
    wait(0.5);
    var_41dec230 bobbing((0, 0, 1), 15, 4);
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x6 linked
// Checksum 0x1ac0b263, Offset: 0x3c68
// Size: 0x106
function private function_c132c1b1() {
    self endon(#"death", #"disconnect", #"player_downed", #"hash_3c90e32bc140ebf3");
    level endon(#"hash_1d1fe20ab0d24d9e");
    while (self flag::get(#"hash_35735a804a34da04")) {
        isgamepad = self gamepadusedlast();
        if (!isgamepad && self buttonbitstate("BUTTON_BIT_ANY_DOWN") || isgamepad && self actionslottwobuttonpressed()) {
            self thread function_63422d64();
        }
        waitframe(1);
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x25423e6e, Offset: 0x3d78
// Size: 0x2c
function private function_72caec31(*eventstruct) {
    if (isdefined(self.var_67aa3392)) {
        self function_63422d64();
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x1e2be57b, Offset: 0x3db0
// Size: 0x6c
function private function_6004e022(*eventstruct) {
    if (isdefined(self.var_67aa3392)) {
        self function_63422d64();
        if (level.zm_hint_text zm_hint_text::is_open(self)) {
            level.zm_hint_text zm_hint_text::close(self);
        }
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x6 linked
// Checksum 0x5aef8a52, Offset: 0x3e28
// Size: 0x366
function private function_63422d64() {
    self flag::clear(#"hash_35735a804a34da04");
    self notify(#"hash_6d2d12b8afe43c8e");
    self clientfield::set_to_player("" + #"hash_5ef33fc92614c211", 0);
    self thread objective_retrieval::function_1a58f438();
    self function_bc82f900("zm_interact_rumble");
    if (isdefined(self.var_67aa3392)) {
        self.var_67aa3392 unlink();
        self.var_67aa3392.angles = (0, self.angles[1], 0);
        self.var_67aa3392.origin = self.origin + (0, 0, 4);
        self.var_67aa3392 thread scene::play(#"p9_sr_mq4_magic_box_bunny_bundle", self.var_67aa3392);
        playfxontag(#"hash_2620f801cec5ff00", self.var_67aa3392, "j_spine4");
        self.var_67aa3392 playsound(#"hash_5c0841de58dda162");
        self.var_67aa3392 playloopsound(#"hash_16c9b69ca21b8cb9");
        self.var_67aa3392.trigger unlink();
        self.var_67aa3392.trigger.origin = self.var_67aa3392.origin + (0, 0, 32);
        self.var_67aa3392.trigger triggerenable(1);
        self.var_67aa3392.trigger.b_available = 1;
        self.var_67aa3392.trigger sethintstring(#"hash_2829798affdda59e");
        foreach (e_player in getplayers()) {
            self.var_67aa3392.trigger setvisibletoplayer(e_player);
        }
        self.var_67aa3392.trigger usetriggerrequirelookat(0);
        /#
            level thread function_6fcaf33e(self.var_67aa3392);
        #/
        self.var_67aa3392 = undefined;
    }
}

/#

    // Namespace namespace_af1ba366/namespace_af1ba366
    // Params 1, eflags: 0x4
    // Checksum 0xed224004, Offset: 0x4198
    // Size: 0xae
    function private function_6fcaf33e(var_af44ab5f) {
        self notify("<unknown string>");
        self endon("<unknown string>");
        while (isdefined(var_af44ab5f.trigger)) {
            var_2b4ca868 = var_af44ab5f gettagorigin("<unknown string>");
            debugstar(var_2b4ca868);
            debugstar(var_af44ab5f.trigger.origin, 10, (0, 1, 0));
            waitframe(10);
        }
    }

#/

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x36a9bc5d, Offset: 0x4250
// Size: 0xad0
function private function_99e393f3(instance) {
    s_orb = array::random(isdefined(instance.contentgroups[#"orb_spawn"]) ? instance.contentgroups[#"orb_spawn"] : []);
    mdl_orb = content_manager::spawn_script_model(s_orb, #"hash_53079af25eecf35b");
    mdl_orb setscale(0.5);
    mdl_orb playsound(#"hash_55b5e35f7d261fee");
    mdl_orb playloopsound(#"hash_5dc7884f02e73776");
    mdl_orb val::set(#"hash_3aa2d77611cb6b8b", "takedamage", 1);
    mdl_orb val::set(#"hash_3aa2d77611cb6b8b", "allowdeath", 0);
    instance.mdl_orb = mdl_orb;
    if (isdefined(level.var_c39a4b8f)) {
        level.var_c39a4b8f.mdl_orb = mdl_orb;
    }
    mdl_orb endon(#"death");
    mdl_orb fx::play(#"hash_54e06747246909e3", mdl_orb.origin + (0, 0, 22), mdl_orb.angles, #"hash_544ad67b059004d3", 1);
    level callback::add_callback(#"on_host_migration_end", &function_a9d3bd70);
    util::wait_network_frame();
    mdl_orb ghost();
    var_63ef2885 = undefined;
    var_6ba3d26a = [];
    while (!level flag::get(#"hash_4b060b9820d4141d")) {
        s_result = mdl_orb waittill(#"damage", #"hash_5261a9b309eef309");
        if (level flag::get_all(array(#"hash_1d1fe20ab0d24d9e", #"hash_24be0dad9e05661a"))) {
            return;
        }
        if (s_result._notify === "damage") {
            if (!isplayer(s_result.attacker) || s_result.mod === "MOD_CRUSH") {
                continue;
            }
            if (!level flag::get(#"hash_52ea7bbdad9d23f6")) {
                level flag::set(#"hash_52ea7bbdad9d23f6");
                level thread function_142f7eb7();
            }
            if (!isdefined(var_6ba3d26a)) {
                var_6ba3d26a = [];
            } else if (!isarray(var_6ba3d26a)) {
                var_6ba3d26a = array(var_6ba3d26a);
            }
            if (!isinarray(var_6ba3d26a, s_result.attacker.angles)) {
                var_6ba3d26a[var_6ba3d26a.size] = s_result.attacker.angles;
            }
            mdl_orb thread function_7d88cc57();
            mdl_orb playsound(#"hash_641d6edcbf8111c1");
            if (!isdefined(var_63ef2885)) {
                var_63ef2885 = gettime();
                mdl_orb util::delay_notify(float(2000) / 1000, #"hash_5261a9b309eef309");
            }
            continue;
        }
        mdl_orb notify(#"hash_4588a3de47c44f6f");
        mdl_orb.var_b8477436 = 0;
        var_63ef2885 = undefined;
        var_d297efab = (0, 0, 0);
        foreach (v_direction in var_6ba3d26a) {
            var_d297efab += v_direction;
        }
        var_657dc854 = var_d297efab / max(var_6ba3d26a.size, 1);
        var_657dc854 = (0, absangleclamp360(var_657dc854[1]), 0);
        var_853a6020 = 0;
        var_5848577a = arraycopy(isdefined(instance.contentgroups[#"hash_1d34895d7e866b6f"]) ? instance.contentgroups[#"hash_1d34895d7e866b6f"] : []);
        var_d22c2d89 = arraycopy(var_5848577a);
        while (var_5848577a.size) {
            v_dest = mdl_orb.origin + anglestoforward(var_657dc854) * (1500 + var_853a6020);
            var_9f3b9a91 = arraygetclosest(v_dest, var_5848577a);
            if (!isdefined(var_9f3b9a91)) {
                arrayremovevalue(var_5848577a, undefined);
                continue;
            }
            if (var_9f3b9a91.origin === mdl_orb.var_8d1c63ac) {
                arrayremovevalue(var_d22c2d89, var_9f3b9a91);
                arrayremovevalue(var_5848577a, var_9f3b9a91);
                continue;
            }
            var_af6fb377 = vectortoangles(var_9f3b9a91.origin - mdl_orb.origin);
            var_b45fc900 = math::angle_dif(int(absangleclamp360(var_af6fb377[1])), int(var_657dc854[1]));
            if (abs(var_b45fc900) > 45) {
                if (var_853a6020 > 2500) {
                    arrayremovevalue(var_5848577a, var_9f3b9a91);
                    var_853a6020 = 0;
                    if (var_5848577a.size == 0) {
                        var_63ef2885 = undefined;
                        var_9f3b9a91 = arraygetclosest(v_dest, var_d22c2d89);
                        if (isdefined(var_9f3b9a91)) {
                            mdl_orb.var_8d1c63ac = var_9f3b9a91.origin;
                        } else {
                            mdl_orb.var_8d1c63ac = mdl_orb.origin;
                        }
                    }
                } else {
                    var_853a6020 += 500;
                }
                continue;
            }
            mdl_orb.var_8d1c63ac = var_9f3b9a91.origin;
            break;
        }
        var_6ba3d26a = [];
        n_dist = distance(mdl_orb.origin, mdl_orb.var_8d1c63ac);
        n_move_time = n_dist / 400;
        mdl_orb fx::play(#"hash_10e51613cc775f48", mdl_orb.origin + (0, 0, 22), mdl_orb.angles, #"hash_4708ec2a663db459", 1);
        mdl_orb playsound(#"hash_3d8d2041fe8f5bbf");
        mdl_orb playloopsound(#"hash_5455d7addafa1122");
        level flag::clear(#"hash_24be0dad9e05661a");
        mdl_orb moveto(mdl_orb.var_8d1c63ac, max(1, n_move_time));
        mdl_orb waittill(#"movedone");
        mdl_orb notify(#"hash_4708ec2a663db459");
        mdl_orb playsound(#"hash_2d17bb0a3d5bdb37");
        mdl_orb playloopsound(#"hash_5dc7884f02e73776");
        if (var_9f3b9a91.script_noteworthy === #"hash_5872000773b81e") {
            level flag::set(#"hash_24be0dad9e05661a");
            if (level flag::get(#"hash_1d1fe20ab0d24d9e")) {
                return;
            }
            if (!level flag::get(#"hash_b1eeb838255a28b")) {
                level flag::set(#"hash_b1eeb838255a28b");
                level thread function_74b6fb1(var_9f3b9a91);
            }
        }
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x3bdbfa96, Offset: 0x4d28
// Size: 0xac
function private function_a9d3bd70(*eventstruct) {
    if (isdefined(level.var_c39a4b8f.mdl_orb)) {
        level.var_c39a4b8f.mdl_orb fx::play(#"hash_54e06747246909e3", level.var_c39a4b8f.mdl_orb.origin + (0, 0, 22), level.var_c39a4b8f.mdl_orb.angles, #"hash_544ad67b059004d3", 1);
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x6 linked
// Checksum 0x9b7ab1a, Offset: 0x4de0
// Size: 0x6c
function private function_142f7eb7() {
    level zm_vo::function_7622cb70(#"hash_2034c2f79f570e13");
    n_line = randomintrangeinclusive(1, 3);
    level zm_vo::function_7622cb70(#"hash_4e388c5febd5565" + n_line);
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x16a9a64d, Offset: 0x4e58
// Size: 0x144
function private function_74b6fb1(var_1c4dd56d) {
    level endon(#"hash_1d1fe20ab0d24d9e");
    trigger = spawn("trigger_radius", var_1c4dd56d.origin + (0, 0, -150), 256, 800, 128);
    trigger.target = var_1c4dd56d.targetname;
    trigger waittill(#"trigger_look");
    trigger deletedelay();
    n_line = randomintrangeinclusive(1, 3);
    level zm_vo::function_7622cb70(#"hash_605e192095314641" + n_line);
    n_line = randomintrangeinclusive(1, 3);
    level zm_vo::function_7622cb70(#"hash_72ef359bb13a200" + n_line);
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x6 linked
// Checksum 0xc8163b1b, Offset: 0x4fa8
// Size: 0x128
function private function_7d88cc57() {
    self endon(#"death", #"hash_4588a3de47c44f6f");
    if (is_true(self.var_b8477436)) {
        return;
    }
    self.var_b8477436 = 1;
    while (true) {
        self bobbing((randomfloatrange(-0.5, 0.5), randomfloatrange(-0.5, 0.5), randomfloatrange(-0.5, 0.5)), 15, 0.2);
        wait(randomfloatrange(0.2, 0.2 * 4));
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x90e1e9cd, Offset: 0x50d8
// Size: 0x21c
function private function_e7a0cf81(instance) {
    level flag::wait_till(#"hash_32f5b780908d3c59");
    var_7a312ce5 = spawnstruct();
    var_7a312ce5.origin = level.var_c39a4b8f gettagorigin("tag_cage_attach");
    var_7a312ce5.angles = level.var_c39a4b8f gettagangles("tag_cage_attach");
    trigger = content_manager::spawn_interact(var_7a312ce5, &function_6f51b8ea, #"hash_2b816e700692aa46");
    trigger.instance = instance;
    trigger usetriggerrequirelookat(0);
    while (isdefined(trigger) && !level flag::get(#"hash_1d1fe20ab0d24d9e")) {
        foreach (player in function_a1ef346b()) {
            if (player flag::get(#"hash_35735a804a34da04") && player istouching(trigger)) {
                trigger setvisibletoplayer(player);
                continue;
            }
            trigger setinvisibletoplayer(player);
        }
        wait(0.25);
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x8e26422d, Offset: 0x5300
// Size: 0x40c
function private function_6f51b8ea(eventstruct) {
    player = eventstruct.activator;
    if (!isplayer(player) || !player flag::get(#"hash_35735a804a34da04")) {
        return;
    }
    self triggerenable(0);
    level flag::set(#"hash_1d1fe20ab0d24d9e");
    player flag::clear(#"hash_35735a804a34da04");
    player notify(#"hash_6d2d12b8afe43c8e");
    if (!level flag::get(#"hash_24be0dad9e05661a")) {
        level thread zm_vo::function_7622cb70(#"hash_14097c38f792fcfc", 0.5);
    }
    player clientfield::set_to_player("" + #"hash_5ef33fc92614c211", 0);
    player thread objective_retrieval::function_1a58f438();
    player function_bc82f900("zm_interact_rumble");
    self.instance notify(#"objective_ended");
    level thread function_eb56183c();
    wait(1);
    playfx(#"hash_5ee919420dab816a", level.var_c39a4b8f gettagorigin("tag_cage_attach") + (0, 0, 8));
    wait(0.2);
    self.instance.var_af44ab5f unlink();
    self.instance.var_af44ab5f linkto(level.var_c39a4b8f, "tag_cage_attach", (0, 0, 0), (0, 180, 0));
    playfxontag(#"hash_2620f801cec5ff00", self.instance.var_af44ab5f, "j_spine4");
    self.instance.var_af44ab5f thread scene::play(#"p9_sr_mq4_magic_box_bunny_bundle", self.instance.var_af44ab5f);
    self.instance.var_af44ab5f playsound(#"hash_1f204d7a336581e8");
    self.instance.var_af44ab5f playloopsound(#"hash_16c9b69ca21b8cb9");
    level callback::remove_on_laststand(&function_72caec31);
    level callback::remove_on_disconnect(&function_6004e022);
    level thread function_7ae1d982(self.instance);
    if (isdefined(self.instance.var_af44ab5f.trigger)) {
        self.instance.var_af44ab5f.trigger delete();
    }
    self deletedelay();
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x2 linked
// Checksum 0x6a5d58b8, Offset: 0x5718
// Size: 0x84
function function_eb56183c() {
    level.var_c39a4b8f clientfield::increment("" + #"hash_7d17014634879c10");
    wait(getanimlength("p9_fxanim_sv_payload_atv_cage_open_anim"));
    wait(getanimlength("p9_fxanim_sv_payload_atv_cage_close_anim"));
    level flag::set(#"hash_1fae4b16fa196a8b");
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x419d5f4, Offset: 0x57a8
// Size: 0x364
function private function_7ae1d982(instance) {
    if (level flag::get(#"hash_4b060b9820d4141d")) {
        return;
    }
    level flag::wait_till_all(array(#"hash_1d1fe20ab0d24d9e", #"hash_24be0dad9e05661a", #"hash_1fae4b16fa196a8b"));
    mdl_orb = instance.mdl_orb;
    do {
        wait(1);
        a_players = function_a1ef346b(#"any", mdl_orb.origin, 512);
    } while (!a_players.size);
    wait(1);
    v_offset = (0, 0, -5);
    str_tag = "tag_cage_attach";
    var_ec6068b9 = level.var_c39a4b8f gettagorigin(str_tag);
    mdl_orb playsound(#"hash_3d8d2041fe8f5bbf");
    mdl_orb stoploopsound();
    mdl_orb moveto(var_ec6068b9 + v_offset, 1.25, 1);
    mdl_orb waittill(#"movedone");
    mdl_orb notify(#"hash_544ad67b059004d3");
    mdl_orb notify(#"hash_4708ec2a663db459");
    level callback::remove_callback(#"on_host_migration_end", &function_a9d3bd70);
    mdl_orb playsound(#"hash_517c244152f5bff5");
    mdl_orb fx::play(#"hash_1b9b90f45278a5ae", mdl_orb.origin + (0, 0, 22), mdl_orb.angles);
    mdl_orb linkto(level.var_c39a4b8f, str_tag, v_offset, (0, 0, 0));
    mdl_orb fx::play(#"hash_c36745220550934", mdl_orb.origin + (0, 0, 22), mdl_orb.angles, "death", 1);
    mdl_orb playloopsound(#"hash_20abf82a386d4b4e");
    level.var_c39a4b8f.mdl_orb = mdl_orb;
    if (isdefined(instance.var_af44ab5f)) {
        instance.var_af44ab5f delete();
    }
    level flag::set(#"hash_4b060b9820d4141d");
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 0, eflags: 0x6 linked
// Checksum 0x313e10e9, Offset: 0x5b18
// Size: 0x198
function private function_a5864a0e() {
    level flag::wait_till(#"all_players_spawned");
    level flag::wait_till(#"hash_16f61b20c3d2c610");
    wait(0.5);
    n_line = randomintrangeinclusive(1, 3);
    level zm_vo::function_7622cb70(#"hash_48360d46842bebbf" + n_line);
    n_line = randomintrangeinclusive(1, 3);
    level zm_vo::function_7622cb70(#"hash_7cd88ca0fdf56d94" + n_line, 1);
    foreach (player in getplayers()) {
        level.var_31028c5d prototype_hud::set_active_objective_string(player, #"hash_526ed5994d2a7d1a");
        level.var_31028c5d prototype_hud::function_817e4d10(player, 2);
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x2 linked
// Checksum 0x5e0b1d6b, Offset: 0x5cb8
// Size: 0x348
function function_9ad91439(instance) {
    if (level flag::get(#"hash_1558183088c6ccff")) {
        return;
    }
    instance.var_4272a188 triggerenable(0);
    objective_setinvisibletoall(instance.var_e55c8b4e);
    var_1c4dd56d = instance.contentgroups[#"hash_79eb1dad68ac34ff"][0];
    level.var_c39a4b8f = spawnvehicle(#"hash_d069dee6a0076c8", var_1c4dd56d.origin, var_1c4dd56d.angles, "vehicle_phase_rover", 0, undefined, "sensor");
    level thread function_b62b94e6(var_1c4dd56d);
    var_b8c8ab67 = instance.contentgroups[#"hash_2af8aec02162621a"][0];
    instance.var_fb224b3b = content_manager::spawn_script_model(var_b8c8ab67, #"hash_20f9a15d3e077602");
    waitframe(1);
    level.var_c39a4b8f thread namespace_e69881c5::function_4f8b33df(instance);
    level flag::wait_till(#"gameplay_started");
    showmiscmodels("mq4_choppercrash");
    level flag::wait_till(#"hash_4b060b9820d4141d");
    function_8693ce36(instance);
    foreach (player in getplayers()) {
        player.var_41c16555 = 1;
    }
    objective_setposition(instance.var_e55c8b4e, instance.var_fb224b3b.origin);
    objective_setvisibletoall(instance.var_e55c8b4e);
    foreach (player in getplayers()) {
        level.var_31028c5d prototype_hud::set_active_objective_string(player, #"hash_58ab7cac7a43cf66");
        level.var_31028c5d prototype_hud::function_817e4d10(player, 2);
    }
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0x7210efc2, Offset: 0x6008
// Size: 0x114
function private function_b62b94e6(var_1c4dd56d) {
    level endon(#"hash_24be0dad9e05661a");
    level flag::wait_till(#"hash_16f61b20c3d2c610");
    trigger = spawn("trigger_radius", var_1c4dd56d.origin, 256, 1024, 128);
    trigger.target = var_1c4dd56d.targetname;
    trigger waittill(#"trigger_look");
    trigger deletedelay();
    n_line = randomintrangeinclusive(1, 3);
    level zm_vo::function_7622cb70(#"hash_6576e0ab783af1f3" + n_line);
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0xf072a46, Offset: 0x6128
// Size: 0x122
function private function_8693ce36(instance) {
    var_9f3b9a91 = instance.contentgroups[#"hash_492bf57238a8ab72"][0];
    instance.var_fb224b3b notsolid();
    n_wait = instance.var_fb224b3b zm_utility::fake_physicslaunch(var_9f3b9a91.origin, 99);
    wait(n_wait);
    instance.var_fb224b3b.origin = var_9f3b9a91.origin;
    instance.var_fb224b3b playloopsound(#"hash_2e77024e1f0a29f1");
    trigger = content_manager::spawn_interact(var_9f3b9a91, &function_1554ed60, #"hash_1114a7cc4d89285c", undefined, undefined, undefined, undefined, (0, 0, 32));
    trigger.instance = instance;
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 1, eflags: 0x6 linked
// Checksum 0xbc404ca5, Offset: 0x6258
// Size: 0x4ac
function private function_1554ed60(*eventstruct) {
    if (is_true(self.b_activated)) {
        return;
    }
    self.b_activated = 1;
    self triggerenable(0);
    if (!level flag::get(#"hash_68879aa426e6559a")) {
        objective_setinvisibletoall(self.instance.var_e55c8b4e);
    }
    self.instance.var_fb224b3b stoploopsound();
    self.instance.var_fb224b3b playsound(#"hash_ea30fff000de600");
    self.instance.var_fb224b3b thread scene::play(#"p9_zm_ndu_reel_to_reel_audio_recorder_01_server_bundle", self.instance.var_fb224b3b);
    foreach (player in getplayers()) {
        player thread zm_intel::collect_intel(#"zmintel_survival_omega_audiolog_15", undefined, undefined, 1);
    }
    /#
        iprintlnbold("<unknown string>");
    #/
    self.instance.var_fb224b3b zm_vo::function_d6f8bbd9(#"hash_622e25d4968b2342");
    self.instance.var_fb224b3b zm_vo::function_d6f8bbd9(#"hash_622e26d4968b24f5");
    self.instance.var_fb224b3b zm_vo::function_d6f8bbd9(#"hash_622e23d4968b1fdc");
    foreach (player in getplayers()) {
        level.var_31028c5d prototype_hud::set_active_objective_string(player, #"hash_46781b2af8770f3f");
        level.var_31028c5d prototype_hud::function_817e4d10(player, 2);
    }
    if (!level flag::get(#"hash_68879aa426e6559a")) {
        level flag::set(#"hash_68879aa426e6559a");
        var_8485244b = self.instance.contentgroups[#"hash_3966465c498df3a6"][0];
        objective_setposition(self.instance.var_e55c8b4e, var_8485244b.origin);
        objective_setvisibletoall(self.instance.var_e55c8b4e);
        self.instance.var_4272a188 triggerenable(1);
    }
    self.instance.var_fb224b3b zm_vo::function_d6f8bbd9(#"hash_622e24d4968b218f");
    self.instance.var_fb224b3b playsound(#"hash_19cebf2f0254187a");
    self.instance.var_fb224b3b scene::stop(#"p9_zm_ndu_reel_to_reel_audio_recorder_01_server_bundle");
    self.b_activated = 0;
    self triggerenable(1);
}

// Namespace namespace_af1ba366/namespace_af1ba366
// Params 2, eflags: 0x2 linked
// Checksum 0xf8ec4848, Offset: 0x6710
// Size: 0x54
function function_83ac5bc2(instance, *activator) {
    if (level flag::get(#"hash_1558183088c6ccff")) {
        return;
    }
    level.var_c39a4b8f namespace_e69881c5::function_540c0d15(activator);
}


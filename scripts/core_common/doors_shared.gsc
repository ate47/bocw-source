// Atian COD Tools GSC CW decompiler test
#using script_6423505476898f6d;
#using script_7cc5fb39b97494c4;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace doors;

// Namespace doors
// Method(s) 51 Total 51
class cdoor {

    var angles;
    var flag;
    var m_door_open_delay_time;
    var m_e_door;
    var m_e_trigger;
    var m_n_door_connect_paths;
    var m_n_trigger_height;
    var m_s_bundle;
    var m_str_type;
    var m_v_close_pos;
    var m_v_open_pos;
    var origin;
    var v_trigger_offset;
    var var_14439ba5;
    var var_15695d13;
    var var_19fde5b7;
    var var_22fae777;
    var var_32c4021e;
    var var_3c6838bc;
    var var_4882ff02;
    var var_7c9174d1;
    var var_7d28591d;
    var var_81f24576;
    var var_85f2454d;
    var var_9b9642be;
    var var_9bc2acd6;
    var var_a2f96f78;
    var var_c4c3fa39;
    var var_ca91d615;
    var var_d1c4f848;
    var var_d587661f;
    var var_e1477b7c;
    var var_e1a5a27e;
    var var_fb8a6fcc;

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x8
    // Checksum 0x30efb35b, Offset: 0x5c8
    // Size: 0x5e
    constructor() {
        m_n_trigger_height = 80;
        m_door_open_delay_time = 0;
        var_9b9642be = undefined;
        m_str_type = "door";
        var_fb8a6fcc = [];
        var_e1a5a27e = [];
        var_7d28591d = 0;
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x80 class_linked
    // Checksum 0x304e0a6d, Offset: 0x630
    // Size: 0x2c
    function destructor() {
        if (isdefined(m_e_trigger)) {
            m_e_trigger delete();
        }
    }

    // Namespace cdoor/doors_shared
    // Params 2, eflags: 0x0
    // Checksum 0x9edfa064, Offset: 0x1aa0
    // Size: 0xe4
    function function_3e0853d(v_angle, var_1b13d203) {
        physicsexplosionsphere(m_e_door.origin, 64, 0, 0);
        m_e_door setforcenocull();
        m_e_door rotateto(v_angle, var_1b13d203, var_1b13d203 * 0.1, var_1b13d203 * 0.3);
        m_e_door waittill(#"rotatedone");
        m_e_door removeforcenocull();
        physicsexplosionsphere(m_e_door.origin, 64, 0, 0);
    }

    // Namespace cdoor/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0xf1be66, Offset: 0x4ba0
    // Size: 0x100
    function set_script_flags(b_set) {
        if (isdefined(var_a2f96f78.script_flag)) {
            a_flags = strtok(var_a2f96f78.script_flag, ",");
            foreach (str_flag in a_flags) {
                if (b_set) {
                    level flag::set(str_flag);
                    continue;
                }
                level flag::clear(str_flag);
            }
        }
    }

    // Namespace cdoor/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0x6234a0da, Offset: 0x11b0
    // Size: 0x1a0
    function open(opener) {
        if (m_str_type === "breach" && !is_true(var_9bc2acd6)) {
            self notify(#"hash_722c5466076f75cf");
            var_9bc2acd6 = 1;
        } else {
            set_player_who_opened(opener);
            if (self flag::get("open") && self flag::get("door_pushable") && is_true(var_c4c3fa39)) {
                self namespace_64f6ea7a::push_door(var_22fae777, 1);
            } else {
                self flag::set("open");
            }
        }
        if (isdefined(var_d1c4f848) && var_d1c4f848.c_door flag::get("open") == 0) {
            var_d1c4f848.c_door.var_c4c3fa39 = var_c4c3fa39;
            thread [[ var_d1c4f848.c_door ]]->open(opener);
        }
    }

    // Namespace cdoor/doors_shared
    // Params 4, eflags: 0x0
    // Checksum 0x78a876fa, Offset: 0x4158
    // Size: 0x54
    function function_145675ba(e_player, str_anim, var_f40ac45d, n_start_time) {
        e_player thread animation::play(str_anim, e_player, undefined, var_f40ac45d, 0.2, 0, 0, n_start_time);
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0x24dead33, Offset: 0x3cb8
    // Size: 0x14c
    function update_use_message() {
        var_5bc6eed = self function_a5fa0850();
        if (!isdefined(var_5bc6eed)) {
            return;
        }
        if (!is_true(m_s_bundle.door_use_trigger)) {
            return;
        }
        if (self doors::function_19b91fc1()) {
            if (self flag::get("locked")) {
                if (isdefined(m_e_door.mdl_gameobject.objectiveid)) {
                    m_e_door.mdl_gameobject gameobjects::disable_object(1);
                }
                return;
            }
            if (!isdefined(m_e_door.mdl_gameobject.objectiveid)) {
                m_e_door.mdl_gameobject gameobjects::enable_object(1);
            }
            return;
        }
        if (m_e_door doors::function_82f0f91b()) {
            self thread doors::function_191c5a63();
        }
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0xdf628503, Offset: 0x5020
    // Size: 0xc6
    function init_player_spawns() {
        if (isdefined(var_a2f96f78.targetname)) {
            a_structs = struct::get_array(var_a2f96f78.targetname, "target");
            foreach (struct in a_structs) {
                struct.c_door = self;
            }
        }
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0x2a2e0058, Offset: 0x4610
    // Size: 0xd6
    function function_323b4378() {
        level flag::wait_till("radiant_gameobjects_initialized");
        m_e_door.func_custom_gameobject_position = &function_4fe7d9d5;
        m_e_door.v_trigger_offset = m_s_bundle.v_trigger_offset;
        m_e_door gameobjects::init_game_objects(m_s_bundle.door_interact);
        m_e_door.mdl_gameobject.t_interact usetriggerrequirelookat();
        m_e_door.mdl_gameobject.trigger.c_door = self;
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0xcb6d97, Offset: 0x4040
    // Size: 0x10a
    function function_4fe7d9d5() {
        v_angles = angles;
        v_offset = v_trigger_offset;
        v_pos = origin;
        if (isdefined(v_offset)) {
            if (v_offset[0]) {
                v_side = anglestoforward(v_angles);
                v_pos += v_offset[0] * v_side;
            }
            if (v_offset[1]) {
                v_dir = anglestoright(v_angles);
                v_pos += v_offset[1] * v_dir;
            }
            if (v_offset[2]) {
                v_up = anglestoup(v_angles);
                v_pos += v_offset[2] * v_up;
            }
        }
        return v_pos;
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0xaed6be32, Offset: 0x4460
    // Size: 0x1a6
    function function_54605e70() {
        m_e_trigger endon(#"death");
        while (true) {
            m_e_door waittill(#"damage");
            if (!is_open() && !self flag::get("animating")) {
                open(undefined);
                flag::wait_till_clear("animating");
                if (is_true(m_s_bundle.var_6270dafc)) {
                    wait(isdefined(m_s_bundle.var_be86269a) ? m_s_bundle.var_be86269a : 0);
                    if (isdefined(var_9b9642be)) {
                        var_ceedbc10 = m_e_trigger.maxs[0] * m_e_trigger.maxs[0];
                        while (isdefined(var_9b9642be) && var_9b9642be istouching(m_e_trigger)) {
                            waitframe(1);
                        }
                        close();
                    } else {
                        close();
                    }
                }
            }
            waitframe(1);
        }
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0xaf4aefac, Offset: 0x3e10
    // Size: 0x228
    function run_lock_fx() {
        if (!isdefined(m_s_bundle.door_locked_fx) && !isdefined(m_s_bundle.door_unlocked_fx)) {
            return;
        }
        e_fx = undefined;
        v_pos = get_hack_pos();
        v_angles = get_hack_angles();
        while (true) {
            self flag::wait_till("locked");
            if (isdefined(e_fx)) {
                e_fx delete();
                e_fx = undefined;
            }
            if (isdefined(m_s_bundle.door_locked_fx)) {
                e_fx = spawn("script_model", v_pos);
                e_fx setmodel(#"tag_origin");
                e_fx.angles = v_angles;
                playfxontag(m_s_bundle.door_locked_fx, e_fx, "tag_origin");
            }
            self flag::wait_till_clear("locked");
            if (isdefined(e_fx)) {
                e_fx delete();
                e_fx = undefined;
            }
            if (isdefined(m_s_bundle.door_unlocked_fx)) {
                e_fx = spawn("script_model", v_pos);
                e_fx setmodel(#"tag_origin");
                e_fx.angles = v_angles;
                playfxontag(m_s_bundle.door_unlocked_fx, e_fx, "tag_origin");
            }
        }
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0x104c7d5d, Offset: 0x26f0
    // Size: 0x88
    function close() {
        var_14439ba5 = undefined;
        self flag::clear("open");
        if (isdefined(var_d1c4f848) && var_d1c4f848.c_door flag::get("open") == 1) {
            thread [[ var_d1c4f848.c_door ]]->close();
        }
    }

    // Namespace cdoor/doors_shared
    // Params 2, eflags: 0x0
    // Checksum 0x864182aa, Offset: 0x1b90
    // Size: 0xe4
    function function_5abbe871(var_ce02fcb7, var_1b13d203) {
        physicsexplosionsphere(m_e_door.origin, 64, 0, 0);
        m_e_door setforcenocull();
        m_e_door moveto(var_ce02fcb7, var_1b13d203, var_1b13d203 * 0.1, var_1b13d203 * 0.3);
        m_e_door waittill(#"movedone");
        m_e_door removeforcenocull();
        physicsexplosionsphere(m_e_door.origin, 64, 0, 0);
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0xe02a37d4, Offset: 0x668
    // Size: 0xa
    function function_61c13b93() {
        return m_v_close_pos;
    }

    // Namespace cdoor/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0xeff5114d, Offset: 0x2dd8
    // Size: 0x1b2
    function function_61d3d3da(opener) {
        var_cd167873 = 1;
        if (sessionmodeiscampaigngame()) {
            if (!isdefined(opener)) {
                opener = getplayers()[0];
            }
        }
        if (isdefined(opener)) {
            v_player_forward = undefined;
            if (isactor(opener)) {
                v_velocity = opener getvelocity();
                v_velocity = (v_velocity[0], v_velocity[1], 0);
                if (length2dsquared(v_velocity) == 0) {
                    v_player_forward = anglestoforward(opener.angles);
                } else {
                    v_player_forward = vectornormalize(v_velocity);
                }
            } else {
                v_player_angles = opener getplayerangles();
                v_player_forward = anglestoforward((0, v_player_angles[1], 0));
            }
            var_7a69da4c = anglestoforward(m_e_door.angles);
            var_fb8f4ca = self doors::function_fb354714();
            var_cd167873 = vectordot(var_fb8f4ca, v_player_forward);
        }
        return var_cd167873;
    }

    // Namespace cdoor/doors_shared
    // Params 2, eflags: 0x0
    // Checksum 0xaf113465, Offset: 0x1580
    // Size: 0x1b0
    function function_64c97cc9(var_79579129, var_b64ae7bb) {
        if (isdefined(var_b64ae7bb)) {
            if (var_b64ae7bb) {
                var_d587661f = undefined;
            } else {
                var_d587661f = 1;
            }
        }
        if (isdefined(m_e_door.var_645eee83)) {
            if (is_true(var_79579129)) {
                [[ m_e_door.var_645eee83 ]]->enable();
            } else {
                [[ m_e_door.var_645eee83 ]]->disable();
            }
        }
        if (sessionmodeiscampaigngame() && isdefined(level.var_6a7fb742)) {
            return true;
        }
        var_5bc6eed = self function_a5fa0850();
        if (!isdefined(var_5bc6eed)) {
            return false;
        }
        if (isdefined(var_79579129)) {
            if (var_79579129) {
                var_5bc6eed makeusable();
                if (var_5bc6eed getentitytype() == 20) {
                    var_5bc6eed triggerenable(1);
                }
            } else {
                var_5bc6eed makeunusable();
                if (var_5bc6eed getentitytype() == 20) {
                    var_5bc6eed triggerenable(0);
                }
            }
        }
        return true;
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0xce5a60de, Offset: 0x5700
    // Size: 0x80
    function function_670cd4a3() {
        self endon(#"death");
        var_19fde5b7 = [];
        while (true) {
            waitresult = self waittill(#"grenade_stuck");
            if (isdefined(waitresult.projectile)) {
                array::add(var_19fde5b7, waitresult.projectile);
            }
        }
    }

    // Namespace cdoor/doors_shared
    // Params 2, eflags: 0x0
    // Checksum 0x9a17c5f7, Offset: 0x2f98
    // Size: 0xd14
    function open_internal(b_malfunction = 0, var_8e2567b1) {
        var_f10e2163 = 0;
        if (m_e_door scene::function_c935c42()) {
            [[ m_e_door._scene_object ]]->stop();
        }
        m_e_door unlink();
        var_1b13d203 = isdefined(var_8e2567b1) ? var_8e2567b1 : m_s_bundle.door_open_time;
        if (is_true(var_c4c3fa39)) {
            var_1b13d203 = m_s_bundle.var_f275e953;
        } else if (!b_malfunction && !isdefined(var_8e2567b1) && self namespace_64f6ea7a::function_9d109db6(1)) {
            var_f10e2163 = 1;
            var_1b13d203 = namespace_64f6ea7a::function_cecca69c();
        }
        var_1b13d203 = float(var_1b13d203);
        self flag::set("animating");
        if (isdefined(var_a2f96f78.groupname)) {
            a_door_structs = struct::get_array(var_a2f96f78.groupname, "groupname");
            foreach (s_door_struct in a_door_structs) {
                b_animating = s_door_struct.c_door flag::get("animating");
                if (s_door_struct.c_door.m_e_door != m_e_door) {
                    if (![[ s_door_struct.c_door ]]->is_open() && !b_animating) {
                        s_door_struct.c_door.var_9b9642be = var_9b9642be;
                        [[ s_door_struct.c_door ]]->open(var_9b9642be);
                    }
                }
            }
        }
        m_e_door notify(#"door_opening");
        update_use_message();
        if (var_f10e2163) {
            function_f657b618(0);
        }
        if (isdefined(var_9b9642be)) {
            var_9b9642be notify(#"hash_7a96e443b93cd211");
        }
        m_e_door function_e0954c11();
        self function_d1e7faca(0);
        var_478039b9 = is_true(var_c4c3fa39) && isdefined(m_s_bundle.var_cebf7d8f);
        if (var_478039b9) {
            m_e_door playsound(m_s_bundle.var_cebf7d8f);
        } else {
            if (isdefined(m_s_bundle.door_start_sound) && m_s_bundle.door_start_sound != "") {
                m_e_door playsound(m_s_bundle.door_start_sound);
            }
            if (is_true(m_s_bundle.b_loop_sound)) {
                sndent = spawn("script_origin", m_e_door.origin);
                sndent linkto(m_e_door);
                sndent playloopsound(m_s_bundle.door_loop_sound, 1);
            }
        }
        if (m_s_bundle.door_open_method == "slide") {
            if (!b_malfunction) {
                function_e4659543(1);
            }
            var_7256682e = function_f1a2a15f(b_malfunction, 1);
            m_e_door setforcenocull();
            m_e_door moveto(var_7256682e, var_1b13d203);
            m_e_door waittill(#"movedone");
            m_e_door removeforcenocull();
        } else if (m_s_bundle.door_open_method == "swing_away_from_player") {
            var_32c4021e = 0;
            if (!isdefined(var_9b9642be)) {
                if (isdefined(var_a2f96f78.groupname)) {
                    a_door_structs = struct::get_array(var_a2f96f78.groupname, "groupname");
                    foreach (s_door_struct in a_door_structs) {
                        if (s_door_struct.c_door.m_e_door != m_e_door) {
                            if (isdefined(s_door_struct.c_door.var_9b9642be)) {
                                var_9b9642be = s_door_struct.c_door.var_9b9642be;
                                break;
                            }
                        }
                    }
                }
            }
            var_cd167873 = function_61d3d3da(var_9b9642be);
            var_b7e6de19 = undefined;
            if (var_f10e2163) {
                var_b7e6de19 = namespace_64f6ea7a::function_1bf7f7e5();
            }
            if (var_cd167873 > 0) {
                v_angle = function_d36318ad(b_malfunction, 1, 0, m_s_bundle.var_16a4e229, m_s_bundle.var_16e3e29b, var_b7e6de19);
                m_e_door setforcenocull();
                m_e_door rotateto(v_angle, var_1b13d203, var_1b13d203 * 0.1, var_1b13d203 * 0.3);
                m_e_door waittill(#"rotatedone");
                m_e_door removeforcenocull();
            } else {
                var_32c4021e = 1;
                v_angle = function_d36318ad(b_malfunction, 1, 1, m_s_bundle.var_16a4e229, m_s_bundle.var_16e3e29b, var_b7e6de19);
                m_e_door setforcenocull();
                m_e_door rotateto(v_angle, var_1b13d203, var_1b13d203 * 0.1, var_1b13d203 * 0.3);
                m_e_door waittill(#"rotatedone");
                m_e_door removeforcenocull();
            }
        } else if (m_s_bundle.door_open_method == "swing") {
            var_b7e6de19 = undefined;
            if (var_f10e2163) {
                var_b7e6de19 = namespace_64f6ea7a::function_1bf7f7e5();
            }
            v_angle = function_d36318ad(b_malfunction, 1, 0, m_s_bundle.var_16a4e229, m_s_bundle.var_16e3e29b, var_b7e6de19);
            m_e_door setforcenocull();
            m_e_door rotateto(v_angle, var_1b13d203, var_1b13d203 * 0.1, var_1b13d203 * 0.3);
            m_e_door waittill(#"rotatedone");
            m_e_door removeforcenocull();
        } else if (m_s_bundle.door_open_method == "animated") {
            var_cd167873 = 1;
            var_32c4021e = 0;
            if (isdefined(m_s_bundle.var_f6f170)) {
                var_cd167873 = function_61d3d3da(var_9b9642be);
            }
            var_3463e288 = undefined;
            if (var_cd167873 > 0) {
                if (is_true(var_c4c3fa39) && isdefined(m_s_bundle.var_3408d820)) {
                    var_3463e288 = m_s_bundle.var_3408d820;
                } else {
                    var_3463e288 = m_s_bundle.door_animated_open_bundle;
                }
            } else {
                if (is_true(var_c4c3fa39) && isdefined(m_s_bundle.var_f1c36c8b)) {
                    var_3463e288 = m_s_bundle.var_f1c36c8b;
                } else {
                    var_3463e288 = m_s_bundle.var_f6f170;
                }
                if (isdefined(var_3463e288)) {
                    var_32c4021e = 1;
                }
            }
            if (isdefined(var_3463e288)) {
                if (scene::get_player_count(var_3463e288) > 0) {
                    m_e_door scene::play(var_3463e288, array(m_e_door, var_9b9642be));
                } else {
                    m_e_door scene::play(var_3463e288, m_e_door);
                }
            }
        }
        m_e_door notify(#"door_opened");
        if (!var_478039b9) {
            if (is_true(m_s_bundle.b_loop_sound)) {
                sndent deletedelay();
            }
        }
        if (var_f10e2163) {
            self flag::set("door_pushable");
        } else {
            self flag::set("door_fully_open");
            self flag::set("door_second_interact");
            self function_f584b243(1);
            var_da3e0b97 = isdefined(var_9b9642be) && isplayer(var_9b9642be);
            self thread namespace_64f6ea7a::suspicious_door_stealth_check(var_da3e0b97);
            if (self namespace_64f6ea7a::function_9d109db6()) {
                self flag::set("door_pushable");
            }
        }
        self flag::clear("animating");
        set_script_flags(1);
        function_7d2c33c4(1);
        update_use_message();
    }

    // Namespace cdoor/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0xdaf6e924, Offset: 0x1868
    // Size: 0x230
    function function_7d2c33c4(b_opened = 1) {
        if (b_opened) {
            foreach (node in var_fb8a6fcc) {
                setenablenode(node, 1);
            }
            foreach (node in var_e1a5a27e) {
                setenablenode(node, 0);
            }
            return;
        }
        foreach (node in var_fb8a6fcc) {
            setenablenode(node, 0);
        }
        foreach (node in var_e1a5a27e) {
            setenablenode(node, 1);
        }
    }

    // Namespace cdoor/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0x18c3d0ed, Offset: 0x4308
    // Size: 0x14c
    function function_830dc907(e_player) {
        if (isdefined(m_s_bundle.var_a22b716)) {
            var_f40ac45d = float(isdefined(m_s_bundle.var_bbbdcca7) ? m_s_bundle.var_bbbdcca7 : 0);
            var_3488a701 = float(isdefined(m_s_bundle.var_52b6e5e9) ? m_s_bundle.var_52b6e5e9 : 0);
            thread function_145675ba(e_player, m_s_bundle.var_a22b716, var_f40ac45d, var_3488a701);
        } else {
            gesture = "ges_drophand";
            if (isdefined(m_s_bundle.var_3fbbd06c)) {
                gesture = m_s_bundle.var_3fbbd06c;
            }
            e_player thread doors::player_door_gesture(gesture);
        }
        m_e_door notify(#"hash_7166c13e79b73f9");
    }

    // Namespace cdoor/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0x8915b48f, Offset: 0x50f0
    // Size: 0x1a
    function set_door_paths(n_door_connect_paths) {
        m_n_door_connect_paths = n_door_connect_paths;
    }

    // Namespace cdoor/doors_shared
    // Params 2, eflags: 0x0
    // Checksum 0x8671549a, Offset: 0x5218
    // Size: 0x104
    function function_85fe0c35(b_reverse, var_e9da1d4e = 0) {
        if (var_e9da1d4e) {
            if (b_reverse) {
                return (m_s_bundle.var_f2943dab * -1);
            } else {
                return m_s_bundle.var_f2943dab;
            }
        }
        if (isdefined(var_ca91d615) && b_reverse) {
            return var_ca91d615;
        } else if (isdefined(var_15695d13) && !b_reverse) {
            return var_15695d13;
        }
        if (b_reverse) {
            if (m_s_bundle.door_open_method == "swing_away_from_player") {
                return (m_s_bundle.door_swing_angle * -1);
            } else {
                return 0;
            }
            return;
        }
        return m_s_bundle.door_swing_angle;
    }

    // Namespace cdoor/doors_shared
    // Params 2, eflags: 0x0
    // Checksum 0xc204704, Offset: 0x1c80
    // Size: 0x850
    function close_internal(b_malfunction = 0, var_8e2567b1) {
        if (m_e_door scene::function_c935c42()) {
            [[ m_e_door._scene_object ]]->stop();
        }
        m_e_door unlink();
        if (self flag::get("door_fully_closed")) {
            return;
        } else {
            self flag::clear("open");
            self flag::clear("door_fully_open");
            self flag::clear("door_pushable");
            self flag::clear("door_second_interact");
        }
        self notify(#"hash_6162e3d94ad294c7");
        if (isdefined(var_a2f96f78.groupname)) {
            a_door_structs = struct::get_array(var_a2f96f78.groupname, "groupname");
            foreach (s_door_struct in a_door_structs) {
                b_animating = s_door_struct.c_door flag::get("animating");
                if (s_door_struct.c_door.m_e_door != m_e_door) {
                    if ([[ s_door_struct.c_door ]]->is_open() && !b_animating) {
                        [[ s_door_struct.c_door ]]->close();
                    }
                }
            }
        }
        var_1b13d203 = float(isdefined(var_8e2567b1) ? var_8e2567b1 : m_s_bundle.door_open_time);
        set_script_flags(0);
        self flag::set("animating");
        m_e_door notify(#"door_closing");
        self thread function_cbbcc8ab();
        update_use_message();
        if (is_true(m_s_bundle.b_loop_sound)) {
            m_e_door playsound(m_s_bundle.door_start_sound);
            sndent = spawn("script_origin", m_e_door.origin);
            sndent linkto(m_e_door);
            sndent playloopsound(m_s_bundle.door_loop_sound, 1);
        } else if (isdefined(m_s_bundle.door_stop_sound) && m_s_bundle.door_stop_sound != "") {
            m_e_door playsound(m_s_bundle.door_stop_sound);
        }
        if (m_s_bundle.door_open_method == "slide") {
            if (!b_malfunction) {
                function_e4659543(0);
            }
            var_ce02fcb7 = function_f1a2a15f(b_malfunction, 0);
            function_5abbe871(var_ce02fcb7, var_1b13d203);
        } else if (m_s_bundle.door_open_method == "swing_away_from_player") {
            v_angle = function_d36318ad(b_malfunction, 0, 0, m_s_bundle.var_16a4e229, m_s_bundle.var_16e3e29b);
            function_3e0853d(v_angle, var_1b13d203);
        } else if (m_s_bundle.door_open_method == "swing") {
            v_angle = function_d36318ad(b_malfunction, 0, 0, m_s_bundle.var_16a4e229, m_s_bundle.var_16e3e29b);
            function_3e0853d(v_angle, var_1b13d203);
        } else if (m_s_bundle.door_open_method == "animated") {
            var_d70be901 = undefined;
            if (!var_32c4021e) {
                var_d70be901 = m_s_bundle.door_animated_close_bundle;
            } else {
                var_d70be901 = m_s_bundle.var_6a49a5cf;
            }
            if (isdefined(var_d70be901)) {
                physicsexplosionsphere(m_e_door.origin, 64, 0, 0);
                m_e_door setforcenocull();
                if (scene::get_player_count(var_d70be901) > 0) {
                    m_e_door notify(#"hash_3803c0c576f1982b", {#player:var_9b9642be});
                    m_e_door scene::play(var_d70be901, array(m_e_door, var_9b9642be));
                } else {
                    m_e_door scene::play(var_d70be901, m_e_door);
                }
                m_e_door removeforcenocull();
                physicsexplosionsphere(m_e_door.origin, 64, 0, 0);
            }
        }
        var_32c4021e = 0;
        m_e_door notify(#"door_closed");
        self function_d1e7faca(1);
        var_c4c3fa39 = 0;
        self function_f584b243(0);
        if (is_true(m_s_bundle.b_loop_sound)) {
            sndent delete();
            m_e_door playsound(m_s_bundle.door_stop_sound);
        }
        flag::clear("animating");
        function_7d2c33c4(0);
        update_use_message();
        if (self namespace_64f6ea7a::function_9d109db6()) {
            function_f657b618(1);
        }
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0xa1f1b4d1, Offset: 0x1000
    // Size: 0xbc
    function unlock() {
        self function_f584b243(0);
        self function_d8ff021f(1);
        self flag::clear("locked");
        update_use_message();
        if (isdefined(var_d1c4f848) && var_d1c4f848.c_door flag::get("locked")) {
            thread [[ var_d1c4f848.c_door ]]->unlock();
        }
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0xcc11b3a4, Offset: 0x1738
    // Size: 0x96
    function function_a5fa0850() {
        var_5bc6eed = undefined;
        if (!isdefined(var_5bc6eed) && isdefined(m_e_door.mdl_gameobject) && isdefined(m_e_door.mdl_gameobject.trigger)) {
            var_5bc6eed = m_e_door.mdl_gameobject.trigger;
        }
        if (!isdefined(var_5bc6eed)) {
            var_5bc6eed = m_e_trigger;
        }
        if (!isdefined(var_5bc6eed)) {
            var_5bc6eed = m_e_door;
        }
        return var_5bc6eed;
    }

    // Namespace cdoor/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0x338b0902, Offset: 0x17d8
    // Size: 0x1a
    function set_player_who_opened(e_player) {
        var_9b9642be = e_player;
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0xbe05e9b6, Offset: 0xf38
    // Size: 0xc0
    function lock() {
        self function_f584b243(1);
        self function_d8ff021f(0);
        self flag::set("locked");
        update_use_message();
        if (isdefined(var_d1c4f848) && var_d1c4f848.c_door flag::get("locked") == 0) {
            thread [[ var_d1c4f848.c_door ]]->lock();
        }
    }

    // Namespace cdoor/doors_shared
    // Params 2, eflags: 0x0
    // Checksum 0xb8cb7509, Offset: 0x680
    // Size: 0x3b6
    function init_door_model(e_or_str_model, s_door_instance) {
        if (isentity(e_or_str_model)) {
            m_e_door = e_or_str_model;
        } else if (!isdefined(e_or_str_model) && !isdefined(s_door_instance.model)) {
            e_or_str_model = "tag_origin";
        }
        if (!isdefined(m_e_door)) {
            m_e_door = util::spawn_model(e_or_str_model, s_door_instance.origin, s_door_instance.angles);
            m_e_door.targetname = s_door_instance.targetname;
            m_e_door.var_9e238e15 = s_door_instance.var_9e238e15;
            self function_d1e7faca(1);
        }
        if (is_true(var_a2f96f78.var_7b21ae7d)) {
            self function_f584b243(1, 2);
        } else if (is_true(m_s_bundle.door_connect_paths)) {
            self function_f584b243(0);
        } else {
            m_e_door function_881077b4(32, 1);
            m_e_door function_df3a1348();
        }
        m_e_door.script_objective = s_door_instance.script_objective;
        self doors::function_7fe6d007(m_s_bundle.model);
        var_85f2454d = spawnstruct();
        var_85f2454d.origin = m_e_door.origin;
        var_85f2454d.angles = m_e_door.angles;
        var_85f2454d.var_c4269c41 = self doors::function_eea7cdb4();
        var_85f2454d.doorbottomcenter = self doors::get_door_bottom_center();
        m_e_door thread doors::function_fa74d5cd(self);
        if (isdefined(s_door_instance.linkname)) {
            var_e1477b7c = getentarray(s_door_instance.linkname, "linkto");
            array::run_all(var_e1477b7c, &enablelinkto);
            if (isdefined(s_door_instance.script_tag)) {
                array::run_all(var_e1477b7c, &linkto, m_e_door, s_door_instance.script_tag);
            } else {
                array::run_all(var_e1477b7c, &linkto, m_e_door);
            }
        }
        m_e_door.var_4f564337 = 1;
        m_e_door thread function_670cd4a3();
        m_e_door.c_door = self;
    }

    // Namespace cdoor/doors_shared
    // Params 2, eflags: 0x0
    // Checksum 0xb1a58353, Offset: 0x4f68
    // Size: 0xaa
    function init_movement(str_slide_dir, n_slide_amount) {
        if (m_s_bundle.door_open_method == "slide") {
            v_offset = function_e61944fa(str_slide_dir, n_slide_amount);
            m_v_open_pos = calculate_offset_position(m_e_door.origin, m_e_door.angles, v_offset);
            m_v_close_pos = m_e_door.origin;
        }
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0xdcd2e79d, Offset: 0xb28
    // Size: 0x7c
    function get_hack_angles() {
        v_angles = m_e_door.angles;
        if (isdefined(var_a2f96f78.target)) {
            e_target = getent(var_a2f96f78.target, "targetname");
            if (isdefined(e_target)) {
                return e_target.angles;
            }
        }
        return v_angles;
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0x257f127e, Offset: 0x1830
    // Size: 0x2c
    function remove_door_trigger() {
        if (isdefined(m_e_trigger)) {
            m_e_trigger delete();
        }
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0xd717c270, Offset: 0x2668
    // Size: 0x80
    function function_cbbcc8ab() {
        self flag::wait_till("door_fully_closed");
        while (isdefined(var_9b9642be) && distance2d(var_9b9642be.origin, m_e_door.origin) < 16) {
            waitframe(1);
        }
    }

    // Namespace cdoor/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0xd7132563, Offset: 0x24d8
    // Size: 0x184
    function function_d1e7faca(closed) {
        if (closed) {
            if (is_true(m_e_door.var_9e238e15)) {
                if (!isdefined(level.var_b4749b2e)) {
                    level.var_b4749b2e = util::spawn_model("tag_origin", (0, 0, 0), (0, 0, 0));
                }
                m_e_door util::delay(0.05, "door_not_fully_closed", &linkto, level.var_b4749b2e);
            }
            self flag::set("door_fully_closed");
            return;
        }
        m_e_door notify(#"door_not_fully_closed");
        if (isdefined(level.var_b4749b2e) && is_true(m_e_door.var_9e238e15) && m_e_door islinkedto(level.var_b4749b2e)) {
            m_e_door unlink();
        }
        self flag::clear("door_fully_closed");
    }

    // Namespace cdoor/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0xb63c80b0, Offset: 0x41b8
    // Size: 0x144
    function function_d30d9f47(e_player) {
        if (isdefined(m_s_bundle.var_b8824800)) {
            var_f40ac45d = float(isdefined(m_s_bundle.var_66bbc6d6) ? m_s_bundle.var_66bbc6d6 : 0);
            var_3488a701 = float(isdefined(m_s_bundle.var_f5bea36f) ? m_s_bundle.var_f5bea36f : 0);
            thread function_145675ba(e_player, m_s_bundle.var_b8824800, var_f40ac45d, var_3488a701);
        } else {
            gesture = undefined;
            if (isdefined(m_s_bundle.var_b06bad19)) {
                gesture = m_s_bundle.var_b06bad19;
            }
            e_player thread doors::player_door_gesture(gesture);
        }
        m_e_door notify(#"hash_923096b653062ea");
    }

    // Namespace cdoor/doors_shared
    // Params 8, eflags: 0x0
    // Checksum 0xf813966d, Offset: 0x5328
    // Size: 0x3a2
    function function_d36318ad(b_malfunction = 0, b_open_door = 1, b_reverse = 0, var_682c0d1c = 0, var_a7fd1c5 = 0, var_d6cc2350 = undefined, var_58c4c830 = 0, var_b0a715f2 = undefined) {
        var_f83a32a1 = function_85fe0c35(b_reverse, var_7d28591d);
        if (b_malfunction) {
            if (b_open_door) {
                var_bf73cb70 = isdefined(m_s_bundle.var_ba0e0b07) ? m_s_bundle.var_ba0e0b07 : 0;
                var_ad9c43d9 = isdefined(m_s_bundle.var_3a2b94e8) ? m_s_bundle.var_3a2b94e8 : 0;
            } else {
                var_bf73cb70 = isdefined(m_s_bundle.var_cb1b0a1d) ? m_s_bundle.var_cb1b0a1d : 0;
                var_ad9c43d9 = isdefined(m_s_bundle.var_40c7110b) ? m_s_bundle.var_40c7110b : 0;
            }
            if (var_bf73cb70 == 0 && var_ad9c43d9 == 0) {
                var_3880cb10 = 0;
            } else if (var_ad9c43d9 > var_bf73cb70) {
                var_3880cb10 = randomfloatrange(var_bf73cb70, var_ad9c43d9);
            } else {
                assertmsg("<unknown string>");
            }
            if (b_open_door) {
                var_2b9a525f = var_f83a32a1 + var_3880cb10;
            } else {
                var_2b9a525f = var_3880cb10;
            }
        } else if (isdefined(var_d6cc2350)) {
            var_2b9a525f = namespace_64f6ea7a::function_9670a4a4(var_f83a32a1, b_reverse, var_d6cc2350, var_58c4c830, var_b0a715f2);
        } else if (b_open_door) {
            var_2b9a525f = var_f83a32a1;
        } else {
            var_2b9a525f = 0;
        }
        if (var_682c0d1c) {
            v_angle = (var_85f2454d.angles[0], var_85f2454d.angles[1], var_85f2454d.angles[2] + var_2b9a525f);
        } else if (var_a7fd1c5) {
            v_angle = (var_85f2454d.angles[0] + var_2b9a525f, var_85f2454d.angles[1], var_85f2454d.angles[2]);
        } else {
            v_angle = (var_85f2454d.angles[0], var_85f2454d.angles[1] + var_2b9a525f, var_85f2454d.angles[2]);
        }
        return v_angle;
    }

    // Namespace cdoor/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0x9d02c903, Offset: 0x14b8
    // Size: 0x54
    function function_d8ff021f(var_7472c731) {
        if (is_true(var_81f24576)) {
            return;
        }
        if (var_d587661f === 2) {
            var_7472c731 = undefined;
        }
        function_64c97cc9(var_7472c731, var_7472c731);
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0xb8fb8b77, Offset: 0x1800
    // Size: 0x22
    function is_open() {
        return self flag::get("open");
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0x60e1b5a7, Offset: 0xa40
    // Size: 0xdc
    function get_hack_pos() {
        v_trigger_offset = m_s_bundle.v_trigger_offset;
        v_pos = calculate_offset_position(m_e_door.origin, m_e_door.angles, v_trigger_offset);
        v_pos = (v_pos[0], v_pos[1], v_pos[2] + 50);
        if (isdefined(var_a2f96f78.target)) {
            e_target = getent(var_a2f96f78.target, "targetname");
            if (isdefined(e_target)) {
                return e_target.origin;
            }
        }
        return v_pos;
    }

    // Namespace cdoor/doors_shared
    // Params 3, eflags: 0x0
    // Checksum 0x60c3cf8b, Offset: 0x5118
    // Size: 0xf2
    function calculate_offset_position(v_origin, v_angles, v_offset) {
        v_pos = v_origin;
        if (v_offset[0]) {
            v_side = anglestoforward(v_angles);
            v_pos += v_offset[0] * v_side;
        }
        if (v_offset[1]) {
            v_dir = anglestoright(v_angles);
            v_pos += v_offset[1] * v_dir;
        }
        if (v_offset[2]) {
            v_up = anglestoup(v_angles);
            v_pos += v_offset[2] * v_up;
        }
        return v_pos;
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0x8a0773e7, Offset: 0x2d18
    // Size: 0xb8
    function function_e0954c11() {
        if (!isdefined(var_7c9174d1)) {
            return;
        }
        foreach (var_221be278 in var_7c9174d1) {
            if (!isdefined(var_221be278)) {
                continue;
            }
            var_221be278 dodamage(500, origin, undefined, undefined, undefined, "MOD_EXPLOSIVE");
        }
    }

    // Namespace cdoor/doors_shared
    // Params 2, eflags: 0x0
    // Checksum 0xb8c27089, Offset: 0x46f0
    // Size: 0x4a4
    function init_trigger(v_offset, n_radius) {
        if (!sessionmodeiscampaigngame() || !isdefined(level.var_6a7fb742)) {
            if (isdefined(m_s_bundle.door_interact)) {
                thread function_323b4378();
            } else {
                v_pos = calculate_offset_position(m_e_door.origin, m_e_door.angles, v_offset);
                offset_z = 50;
                v_pos = (v_pos[0], v_pos[1], v_pos[2] + offset_z);
                if (is_true(m_s_bundle.door_trigger_at_target) && isdefined(var_a2f96f78.target)) {
                    a_e_targets = getentarray(var_a2f96f78.target, "targetname");
                    e_target = a_e_targets[0];
                    if (isdefined(e_target)) {
                        if (e_target trigger::is_trigger_of_type("trigger_multiple", "trigger_radius", "trigger_box")) {
                            t_radius_or_multiple = e_target;
                            v_pos = e_target.origin;
                        } else if (e_target trigger::is_trigger_of_type("trigger_use", "trigger_use_touch")) {
                            t_use = e_target;
                            m_s_bundle.door_use_trigger = 1;
                        }
                    }
                }
                if (is_true(m_s_bundle.door_use_trigger)) {
                    if (isdefined(t_use)) {
                        m_e_trigger = t_use;
                        m_e_trigger.var_2dbb0ac1 = 1;
                    } else {
                        m_e_trigger = spawn("trigger_radius_use", v_pos, 16384 | 4096, n_radius, m_n_trigger_height);
                    }
                    m_e_trigger triggerignoreteam();
                    m_e_trigger setvisibletoall();
                    m_e_trigger setteamfortrigger(#"none");
                    m_e_trigger usetriggerrequirelookat();
                    m_e_trigger setcursorhint("HINT_NOICON");
                    if (is_true(m_s_bundle.door_closes) && !is_true(m_e_trigger.var_2dbb0ac1)) {
                        var_80778410 = coordtransformtranspose(m_e_trigger.origin, m_e_door.origin, m_e_door.angles);
                        m_e_trigger enablelinkto();
                        m_e_trigger linkto(m_e_door, undefined, var_80778410);
                    }
                } else if (isdefined(t_radius_or_multiple)) {
                    m_e_trigger = t_radius_or_multiple;
                } else {
                    m_e_trigger = spawn("trigger_radius", v_pos, 16384 | 4096 | 16 | 512, n_radius, m_n_trigger_height);
                }
                m_e_trigger.c_door = self;
            }
        }
        if (is_true(m_s_bundle.var_e182494f)) {
            m_e_door setcandamage(1);
            thread function_54605e70();
        }
    }

    // Namespace cdoor/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0x65dcbdf8, Offset: 0x4dd0
    // Size: 0x18a
    function function_e4659543(var_9bbee0ba = 1) {
        if (var_9bbee0ba) {
            m_v_close_pos = m_e_door.origin;
            v_offset = function_e61944fa(undefined, m_s_bundle.door_slide_open_units);
            m_v_open_pos = calculate_offset_position(m_v_close_pos, m_e_door.angles, v_offset);
            var_85f2454d.origin = m_e_door.origin;
            var_85f2454d.angles = m_e_door.angles;
            return;
        }
        m_v_open_pos = m_e_door.origin;
        v_offset = function_e61944fa(undefined, m_s_bundle.door_slide_open_units * -1);
        m_v_close_pos = calculate_offset_position(m_v_open_pos, m_e_door.angles, v_offset);
        var_85f2454d.origin = m_v_close_pos;
        var_85f2454d.angles = m_e_door.angles;
    }

    // Namespace cdoor/doors_shared
    // Params 2, eflags: 0x0
    // Checksum 0xbb36caca, Offset: 0x4ca8
    // Size: 0x11e
    function function_e61944fa(var_f770af7e, n_slide_amount) {
        str_slide_dir = isdefined(var_3c6838bc) ? var_3c6838bc : var_f770af7e;
        switch (str_slide_dir) {
        case #"x":
            v_offset = (n_slide_amount, 0, 0);
            var_3c6838bc = "X";
            break;
        case #"y":
            v_offset = (0, n_slide_amount, 0);
            var_3c6838bc = "Y";
            break;
        case #"z":
            v_offset = (0, 0, n_slide_amount);
            var_3c6838bc = "Z";
            break;
        default:
            v_offset = (0, 0, n_slide_amount);
            var_3c6838bc = "Z";
            break;
        }
        return v_offset;
    }

    // Namespace cdoor/doors_shared
    // Params 4, eflags: 0x0
    // Checksum 0x795cc144, Offset: 0x1358
    // Size: 0x154
    function function_e7be6e76(var_79579129, var_b64ae7bb, var_8372bfa0, var_c4304c95) {
        if (var_81f24576 === 2 && !var_8372bfa0) {
            var_79579129 = undefined;
        }
        if (var_d587661f === 2 && !var_c4304c95) {
            var_b64ae7bb = undefined;
        }
        success = function_64c97cc9(var_79579129, var_b64ae7bb);
        if (success) {
            if (isdefined(var_79579129)) {
                if (var_79579129) {
                    var_81f24576 = undefined;
                } else {
                    var_81f24576 = 1;
                }
            }
            update_use_message();
            if (is_true(flag[#"locked"]) && is_true(var_79579129)) {
                var_318cd8de = m_e_door.var_645eee83;
                if (isdefined(var_318cd8de)) {
                    waittillframeend();
                    [[ var_318cd8de ]]->function_8650ea49(var_318cd8de.var_b5a03b21);
                }
            }
        }
    }

    // Namespace cdoor/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0x3faaa6c7, Offset: 0x56d8
    // Size: 0x1a
    function function_ea9e96ca(delay_time) {
        m_door_open_delay_time = delay_time;
    }

    // Namespace cdoor/doors_shared
    // Params 2, eflags: 0x0
    // Checksum 0x759e7770, Offset: 0x2a50
    // Size: 0x2ba
    function function_f1a2a15f(b_malfunction = 0, b_open_door = 1) {
        if (b_malfunction) {
            if (b_open_door) {
                var_27c5527f = isdefined(m_s_bundle.var_52a07bbb) ? m_s_bundle.var_52a07bbb : 0;
                var_ef3feac9 = isdefined(m_s_bundle.var_7ffecd77) ? m_s_bundle.var_7ffecd77 : 0;
            } else {
                var_27c5527f = isdefined(m_s_bundle.var_afd6d156) ? m_s_bundle.var_afd6d156 : 0;
                var_ef3feac9 = isdefined(m_s_bundle.var_acfdd537) ? m_s_bundle.var_acfdd537 : 0;
            }
            if (var_27c5527f == 0 && var_ef3feac9 == 0) {
                var_42cf6fbd = 0;
            } else if (var_ef3feac9 > var_27c5527f) {
                var_42cf6fbd = randomfloatrange(var_27c5527f, var_ef3feac9);
            } else {
                assertmsg("allow_melee");
            }
            switch (var_3c6838bc) {
            case #"x":
                v_offset = (var_42cf6fbd, 0, 0);
                break;
            case #"y":
                v_offset = (0, var_42cf6fbd, 0);
                break;
            case #"z":
                v_offset = (0, 0, var_42cf6fbd);
                break;
            default:
                v_offset = (0, 0, 0);
                break;
            }
            if (b_open_door) {
                var_58636008 = calculate_offset_position(m_v_open_pos, var_85f2454d.angles, v_offset);
            } else {
                var_58636008 = calculate_offset_position(m_v_close_pos, var_85f2454d.angles, v_offset);
            }
        } else if (b_open_door) {
            var_58636008 = m_v_open_pos;
        } else {
            var_58636008 = m_v_close_pos;
        }
        return var_58636008;
    }

    // Namespace cdoor/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0x6fbe9724, Offset: 0x2780
    // Size: 0x2c4
    function function_f50c09b3(b_enable) {
        self notify(#"hash_50b9293fc24e2756");
        self endon(#"hash_50b9293fc24e2756");
        m_e_door endon(#"death");
        if (m_e_door scene::function_c935c42()) {
            [[ m_e_door._scene_object ]]->stop();
        }
        m_e_door unlink();
        if (b_enable) {
            self notify(#"hash_3becf718b3c58ac9");
        }
        n_delay_min = isdefined(m_s_bundle.var_b7a623f5) ? m_s_bundle.var_b7a623f5 : 0.1;
        n_delay_max = isdefined(m_s_bundle.var_5cac6503) ? m_s_bundle.var_5cac6503 : 1;
        if (m_s_bundle.door_open_method === "slide" || m_s_bundle.door_open_method === "swing") {
            if (b_enable) {
                while (true) {
                    open_internal(b_enable, randomfloatrange(n_delay_min, n_delay_max));
                    wait(randomfloatrange(n_delay_min, n_delay_max));
                    close_internal(b_enable, randomfloatrange(n_delay_min, n_delay_max));
                }
            } else {
                close_internal(b_enable);
                level thread doors::door_update(self);
            }
            return;
        }
        if (m_s_bundle.door_open_method == "animated" && isdefined(m_s_bundle.var_6a0dae54)) {
            if (b_enable) {
                var_85f2454d thread scene::play(m_s_bundle.var_6a0dae54, m_e_door);
                return;
            }
            var_85f2454d thread scene::stop(m_s_bundle.var_6a0dae54);
        }
    }

    // Namespace cdoor/doors_shared
    // Params 2, eflags: 0x0
    // Checksum 0x5fda255c, Offset: 0xbb0
    // Size: 0x37c
    function function_f584b243(do_block, var_297e1b79) {
        if (!is_true(var_297e1b79) && !is_true(m_s_bundle.door_connect_paths)) {
            return;
        }
        if (is_true(var_297e1b79)) {
            if (isdefined(var_4882ff02) && var_4882ff02 == 2 && var_297e1b79 == 1) {
            } else if (do_block) {
                if (var_297e1b79 == 3) {
                    var_4882ff02 = 1;
                } else {
                    var_4882ff02 = var_297e1b79;
                }
            } else {
                var_4882ff02 = undefined;
            }
        }
        if (do_block || is_true(var_4882ff02)) {
            if (isdefined(m_e_door.var_4101ccab)) {
                var_8d684abd = m_e_door.var_4101ccab;
                if (m_e_door getcontents() & 536870912) {
                    var_8d684abd |= 536870912;
                }
                m_e_door setcontents(var_8d684abd);
            }
            m_e_door function_881077b4(4194303, 0);
            m_e_door function_881077b4(32, 1);
            m_e_door function_df3a1348(0, 0);
            return;
        }
        var_1ce7d3b0 = m_e_door getcontents();
        if (var_1ce7d3b0 & (1 | 131072 | 16)) {
            var_8d684abd = var_1ce7d3b0;
            if (!isdefined(m_e_door.var_4101ccab)) {
                m_e_door.var_4101ccab = var_1ce7d3b0;
            }
            if (var_1ce7d3b0 & 1) {
                var_8d684abd = var_1ce7d3b0 & ~1;
                var_8d684abd = var_8d684abd | 64 | 128 | 512 | 1024 | 4096 | 8192 | 65536 | 1048576;
            }
            if (var_1ce7d3b0 & 16) {
                var_8d684abd &= ~16;
            }
            if (var_1ce7d3b0 & 131072) {
                var_8d684abd &= ~131072;
            }
            m_e_door setcontents(var_8d684abd);
        }
        m_e_door function_881077b4(4194303, 0);
        m_e_door function_881077b4(4097, 1);
        m_e_door function_df3a1348(0, 0);
    }

    // Namespace cdoor/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0x2b73097e, Offset: 0x1518
    // Size: 0x5c
    function function_f657b618(var_7472c731) {
        if (is_true(var_81f24576)) {
            return;
        }
        if (self namespace_64f6ea7a::function_e9823650()) {
            return;
        }
        function_64c97cc9(var_7472c731, undefined);
    }

    // Namespace cdoor/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0x99a13379, Offset: 0x10c8
    // Size: 0xde
    function delete_door() {
        self doors::function_656c898c();
        if (isdefined(m_e_door)) {
            if (isdefined(m_e_door.mdl_gameobject)) {
                m_e_door.mdl_gameobject gameobjects::disable_object(1);
                m_e_door.mdl_gameobject gameobjects::destroy_object(1, 1);
            }
            m_e_door delete();
            m_e_door = undefined;
        }
        if (isdefined(m_e_trigger)) {
            m_e_trigger delete();
            m_e_trigger = undefined;
        }
    }

}

// Namespace doors/doors_shared
// Params 0, eflags: 0x5
// Checksum 0xa8f79900, Offset: 0x6140
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"doors", &preinit, &postinit, undefined, undefined);
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x4
// Checksum 0x7f0c093, Offset: 0x6198
// Size: 0xe4
function private preinit() {
    level.var_1def7d37 = [];
    util::init_dvar("scr_door_bash_requires_use", 0, &function_bae7ed2e);
    util::init_dvar("scr_door_player_gestures", 1, &function_bae7ed2e);
    util::init_dvar(#"disabledoors", 0, &function_bae7ed2e);
    /#
        util::init_dvar("<unknown string>", 0, &function_bae7ed2e);
    #/
    callback::on_spawned(&bash_monitor);
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0x74231fde, Offset: 0x6288
// Size: 0x58
function private function_bae7ed2e(dvar) {
    level.var_1def7d37[dvar.name] = dvar.value;
    /#
        if (dvar.name == "<unknown string>") {
            level notify(#"hash_5171254138328d84");
        }
    #/
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x4
// Checksum 0x5a76cf8, Offset: 0x62e8
// Size: 0x334
function private postinit() {
    level flag::wait_till("radiant_gameobjects_initialized");
    var_1cde154f = getgametypesetting(#"use_doors");
    if (isstring(var_1cde154f) || ishash(var_1cde154f)) {
        var_1cde154f = 1;
    }
    var_1cde154f = int(var_1cde154f);
    var_5a23774b = int(level.var_1def7d37[#"disabledoors"]);
    if (!is_true(var_1cde154f) || is_true(var_5a23774b)) {
        return;
    }
    a_doors = struct::get_array("scriptbundle_doors", "classname");
    a_doors = arraycombine(a_doors, getentarray("smart_object_door", "script_noteworthy"), 0, 0);
    foreach (s_instance in a_doors) {
        c_door = s_instance init();
        if (isdefined(c_door)) {
            s_instance.c_door = c_door;
        }
    }
    foreach (s_instance in a_doors) {
        if (isdefined(s_instance.linkname)) {
            var_5d2cd0d9 = struct::get_script_bundle_instances("doors", array(s_instance.linkname, "linkto"));
            if (isdefined(var_5d2cd0d9[0])) {
                s_instance.c_door.var_d1c4f848 = var_5d2cd0d9[0];
                var_5d2cd0d9[0].c_door.var_d1c4f848 = s_instance;
            }
        }
    }
    level.var_1da7d7a6 = 1;
    level thread init_door_panels();
    thread function_d2a304e(a_doors);
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x0
// Checksum 0xab9602c5, Offset: 0x6628
// Size: 0x170
function init_door_panels() {
    a_door_panels = struct::get_array("smart_object_door_panel", "script_noteworthy");
    a_door_panels = arraycombine(a_door_panels, getentarray("smart_object_door_panel", "script_noteworthy"), 0, 0);
    a_door_panels = arraycombine(a_door_panels, struct::get_array("scriptbundle_gameobject", "classname"), 0, 0);
    foreach (door_panel in a_door_panels) {
        if (isdefined(door_panel.script_gameobject) || isdefined(door_panel.mdl_gameobject)) {
            if (!isdefined(door_panel.mdl_gameobject)) {
                door_panel gameobjects::init_game_objects(door_panel.script_gameobject);
            }
            door_panel setup_doors_with_panel();
        }
    }
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x0
// Checksum 0xa0cccfca, Offset: 0x67a0
// Size: 0x190
function setup_doors_with_panel() {
    var_c1157335 = 0;
    if (isdefined(self.target)) {
        a_e_doors = getentarray(self.target, "targetname");
        a_e_doors = arraycombine(a_e_doors, struct::get_array(self.target, "targetname"), 0, 0);
        foreach (e_door in a_e_doors) {
            if (isdefined(e_door) && isdefined(e_door.c_door)) {
                door = e_door.c_door;
                [[ door ]]->remove_door_trigger();
                if (!var_c1157335) {
                    if (is_true(door.m_s_bundle.door_closes)) {
                        var_ce2455a3 = 1;
                    } else {
                        var_ce2455a3 = 0;
                    }
                    var_c1157335 = 1;
                    self thread door_panel_interact(var_ce2455a3);
                }
            }
        }
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0x8ff608d3, Offset: 0x6938
// Size: 0x396
function door_panel_interact(b_is_panel_reusable) {
    self endon(#"death");
    self.mdl_gameobject endon(#"death");
    while (true) {
        waitresult = self.mdl_gameobject waittill(#"gameobject_end_use_player");
        e_player = waitresult.player;
        self.mdl_gameobject gameobjects::disable_object(1);
        if (isdefined(self.target)) {
            a_e_doors = getentarray(self.target, "targetname");
            a_e_doors = arraycombine(a_e_doors, struct::get_array(self.target, "targetname"), 0, 0);
            foreach (e_door in a_e_doors) {
                if (isdefined(e_door) && isdefined(e_door.c_door)) {
                    door = e_door.c_door;
                    [[ door ]]->unlock();
                    [[ door ]]->set_player_who_opened(e_player);
                    if ([[ door ]]->is_open()) {
                        [[ door ]]->close();
                        if (!is_true(door.m_s_bundle.door_closes) && is_true(door.m_s_bundle.var_d37e8f3e)) {
                            door notify(#"set_destructible", {#player:e_player});
                        }
                        continue;
                    }
                    [[ door ]]->open(e_player);
                }
            }
            waitframe(1);
            if (is_true(b_is_panel_reusable)) {
                while (true) {
                    b_door_animating = 0;
                    foreach (e_door in a_e_doors) {
                        if (isdefined(e_door) && isdefined(e_door.c_door)) {
                            door = e_door.c_door;
                            if (door flag::get("animating")) {
                                b_door_animating = 1;
                                break;
                            }
                        }
                    }
                    if (!b_door_animating) {
                        break;
                    }
                    waitframe(1);
                }
                self.mdl_gameobject gameobjects::enable_object(1);
                continue;
            }
            return;
        }
    }
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x0
// Checksum 0x4c6427e1, Offset: 0x6cd8
// Size: 0xaa
function init() {
    if (!isdefined(self.angles)) {
        self.angles = (0, 0, 0);
    }
    bundle_name = isdefined(self.var_e87a94f3) ? self.var_e87a94f3 : self.scriptbundlename;
    if (!isdefined(bundle_name)) {
        return;
    }
    s_door_bundle = getscriptbundle(bundle_name);
    c_door = new cdoor();
    return setup_door_info(s_door_bundle, self, c_door);
}

// Namespace doors/doors_shared
// Params 3, eflags: 0x0
// Checksum 0x6065923, Offset: 0x6d90
// Size: 0xaa8
function setup_door_info(s_door_bundle, s_door_instance, c_door) {
    if (!isdefined(s_door_bundle)) {
        s_door_bundle = spawnstruct();
        s_door_bundle.door_open_method = s_door_instance.door_open_method;
        s_door_bundle.door_slide_horizontal = s_door_instance.door_slide_horizontal;
        s_door_bundle.door_slide_horizontal_y = s_door_instance.door_slide_horizontal_y;
        s_door_bundle.door_open_time = s_door_instance.door_open_time;
        s_door_bundle.door_slide_open_units = s_door_instance.door_slide_open_units;
        s_door_bundle.door_swing_angle = s_door_instance.door_swing_angle;
        s_door_bundle.var_f2943dab = s_door_instance.var_f2943dab;
        s_door_bundle.door_closes = s_door_instance.door_closes;
        s_door_bundle.var_d37e8f3e = s_door_instance.var_d37e8f3e;
        s_door_bundle.door_start_open = s_door_instance.door_start_open;
        s_door_bundle.door_triggeroffsetx = s_door_instance.door_triggeroffset[0];
        s_door_bundle.door_triggeroffsety = s_door_instance.door_triggeroffset[1];
        s_door_bundle.door_triggeroffsetz = s_door_instance.door_triggeroffset[2];
        s_door_bundle.door_trigger_radius = s_door_instance.door_trigger_radius;
        s_door_bundle.door_start_sound = s_door_instance.door_start_sound;
        s_door_bundle.door_loop_sound = s_door_instance.door_loop_sound;
        s_door_bundle.door_stop_sound = s_door_instance.door_stop_sound;
        s_door_bundle.door_animated_open_bundle = s_door_instance.door_animated_open_bundle;
        s_door_bundle.door_animated_close_bundle = s_door_instance.door_animated_close_bundle;
        s_door_bundle.var_4123e857 = s_door_instance.var_4123e857;
        s_door_bundle.var_b24cba18 = s_door_instance.var_b24cba18;
        s_door_bundle.model = s_door_instance;
        s_door_instance.door_open_method = undefined;
        s_door_instance.door_slide_horizontal = undefined;
        s_door_instance.door_slide_horizontal_y = undefined;
        s_door_instance.door_open_time = undefined;
        s_door_instance.door_slide_open_units = undefined;
        s_door_instance.door_swing_angle = undefined;
        s_door_instance.var_f2943dab = undefined;
        s_door_instance.door_closes = undefined;
        s_door_instance.var_d37e8f3e = undefined;
        s_door_instance.door_start_open = undefined;
        s_door_instance.door_triggeroffsetx = undefined;
        s_door_instance.door_triggeroffsety = undefined;
        s_door_instance.door_triggeroffsetz = undefined;
        s_door_instance.door_trigger_radius = undefined;
        s_door_instance.door_start_sound = undefined;
        s_door_instance.door_loop_sound = undefined;
        s_door_instance.door_stop_sound = undefined;
        s_door_instance.door_animated_open_bundle = undefined;
        s_door_instance.door_animated_close_bundle = undefined;
        s_door_instance.var_b24cba18 = undefined;
        s_door_instance.var_ee1b0615 = undefined;
        s_door_instance.var_3b86b7db = undefined;
        s_door_instance.var_16a4e229 = undefined;
        s_door_instance.var_16e3e29b = undefined;
        s_door_instance.var_4123e857 = undefined;
    }
    c_door.m_s_bundle = s_door_bundle;
    c_door.var_a2f96f78 = s_door_instance;
    if (isdefined(s_door_instance.target)) {
        a_target_ents = getentarray(s_door_instance.target, "targetname");
        foreach (ent in a_target_ents) {
            if (ent.objectid === "clip_player_doorway") {
                if (is_true(ent.script_door_enable_player_clip)) {
                    ent.targetname = undefined;
                    c_door.m_e_player_clip = ent;
                } else {
                    ent delete();
                }
                continue;
            }
            if (ent trigger::is_trigger_of_type()) {
                c_door.m_s_bundle.door_trigger_at_target = 1;
            }
        }
    }
    if (c_door.m_s_bundle.door_unlock_method === "hack" && !is_true(level.door_hack_precached)) {
        level.door_hack_precached = 1;
    }
    e_or_str_door_model = c_door.m_s_bundle.model;
    if (isdefined(c_door.m_s_bundle.door_triggeroffsetx)) {
        n_xoffset = c_door.m_s_bundle.door_triggeroffsetx;
    } else {
        n_xoffset = 0;
    }
    if (isdefined(c_door.m_s_bundle.door_triggeroffsety)) {
        n_yoffset = c_door.m_s_bundle.door_triggeroffsety;
    } else {
        n_yoffset = 0;
    }
    if (isdefined(c_door.m_s_bundle.door_triggeroffsetz)) {
        n_zoffset = c_door.m_s_bundle.door_triggeroffsetz;
    } else {
        n_zoffset = 0;
    }
    v_trigger_offset = (n_xoffset, n_yoffset, n_zoffset);
    c_door.m_s_bundle.v_trigger_offset = v_trigger_offset;
    n_trigger_radius = c_door.m_s_bundle.door_trigger_radius;
    if (is_true(c_door.m_s_bundle.door_slide_horizontal)) {
        if (is_true(c_door.m_s_bundle.door_slide_horizontal_y)) {
            str_slide_dir = "Y";
        } else {
            str_slide_dir = "X";
        }
    } else {
        str_slide_dir = "Z";
    }
    n_open_time = c_door.m_s_bundle.door_open_time;
    n_slide_amount = c_door.m_s_bundle.door_slide_open_units;
    if (!isdefined(c_door.m_s_bundle.door_swing_angle)) {
        c_door.m_s_bundle.door_swing_angle = 0;
    }
    if (!isdefined(c_door.m_s_bundle.var_f2943dab)) {
        c_door.m_s_bundle.var_f2943dab = 0;
    }
    if (is_true(c_door.m_s_bundle.door_closes)) {
        n_door_closes = 1;
    } else {
        n_door_closes = 0;
    }
    if (isdefined(s_door_instance.script_obstruction_cover_open)) {
        c_door.var_fb8a6fcc = getnodearray(s_door_instance.script_obstruction_cover_open, "script_obstruction_cover_open");
    }
    if (isdefined(s_door_instance.script_obstruction_cover_close)) {
        c_door.var_e1a5a27e = getnodearray(s_door_instance.script_obstruction_cover_close, "script_obstruction_cover_close");
    }
    [[ c_door ]]->function_7d2c33c4(0);
    if (is_true(c_door.m_s_bundle.door_start_open)) {
        c_door flag::set("open");
    }
    if (isdefined(c_door.var_a2f96f78.script_flag)) {
        a_flags = strtok(c_door.var_a2f96f78.script_flag, ",");
        foreach (str_flag in a_flags) {
            level flag::init(str_flag);
        }
    }
    [[ c_door ]]->set_door_paths(is_true(c_door.m_s_bundle.door_connect_paths));
    [[ c_door ]]->init_door_model(e_or_str_door_model, s_door_instance);
    [[ c_door ]]->init_trigger(v_trigger_offset, n_trigger_radius, c_door.m_s_bundle);
    c_door function_d374e3dd(0);
    c_door thread namespace_64f6ea7a::init_max_yaws();
    [[ c_door ]]->init_player_spawns();
    thread [[ c_door ]]->run_lock_fx();
    [[ c_door ]]->init_movement(str_slide_dir, n_slide_amount);
    if (!isdefined(c_door.m_s_bundle.door_open_time)) {
        c_door.m_s_bundle.door_open_time = 0.4;
    }
    if (isdefined(s_door_instance.script_delay)) {
        [[ c_door ]]->function_ea9e96ca(s_door_instance.script_delay);
    }
    c_door.m_s_bundle.b_loop_sound = isdefined(c_door.m_s_bundle.door_loop_sound) && c_door.m_s_bundle.door_loop_sound != "";
    if (is_true(s_door_instance.var_d7532565)) {
        c_door thread function_83929c65(1);
    } else {
        level thread door_update(c_door);
    }
    if (is_true(c_door.var_81f24576)) {
        [[ c_door ]]->function_e7be6e76(0, 0, 0, 0);
    }
    /#
        c_door thread debug_draw();
    #/
    if (is_true(c_door.m_s_bundle.var_d37e8f3e)) {
        level thread function_dc98f943(c_door);
    }
    return c_door;
}

/#

    // Namespace doors/doors_shared
    // Params 0, eflags: 0x0
    // Checksum 0xd269e53, Offset: 0x7840
    // Size: 0xde
    function debug_draw() {
        if (isdefined(self.m_e_door)) {
            self.m_e_door endon(#"death");
            ent_num = self.m_e_door getentitynumber();
            while (true) {
                var_9599e270 = level.var_1def7d37[#"hash_5171254138328d84"];
                if (var_9599e270 <= 0) {
                    level waittill(#"hash_5171254138328d84");
                    continue;
                }
                if (var_9599e270 == 1 || var_9599e270 == ent_num) {
                    self function_75697b7d(ent_num);
                }
                waitframe(1);
            }
        }
    }

    // Namespace doors/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0x44356b1a, Offset: 0x7928
    // Size: 0xaf4
    function function_75697b7d(ent_num) {
        assert(isdefined(self.m_e_door));
        angles = self.m_e_door.angles;
        var_ed80ebc4 = self function_fb354714();
        var_5e92800d = self function_eea7cdb4();
        debugaxis(self.m_e_door.origin, angles);
        start = self.m_e_door.origin + (0, 0, 20);
        line(start, start + var_ed80ebc4 * 5, (0, 1, 0), 1);
        line(start, start + var_5e92800d * 5, (1, 0, 0), 1);
        print3d(self.m_e_door.origin + (0, 0, -5), "<unknown string>" + self.m_s_bundle.name + "<unknown string>" + ent_num, (1, 1, 1), 1, 0.1);
        center = self get_door_center(1);
        center += (0, 0, -5);
        if (is_true(self.var_d587661f)) {
            print3d(center + (0, 0, -5), "<unknown string>" + self.var_d587661f, (1, 0, 0), 1, 0.1);
        }
        temp = "<unknown string>";
        if (is_true(self.var_81f24576)) {
            temp = "<unknown string>" + self.var_81f24576 + "<unknown string>";
        }
        if (is_true(self.var_4882ff02)) {
            temp = temp + "<unknown string>" + self.var_4882ff02 + "<unknown string>";
        }
        if (temp != "<unknown string>") {
            print3d(center + (0, 0, -6.5), temp, (1, 0, 0), 1, 0.1);
        }
        if (self flag::get("<unknown string>")) {
            print3d(center + (0, 0, -8), "<unknown string>", (1, 0, 0), 1, 0.1);
        } else {
            print3d(center + (0, 0, -8), "<unknown string>", (0, 1, 0), 1, 0.1);
        }
        var_e9846847 = undefined;
        if (isdefined(self.var_a2f96f78.var_ea225236)) {
            print3d(center + (0, 0, -9.5), "<unknown string>", (0, 0.5, 0), 1, 0.1);
            var_e9846847 = self.var_a2f96f78.var_ea225236;
        } else if (isdefined(self.var_a2f96f78.targetname)) {
            var_a20f663b = struct::get_script_bundle_instances("<unknown string>", array(self.var_a2f96f78.targetname, "<unknown string>"));
            if (isdefined(var_a20f663b) && var_a20f663b.size > 0) {
                var_e9846847 = var_a20f663b[0];
                print3d(center + (0, 0, -9.5), "<unknown string>", (0, 0.5, 0), 1, 0.1);
            }
        }
        if (isdefined(var_e9846847) && isdefined(var_e9846847.mdl_gameobject) && isdefined(var_e9846847.mdl_gameobject.trigger)) {
            var_ed6e11b4 = "<unknown string>";
            var_7520fb92 = (1, 1, 1);
            if (!var_e9846847.mdl_gameobject.trigger isusable()) {
                var_ed6e11b4 = "<unknown string>";
                var_7520fb92 = (0.5, 0.5, 0.5);
            }
            debugstar(var_e9846847.mdl_gameobject.trigger.origin, 1, var_7520fb92, "<unknown string>" + var_e9846847.mdl_gameobject getentitynumber() + "<unknown string>" + var_e9846847.mdl_gameobject.trigger getentitynumber() + var_ed6e11b4, 0.05);
        }
        print3d(center + (0, 0, -11), "<unknown string>" + self.m_s_bundle.door_open_method, (0, 0.5, 0), 1, 0.1);
        temp = "<unknown string>" + is_true(self.m_s_bundle.var_7bbc4039) + "<unknown string>";
        if (isdefined(self.var_f97eab64)) {
            temp = temp + "<unknown string>" + self.var_f97eab64 + "<unknown string>";
        }
        print3d(center + (0, 0, -13.5), temp, (0, 0.5, 0), 1, 0.1);
        if (function_4011a3d9()) {
            print3d(center + (0, 0, -16), "<unknown string>", (0, 0.5, 0), 1, 0.1);
        }
        if (function_53f46e97()) {
            print3d(center + (0, 0, -16), "<unknown string>", (0, 0.5, 0), 1, 0.1);
        }
        var_6143a8d8 = "<unknown string>";
        var_a011b978 = (1, 1, 1);
        var_d5587654 = [[ self ]]->function_a5fa0850();
        if (isdefined(self.m_e_trigger)) {
            var_920bc240 = "<unknown string>";
            if (is_true(self.m_e_trigger.var_2dbb0ac1)) {
                var_920bc240 = "<unknown string>";
            }
            debugstar(self.m_e_trigger.origin, 1, var_a011b978, self.m_e_trigger.classname + "<unknown string>" + self.m_e_trigger getentitynumber() + var_920bc240 + var_6143a8d8, 0.1);
        } else if (isdefined(self.m_e_door.mdl_gameobject) && isdefined(self.m_e_door.mdl_gameobject.trigger)) {
            debugstar(self.m_e_door.mdl_gameobject.trigger.origin, 1, var_a011b978, "<unknown string>" + self.m_e_door.mdl_gameobject getentitynumber() + "<unknown string>" + self.m_e_door.mdl_gameobject.trigger getentitynumber() + var_6143a8d8, 0.1);
        } else {
            print3d(self.m_e_door.origin, "<unknown string>" + ent_num + var_6143a8d8, var_a011b978, 1, 0.1, 1);
        }
        if (isdefined(self.m_s_bundle) && (self.m_s_bundle.door_open_method == "<unknown string>" || self.m_s_bundle.door_open_method == "<unknown string>")) {
            if (isdefined(self.var_15695d13)) {
                self thread namespace_64f6ea7a::draw_max_yaw(1);
            }
            if (isdefined(self.var_ca91d615)) {
                self thread namespace_64f6ea7a::draw_max_yaw(0);
            }
        }
        if (ent_num === level.var_8e7ad5cb) {
            before = level.var_1def7d37[#"hash_5171254138328d84"];
            level.var_1def7d37[#"hash_5171254138328d84"] = 2;
            self namespace_64f6ea7a::init_max_yaws();
            level.var_8e7ad5cb = undefined;
            level.var_1def7d37[#"hash_5171254138328d84"] = before;
        }
    }

    // Namespace doors/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0x91fccf94, Offset: 0x8428
    // Size: 0x1c6
    function function_2150e56f(flags) {
        retval = "<unknown string>";
        if (flags & 1) {
            retval += "<unknown string>";
        }
        if (flags & 2) {
            retval += "<unknown string>";
        }
        if (flags & 4) {
            retval += "<unknown string>";
        }
        if (flags & 8) {
            retval += "<unknown string>";
        }
        if (flags & 16) {
            retval += "<unknown string>";
        }
        if (flags & 32) {
            retval += "<unknown string>";
        }
        if (flags & 64) {
            retval += "<unknown string>";
        }
        if (flags & 128) {
            retval += "<unknown string>";
        }
        if (flags & 256) {
            retval += "<unknown string>";
        }
        if (flags & 512) {
            retval += "<unknown string>";
        }
        if (flags & 1024) {
            retval += "<unknown string>";
        }
        if (flags & 2048) {
            retval += "<unknown string>";
        }
        if (flags & 4096) {
            retval += "<unknown string>";
        }
        return retval;
    }

    // Namespace doors/doors_shared
    // Params 1, eflags: 0x0
    // Checksum 0xd5edea81, Offset: 0x85f8
    // Size: 0x446
    function function_81fba61a(flags) {
        retval = "<unknown string>";
        if (flags & 1) {
            retval += "<unknown string>";
        }
        if (flags & 2) {
            retval += "<unknown string>";
        }
        if (flags & 4) {
            retval += "<unknown string>";
        }
        if (flags & 8) {
            retval += "<unknown string>";
        }
        if (flags & 16) {
            retval += "<unknown string>";
        }
        if (flags & 32) {
            retval += "<unknown string>";
        }
        if (flags & 64) {
            retval += "<unknown string>";
        }
        if (flags & 128) {
            retval += "<unknown string>";
        }
        if (flags & 256) {
            retval += "<unknown string>";
        }
        if (flags & 512) {
            retval += "<unknown string>";
        }
        if (flags & 1024) {
            retval += "<unknown string>";
        }
        if (flags & 2048) {
            retval += "<unknown string>";
        }
        if (flags & 4096) {
            retval += "<unknown string>";
        }
        if (flags & 524288) {
            retval += "<unknown string>";
        }
        if (flags & 8192) {
            retval += "<unknown string>";
        }
        if (flags & 16384) {
            retval += "<unknown string>";
        }
        if (flags & 32768) {
            retval += "<unknown string>";
        }
        if (flags & 32768) {
            retval += "<unknown string>";
        }
        if (flags & 65536) {
            retval += "<unknown string>";
        }
        if (flags & 131072) {
            retval += "<unknown string>";
        }
        if (flags & 262144) {
            retval += "<unknown string>";
        }
        if (flags & 1073741824) {
            retval += "<unknown string>";
        }
        if (flags & 536870912) {
            retval += "<unknown string>";
        }
        if (flags & 1048576) {
            retval += "<unknown string>";
        }
        if (flags & 2097152) {
            retval += "<unknown string>";
        }
        if (flags & 4194304) {
            retval += "<unknown string>";
        }
        if (flags & 8388608) {
            retval += "<unknown string>";
        }
        if (flags & 16777216) {
            retval += "<unknown string>";
        }
        if (flags & 134217728) {
            retval += "<unknown string>";
        }
        if (flags & 268435456) {
            retval += "<unknown string>";
        }
        if (flags & 2147483648) {
            retval += "<unknown string>";
        }
        if (flags & 33554432) {
            retval += "<unknown string>";
        }
        if (flags & 67108864) {
            retval += "<unknown string>";
        }
        return retval;
    }

#/

// Namespace doors/doors_shared
// Params 0, eflags: 0x4
// Checksum 0xaacd8d2f, Offset: 0x8a48
// Size: 0xbe
function private function_e173262f() {
    if (isdefined(self.m_e_door.mdl_gameobject)) {
        waitresult = self.m_e_door.mdl_gameobject waittill(#"gameobject_end_use_player");
        waitresult.activator = waitresult.player;
    } else if (isdefined(self.m_e_trigger)) {
        waitresult = self.m_e_trigger waittill(#"trigger");
    } else {
        waitresult = self.m_e_door waittill(#"trigger");
    }
    return waitresult;
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x0
// Checksum 0x4190df4a, Offset: 0x8b10
// Size: 0x14c
function function_4011a3d9() {
    if (isdefined(self.var_a2f96f78.linkname)) {
        return false;
    }
    if (isdefined(self.var_a2f96f78.linkto)) {
        if (isdefined(self.var_d1c4f848)) {
            return true;
        } else if (!isdefined(level.var_1da7d7a6) || !level.var_1da7d7a6) {
            var_4ac9b3ea = struct::get_array(self.var_a2f96f78.linkto, "linkname");
            foreach (struct in var_4ac9b3ea) {
                if (isdefined(struct.classname) && (struct.classname == "scriptbundle_doors" || struct.classname == "scriptbundle_windows")) {
                    return true;
                }
            }
        }
    }
    return false;
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x0
// Checksum 0x23d53936, Offset: 0x8c68
// Size: 0xaa
function function_53f46e97() {
    if (isdefined(self.var_a2f96f78.linkto)) {
        return false;
    }
    if (isdefined(self.var_a2f96f78.linkname)) {
        if (isdefined(self.var_d1c4f848)) {
            return true;
        } else if (!isdefined(level.var_1da7d7a6) || !level.var_1da7d7a6) {
            var_26bf2138 = struct::get_array(self.var_a2f96f78.linkname, "linkto");
            if (var_26bf2138.size > 0) {
                return true;
            }
        }
    }
    return false;
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0x70b1a56a, Offset: 0x8d20
// Size: 0x88
function door_open_update(c_door) {
    use_trigger = [[ c_door ]]->function_a5fa0850();
    if (!isdefined(use_trigger)) {
        return;
    }
    use_trigger endon(#"death");
    while (true) {
        waitresult = c_door function_e173262f();
        self function_16136fe9(c_door, waitresult);
    }
}

// Namespace doors/doors_shared
// Params 2, eflags: 0x0
// Checksum 0x32fb6ba0, Offset: 0x8db0
// Size: 0x390
function function_16136fe9(c_door, waitresult) {
    b_auto_close = is_true(c_door.m_s_bundle.door_closes) && !is_true(c_door.m_s_bundle.door_use_trigger);
    b_hold_open = is_true(c_door.m_s_bundle.door_use_hold);
    b_manual_close = is_true(c_door.m_s_bundle.door_use_trigger) && is_true(c_door.m_s_bundle.door_closes);
    e_who = waitresult.activator;
    c_door.var_9b9642be = e_who;
    if (isdefined(c_door.var_a2f96f78.script_team) && c_door.var_a2f96f78.script_team != #"any" && !c_door.var_9b9642be util::is_on_side(c_door.var_a2f96f78.script_team)) {
        return;
    }
    if (!c_door flag::get("open")) {
        if (!c_door flag::get("locked")) {
            if (b_hold_open || b_auto_close) {
                [[ c_door ]]->open(e_who);
                [[ c_door ]]->function_830dc907(e_who);
                if (b_hold_open) {
                    if (isplayer(e_who)) {
                        e_who player_freeze_in_place(1);
                        e_who disableweapons();
                        e_who disableoffhandweapons();
                    }
                }
                door_wait_until_clear(c_door, e_who);
                [[ c_door ]]->close();
                [[ c_door ]]->function_d30d9f47(e_who);
                if (b_hold_open) {
                    waitframe(1);
                    c_door flag::wait_till_clear("animating");
                    if (isplayer(e_who)) {
                        e_who player_freeze_in_place(0);
                        e_who enableweapons();
                        e_who enableoffhandweapons();
                    }
                }
            } else {
                [[ c_door ]]->open(e_who);
                [[ c_door ]]->function_830dc907(e_who);
            }
        }
        return;
    }
    if (b_manual_close) {
        [[ c_door ]]->close();
        [[ c_door ]]->function_d30d9f47(e_who);
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0xd0a4b1e3, Offset: 0x9148
// Size: 0xe4
function door_update(c_door) {
    c_door notify(#"hash_3becf718b3c58ac9");
    c_door endon(#"hash_3becf718b3c58ac9");
    if (is_true(c_door.m_s_bundle.door_locked)) {
        [[ c_door ]]->lock();
        if (isdefined(c_door.var_a2f96f78.targetname) && isdefined(c_door.m_e_trigger)) {
            self childthread door_update_lock_scripted(c_door);
        }
    }
    self childthread door_open_update(c_door);
    [[ c_door ]]->update_use_message();
    self childthread function_463715ec(c_door);
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0x6854a69a, Offset: 0x9238
// Size: 0x126
function function_463715ec(c_door) {
    while (true) {
        if (c_door flag::get("locked")) {
            [[ c_door ]]->function_f584b243(1);
            c_door flag::wait_till_clear("locked");
        }
        c_door flag::wait_till("open");
        if (!is_true(c_door.var_c4c3fa39) && isplayer(c_door.var_9b9642be)) {
            wait(0.2);
        }
        self function_5db0cee5(c_door);
        c_door flag::wait_till_clear("open");
        self function_426a2a1b(c_door);
        waitframe(1);
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0x6e881994, Offset: 0x9368
// Size: 0xd4
function function_5db0cee5(c_door) {
    waittillframeend();
    if (isdefined(c_door.var_d1c4f848)) {
        c_door.var_d1c4f848.c_door flag::set("open");
    }
    if (c_door.m_door_open_delay_time > 0) {
        c_door.m_e_door notify(#"door_waiting_to_open", {#player:c_door.var_9b9642be});
        wait(c_door.m_door_open_delay_time);
    }
    thread [[ c_door ]]->open_internal();
    if (c_door namespace_64f6ea7a::function_9d109db6()) {
        c_door thread namespace_64f6ea7a::monitor_door_push();
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0xf3fcdea8, Offset: 0x9448
// Size: 0xd4
function function_426a2a1b(c_door) {
    waittillframeend();
    thread [[ c_door ]]->close_internal();
    if (isdefined(c_door.var_d1c4f848)) {
        c_door.var_d1c4f848.c_door flag::clear("open");
    }
    if (!is_true(c_door.m_s_bundle.door_closes)) {
        if (is_true(c_door.m_s_bundle.var_d37e8f3e)) {
            c_door notify(#"set_destructible", {#player:c_door.var_9b9642be});
        }
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0xbd421e8d, Offset: 0x9528
// Size: 0x9c
function door_update_lock_scripted(c_door) {
    door_str = c_door.var_a2f96f78.targetname;
    c_door.m_e_trigger.targetname = door_str + "_trig";
    c_door.m_e_trigger endon(#"death");
    while (true) {
        c_door.m_e_trigger waittill(#"unlocked");
        [[ c_door ]]->unlock();
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0xa7f11972, Offset: 0x95d0
// Size: 0x468
function function_dc98f943(c_door) {
    e_door = c_door.m_e_door;
    e_door endon(#"door_cleared", #"death");
    assert(isdefined(e_door), "<unknown string>");
    e_door setcandamage(0);
    waitresult = c_door waittill(#"set_destructible");
    e_door waittill(#"door_closed");
    e_door setcandamage(1);
    e_door setteam(waitresult.player.team);
    if (isdefined(c_door.var_a2f96f78) && is_true(c_door.var_a2f96f78.script_make_full_sentient)) {
        e_door makesentient();
        e_door.canbemeleed = 0;
    } else {
        e_door util::function_5d36c37a();
    }
    target_set(e_door);
    level notify(#"hash_9db88375ef038b", {#c_door:c_door, #player:waitresult.player});
    e_door val::set(#"hash_25bedd86747e41e1", "takedamage", 1);
    e_door val::set(#"hash_25bedd86747e41e1", "allowdeath", 1);
    if (isdefined(c_door.m_s_bundle.registersidestepshouldstun)) {
        e_door.health = c_door.m_s_bundle.registersidestepshouldstun;
    } else {
        e_door.health = 10000;
    }
    if (isdefined(c_door.m_s_bundle.var_8bed02db)) {
        e_door.script_health = e_door.health;
        e_door thread scene::init(c_door.m_s_bundle.var_8bed02db, e_door);
        e_door waittill(#"hash_18be12558bc58fe");
    } else {
        while (e_door.health > 0) {
            e_door waittill(#"damage");
        }
        e_door ghost();
    }
    target_remove(e_door);
    if (issentient(e_door)) {
        e_door function_60d50ea4();
    } else if (function_ffa5b184(e_door)) {
        e_door function_dfee3dec();
    }
    e_door val::reset(#"hash_25bedd86747e41e1", "takedamage");
    e_door val::reset(#"hash_25bedd86747e41e1", "allowdeath");
    e_door.health = 0;
    if (isdefined(c_door.m_s_bundle.var_ffb77aca)) {
        playfxontag(c_door.m_s_bundle.var_ffb77aca, e_door, "tag_origin");
    }
    e_door notsolid();
    [[ c_door ]]->function_f584b243(0);
    e_door notify(#"door_cleared");
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0xdbf87267, Offset: 0x9a40
// Size: 0x12c
function player_freeze_in_place(b_do_freeze) {
    if (!b_do_freeze) {
        if (isdefined(self.freeze_origin)) {
            self unlink();
            self.freeze_origin delete();
            self.freeze_origin = undefined;
        }
        return;
    }
    if (!isdefined(self.freeze_origin)) {
        self.freeze_origin = spawn("script_model", self.origin);
        self.freeze_origin setmodel(#"tag_origin");
        self.freeze_origin.angles = self getplayerangles();
        self playerlinktodelta(self.freeze_origin, "tag_origin", 1, 45, 45, 45, 45);
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0xdc3730f7, Offset: 0x9b78
// Size: 0x17c
function function_4fb146e4(c_door) {
    allentities = [];
    var_f9ec23eb = isdefined([[ c_door ]]->function_61c13b93()) ? [[ c_door ]]->function_61c13b93() : c_door.m_e_door.origin;
    allentities = getentitiesinradius(var_f9ec23eb, 30);
    entcount = 0;
    foreach (entity in allentities) {
        if (isplayer(entity)) {
            continue;
        }
        if (iscorpse(entity) && is_true(level.var_a348230f)) {
            entity delete();
            continue;
        }
        if (!isdefined(entity.weapon)) {
            continue;
        }
        entcount++;
    }
    return entcount == 0;
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0x12aab327, Offset: 0x9d00
// Size: 0x126
function trigger_wait_until_clear(c_door) {
    self endon(#"death");
    last_trigger_time = gettime();
    self.ents_in_trigger = 1;
    str_kill_trigger_notify = "trigger_now_clear";
    self thread trigger_check_for_ents_touching(str_kill_trigger_notify);
    while (true) {
        time = gettime();
        if (self.ents_in_trigger == 1) {
            self.ents_in_trigger = 0;
            last_trigger_time = time;
        }
        var_39533c4 = 0;
        dt = float(time - last_trigger_time) / 1000;
        if (dt >= 0.3) {
            var_39533c4 = 1;
        }
        if (var_39533c4 && function_4fb146e4(c_door)) {
            break;
        }
        waitframe(1);
    }
    self notify(str_kill_trigger_notify);
}

// Namespace doors/doors_shared
// Params 3, eflags: 0x0
// Checksum 0x633707e3, Offset: 0x9e30
// Size: 0xda
function door_wait_until_user_release(c_door, e_triggerer, str_kill_on_door_notify) {
    if (isdefined(str_kill_on_door_notify)) {
        c_door endon(str_kill_on_door_notify);
    }
    wait(0.25);
    max_dist_sq = c_door.m_s_bundle.door_trigger_radius * c_door.m_s_bundle.door_trigger_radius;
    b_pressed = 1;
    n_dist = 0;
    do {
        waitframe(1);
        b_pressed = e_triggerer usebuttonpressed();
        n_dist = distancesquared(e_triggerer.origin, self.origin);
    } while (b_pressed && n_dist < max_dist_sq);
}

// Namespace doors/doors_shared
// Params 2, eflags: 0x0
// Checksum 0x52e02a0b, Offset: 0x9f18
// Size: 0x9c
function door_wait_until_clear(c_door, e_triggerer) {
    e_trigger = c_door.m_e_trigger;
    if (isplayer(e_triggerer) && is_true(c_door.m_s_bundle.door_use_hold)) {
        c_door.m_e_trigger door_wait_until_user_release(c_door, e_triggerer);
    }
    e_trigger trigger_wait_until_clear(c_door);
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0x84af7b63, Offset: 0x9fc0
// Size: 0x4a
function trigger_check_for_ents_touching(str_kill_trigger_notify) {
    self endon(#"death", str_kill_trigger_notify);
    while (true) {
        self waittill(#"trigger");
        self.ents_in_trigger = 1;
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0x479e555a, Offset: 0xa018
// Size: 0x90
function door_debug_line(v_origin) {
    self endon(#"death");
    while (true) {
        v_start = v_origin;
        v_end = v_start + (0, 0, 1000);
        v_col = (0, 0, 1);
        /#
            line(v_start, v_end, (0, 0, 1));
        #/
        wait(0.1);
    }
}

// Namespace doors/doors_shared
// Params 4, eflags: 0x0
// Checksum 0xfaaf8836, Offset: 0xa0b0
// Size: 0x164
function unlock(str_value, str_key = "targetname", b_do_open = 1, e_player = undefined) {
    if (isdefined(self.c_door)) {
        [[ self.c_door ]]->unlock();
        if (b_do_open) {
            [[ self.c_door ]]->open(e_player);
        }
        return;
    }
    a_e_doors = get_doors(str_value, str_key);
    foreach (e_door in a_e_doors) {
        if (isdefined(e_door.c_door)) {
            [[ e_door.c_door ]]->unlock();
            if (b_do_open) {
                [[ e_door.c_door ]]->open(e_player);
            }
        }
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0x1618c8c4, Offset: 0xa220
// Size: 0x34
function unlock_all(b_do_open = 1) {
    unlock(undefined, undefined, b_do_open);
}

// Namespace doors/doors_shared
// Params 3, eflags: 0x0
// Checksum 0x86616fde, Offset: 0xa260
// Size: 0x150
function lock(str_value, str_key = "targetname", b_do_close = 1) {
    if (isdefined(self.c_door)) {
        if (b_do_close) {
            [[ self.c_door ]]->close();
        }
        [[ self.c_door ]]->lock();
        return;
    }
    a_e_doors = get_doors(str_value, str_key);
    foreach (e_door in a_e_doors) {
        if (isdefined(e_door.c_door)) {
            if (b_do_close) {
                [[ e_door.c_door ]]->close();
            }
            [[ e_door.c_door ]]->lock();
        }
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0xb1d2cc2, Offset: 0xa3b8
// Size: 0x34
function lock_all(b_do_close = 1) {
    lock(undefined, undefined, b_do_close);
}

// Namespace doors/doors_shared
// Params 3, eflags: 0x0
// Checksum 0x9c9bd012, Offset: 0xa3f8
// Size: 0x118
function open(str_value, str_key = "targetname", e_player = undefined) {
    if (isdefined(self.c_door)) {
        [[ self.c_door ]]->open(e_player);
        return;
    }
    a_e_doors = get_doors(str_value, str_key);
    foreach (e_door in a_e_doors) {
        if (isdefined(e_door.c_door)) {
            [[ e_door.c_door ]]->open(e_player);
        }
    }
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x0
// Checksum 0x4541b71a, Offset: 0xa518
// Size: 0x14
function open_all() {
    open();
}

// Namespace doors/doors_shared
// Params 2, eflags: 0x0
// Checksum 0xb2899ba6, Offset: 0xa538
// Size: 0xfc
function close(str_value, str_key = "targetname") {
    if (isdefined(self.c_door)) {
        [[ self.c_door ]]->close();
        return;
    }
    a_e_doors = get_doors(str_value, str_key);
    foreach (e_door in a_e_doors) {
        if (isdefined(e_door.c_door)) {
            [[ e_door.c_door ]]->close();
        }
    }
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x0
// Checksum 0x23073600, Offset: 0xa640
// Size: 0x14
function close_all() {
    close();
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x0
// Checksum 0x7811b9bc, Offset: 0xa660
// Size: 0x22
function is_open() {
    return self.c_door flag::get("open");
}

// Namespace doors/doors_shared
// Params 2, eflags: 0x0
// Checksum 0x9c7f3b88, Offset: 0xa690
// Size: 0x140
function waittill_door_opened(str_value, str_key = "targetname") {
    if (isdefined(self.c_door)) {
        self.c_door flag::wait_till("open");
        return;
    }
    a_e_doors = get_doors(str_value, str_key);
    while (true) {
        var_8c4538df = 1;
        foreach (e_door in a_e_doors) {
            if (!e_door.c_door flag::get("open")) {
                var_8c4538df = 0;
                break;
            }
        }
        if (var_8c4538df) {
            return;
        }
        waitframe(1);
    }
}

// Namespace doors/doors_shared
// Params 2, eflags: 0x0
// Checksum 0xc0dc0215, Offset: 0xa7d8
// Size: 0x182
function waittill_door_closed(str_value, str_key = "targetname") {
    if (isdefined(self.c_door)) {
        self.c_door flag::wait_till_clear("open");
        self.c_door flag::wait_till_clear("animating");
        return;
    }
    a_e_doors = get_doors(str_value, str_key);
    while (true) {
        var_a644cd9e = 1;
        foreach (e_door in a_e_doors) {
            if (e_door.c_door flag::get("open") || e_door.c_door flag::get("animating")) {
                var_a644cd9e = 0;
                break;
            }
        }
        if (var_a644cd9e) {
            return;
        }
        waitframe(1);
    }
}

// Namespace doors/doors_shared
// Params 3, eflags: 0x0
// Checksum 0x4f8ed8a1, Offset: 0xa968
// Size: 0x15a
function function_e990dbc6(var_db99bbb, str_value, str_key = "targetname") {
    if (isdefined(self.c_door)) {
        self.c_door.var_f97eab64 = var_db99bbb;
        if (isdefined(self.c_door.var_d1c4f848)) {
            self.c_door.var_d1c4f848.var_f97eab64 = var_db99bbb;
        }
        return;
    }
    a_e_doors = get_doors(str_value, str_key);
    foreach (e_door in a_e_doors) {
        if (isdefined(e_door.c_door)) {
            e_door.c_door.var_f97eab64 = var_db99bbb;
            if (isdefined(e_door.c_door.var_d1c4f848)) {
                e_door.c_door.var_f97eab64 = var_db99bbb;
            }
        }
    }
}

// Namespace doors/doors_shared
// Params 4, eflags: 0x4
// Checksum 0x4ca3cd8c, Offset: 0xaad0
// Size: 0x1a0
function private function_1f15ea13(var_518664d2, str_value, str_key, var_28c92434) {
    var_c7d32773 = 1;
    if (var_28c92434) {
        var_c7d32773 = 3;
    }
    if (isdefined(self.c_door)) {
        [[ self.c_door ]]->function_f584b243(var_518664d2, var_c7d32773);
        if (isdefined(self.c_door.var_d1c4f848)) {
            [[ self.c_door.var_d1c4f848.c_door ]]->function_f584b243(var_518664d2, var_c7d32773);
        }
        return;
    }
    a_e_doors = get_doors(str_value, str_key);
    foreach (e_door in a_e_doors) {
        if (isdefined(e_door.c_door)) {
            [[ e_door.c_door ]]->function_f584b243(var_518664d2, var_c7d32773);
            if (isdefined(e_door.c_door.var_d1c4f848)) {
                [[ e_door.c_door.var_d1c4f848.c_door ]]->function_f584b243(var_518664d2, var_c7d32773);
            }
        }
    }
}

// Namespace doors/doors_shared
// Params 3, eflags: 0x0
// Checksum 0x7e06e810, Offset: 0xac78
// Size: 0x5a
function function_c3bee983(str_value, str_key = "targetname", var_28c92434 = 0) {
    return function_1f15ea13(1, str_value, str_key, var_28c92434);
}

// Namespace doors/doors_shared
// Params 3, eflags: 0x0
// Checksum 0xdb1bffa0, Offset: 0xace0
// Size: 0x52
function function_7ea976d3(str_value, str_key = "targetname", var_28c92434 = 0) {
    return function_1f15ea13(0, str_value, str_key, var_28c92434);
}

// Namespace doors/doors_shared
// Params 3, eflags: 0x0
// Checksum 0x14e2e2d4, Offset: 0xad40
// Size: 0x246
function get_doors(str_value, str_key = "targetname", var_9b51a805 = 0) {
    if (isdefined(str_value)) {
        a_e_doors = struct::get_array(str_value, str_key);
        a_e_doors = arraycombine(a_e_doors, getentarray(str_value, str_key), 0, 0);
    } else {
        a_e_doors = struct::get_array("scriptbundle_doors", "classname");
        a_e_doors = arraycombine(a_e_doors, struct::get_array("scriptbundle_obstructions", "classname"), 0, 0);
        a_e_doors = arraycombine(a_e_doors, getentarray("smart_object_door", "script_noteworthy"), 0, 0);
    }
    if (var_9b51a805 > 0) {
        var_378279b6 = [];
        foreach (e_door in a_e_doors) {
            c_door = e_door.c_door;
            if (!isdefined(c_door)) {
                continue;
            }
            if (var_9b51a805 == 1 && is_true(c_door.var_81f24576)) {
                continue;
            }
            if (var_9b51a805 == 2 && is_true(c_door.var_d587661f)) {
                continue;
            }
            var_378279b6[var_378279b6.size] = e_door;
        }
        return var_378279b6;
    }
    return a_e_doors;
}

// Namespace doors/doors_shared
// Params 2, eflags: 0x0
// Checksum 0x9971b277, Offset: 0xaf90
// Size: 0x1a0
function function_3353d645(str_value, str_key = "targetname") {
    if (isdefined(self.c_door)) {
        [[ self.c_door ]]->delete_door();
        if (isstruct(self)) {
            self struct::delete();
        } else {
            self delete();
        }
        return;
    }
    a_e_doors = get_doors(str_value, str_key);
    foreach (e_door in a_e_doors) {
        if (isdefined(e_door.c_door)) {
            [[ e_door.c_door ]]->delete_door();
            if (isstruct(e_door)) {
                e_door struct::delete();
                continue;
            }
            if (isentity(e_door)) {
                e_door delete();
            }
        }
    }
}

// Namespace doors/doors_shared
// Params 3, eflags: 0x0
// Checksum 0x4b9f1c4f, Offset: 0xb138
// Size: 0x148
function function_83929c65(b_enable, str_value, str_key = "targetname") {
    if (isclass(self)) {
        self thread function_fcadd390(b_enable);
        return;
    }
    if (isdefined(self.c_door)) {
        self.c_door thread function_fcadd390(b_enable);
        return;
    }
    a_e_doors = get_doors(str_value, str_key);
    foreach (e_door in a_e_doors) {
        if (isdefined(e_door.c_door)) {
            e_door.c_door thread function_fcadd390(b_enable);
        }
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0x42c0b5f7, Offset: 0xb288
// Size: 0x68
function private function_fcadd390(b_enable) {
    self.m_e_door endon(#"death");
    self notify(#"hash_50b9293fc24e2756");
    self endon(#"hash_50b9293fc24e2756");
    [[ self ]]->close_internal();
    thread [[ self ]]->function_f50c09b3(b_enable);
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0x852675a6, Offset: 0xb2f8
// Size: 0x28
function private function_fa74d5cd(c_door) {
    self waittill(#"death");
    c_door = undefined;
}

// Namespace doors/doors_shared
// Params 2, eflags: 0x0
// Checksum 0xd685b7ea, Offset: 0xb328
// Size: 0x84
function function_73f09315(str_value, str_key = "targetname") {
    if (isdefined(self.c_door)) {
        return self.c_door.m_e_door;
    }
    a_e_doors = get_doors(str_value, str_key);
    return a_e_doors[0].c_door.m_e_door;
}

// Namespace doors/doors_shared
// Params 4, eflags: 0x0
// Checksum 0xaff1e3b8, Offset: 0xb3b8
// Size: 0x1c8
function function_f35467ac(str_value, str_key = "targetname", var_8372bfa0 = 0, var_c4304c95 = 0) {
    if (isdefined(self.c_door)) {
        [[ self.c_door ]]->function_e7be6e76(0, 0, var_8372bfa0, var_c4304c95);
        if (isdefined(self.c_door.var_d1c4f848)) {
            [[ self.c_door.var_d1c4f848.c_door ]]->function_e7be6e76(0, 0, var_8372bfa0, var_c4304c95);
        }
        return;
    }
    a_e_doors = get_doors(str_value, str_key);
    foreach (e_door in a_e_doors) {
        if (isdefined(e_door.c_door)) {
            [[ e_door.c_door ]]->function_e7be6e76(0, 0, var_8372bfa0, var_c4304c95);
            if (isdefined(e_door.c_door.var_d1c4f848)) {
                [[ e_door.c_door.var_d1c4f848.c_door ]]->function_e7be6e76(0, 0, var_8372bfa0, var_c4304c95);
            }
        }
    }
}

// Namespace doors/doors_shared
// Params 4, eflags: 0x0
// Checksum 0x1118c83e, Offset: 0xb588
// Size: 0x1d8
function function_f5dd4f8f(str_value, str_key = "targetname", var_8372bfa0 = 0, var_c4304c95 = 0) {
    if (isdefined(self.c_door)) {
        [[ self.c_door ]]->function_e7be6e76(1, 1, var_8372bfa0, var_c4304c95);
        if (isdefined(self.c_door.var_d1c4f848)) {
            [[ self.c_door.var_d1c4f848.c_door ]]->function_e7be6e76(1, 1, var_8372bfa0, var_c4304c95);
        }
        return;
    }
    a_e_doors = get_doors(str_value, str_key);
    foreach (e_door in a_e_doors) {
        if (isdefined(e_door.c_door)) {
            [[ e_door.c_door ]]->function_e7be6e76(1, 1, var_8372bfa0, var_c4304c95);
            if (isdefined(e_door.c_door.var_d1c4f848)) {
                [[ e_door.c_door.var_d1c4f848.c_door ]]->function_e7be6e76(1, 1, var_8372bfa0, var_c4304c95);
            }
        }
    }
}

// Namespace doors/doors_shared
// Params 2, eflags: 0x4
// Checksum 0xdca9ff7f, Offset: 0xb768
// Size: 0xee
function private function_b391c0a0(gesture, target) {
    if (is_true(self.var_99ce8ae)) {
        return;
    }
    if (!isplayer(self)) {
        return;
    }
    self.var_99ce8ae = 1;
    self val::set("player_door_gesture", "allow_melee", 0);
    if (level.var_1def7d37[#"scr_door_player_gestures"]) {
        self playgestureviewmodel(gesture, target, 1);
    }
    wait(0.05);
    self val::set("player_door_gesture", "allow_melee", 1);
    self.var_99ce8ae = undefined;
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0xad1087f4, Offset: 0xb860
// Size: 0x166
function private function_d374e3dd(reset) {
    if (is_true(self.var_a2f96f78.var_c85eda92)) {
        if (!is_true(reset)) {
            [[ self ]]->lock();
        }
    }
    if (is_true(self.var_a2f96f78.var_aff33935)) {
        if (!is_true(reset)) {
            [[ self ]]->lock();
        }
    }
    if (is_true(self.var_a2f96f78.var_f3475e51)) {
        self.var_d587661f = 2;
    }
    if (is_true(self.var_a2f96f78.var_b2948217)) {
        self.var_81f24576 = 2;
    }
    if (isdefined(self.var_a2f96f78.var_31d51062)) {
        if (self.var_a2f96f78.var_31d51062 == "FORCE_OFF") {
            self.var_f97eab64 = 0;
            return;
        }
        if (self.var_a2f96f78.var_31d51062 == "FORCE_ON") {
            self.var_f97eab64 = 1;
        }
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0xe197d29b, Offset: 0xb9d0
// Size: 0x3ba
function private function_7fe6d007(e_or_str_model) {
    modelname = undefined;
    if (isentity(e_or_str_model)) {
        modelname = e_or_str_model.model;
    } else {
        modelname = e_or_str_model;
    }
    extents = function_c440d28e(modelname, 1);
    dimensions = extents.maxs - extents.mins;
    var_9542dc61 = (dimensions[0], dimensions[1], 0);
    var_9542dc61 = vectornormalize(var_9542dc61);
    if (abs(dimensions[0]) > abs(dimensions[1])) {
        if (abs(extents.maxs[0]) > abs(extents.mins[0])) {
            self.var_e73bf21e = "-y";
            self.var_b25124c7 = "x";
        } else {
            self.var_e73bf21e = "y";
            self.var_b25124c7 = "-x";
        }
        if (isdefined(self.m_s_bundle) && (self.m_s_bundle.door_open_method == "swing_away_from_player" || self.m_s_bundle.door_open_method == "swing")) {
            if (self.m_s_bundle.door_swing_angle > 0 && self.var_b25124c7 == "x" || self.m_s_bundle.door_swing_angle < 0 && self.var_b25124c7 == "-x") {
                self.var_e73bf21e = "y";
            } else {
                self.var_e73bf21e = "-y";
            }
        }
        self.var_e9da41b9 = abs(dimensions[0]);
        return;
    }
    if (abs(extents.maxs[1]) > abs(extents.mins[1])) {
        self.var_e73bf21e = "-x";
        self.var_b25124c7 = "y";
    } else {
        self.var_e73bf21e = "x";
        self.var_b25124c7 = "-y";
    }
    if (isdefined(self.m_s_bundle) && self.m_s_bundle.door_open_method == "swing_away_from_player") {
        if (self.m_s_bundle.door_swing_angle > 0 && self.var_b25124c7 == "y" || self.m_s_bundle.door_swing_angle < 0 && self.var_b25124c7 == "-y") {
            self.var_e73bf21e = "-x";
        } else {
            self.var_e73bf21e = "x";
        }
    }
    self.var_e9da41b9 = abs(dimensions[1]);
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0xfb47ec75, Offset: 0xbd98
// Size: 0xda
function function_fb354714(var_225a57cd = 0) {
    dir = undefined;
    if (isdefined(self.var_e73bf21e)) {
        if (isvec(var_225a57cd)) {
            dir = function_98d85e14(self.var_e73bf21e, var_225a57cd);
        } else if (var_225a57cd) {
            dir = function_98d85e14(self.var_e73bf21e, self.var_85f2454d.angles);
        } else {
            dir = function_98d85e14(self.var_e73bf21e, self.m_e_door.angles);
        }
    }
    return dir;
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0x20c0e1cd, Offset: 0xbe80
// Size: 0xda
function function_eea7cdb4(var_225a57cd = 0) {
    dir = undefined;
    if (isdefined(self.var_b25124c7)) {
        if (isvec(var_225a57cd)) {
            dir = function_98d85e14(self.var_b25124c7, var_225a57cd);
        } else if (var_225a57cd) {
            dir = function_98d85e14(self.var_b25124c7, self.var_85f2454d.angles);
        } else {
            dir = function_98d85e14(self.var_b25124c7, self.m_e_door.angles);
        }
    }
    return dir;
}

// Namespace doors/doors_shared
// Params 2, eflags: 0x4
// Checksum 0xba9c073b, Offset: 0xbf68
// Size: 0xd4
function private function_98d85e14(var_27f61ee5, angles) {
    if (var_27f61ee5 == "y") {
        dir = anglestoright(angles) * -1;
    } else if (var_27f61ee5 == "-y") {
        dir = anglestoright(angles);
    } else if (var_27f61ee5 == "x") {
        dir = anglestoforward(angles);
    } else {
        dir = anglestoforward(angles) * -1;
    }
    return dir;
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x0
// Checksum 0x187b2fc5, Offset: 0xc048
// Size: 0x34
function function_c2758350() {
    v_angles = self getplayerangles();
    return (0, v_angles[1], 0);
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0x789ea5ec, Offset: 0xc088
// Size: 0xe6
function get_door_center(var_225a57cd = 0) {
    if (var_225a57cd && isdefined(self.var_48f481cb)) {
        return (self.var_48f481cb + (0, 0, 55));
    }
    angles = self get_door_angles(var_225a57cd);
    var_9ba2a2c = getxmodelcenteroffset(self.m_e_door.model, 1);
    var_9998d3ec = rotatepoint(var_9ba2a2c, angles);
    return self.m_e_door.origin + (var_9998d3ec[0], var_9998d3ec[1], 55);
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0x5d88ae3d, Offset: 0xc178
// Size: 0xe2
function get_door_bottom_center(var_225a57cd = 0) {
    if (var_225a57cd == 0) {
        point = self.m_e_door.origin + self function_eea7cdb4() * self.var_e9da41b9 * 0.5;
        return point;
    }
    if (isdefined(self.var_48f481cb)) {
        return self.var_48f481cb;
    }
    self.var_48f481cb = self get_door_center();
    self.var_48f481cb = (self.var_48f481cb[0], self.var_48f481cb[1], self.m_e_door.origin[2]);
    return self.var_48f481cb;
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0x2c34936c, Offset: 0xc268
// Size: 0x58
function get_door_angles(var_225a57cd = 0) {
    if (isdefined(self.m_e_door) && !var_225a57cd) {
        return self.m_e_door.angles;
    }
    return self.var_85f2454d.angles;
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0x1224fbcb, Offset: 0xc2c8
// Size: 0x286
function private door_bashable_by_player(player) {
    if (is_true(self.var_d587661f) || is_true(self.var_14382d8d) || !self flag::get("door_pushable") && (is_true(self flag::get("door_fully_open")) || is_true(self.var_c4c3fa39))) {
        /#
            self.debug_activity = "<unknown string>";
        #/
        return false;
    }
    if (player getcurrentweapon() == level.weaponnone) {
        return false;
    }
    doorfwd = anglestoforward((0, self.m_e_door.angles[1], 0));
    var_7636f9c2 = anglestoforward((0, self.var_85f2454d.angles[1], 0));
    if (vectordot(doorfwd, var_7636f9c2) < 0.5) {
        return false;
    }
    var_e5959a30 = self get_door_bottom_center();
    var_e5959a30 = (var_e5959a30[0], var_e5959a30[1], player.origin[2]);
    if (util::within_fov(player.origin, player function_c2758350(), var_e5959a30, 0.77)) {
        return true;
    }
    var_dec83597 = self function_c177702e();
    var_dec83597 = (var_dec83597[0], var_dec83597[1], player.origin[2]);
    if (util::within_fov(player.origin, player function_c2758350(), var_dec83597, 0.866)) {
        return true;
    }
    return false;
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x4
// Checksum 0xd3e54dc2, Offset: 0xc558
// Size: 0x38
function private function_c177702e() {
    return self.m_e_door.origin + self function_eea7cdb4() * (self.var_e9da41b9 - 7);
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0xf8eb3d8d, Offset: 0xc598
// Size: 0x1dc
function private should_bash_open(player) {
    /#
        self thread bash_debug(1);
    #/
    if (door_bashable_by_player(player)) {
        if (player ismeleeing()) {
            /#
                self thread bash_debug(1000);
            #/
            return true;
        }
        if (!player issprinting()) {
            return false;
        }
        if (level.var_1def7d37[#"scr_door_bash_requires_use"]) {
            if (!player usebuttonpressed()) {
                return false;
            }
        }
        playerspeed = length(player getvelocity());
        if (playerspeed < 50) {
            return false;
        }
        vec = vectornormalize(player getplayercamerapos() - self get_door_center());
        var_ed80ebc4 = self function_fb354714();
        var_9bd4d937 = vectordot(vec, var_ed80ebc4);
        if (abs(var_9bd4d937) < 0.4) {
            return false;
        }
        /#
            self thread bash_debug(1000);
        #/
        return true;
    }
    return false;
}

/#

    // Namespace doors/doors_shared
    // Params 1, eflags: 0x4
    // Checksum 0x76fc2f69, Offset: 0xc780
    // Size: 0x394
    function private bash_debug(duration) {
        if (level.var_1def7d37[#"hash_5171254138328d84"]) {
            var_1a23fa7 = [];
            var_c03beac5 = [];
            var_1a23fa7[0] = self get_door_bottom_center();
            var_c03beac5[0] = 0.77;
            var_1a23fa7[1] = self function_c177702e();
            var_c03beac5[1] = 0.866;
            center = self get_door_center();
            player = level.players[0];
            line(player.origin, center, (1, 1, 1), 1, 0, duration);
            line(player.origin, player.origin + anglestoforward(player getplayerangles()) * 32, (1, 0.5, 0), 1, 0, duration);
            for (i = 0; i < var_1a23fa7.size; i++) {
                var_6dcc5f28 = var_1a23fa7[i] - player.origin;
                var_6dcc5f28 = (var_6dcc5f28[0], var_6dcc5f28[1], 0);
                normal = vectornormalize(var_6dcc5f28);
                forward = anglestoforward(player getplayerangles());
                dot = vectordot(forward, normal);
                color = dot >= var_c03beac5[i] ? (0, 1, 0) : (1, 0, 0);
                debugstar(var_1a23fa7[i], duration, color, "<unknown string>" + dot, 0.05);
                line(player.origin, var_1a23fa7[i], color, 1, 0, duration);
            }
            vec = vectornormalize(player getplayercamerapos() - center);
            var_ed80ebc4 = self function_fb354714();
            dot = vectordot(vec, var_ed80ebc4);
            color = abs(dot) >= 0.4 ? (0, 1, 0) : (1, 0, 0);
            print3d(center + (0, 0, -1.5), "<unknown string>" + dot, color, 1, 0.1, duration);
        }
    }

#/

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0x4aa3e020, Offset: 0xcb20
// Size: 0x122
function private bashed_locked_door(velocity) {
    velocity = velocity;
    player = self.var_22fae777;
    player endon(#"death");
    if (isdefined(self.var_85a57869)) {
        return;
    }
    self.var_85a57869 = 1;
    thread bashed_locked_door_sfx();
    self notify(#"hash_55f12a31ee0b246e");
    player viewkick(10, self get_door_center());
    earthquake(1, 0.3, player.origin, 75);
    player playrumbleonentity("damage_heavy");
    while (player ismeleeing()) {
        waitframe(1);
    }
    self.var_85a57869 = undefined;
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x4
// Checksum 0xd4ddceac, Offset: 0xcc50
// Size: 0x154
function private bashed_locked_door_sfx() {
    player = self.var_22fae777;
    if (isdefined(self.m_s_bundle.var_7240cb7d)) {
        playfx(self.m_s_bundle.var_7240cb7d, self.m_e_door.origin + (0, 0, 42));
    }
    if (isdefined(self.m_s_bundle.var_8c3db964)) {
        if (randomint(100) < 40) {
            player playsound("breathing_limp");
        }
        org = spawn("script_origin", self.m_e_door.origin + (0, 0, 42));
        org playsoundwithnotify(self.m_s_bundle.var_8c3db964, "sounddone");
        org waittill(#"sounddone");
        org deletedelay();
    }
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x4
// Checksum 0x4ec980b6, Offset: 0xcdb0
// Size: 0x1ba
function private bash_monitor() {
    self endon(#"death");
    while (true) {
        ents = getentitiesinradius(self.origin, 60, 6);
        foreach (ent in ents) {
            if (isdefined(ent.c_door)) {
                c_door = ent.c_door;
                if ((c_door flag::get("door_pushable") || !c_door flag::get("open")) && !c_door flag::get("locked") && !c_door flag::get("animating")) {
                    if (c_door bash_door_isplayerclose(self) && c_door should_bash_open(self)) {
                        c_door thread door_bash_open(self);
                    }
                }
            }
        }
        waitframe(1);
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x0
// Checksum 0x178d3906, Offset: 0xcf78
// Size: 0x104
function bash_door_isplayerclose(player) {
    z = abs(player.origin[2] - self.m_e_door.origin[2]);
    if (z < 35) {
        endpoint = self get_door_bottom_center();
        if (!isdefined(endpoint)) {
            endpoint = self.m_e_door.origin;
        }
        d = distancesquared(player.origin, endpoint);
        range = self flag::get("locked") ? 60 : 60;
        if (d < range * range) {
            return true;
        }
    }
    return false;
}

// Namespace doors/doors_shared
// Params 3, eflags: 0x0
// Checksum 0xd8cf52d8, Offset: 0xd088
// Size: 0x16c
function door_bash_open(var_84e2c431, var_a6028302 = 0, var_d14527df) {
    self endon(#"entitydeleted");
    self.var_22fae777 = var_84e2c431;
    if (self flag::get("locked") && isinarray(level.players, var_84e2c431)) {
        self bashed_locked_door(var_84e2c431 getvelocity());
        return;
    }
    if (isplayer(var_84e2c431)) {
        if (!var_a6028302) {
            self door_bash_presentation(var_84e2c431);
        }
        var_84e2c431 notify(#"hash_5676dcd12f1089f9", self);
        level thread function_df978de8(450, "door_bash", var_84e2c431, var_d14527df);
    } else {
        self notify(#"hash_1fb508e70d76c269");
    }
    self.var_c4c3fa39 = 1;
    self.m_e_door thread open(undefined, undefined, var_84e2c431);
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0x7e7c1fae, Offset: 0xd200
// Size: 0xd8
function private function_14c2fe40(player) {
    weapon = player getcurrentweapon();
    if (weapon.displayname == #"weapon/noweapon" || is_true(weapon.ismeleeweapon) && !is_true(weapon.isbulletweapon) && !is_true(weapon.isprojectileweapon)) {
        return true;
    }
    if (weapon.name == #"eq_spy_camera") {
        return true;
    }
    return false;
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0x5db41676, Offset: 0xd2e0
// Size: 0xf4
function private door_bash_presentation(player) {
    if (player meleebuttonpressed() && !player issprinting()) {
        if (function_14c2fe40(player)) {
            player thread function_b391c0a0("ges_door_bash", undefined);
        }
        wait(0.1);
    }
    screenshake(player.origin, 16, 0, 0, 0.45);
    player playrumbleonentity("grenade_rumble");
    earthquake(0.6, 0.75, player.origin, 200);
}

// Namespace doors/doors_shared
// Params 4, eflags: 0x4
// Checksum 0x134e2234, Offset: 0xd3e0
// Size: 0x148
function private function_df978de8(radius, event, var_84e2c431, var_d14527df) {
    dist = isdefined(radius) ? radius : event;
    guys = getaiteamarray("axis");
    guys = arraysortclosest(guys, isdefined(var_d14527df) ? var_d14527df : var_84e2c431.origin, undefined, undefined, dist);
    foreach (guy in guys) {
        if (isdefined(guy.stealth)) {
            guy function_a3fcf9e0(event, var_84e2c431, isdefined(var_d14527df) ? var_d14527df : var_84e2c431.origin);
        }
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0x914f7c1b, Offset: 0xd530
// Size: 0x2c
function private function_65028b88(var_248cbbcf) {
    self.c_door thread door_bash_open(var_248cbbcf.player);
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0x54cec2a8, Offset: 0xd568
// Size: 0x22
function private function_8d016934(var_248cbbcf) {
    return function_14c2fe40(var_248cbbcf.player);
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x4
// Checksum 0x21cd5d7a, Offset: 0xd598
// Size: 0x44
function private should_do_gesture() {
    if (level.var_1def7d37[#"scr_door_player_gestures"] == 0) {
        return false;
    }
    return self getcurrentweapon() != level.weaponnone;
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0xafa3d9d9, Offset: 0xd5e8
// Size: 0x10c
function private player_door_gesture(gesture) {
    self notify(#"player_door_gesture");
    self endon(#"player_door_gesture");
    if (!isdefined(gesture)) {
        return;
    }
    if (!isplayer(self)) {
        return;
    }
    target = util::spawn_model("tag_origin", self.origin, self function_c2758350());
    if (self should_do_gesture()) {
        self function_b391c0a0(gesture, target);
        time = self getgestureanimlength(gesture);
        wait(time);
    }
    if (isdefined(target)) {
        target delete();
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0x32a1ad5b, Offset: 0xd700
// Size: 0x1be
function private function_d2a304e(a_doors) {
    foreach (s_instance in a_doors) {
        if (is_true(s_instance.var_aff33935)) {
            var_1ab5a0b8 = struct::get_script_bundle_instances("minigame_lockpick", array(isdefined(s_instance.targetname) ? s_instance.targetname : "", "target"));
            var_928d15df = 0;
            foreach (var_d2029cba in var_1ab5a0b8) {
                if (isdefined(var_d2029cba.var_5350598b)) {
                    continue;
                }
                var_928d15df = 1;
                break;
            }
            if (!var_928d15df) {
                var_10d2a490 = s_instance function_1e18148c();
                s_instance.var_ea225236 = var_10d2a490;
            }
        }
    }
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x4
// Checksum 0x1e592350, Offset: 0xd8c8
// Size: 0x2fe
function private function_1e18148c() {
    assert(is_false(level flag::get(#"hash_ead1c2fc78eb61c")));
    s_minigame = spawnstruct();
    var_33468886 = spawnstruct();
    var_33468886 function_7fe6d007(self.model);
    var_3d88b74f = function_98d85e14(var_33468886.var_b25124c7, self.angles);
    var_69ede289 = vectortoangles(var_3d88b74f);
    var_80778410 = (var_33468886.var_e9da41b9 - 5) * function_98d85e14(var_33468886.var_b25124c7, (0, 0, 0)) + (0, 0, 47);
    var_fdd44597 = rotatepoint(var_80778410, var_69ede289);
    level minigame::function_63673f23(s_minigame, "lockpick");
    s_minigame.angles = self.angles;
    s_minigame.classname = "scriptbundle_minigame_lockpick";
    s_minigame.modelscale = 1;
    s_minigame.origin = self.origin + var_fdd44597;
    s_minigame.require_look_at = 1;
    s_minigame.var_4e0f62f3 = "Exclusive";
    s_minigame.script_delete = 1;
    s_minigame.script_difficulty = self.script_difficulty;
    s_minigame.script_enable_on_start = 1;
    s_minigame.var_42c5101 = self.var_42c5101;
    s_minigame.var_5ebe1cc1 = 0;
    s_minigame.var_3b6bc456 = self.var_3b6bc456;
    s_minigame.script_team = isdefined(self.script_team) ? self.script_team : #"any";
    s_minigame.scriptbundlename = #"minigame_lockpick";
    s_minigame.var_5350598b = self;
    s_minigame.ent = self.c_door.m_e_door;
    s_minigame.var_80778410 = var_80778410;
    s_minigame.var_ac5b22fa = self;
    if (isdefined(self.targetname)) {
        s_minigame.target = self.targetname;
    } else {
        self.targetname = "auto_assigned_name: " + s_minigame.str_identifier;
        s_minigame.target = self.targetname;
    }
    return s_minigame;
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x0
// Checksum 0x78c992bd, Offset: 0xdbd0
// Size: 0x5f0
function function_191c5a63() {
    offset = undefined;
    if (!sessionmodeiscampaigngame() || !isdefined(level.var_6a7fb742)) {
        return;
    }
    player = getplayers()[0];
    while (!isdefined(player)) {
        player = getplayers()[0];
        waitframe(1);
    }
    if (!isdefined(self.m_e_door)) {
        return;
    }
    close = self flag::get("door_fully_open") && is_true(self.m_s_bundle.door_closes);
    if (!is_true(close) && self function_53f46e97()) {
        z_offset = max(isdefined(self.m_s_bundle.door_triggeroffsetz) ? self.m_s_bundle.door_triggeroffsetz : 47, 0);
        offset = (self.var_e9da41b9 - 2) * function_98d85e14(self.var_b25124c7, (0, 0, 0)) + (0, 0, z_offset);
    } else {
        offset = (isdefined(self.m_s_bundle.door_triggeroffsetx) ? self.m_s_bundle.door_triggeroffsetx : 0, isdefined(self.m_s_bundle.door_triggeroffsety) ? self.m_s_bundle.door_triggeroffsety : 0, max(isdefined(self.m_s_bundle.door_triggeroffsetz) ? self.m_s_bundle.door_triggeroffsetz : 0, 0));
    }
    var_754bedbb = offset[2] <= 0;
    var_c29308f4 = {#var_71b9f0c0:240, #var_5e83875a:30, #var_3c8a8153:1, #var_be77841a:0, #var_8ce60046:1, #var_9a27c4ee:1, #groups:#"doors", #var_531201f1:&function_82f0f91b};
    if (isdefined(self.var_d1c4f848.c_door.m_e_door)) {
        var_c29308f4.var_27a7ecaa = self.var_d1c4f848.c_door.m_e_door;
        var_c29308f4.var_1e4cbecf = self.var_d1c4f848.c_door.m_e_door;
    }
    if (is_true(close)) {
        var_c29308f4.var_4d98c3ce = #"hash_13649de3a914d713";
        var_c29308f4.var_de6f0004 = self.m_s_bundle.var_4123e857;
        self.m_e_door thread [[ level.var_6a7fb742 ]](#"use", var_c29308f4);
    } else {
        hint = #"hash_7b4d7f70e8bef419";
        if (isdefined(self.m_s_bundle.door_interact)) {
            var_b4d98031 = getscriptbundle(self.m_s_bundle.door_interact);
            if (isdefined(var_b4d98031.str_hint)) {
                hint = var_b4d98031.str_hint;
            }
        }
        var_c29308f4.var_4d98c3ce = hint;
        var_c29308f4.var_de6f0004 = self.m_s_bundle.var_4123e857;
        self.m_e_door thread [[ level.var_6a7fb742 ]](#"use", var_c29308f4);
        if (!is_true(self.var_d587661f) && !is_true(self.var_c4c3fa39)) {
            var_c29308f4.var_4d98c3ce = #"hash_33182658cd3b9acf";
            var_c29308f4.var_de6f0004 = 0;
            var_c29308f4.var_4ac77177 = 0;
            var_c29308f4.var_9cc6a78e = 60;
            var_c29308f4.var_5e83875a = 75;
            var_c29308f4.var_531201f1 = &function_cd4bfc24;
            var_c29308f4.complete_callback = &function_65028b88;
            var_c29308f4.var_8cff8c16 = &function_8d016934;
            self.m_e_door thread [[ level.var_6a7fb742 ]](#"melee", var_c29308f4);
        }
    }
    if (isdefined(level.var_a29d8d23)) {
        self.m_e_door thread [[ level.var_a29d8d23 ]]({#offset:offset, #var_754bedbb:var_754bedbb});
    }
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0xb2477f4a, Offset: 0xe1c8
// Size: 0xea
function private function_cd4bfc24(var_248cbbcf) {
    result = !is_true(self.c_door.var_d587661f) && !is_true(self.c_door.var_c4c3fa39) && self.c_door door_bashable_by_player(var_248cbbcf.player);
    if (!result && isdefined(self.c_door.var_d1c4f848.c_door)) {
        result = self.c_door.var_d1c4f848.c_door door_bashable_by_player(var_248cbbcf.player);
    }
    return result;
}

// Namespace doors/doors_shared
// Params 1, eflags: 0x4
// Checksum 0xa2ff0106, Offset: 0xe2c0
// Size: 0x118
function private function_82f0f91b(*var_248cbbcf) {
    return !is_true(self.c_door.var_81f24576) && !self.c_door flag::get("locked") && !self.c_door flag::get("animating") && (!self.c_door flag::get("open") && !self.c_door function_4011a3d9() || self.c_door flag::get("door_fully_open") && is_true(self.c_door.m_s_bundle.door_closes));
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x0
// Checksum 0xc66508df, Offset: 0xe3e0
// Size: 0xb0
function function_656c898c() {
    if (!sessionmodeiscampaigngame() || !isdefined(level.var_3626dfc)) {
        return;
    }
    if (isdefined(self.m_e_door)) {
        self.m_e_door thread [[ level.var_3626dfc ]](#"use");
        if (isdefined(self.m_e_door.var_3e95b88f.var_294a441e[#"melee"])) {
            self.m_e_door thread [[ level.var_3626dfc ]](#"melee");
        }
    }
}

// Namespace doors/doors_shared
// Params 0, eflags: 0x0
// Checksum 0xc570e8e5, Offset: 0xe498
// Size: 0xbe
function function_19b91fc1() {
    if (!sessionmodeiscampaigngame() || !isdefined(level.var_6a7fb742)) {
        if (isdefined(self.m_s_bundle.door_interact)) {
            var_b4d98031 = getscriptbundle(self.m_s_bundle.door_interact);
            assert(isdefined(var_b4d98031));
            if (is_true(var_b4d98031.var_a865c2cd) || isdefined(var_b4d98031.str_hint)) {
                return true;
            }
        }
    }
    return false;
}


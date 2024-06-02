// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace containers;

// Namespace containers
// Method(s) 3 Total 3
class ccontainer {

    var m_e_container;

    // Namespace ccontainer/containers_shared
    // Params 3, eflags: 0x0
    // Checksum 0x67fc0ae0, Offset: 0x1a8
    // Size: 0x52
    function init_xmodel(str_xmodel = "script_origin", v_origin, v_angles) {
        m_e_container = util::spawn_model(str_xmodel, v_origin, v_angles);
        return m_e_container;
    }

}

// Namespace containers/containers_shared
// Params 0, eflags: 0x5
// Checksum 0x3c920d0, Offset: 0x2c0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"containers", &preinit, undefined, undefined, undefined);
}

// Namespace containers/containers_shared
// Params 0, eflags: 0x4
// Checksum 0xd8e31d80, Offset: 0x308
// Size: 0xce
function private preinit() {
    a_containers = struct::get_array("scriptbundle_containers", "classname");
    foreach (s_instance in a_containers) {
        c_container = s_instance init();
        if (isdefined(c_container)) {
            s_instance.c_container = c_container;
        }
    }
}

// Namespace containers/containers_shared
// Params 0, eflags: 0x0
// Checksum 0xbed7f408, Offset: 0x3e0
// Size: 0x52
function init() {
    if (!isdefined(self.angles)) {
        self.angles = (0, 0, 0);
    }
    s_bundle = getscriptbundle(self.scriptbundlename);
    return setup_container_scriptbundle(s_bundle, self);
}

// Namespace containers/containers_shared
// Params 2, eflags: 0x0
// Checksum 0x6083c4dc, Offset: 0x440
// Size: 0xb0
function setup_container_scriptbundle(s_bundle, s_container_instance) {
    c_container = new ccontainer();
    c_container.m_s_container_bundle = s_bundle;
    c_container.m_s_fxanim_bundle = getscriptbundle(s_bundle.theeffectbundle);
    c_container.m_s_container_instance = s_container_instance;
    self scene::init(s_bundle.theeffectbundle, c_container.m_e_container);
    level thread container_update(c_container);
    return c_container;
}

// Namespace containers/containers_shared
// Params 1, eflags: 0x0
// Checksum 0xb84e69aa, Offset: 0x4f8
// Size: 0xec
function container_update(c_container) {
    e_ent = c_container.m_e_container;
    s_bundle = c_container.m_s_container_bundle;
    targetname = c_container.m_s_container_instance.targetname;
    n_radius = s_bundle.trigger_radius;
    e_trigger = create_locker_trigger(c_container.m_s_container_instance.origin, n_radius, "Press [{+activate}] to open");
    e_trigger waittill(#"trigger");
    e_trigger delete();
    scene::play(targetname, "targetname");
}

// Namespace containers/containers_shared
// Params 3, eflags: 0x0
// Checksum 0x6834a6ad, Offset: 0x5f0
// Size: 0x110
function create_locker_trigger(v_pos, n_radius, str_message) {
    v_pos = (v_pos[0], v_pos[1], v_pos[2] + 50);
    e_trig = spawn("trigger_radius_use", v_pos, 0, n_radius, 100);
    e_trig triggerignoreteam();
    e_trig setvisibletoall();
    e_trig setteamfortrigger(#"none");
    e_trig usetriggerrequirelookat();
    e_trig setcursorhint("HINT_NOICON");
    e_trig sethintstring(str_message);
    return e_trig;
}

// Namespace containers/containers_shared
// Params 4, eflags: 0x0
// Checksum 0xe4a2d6f8, Offset: 0x708
// Size: 0x32c
function setup_general_container_bundle(str_targetname, str_intel_vo, str_narrative_collectable_model, force_open) {
    s_struct = struct::get(str_targetname, "targetname");
    if (!isdefined(s_struct)) {
        return;
    }
    level flag::wait_till("all_players_spawned");
    e_trigger = create_locker_trigger(s_struct.origin, 64, "Press [{+activate}] to open");
    if (!isdefined(force_open) || force_open == 0) {
        waitresult = e_trigger waittill(#"trigger");
        e_who = waitresult.activator;
    } else {
        rand_time = randomfloatrange(1, 1.5);
        wait(rand_time);
    }
    e_trigger delete();
    level thread scene::play(str_targetname, "targetname");
    if (isdefined(s_struct.a_entity)) {
        for (i = 0; i < s_struct.a_entity.size; i++) {
            s_struct.a_entity[i] notify(#"opened");
        }
    }
    if (isdefined(str_narrative_collectable_model)) {
        v_pos = s_struct.origin + (0, 0, 30);
        if (!isdefined(s_struct.angles)) {
            v_angles = (0, 0, 0);
        } else {
            v_angles = s_struct.angles;
        }
        v_angles = (v_angles[0], v_angles[1] + 90, v_angles[2]);
        e_collectable = spawn("script_model", v_pos);
        e_collectable setmodel(#"p7_int_narrative_collectable");
        e_collectable.angles = v_angles;
        wait(1);
        e_trigger = create_locker_trigger(s_struct.origin, 64, "Press [{+activate}] to pickup collectable");
        waitresult = e_trigger waittill(#"trigger");
        e_who = waitresult.activator;
        e_trigger delete();
        e_collectable delete();
    }
    if (isdefined(str_intel_vo)) {
        e_who playsound(str_intel_vo);
    }
}

// Namespace containers/containers_shared
// Params 3, eflags: 0x0
// Checksum 0x8fc6926e, Offset: 0xa40
// Size: 0x154
function setup_locker_double_doors(str_left_door_name, str_right_door_name, center_point_offset) {
    a_left_doors = getentarray(str_left_door_name, "targetname");
    if (!isdefined(a_left_doors)) {
        return;
    }
    a_right_doors = getentarray(str_right_door_name, "targetname");
    if (!isdefined(a_right_doors)) {
        return;
    }
    for (i = 0; i < a_left_doors.size; i++) {
        e_left_door = a_left_doors[i];
        if (isdefined(center_point_offset)) {
            v_forward = anglestoforward(e_left_door.angles);
            v_search_pos = e_left_door.origin + v_forward * center_point_offset;
        } else {
            v_search_pos = e_left_door.origin;
        }
        e_right_door = get_closest_ent_from_array(v_search_pos, a_right_doors);
        level thread create_locker_doors(e_left_door, e_right_door, 120, 0.4);
    }
}

// Namespace containers/containers_shared
// Params 2, eflags: 0x0
// Checksum 0x567c4786, Offset: 0xba0
// Size: 0xa4
function get_closest_ent_from_array(v_pos, a_ents) {
    e_closest = undefined;
    n_closest_dist = 9999999;
    for (i = 0; i < a_ents.size; i++) {
        dist = distance(v_pos, a_ents[i].origin);
        if (dist < n_closest_dist) {
            n_closest_dist = dist;
            e_closest = a_ents[i];
        }
    }
    return e_closest;
}

// Namespace containers/containers_shared
// Params 4, eflags: 0x0
// Checksum 0xdf6de6bb, Offset: 0xc50
// Size: 0x174
function create_locker_doors(e_left_door, e_right_door, door_open_angle, door_open_time) {
    v_locker_pos = (e_left_door.origin + e_right_door.origin) / 2;
    n_trigger_radius = 48;
    e_trigger = create_locker_trigger(v_locker_pos, n_trigger_radius, "Press [{+activate}] to open");
    e_trigger waittill(#"trigger");
    e_left_door playsound(#"evt_cabinet_open");
    v_angle = (e_left_door.angles[0], e_left_door.angles[1] - door_open_angle, e_left_door.angles[2]);
    e_left_door rotateto(v_angle, door_open_time);
    v_angle = (e_right_door.angles[0], e_right_door.angles[1] + door_open_angle, e_right_door.angles[2]);
    e_right_door rotateto(v_angle, door_open_time);
    e_trigger delete();
}


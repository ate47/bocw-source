// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\weapons_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\tweakables_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\potm_shared.gsc;
#using scripts\core_common\player\player_role.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\hud_util_shared.gsc;
#using scripts\core_common\hostmigration_shared.gsc;
#using script_1435f3c9fc699e04;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace gameobjects;

// Namespace gameobjects
// Method(s) 7 Total 7
class cinteractobj {

    var e_object;
    var m_a_keyline_objects;
    var m_b_allow_companion_command;
    var m_b_allow_weapons;
    var m_b_auto_reenable;
    var m_b_gameobject_scene_alignment;
    var m_b_reusable;
    var m_b_scene_use_time_override;
    var m_n_trigger_height;
    var m_n_trigger_offset;
    var m_n_trigger_radius;
    var m_n_trigger_use_time;
    var m_s_bundle;
    var m_str_anim;
    var m_str_hint;
    var m_str_identifier;
    var m_str_obj_anim;
    var m_str_objective;
    var m_str_player_scene_anim;
    var m_str_tag;
    var m_str_team;
    var m_str_trigger_type;
    var m_str_type;
    var m_t_interact;
    var m_v_tag_origin;
    var var_14f4f0bc;
    var var_15547ed4;
    var var_26a01d70;
    var var_2854e7f7;
    var var_426bccfd;
    var var_7abf2b16;
    var var_a99c4d4c;

    // Namespace cinteractobj/gameobjects_shared
    // Params 0, eflags: 0xa linked
    // Checksum 0x8d9b5b77, Offset: 0xeda8
    // Size: 0x12
    constructor() {
        m_str_trigger_type = "use";
    }

    // Namespace cinteractobj/gameobjects_shared
    // Params 0, eflags: 0x82 linked class_linked
    // Checksum 0xc7d95be3, Offset: 0xedc8
    // Size: 0x44
    function destructor() {
        /#
            if (getdvarint(#"scr_debug_gameobjects", 0)) {
                iprintlnbold("<unknown string>");
            }
        #/
    }

    // Namespace cinteractobj/gameobjects_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0xf4b071a9, Offset: 0xf500
    // Size: 0x9a6
    function create_gameobject_trigger() {
        if (!isdefined(m_t_interact)) {
            if (m_str_type === "generic" || m_str_trigger_type === "proximity") {
                m_t_interact = spawn("trigger_radius", m_v_tag_origin + m_n_trigger_offset + (0, 0, m_n_trigger_height / 2), 0, m_n_trigger_radius, m_n_trigger_height, 1);
            } else {
                m_t_interact = spawn("trigger_radius_use", m_v_tag_origin + m_n_trigger_offset + (0, 0, m_n_trigger_height / 2), 0, m_n_trigger_radius, m_n_trigger_height, 1);
                if (isdefined(e_object.angles)) {
                    m_t_interact.angles = e_object.angles;
                }
                m_t_interact usetriggerrequirelookat(is_true(e_object.require_look_at));
                m_t_interact usetriggerrequirelooktoward(is_true(e_object.require_look_toward));
            }
        }
        m_t_interact.trigger_offset = m_n_trigger_offset;
        m_t_interact triggerignoreteam();
        m_t_interact setvisibletoall();
        m_t_interact setcursorhint("HINT_INTERACTIVE_PROMPT");
        m_t_interact.var_a865c2cd = isdefined(m_s_bundle.var_a865c2cd) ? m_s_bundle.var_a865c2cd : 0;
        m_t_interact.str_hint = m_str_hint;
        if (m_str_team != #"any") {
            m_t_interact setteamfortrigger(m_str_team);
        }
        if (!isdefined(m_a_keyline_objects)) {
            m_a_keyline_objects = [];
        } else if (!isarray(m_a_keyline_objects)) {
            m_a_keyline_objects = array(m_a_keyline_objects);
        }
        switch (m_str_type) {
        case #"carry":
            assert(isdefined(m_a_keyline_objects[0]), "<unknown string>");
            mdl_gameobject = gameobjects::create_carry_object(m_str_team, m_t_interact, m_a_keyline_objects, (0, 0, 0), m_str_objective, var_26a01d70);
            break;
        case #"pack":
            assert(isdefined(m_a_keyline_objects[0]), "<unknown string>");
            mdl_gameobject = gameobjects::create_pack_object(m_str_team, m_t_interact, m_a_keyline_objects, (0, 0, 0), m_str_objective, var_26a01d70);
            break;
        case #"generic":
            mdl_gameobject = gameobjects::create_generic_object(m_str_team, m_t_interact, m_a_keyline_objects, (0, 0, 0));
            break;
        case #"use":
        default:
            mdl_gameobject = gameobjects::create_use_object(m_str_team, m_t_interact, m_a_keyline_objects, (0, 0, 0), m_str_objective, var_26a01d70, 0, e_object.script_enable_on_start);
            break;
        }
        mdl_gameobject.single_use = 0;
        if (m_str_type == "carry" || m_str_type == "pack") {
            mdl_gameobject.objectiveonself = 1;
            if (isdefined(mdl_gameobject.objectiveid)) {
                objective_setposition(mdl_gameobject.objectiveid, (0, 0, 0));
            }
            if (isdefined(m_s_bundle.carryicon)) {
                if (m_str_type == "carry") {
                    mdl_gameobject gameobjects::set_carry_icon(m_s_bundle.carryicon);
                } else {
                    mdl_gameobject gameobjects::set_pack_icon(m_s_bundle.carryicon);
                }
            }
            if (isdefined(m_s_bundle.registerline__grow)) {
                mdl_gameobject gameobjects::set_visible_carrier_model(m_s_bundle.registerline__grow);
            }
            if (is_true(m_s_bundle.droponusebutton)) {
                mdl_gameobject gameobjects::function_a8c842d6(m_s_bundle.droponusebutton, 1, 0);
            }
            if (isdefined(m_s_bundle.weapon)) {
                mdl_gameobject gameobjects::function_6e870d38(m_s_bundle.weapon);
            }
        }
        mdl_gameobject gameobjects::set_identifier(m_str_identifier);
        mdl_gameobject.origin = m_t_interact.origin;
        mdl_gameobject.angles = m_t_interact.angles;
        mdl_gameobject gameobjects::set_owner_team(m_str_team);
        if (m_str_team == #"any") {
            mdl_gameobject gameobjects::allow_use(#"hash_5ccfd7bbbf07c770");
            mdl_gameobject gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
        } else {
            mdl_gameobject gameobjects::allow_use(#"hash_150a20fa4efc5c7a");
            mdl_gameobject gameobjects::set_visible(#"hash_150a20fa4efc5c7a");
        }
        mdl_gameobject gameobjects::set_use_time(m_n_trigger_use_time);
        mdl_gameobject gameobjects::function_86d3b442(var_14f4f0bc);
        mdl_gameobject.str_player_scene_anim = m_str_player_scene_anim;
        mdl_gameobject.str_anim = m_str_anim;
        mdl_gameobject.b_reusable = m_b_reusable;
        mdl_gameobject.b_auto_reenable = m_b_auto_reenable;
        mdl_gameobject.allowweapons = m_b_allow_weapons;
        mdl_gameobject.b_scene_use_time_override = m_b_scene_use_time_override;
        mdl_gameobject.b_use_gameobject_for_alignment = m_b_gameobject_scene_alignment;
        mdl_gameobject.var_75ea46f6 = var_7abf2b16;
        mdl_gameobject.var_a7ef92ac = m_s_bundle.var_559e6e9f;
        mdl_gameobject.b_allow_companion_command = m_b_allow_companion_command;
        if (isdefined(m_str_obj_anim)) {
            mdl_gameobject.str_obj_anim = m_str_obj_anim;
        }
        mdl_gameobject.t_interact = m_t_interact;
        mdl_gameobject.t_interact enablelinkto();
        mdl_gameobject.e_object = e_object;
        if (isentity(mdl_gameobject.e_object)) {
            if (isdefined(m_str_tag)) {
                mdl_gameobject.t_interact linkto(mdl_gameobject.e_object, m_str_tag);
            } else {
                mdl_gameobject.t_interact linkto(mdl_gameobject.e_object);
            }
        }
        if (isdefined(mdl_gameobject.str_player_scene_anim) || isdefined(mdl_gameobject.str_anim)) {
            mdl_gameobject.dontlinkplayertotrigger = 1;
        }
        if (!mdl_gameobject.e_object flag::exists("gameobject_end_use")) {
            mdl_gameobject.e_object flag::init("gameobject_end_use");
        }
        e_object.mdl_gameobject = mdl_gameobject;
    }

    // Namespace cinteractobj/gameobjects_shared
    // Params 8, eflags: 0x2 linked
    // Checksum 0x3d1d46b4, Offset: 0xee18
    // Size: 0x6dc
    function init_game_object(str_bundle, str_team_override, str_tag_override, str_identifier_override, a_keyline_objects, t_override, b_allow_companion_command = 1, str_objective_override) {
        m_s_bundle = getscriptbundle(str_bundle);
        assert(isdefined(m_s_bundle), "<unknown string>" + str_bundle + "<unknown string>");
        if (isdefined(str_tag_override)) {
            m_str_tag = str_tag_override;
        } else {
            m_str_tag = m_s_bundle.str_tag;
        }
        if (isentity(e_object)) {
            m_v_tag_origin = e_object gettagorigin(m_str_tag);
        }
        if (!isdefined(m_v_tag_origin)) {
            m_str_tag = undefined;
            m_v_tag_origin = e_object.origin;
            /#
                if (isentity(e_object)) {
                    println("<unknown string>" + m_s_bundle.str_tag + "<unknown string>" + e_object.model);
                }
            #/
        }
        m_n_trigger_height = m_s_bundle.n_trigger_height;
        m_n_trigger_radius = m_s_bundle.n_trigger_radius;
        m_str_team = m_s_bundle.str_team;
        var_426bccfd = m_s_bundle.var_ce7dda5f;
        var_15547ed4 = is_true(m_s_bundle.b_play_vo);
        m_str_player_scene_anim = m_s_bundle.playerscenebundle;
        m_b_scene_use_time_override = m_s_bundle.playerscenebundletimeoverride;
        m_str_anim = m_s_bundle.viewanim;
        m_str_obj_anim = m_s_bundle.entityanim;
        m_b_reusable = m_s_bundle.b_reusable;
        m_b_auto_reenable = m_s_bundle.autoreenable;
        m_str_identifier = m_s_bundle.str_identifier;
        m_str_trigger_type = m_s_bundle.triggertype;
        m_b_gameobject_scene_alignment = m_s_bundle.playerscenebundlegameobjectalignment;
        var_7abf2b16 = m_s_bundle.var_e45035d4;
        var_26a01d70 = m_s_bundle.var_1a876104;
        m_n_trigger_use_time = m_s_bundle.n_trigger_use_time;
        if (!isdefined(m_n_trigger_use_time)) {
            m_n_trigger_use_time = 0;
        }
        var_14f4f0bc = m_s_bundle.var_f6949418;
        if (!isdefined(var_14f4f0bc)) {
            var_14f4f0bc = 0;
        }
        if (isdefined(str_identifier_override)) {
            m_str_identifier = str_identifier_override;
        }
        m_str_hint = m_s_bundle.str_hint;
        if (isdefined(str_objective_override)) {
            m_str_objective = str_objective_override;
        } else {
            m_str_objective = isdefined(m_s_bundle.objective) ? m_s_bundle.objective : undefined;
        }
        e_object.str_objective_name = m_s_bundle.objective;
        e_object.var_45aad1f4 = m_str_objective;
        m_str_type = m_s_bundle.gameobjecttype;
        if (is_true(m_s_bundle.allowweapons)) {
            m_b_allow_weapons = 1;
        } else {
            m_b_allow_weapons = 0;
        }
        if (isdefined(str_team_override)) {
            m_str_team = str_team_override;
        }
        m_str_team = util::get_team_mapping(m_str_team);
        if (isdefined(a_keyline_objects)) {
            m_a_keyline_objects = a_keyline_objects;
        } else if (isdefined(m_s_bundle.model)) {
            var_ed8e6d51 = util::spawn_model(m_s_bundle.model, e_object.origin, e_object.angles);
            m_a_keyline_objects = array(var_ed8e6d51);
        }
        n_trig_x = m_s_bundle.triggerxoffset;
        if (!isdefined(n_trig_x)) {
            n_trig_x = 0;
        }
        n_trig_y = m_s_bundle.triggeryoffset;
        if (!isdefined(n_trig_y)) {
            n_trig_y = 0;
        }
        n_trig_z = m_s_bundle.triggerzoffset;
        if (!isdefined(n_trig_z)) {
            n_trig_z = 0;
        }
        m_n_trigger_offset = (n_trig_x, n_trig_y, n_trig_z);
        if (isdefined(e_object.func_custom_gameobject_position)) {
            m_n_trigger_offset = (0, 0, 0);
            m_v_tag_origin = e_object [[ e_object.func_custom_gameobject_position ]]();
        }
        m_b_allow_companion_command = b_allow_companion_command;
        if (isdefined(t_override) && isdefined(t_override.classname)) {
            if (is_valid_gameobject_trigger(t_override)) {
                m_t_interact = t_override;
            } else {
                assert("<unknown string>");
            }
        }
        var_a99c4d4c = [];
        var_2854e7f7 = [];
        self create_gameobject_trigger();
        self thread function_768739b6();
    }

    // Namespace cinteractobj/gameobjects_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x82b73c82, Offset: 0xffa8
    // Size: 0x27a
    function function_768739b6() {
        level endon(#"game_ended");
        e_object endon(#"death", #"gameobject_end_use");
        e_object.mdl_gameobject endon(#"death");
        level waittill(#"all_players_spawned");
        if (m_str_team == #"hash_161f03feaadc9b8f") {
            return;
        }
        var_9c2f0815 = var_15547ed4 || isdefined(e_object.var_f66cebb1) ? m_str_team : #"hash_161f03feaadc9b8f";
        for (var_fb20e730 = getplayers(m_str_team); var_fb20e730.size; var_fb20e730 = getplayers(m_str_team)) {
            foreach (e_player in var_fb20e730) {
                if (function_aa070e6f(e_player) && !isinarray(var_2854e7f7, e_player.team) && !e_player isinvehicle()) {
                    voiceparams = {#team:m_str_team, #side:var_9c2f0815, #targetname:e_object.var_f66cebb1};
                    array::add(var_2854e7f7, e_player.team);
                    break;
                }
            }
            wait(1);
        }
    }

    // Namespace cinteractobj/gameobjects_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x812271c9, Offset: 0xfeb0
    // Size: 0xec
    function is_valid_gameobject_trigger(t_override) {
        if (m_str_trigger_type === "proximity") {
            switch (t_override.classname) {
            case #"trigger_box":
            case #"trigger_once":
            case #"trigger_radius":
            case #"trigger_multiple":
                return true;
            default:
                return false;
            }
        } else {
            switch (t_override.classname) {
            case #"trigger_radius_use":
            case #"trigger_use":
                return true;
            default:
                return false;
            }
        }
        return false;
    }

    // Namespace cinteractobj/gameobjects_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x938af96c, Offset: 0x10230
    // Size: 0xde
    function function_aa070e6f(e_player) {
        if (isdefined(e_object) && isdefined(e_object.mdl_gameobject) && isdefined(e_player) && is_true(e_object.mdl_gameobject.b_enabled)) {
            return (distance2dsquared(e_object.origin, e_player.origin) < sqr(675) && e_player util::is_player_looking_at(e_object.origin));
        }
        return 0;
    }

}

// Namespace gameobjects/createstruct
// Params 1, eflags: 0x26 linked
// Checksum 0x367bcf3c, Offset: 0x470
// Size: 0x23c
function private event_handler[createstruct] function_e0a8e4ba(struct) {
    foreach (var_d335d6ef, k in ["script_carry_object_key_target", "script_paired_gameobject"]) {
        if (!isdefined(level.var_41204f29)) {
            level.var_41204f29 = [];
        } else if (!isarray(level.var_41204f29)) {
            level.var_41204f29 = array(level.var_41204f29);
        }
        if (!isinarray(level.var_41204f29, tolower(k))) {
            level.var_41204f29[level.var_41204f29.size] = tolower(k);
        }
    }
    level.var_5e990e96 = arraycopy(level.var_41204f29);
    if (isdefined(level.struct)) {
        temp = arraycopy(level.struct);
        level.struct = [];
        foreach (struct in temp) {
            struct::init(struct);
        }
    }
    function_6c07201b("CreateStruct", &function_e0a8e4ba);
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x5
// Checksum 0xf7fa38f3, Offset: 0x6b8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"gameobjects", &preinit, undefined, undefined, undefined);
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x9c6570f5, Offset: 0x700
// Size: 0xe4
function private preinit() {
    level.numgametypereservedobjectives = 1;
    level.releasedobjectives = [];
    level.a_gameobjects = [];
    callback::on_spawned(&function_b737f012);
    callback::on_vehicle_spawned(&function_b737f012);
    callback::on_ai_spawned(&function_b737f012);
    callback::on_disconnect(&on_disconnect);
    callback::on_laststand(&on_player_last_stand);
    level thread function_71699fe2();
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x8467094c, Offset: 0x7f0
// Size: 0x1ac
function main() {
    level.vehiclesenabled = getgametypesetting(#"vehiclesenabled");
    level.vehiclestimed = getgametypesetting(#"vehiclestimed");
    level.objectivepingdelay = getgametypesetting(#"objectivepingtime");
    level.gameobjectscontestedmajoritywins = getgametypesetting(#"gameobjectscontestedmajoritywins");
    if (!isdefined(level.allowedgameobjects)) {
        level.allowedgameobjects = [];
    }
    if (level.vehiclesenabled) {
        level.allowedgameobjects[level.allowedgameobjects.size] = "vehicle";
        filter_script_vehicles_from_vehicle_descriptors(level.allowedgameobjects);
    }
    a_ents = getentarray();
    for (entity_index = a_ents.size - 1; entity_index >= 0; entity_index--) {
        entity = a_ents[entity_index];
        if (!entity_is_allowed(entity, level.allowedgameobjects)) {
            entity delete();
        }
    }
    level thread function_176070dc();
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x41b759d5, Offset: 0x9a8
// Size: 0x44
function register_allowed_gameobject(gameobject) {
    if (!isdefined(level.allowedgameobjects)) {
        level.allowedgameobjects = [];
    }
    level.allowedgameobjects[level.allowedgameobjects.size] = gameobject;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x0
// Checksum 0xd6276e07, Offset: 0x9f8
// Size: 0x10
function clear_allowed_gameobjects() {
    level.allowedgameobjects = [];
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x6d2b080d, Offset: 0xa10
// Size: 0xf0
function entity_is_allowed(entity, allowed_game_modes) {
    allowed = 1;
    if (isdefined(entity.script_gameobjectname) && entity.script_gameobjectname != "[all_modes]") {
        allowed = 0;
        gameobjectnames = strtok(entity.script_gameobjectname, " ");
        for (i = 0; i < allowed_game_modes.size && !allowed; i++) {
            for (j = 0; j < gameobjectnames.size && !allowed; j++) {
                allowed = gameobjectnames[j] == allowed_game_modes[i];
            }
        }
    }
    return allowed;
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x0
// Checksum 0x3df27bee, Offset: 0xb08
// Size: 0xfe
function location_is_allowed(entity, location) {
    allowed = 1;
    location_list = undefined;
    if (isdefined(entity.script_noteworthy)) {
        location_list = entity.script_noteworthy;
    }
    if (isdefined(entity.script_location)) {
        location_list = entity.script_location;
    }
    if (isdefined(location_list)) {
        if (location_list == "[all_modes]") {
            allowed = 1;
        } else {
            allowed = 0;
            gameobjectlocations = strtok(location_list, " ");
            for (j = 0; j < gameobjectlocations.size; j++) {
                if (gameobjectlocations[j] == location) {
                    allowed = 1;
                    break;
                }
            }
        }
    }
    return allowed;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xdba4818, Offset: 0xc10
// Size: 0x1ac
function filter_script_vehicles_from_vehicle_descriptors(allowed_game_modes) {
    vehicle_descriptors = getentarray("vehicle_descriptor", "targetname");
    script_vehicles = getentarray("script_vehicle", "classname");
    vehicles_to_remove = [];
    for (descriptor_index = 0; descriptor_index < vehicle_descriptors.size; descriptor_index++) {
        descriptor = vehicle_descriptors[descriptor_index];
        closest_distance_sq = 1e+12;
        closest_vehicle = undefined;
        for (vehicle_index = 0; vehicle_index < script_vehicles.size; vehicle_index++) {
            vehicle = script_vehicles[vehicle_index];
            dsquared = distancesquared(vehicle getorigin(), descriptor getorigin());
            if (dsquared < closest_distance_sq) {
                closest_distance_sq = dsquared;
                closest_vehicle = vehicle;
            }
        }
        if (isdefined(closest_vehicle)) {
            if (!entity_is_allowed(descriptor, allowed_game_modes)) {
                vehicles_to_remove[vehicles_to_remove.size] = closest_vehicle;
            }
        }
    }
    for (vehicle_index = 0; vehicle_index < vehicles_to_remove.size; vehicle_index++) {
        vehicles_to_remove[vehicle_index] delete();
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xa3321767, Offset: 0xdc8
// Size: 0x118
function function_71699fe2() {
    level.a_s_gameobjects = struct::get_script_bundle_instances("gameobject");
    n_count = 1;
    foreach (s_radiant in level.a_s_gameobjects) {
        if (isdefined(s_radiant.targetname)) {
            s_radiant.str_identifier = s_radiant.targetname + "_" + n_count;
        } else {
            s_radiant.str_identifier = "gameobject_" + n_count;
        }
        n_count++;
        s_radiant.var_c65066ad = 1;
        s_radiant init_flags();
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x6304e733, Offset: 0xee8
// Size: 0x23c
function function_176070dc() {
    waittillframeend();
    foreach (s_radiant in level.a_s_gameobjects) {
        if (isdefined(s_radiant.script_team) && s_radiant.script_team != #"hash_161f03feaadc9b8f") {
            str_team_override = s_radiant.script_team;
        } else {
            str_team_override = undefined;
        }
        s_radiant init_game_objects(undefined, str_team_override, s_radiant.var_5c8915f4, undefined, undefined, s_radiant.script_objective_override);
        s_radiant disable_object(1);
        if (is_true(s_radiant.script_enable_on_start)) {
            s_radiant thread enable_object(1);
        }
        if (isdefined(s_radiant.script_carry_object_key_target) && is_true(s_radiant.script_destroy_keys_after_use)) {
            s_radiant function_e7e3d146();
        }
        s_radiant function_71479ff3();
        if (isdefined(s_radiant.script_paired_gameobject)) {
            s_radiant.var_84d5c09e = struct::get_array(s_radiant.script_paired_gameobject, "script_paired_gameobject");
            s_radiant.mdl_gameobject.b_auto_reenable = 0;
        }
    }
    function_42b34fc3();
    function_2f3ba1ad();
    function_71a1c90f();
    level flag::set(#"radiant_gameobjects_initialized");
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x78585e08, Offset: 0x1130
// Size: 0xe4
function private init_flags() {
    self flag::init("enabled");
    self flag::init("success");
    if (isdefined(self.script_flag_true)) {
        util::create_flags_and_return_tokens(self.script_flag_true);
    }
    if (isdefined(self.script_flag_false)) {
        util::create_flags_and_return_tokens(self.script_flag_false);
    }
    if (isdefined(self.script_flag_set_start)) {
        util::create_flags_and_return_tokens(self.script_flag_set_start);
    }
    if (isdefined(self.script_flag_set)) {
        util::create_flags_and_return_tokens(self.script_flag_set);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xb06c26c2, Offset: 0x1220
// Size: 0xcc
function private function_35a012bf() {
    if (self flag::get("enabled")) {
        return;
    }
    self.mdl_gameobject endon(#"death");
    if (!is_true(self.mdl_gameobject.var_64b8fc93)) {
        self.mdl_gameobject.var_64b8fc93 = 1;
        self util::function_fb80e9ca();
    }
    self flag::set("enabled");
    if (isdefined(self.script_flag_set_start)) {
        util::function_aebdb74f(self.script_flag_set_start);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x9bd75755, Offset: 0x12f8
// Size: 0x54
function function_8dbe8332(*b_success, *b_destroyed) {
    if (level flag::get(#"radiant_gameobjects_initialized")) {
        self flag::clear("enabled");
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 3, eflags: 0x6 linked
// Checksum 0xeb718fa1, Offset: 0x1358
// Size: 0x64
function private function_49184ad0(*str_team, *e_player, b_success = 0) {
    if (b_success) {
        if (isdefined(self.var_84d5c09e)) {
        }
        if (isdefined(self.script_flag_set)) {
            util::function_aebdb74f(self.script_flag_set);
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x553e937e, Offset: 0x13c8
// Size: 0x188
function private function_42b34fc3() {
    foreach (var_7418aa09 in trigger::get_all()) {
        var_bf5ad193 = [];
        foreach (e_gameobject in level.a_gameobjects) {
            if (isdefined(e_gameobject) && isdefined(e_gameobject.e_object) && isdefined(var_7418aa09.target) && var_7418aa09.target === e_gameobject.e_object.targetname) {
                array::add(var_bf5ad193, e_gameobject);
            }
        }
        if (var_bf5ad193.size) {
            if (isdefined(var_7418aa09)) {
                var_7418aa09 thread function_d4107dde(var_bf5ad193);
            }
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xae030619, Offset: 0x1558
// Size: 0xd8
function private function_d4107dde(var_bf5ad193) {
    self endon(#"death");
    self trigger::wait_till();
    foreach (e_gameobject in var_bf5ad193) {
        if (isdefined(e_gameobject) && isdefined(e_gameobject.e_object)) {
            e_gameobject.e_object enable_object(1);
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xb0192740, Offset: 0x1638
// Size: 0x260
function private function_2f3ba1ad() {
    foreach (s_key in struct::get_script_bundle_instances("gameobject")) {
        if (isdefined(s_key.script_carry_object_key_src)) {
            var_fac9218d = strtok(s_key.script_carry_object_key_src, " ");
            s_key.a_s_locks = [];
            foreach (var_9d32a381 in var_fac9218d) {
                s_key.a_s_locks = arraycombine(s_key.a_s_locks, struct::get_array(var_9d32a381, "script_carry_object_key_target"), 0, 0);
            }
            foreach (s_lock in s_key.a_s_locks) {
                if (isdefined(s_lock.mdl_gameobject)) {
                    s_lock set_key_object(s_key);
                    continue;
                }
                s_lock.var_4cd30731 = s_key;
            }
            if (is_true(s_key.script_toggle_lock_visibility) && isdefined(s_key.a_s_locks)) {
                s_key thread function_2e028a0e();
            }
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x77d29c94, Offset: 0x18a0
// Size: 0x26a
function function_2e028a0e() {
    self.mdl_gameobject endon(#"death");
    while (true) {
        self.mdl_gameobject waittill(#"pickup_object");
        self hide_waypoint();
        foreach (s_lock in self.a_s_locks) {
            if (isdefined(s_lock.mdl_gameobject)) {
                s_lock function_924032a4();
                continue;
            }
            if (isdefined(s_lock.var_4cd30731)) {
                s_lock notify(#"hash_58b8542ed702b2a5", {#var_36c9fd16:1, #player:self.mdl_gameobject.carrier});
                s_lock.var_459e9174 = 1;
            }
        }
        self.mdl_gameobject waittill(#"dropped");
        self function_924032a4();
        foreach (s_lock in self.a_s_locks) {
            if (isdefined(s_lock.mdl_gameobject)) {
                s_lock function_9f42b8fd(s_lock function_167d3a40());
                continue;
            }
            if (isdefined(s_lock.var_4cd30731)) {
                s_lock notify(#"hash_58b8542ed702b2a5", {#var_36c9fd16:0});
                s_lock.var_459e9174 = undefined;
            }
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x4e056c7e, Offset: 0x1b18
// Size: 0x134
function private function_71a1c90f() {
    foreach (var_80ab0aea in struct::get_script_bundle_instances("gameobject")) {
        if (isdefined(var_80ab0aea.linkto)) {
            a_s_structs = struct::get_array(var_80ab0aea.linkto, "linkname");
            var_6e793336 = array::random(a_s_structs);
            if (isdefined(var_6e793336.mdl_gameobject) && var_6e793336.mdl_gameobject.type === "carryObject") {
                var_80ab0aea.mdl_gameobject thread function_d85d429b(var_6e793336.mdl_gameobject);
            }
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xa9675245, Offset: 0x1c58
// Size: 0x3ae
function private function_d85d429b(var_7d01398c) {
    level endon(#"game_ended");
    self.trigger endon(#"destroyed", #"death");
    var_7d01398c.trigger endon(#"destroyed", #"death");
    self endon(#"death");
    var_7d01398c endon(#"death");
    self.trigger unlink();
    self.trigger.origin = var_7d01398c.curorigin;
    self.trigger linkto(var_7d01398c);
    self.e_object.origin = var_7d01398c.curorigin;
    self.e_object.angles = var_7d01398c.e_object.angles;
    self.var_68d8f95e = var_7d01398c;
    if (!isdefined(var_7d01398c.var_bb7aca0c)) {
        var_7d01398c.var_bb7aca0c = [];
    } else if (!isarray(var_7d01398c.var_bb7aca0c)) {
        var_7d01398c.var_bb7aca0c = array(var_7d01398c.var_bb7aca0c);
    }
    var_7d01398c.var_bb7aca0c[var_7d01398c.var_bb7aca0c.size] = self;
    while (true) {
        if (isdefined(var_7d01398c.carrier)) {
            if (!is_true(self.var_2955c864)) {
                var_f857ad18 = self.interactteam;
                self.interrupted = 1;
                self allow_use(#"hash_161f03feaadc9b8f");
                self set_flags(1);
                self.trigger unlink();
                self.trigger.origin = var_7d01398c.carrier.origin + (0, 0, 64);
                self.trigger linkto(var_7d01398c.carrier);
                var_7d01398c waittill(#"dropped", #"reset", #"death");
                self set_flags(0);
                self.interrupted = undefined;
                self.trigger unlink();
                self.trigger.origin = var_7d01398c.curorigin + (0, 0, 32);
                self.e_object.origin = var_7d01398c.curorigin;
                self.e_object.angles = var_7d01398c.angles;
                waitframe(2);
                self.trigger linkto(var_7d01398c);
                self allow_use(var_f857ad18);
            }
        }
        waitframe(1);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x0
// Checksum 0xc81ef580, Offset: 0x2010
// Size: 0x10c
function function_e19c7c52(var_7537f028, var_1511a953 = 0) {
    mdl_gameobject = self function_fd4a5f2f();
    mdl_gameobject.trigger unlink();
    if (isvec(var_7537f028)) {
        mdl_gameobject.trigger.origin = var_7537f028;
    } else if (isdefined(var_7537f028.curorigin)) {
        mdl_gameobject.trigger.origin = var_7537f028.curorigin;
    } else {
        mdl_gameobject.trigger.origin = var_7537f028.origin;
    }
    if (isentity(var_7537f028) && var_1511a953) {
        mdl_gameobject.trigger linkto(var_7537f028);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x5156b015, Offset: 0x2128
// Size: 0x164
function function_71479ff3() {
    if (isdefined(self.target)) {
        a_s_targets = struct::get_array(self.target);
        foreach (s_target in a_s_targets) {
            if (s_target scene::function_9503138e()) {
                if (!isdefined(self.var_abba8d92)) {
                    self.var_abba8d92 = [];
                }
                if (!isdefined(self.var_abba8d92)) {
                    self.var_abba8d92 = [];
                } else if (!isarray(self.var_abba8d92)) {
                    self.var_abba8d92 = array(self.var_abba8d92);
                }
                self.var_abba8d92[self.var_abba8d92.size] = s_target;
            }
        }
        if (isdefined(self.var_abba8d92)) {
            self thread function_9e7fca5f();
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x4fabf752, Offset: 0x2298
// Size: 0x24e
function function_9e7fca5f() {
    self.mdl_gameobject.trigger endon(#"destroyed");
    self.mdl_gameobject endon(#"death");
    self endon(#"hash_767d05d04b5ba2f6");
    while (true) {
        s_waitresult = self.mdl_gameobject waittill(#"gameobject_end_use_player");
        foreach (s_scene in self.var_abba8d92) {
            if (isplayer(s_waitresult.player) && scene::get_player_count(s_scene.scriptbundlename) >= 1) {
                s_waitresult.player animation::stop(0);
                s_scene thread scene::play(s_waitresult.player);
                continue;
            }
            s_scene thread scene::play();
        }
        foreach (s_scene in self.var_abba8d92) {
            if (is_true(s_scene.script_play_multiple)) {
                continue;
            }
            arrayremovevalue(self.var_abba8d92, s_scene, 1);
        }
        if (self.var_abba8d92.size == 0) {
            return;
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0xf24b2e65, Offset: 0x24f0
// Size: 0x1a
function set_use_multiplier_callback(callbackfunction) {
    self.getuseratemultiplier = callbackfunction;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x476292c0, Offset: 0x2518
// Size: 0x156
function defaultuseratescalercallback(player) {
    useobj = self;
    characterindex = player getspecialistindex();
    assert(player_role::is_valid(characterindex));
    playerrole = getplayerrolecategory(characterindex, currentsessionmode());
    if (isdefined(playerrole) && isdefined(useobj.bundle)) {
        switch (playerrole) {
        case #"prc_mp_slayer":
            scaler = useobj.bundle.slayer_userate_scaler;
            break;
        case #"prc_mp_objective":
            scaler = useobj.bundle.objective_userate_scaler;
            break;
        case #"prc_mp_support":
            scaler = useobj.bundle.support_userate_scaler;
            break;
        }
    }
    if (!isdefined(scaler)) {
        scaler = 1;
    }
    return scaler;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xa155b480, Offset: 0x2678
// Size: 0x15a
function defaultallowweaponscallback(object) {
    player = self;
    characterindex = player getspecialistindex();
    assert(player_role::is_valid(characterindex));
    playerrole = getplayerrolecategory(characterindex, currentsessionmode());
    if (isdefined(playerrole) && isdefined(object.bundle)) {
        switch (playerrole) {
        case #"prc_mp_slayer":
            return is_true(object.bundle.slayer_allow_weapons);
        case #"prc_mp_objective":
            return is_true(object.bundle.objective_allow_weapons);
        case #"prc_mp_support":
            return is_true(object.bundle.support_allow_weapons);
        }
    }
    return object.allowweapons;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x6f23266, Offset: 0x27e0
// Size: 0x56
function function_b737f012() {
    self.touchtriggers = [];
    self.packobject = [];
    self.packicon = [];
    self.carryobject = undefined;
    self.claimtrigger = undefined;
    self.canpickupobject = 1;
    self.disabledweapon = 0;
    self.killedinuse = undefined;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xafc397ed, Offset: 0x2840
// Size: 0x4c
function function_19f7be2d(params) {
    if (game.state != #"playing") {
        return;
    }
    self thread gameobjects_dropped(params.mod);
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x1cfad83f, Offset: 0x2898
// Size: 0x1c
function on_disconnect() {
    self thread gameobjects_dropped();
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xcdce4fad, Offset: 0x28c0
// Size: 0x1c
function on_player_last_stand() {
    self thread gameobjects_dropped();
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xafdbbae0, Offset: 0x28e8
// Size: 0x108
function gameobjects_dropped(mod) {
    if (isdefined(self.carryobject) && self.carryobject.var_45d1d94d !== 1) {
        self.carryobject.var_8c812e0a = mod === "MOD_META";
        self.carryobject thread set_dropped();
    }
    if (isdefined(self.packobject) && self.packobject.size > 0) {
        foreach (item in self.packobject) {
            item thread set_dropped();
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xc45cc62b, Offset: 0x29f8
// Size: 0x3a
function function_4ea98a09() {
    if (!isdefined(self.trigger.var_a865c2cd)) {
        return true;
    }
    if (self.trigger.var_a865c2cd) {
        return true;
    }
    return false;
}

// Namespace gameobjects/gameobjects_shared
// Params 8, eflags: 0x2 linked
// Checksum 0xb367de13, Offset: 0x2a40
// Size: 0x59e
function create_carry_object(ownerteam, trigger, visuals, offset, objectivename, hitsound, allowinitialholddelay = 0, allowweaponcyclingduringhold = 0) {
    carryobject = spawn("script_model", trigger.origin);
    carryobject.type = "carryObject";
    carryobject.curorigin = trigger.origin;
    carryobject.entnum = trigger getentitynumber();
    carryobject.hitsound = hitsound;
    if (issubstr(trigger.classname, "use")) {
        carryobject.triggertype = "use";
    } else {
        carryobject.triggertype = "proximity";
    }
    trigger.baseorigin = trigger.origin;
    carryobject.trigger = trigger;
    trigger enablelinkto();
    carryobject linkto(trigger);
    carryobject.useweapon = undefined;
    if (!isdefined(offset)) {
        offset = (0, 0, 0);
    }
    for (index = 0; index < visuals.size; index++) {
        visuals[index].baseorigin = visuals[index].origin;
        visuals[index].baseangles = visuals[index].angles;
    }
    carryobject.visuals = visuals;
    carryobject _set_team(ownerteam);
    carryobject.compassicons = [];
    carryobject.objidpingfriendly = 0;
    carryobject.objidpingenemy = 0;
    if (carryobject function_4ea98a09()) {
        assert(isdefined(objectivename), "pack");
        carryobject.objid = [];
        level.objidstart += 2;
        carryobject.objectiveid = get_next_obj_id();
        objective_add(carryobject.objectiveid, "invisible", carryobject.curorigin, objectivename);
    }
    carryobject.carrier = undefined;
    carryobject.isresetting = 0;
    carryobject.interactteam = #"hash_161f03feaadc9b8f";
    carryobject.allowweapons = 0;
    carryobject.visiblecarriermodel = undefined;
    carryobject.dropoffset = 0;
    carryobject.disallowremotecontrol = 0;
    carryobject.var_22389d70 = 1;
    carryobject.worldicons = [];
    carryobject.carriervisible = 0;
    carryobject.visibleteam = #"hash_161f03feaadc9b8f";
    carryobject.worldiswaypoint = [];
    carryobject.worldicons_disabled = [];
    carryobject.carryicon = undefined;
    carryobject.setdropped = undefined;
    carryobject.ondrop = undefined;
    carryobject.onpickup = undefined;
    carryobject.onreset = undefined;
    carryobject.usetime = 10000;
    carryobject.var_9288c4c0 = carryobject.usetime;
    carryobject.decayprogress = 0;
    carryobject.var_98bb0715 = 1;
    carryobject.var_5c196da4 = 0;
    carryobject clear_progress();
    if (carryobject.triggertype == "use") {
        carryobject.trigger setcursorhint("HINT_INTERACTIVE_PROMPT");
        carryobject.userate = 1;
        carryobject thread use_object_use_think(!allowinitialholddelay, !allowweaponcyclingduringhold);
        if (!carryobject function_4ea98a09() && isdefined(carryobject.trigger.str_hint)) {
            carryobject.trigger setcursorhint("HINT_NOICON");
            carryobject.trigger sethintstring(carryobject.trigger.str_hint);
        }
    } else {
        carryobject function_e553e480();
        carryobject thread use_object_prox_think();
    }
    carryobject.getuseratemultiplier = &defaultuseratescalercallback;
    carryobject.allowweaponscallback = &defaultallowweaponscallback;
    if (carryobject function_4ea98a09()) {
        carryobject thread update_carry_object_objective_origin();
    }
    array::add(level.a_gameobjects, carryobject, 0);
    carryobject.b_reusable = 1;
    return carryobject;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x927d54c9, Offset: 0x2fe8
// Size: 0x1a
function function_63f73e1d(soundalias) {
    self.var_e810e5f7 = soundalias;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xa3847ce4, Offset: 0x3010
// Size: 0x92
function pickup_object_delay(origin) {
    level endon(#"game_ended");
    self endon(#"death", #"disconnect");
    self.canpickupobject = 0;
    for (;;) {
        if (distancesquared(self.origin, origin) > 4096) {
            break;
        }
        wait(0.2);
    }
    self.canpickupobject = 1;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf104c373, Offset: 0x30b0
// Size: 0x20c
function set_picked_up(player) {
    if (!isalive(player)) {
        return;
    }
    if (self.type == "carryObject") {
        if (isdefined(player.carryobject)) {
            if (is_true(player.carryobject.swappable)) {
                player.carryobject thread set_dropped();
            } else {
                if (isdefined(self.onpickupfailed)) {
                    self [[ self.onpickupfailed ]](player);
                }
                return;
            }
        }
        player give_object(self);
    } else if (self.type == "packObject") {
        if (isdefined(level.max_packobjects) && level.max_packobjects <= player.packobject.size) {
            if (isdefined(self.onpickupfailed)) {
                self [[ self.onpickupfailed ]](player);
            }
            return;
        }
        player give_pack_object(self);
    }
    self set_carrier(player);
    self ghost_visuals();
    self.trigger triggerenable(0);
    self notify(#"pickup_object");
    if (isdefined(self.onpickup)) {
        self [[ self.onpickup ]](player);
    }
    if (isdefined(self.var_e810e5f7)) {
        self playsound(self.var_e810e5f7);
    }
    self update_objective();
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x96944597, Offset: 0x32c8
// Size: 0x1f0
function unlink_grenades() {
    radius = 32;
    origin = self.origin;
    grenades = getentarray("grenade", "classname");
    radiussq = radius * radius;
    linkedgrenades = [];
    foreach (grenade in grenades) {
        if (distancesquared(origin, grenade.origin) < radiussq) {
            if (grenade islinkedto(self)) {
                grenade unlink();
                linkedgrenades[linkedgrenades.size] = grenade;
            }
        }
    }
    waittillframeend();
    foreach (grenade in linkedgrenades) {
        grenade launch((randomfloatrange(-5, 5), randomfloatrange(-5, 5), 5));
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x93632526, Offset: 0x34c0
// Size: 0xa0
function ghost_visuals() {
    foreach (visual in self.visuals) {
        visual ghost();
        visual thread unlink_grenades();
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x365fbd52, Offset: 0x3568
// Size: 0x11e
function update_carry_object_objective_origin() {
    self endon(#"hash_431541b507a8c588");
    level endon(#"game_ended");
    self.trigger endon(#"destroyed", #"death");
    objpingdelay = level.objectivepingdelay;
    for (;;) {
        if (isdefined(self.carrier)) {
            self.curorigin = self.carrier.origin;
            if (isdefined(self.objectiveid)) {
                objective_setposition(self.objectiveid, self.curorigin);
            }
            self util::wait_endon(objpingdelay, "dropped", "reset");
            continue;
        }
        if (isdefined(self.objectiveid)) {
            objective_setposition(self.objectiveid, self.curorigin);
        }
        waitframe(1);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x4e657c08, Offset: 0x3690
// Size: 0x304
function give_object(object) {
    assert(!isdefined(self.carryobject));
    self.carryobject = object;
    self callback::on_death(&function_19f7be2d);
    self thread track_carrier(object);
    allowweapons = object.allowweapons;
    if (isdefined(object.allowweaponscallback)) {
        allowweapons = [[ object.allowweaponscallback ]](object);
    }
    if (isdefined(object.carryweapon)) {
        if (isdefined(object.carryweaponthink)) {
            self thread [[ object.carryweaponthink ]]();
        }
        count = 0;
        while (self ismeleeing() && count < 10) {
            count++;
            wait(0.2);
        }
        self giveweapon(object.carryweapon);
        if (self isswitchingweapons()) {
            self waittilltimeout(2, #"weapon_change");
        }
        self switchtoweaponimmediate(object.carryweapon);
        self setblockweaponpickup(object.carryweapon, 1);
        self disableweaponcycling();
    } else if (!allowweapons) {
        self val::set(#"carry_object", "disable_weapons");
        if (!is_true(object.droponusebutton)) {
            self thread manual_drop_think();
        }
    }
    if (is_true(object.droponusebutton)) {
        if (object.droponusehasdelay === 1) {
            self thread droponholdusebutton();
        } else {
            self thread droponusebutton();
        }
    } else if (is_true(object.var_bee2a129)) {
        self thread function_bee2a129();
    }
    if (object.disallowvehicleusage !== 0) {
        self.disallowvehicleusage = 1;
    }
    if (isdefined(object.visiblecarriermodel)) {
        self weapons::force_stowed_weapon_update();
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x8e377730, Offset: 0x39a0
// Size: 0xc0
function move_visuals_to_base() {
    foreach (visual in self.visuals) {
        visual.origin = visual.baseorigin;
        visual.angles = visual.baseangles;
        visual dontinterpolate();
        visual show();
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x667862b0, Offset: 0x3a68
// Size: 0x2e6
function return_home() {
    self.isresetting = 1;
    prev_origin = self.trigger.origin;
    self notify(#"reset");
    self move_visuals_to_base();
    self.trigger.origin = self.trigger.baseorigin;
    self.curorigin = self.trigger.origin;
    if (isdefined(self.e_object)) {
        self.e_object.origin = self.curorigin;
    }
    if (isdefined(self.var_bb7aca0c)) {
        foreach (var_1bae95c8 in self.var_bb7aca0c) {
            if (isdefined(var_1bae95c8) && isdefined(var_1bae95c8.e_object)) {
                var_1bae95c8.e_object.origin = self.curorigin;
            }
        }
    }
    if (isdefined(self.onreset)) {
        self [[ self.onreset ]](prev_origin);
    }
    if (self.type == "carryObject" && isdefined(self.droptrigger)) {
        if (isdefined(self.carrier)) {
            if (!isdefined(self.ignore_use_time)) {
                self.ignore_use_time = [];
            }
            self.ignore_use_time[self.carrier getentitynumber()] = level.time + 500;
            self.carrier sethintstring("");
            if (isdefined(self.trigger) && !self function_4ea98a09() && isdefined(self.trigger.str_hint)) {
                self.trigger setcursorhint("HINT_NOICON");
                self.trigger sethintstring(self.trigger.str_hint);
            }
        }
        self.droptrigger delete();
    }
    self clear_carrier();
    update_objective();
    self.isresetting = 0;
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x0
// Checksum 0x6a318fc7, Offset: 0x3d58
// Size: 0xda
function set_new_base_position(v_base_pos, v_angles) {
    mdl_gameobject = self function_fd4a5f2f();
    foreach (visual in mdl_gameobject.visuals) {
        visual.baseorigin = v_base_pos;
        if (isdefined(v_angles)) {
            visual.baseangles = v_angles;
        }
    }
    mdl_gameobject.trigger.baseorigin = v_base_pos;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x0
// Checksum 0xcd81c848, Offset: 0x3e40
// Size: 0x52
function is_object_away_from_home() {
    if (isdefined(self.carrier)) {
        return true;
    }
    if (distancesquared(self.trigger.origin, self.trigger.baseorigin) > 4) {
        return true;
    }
    return false;
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x0
// Checksum 0x7b18ad8c, Offset: 0x3ea0
// Size: 0x24e
function set_position(origin, angles) {
    mdl_gameobject = self function_fd4a5f2f();
    mdl_gameobject.isresetting = 1;
    foreach (visual in mdl_gameobject.visuals) {
        visual.origin = origin;
        visual.angles = angles;
        visual dontinterpolate();
        visual show();
    }
    mdl_gameobject.trigger set_trigger_origin(origin);
    mdl_gameobject.curorigin = origin;
    if (isdefined(mdl_gameobject.e_object)) {
        mdl_gameobject.e_object.origin = origin;
        mdl_gameobject.e_object.angles = angles;
    }
    mdl_gameobject clear_carrier();
    mdl_gameobject update_objective();
    mdl_gameobject.isresetting = 0;
    if (isdefined(mdl_gameobject.var_bb7aca0c)) {
        foreach (var_1bae95c8 in mdl_gameobject.var_bb7aca0c) {
            if (isdefined(var_1bae95c8) && isdefined(var_1bae95c8.e_object)) {
                var_1bae95c8.e_object.origin = origin;
                var_1bae95c8.e_object.angles = angles;
            }
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x27306a1e, Offset: 0x40f8
// Size: 0x32
function set_drop_offset(height) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject.dropoffset = height;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x82b332e7, Offset: 0x4138
// Size: 0x92
function set_trigger_origin(origin) {
    offset = (self.maxs[2] - self.mins[2]) / 2;
    self.origin = (origin[0], origin[1], origin[2] + offset);
    if (isvec(self.trigger_offset)) {
        self.origin += self.trigger_offset;
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x7991c859, Offset: 0x41d8
// Size: 0x796
function set_dropped(var_e329a2fa) {
    if (isdefined(self.carrier) && isdefined(self.objectiveid)) {
        objective_setvisibletoplayer(self.objectiveid, self.carrier);
    }
    if (self.type == "carryObject" && isdefined(self.droptrigger)) {
        self.droptrigger delete();
    }
    if (isdefined(self.setdropped)) {
        if ([[ self.setdropped ]]()) {
            return;
        }
    }
    if (isdefined(self.var_abcd6a7e)) {
        self thread [[ self.var_abcd6a7e ]](var_e329a2fa);
        return;
    }
    self.isresetting = 1;
    self notify(#"dropped");
    startorigin = (0, 0, 0);
    endorigin = (0, 0, 0);
    body = undefined;
    if (isdefined(self.carrier) && self.carrier.team != #"spectator") {
        startorigin = self.carrier.origin + (0, 0, 20);
        endorigin = self.carrier.origin - (0, 0, 2000);
        body = self.carrier.body;
    } else if (isdefined(self.safeorigin)) {
        startorigin = self.safeorigin + (0, 0, 20);
        endorigin = self.safeorigin - (0, 0, 20);
    } else {
        startorigin = self.curorigin + (0, 0, 20);
        endorigin = self.curorigin - (0, 0, 20);
    }
    if (isplayer(var_e329a2fa)) {
        var_88760a3b = var_e329a2fa;
    } else {
        var_88760a3b = self.carrier;
    }
    trace_size = 10;
    trace = physicstrace(startorigin, endorigin, (trace_size * -1, trace_size * -1, 0), (trace_size, trace_size, 2 * trace_size), var_88760a3b, 32);
    droppingplayer = var_88760a3b;
    self clear_carrier();
    if (isdefined(trace)) {
        tempangle = randomfloat(360);
        droporigin = trace[#"position"] + (0, 0, self.dropoffset);
        if (trace[#"fraction"] < 1) {
            forward = (cos(tempangle), sin(tempangle), 0);
            forward = vectornormalize(forward - vectorscale(trace[#"normal"], vectordot(forward, trace[#"normal"])));
            if (isdefined(trace[#"walkable"])) {
                if (trace[#"walkable"] == 0) {
                    end_reflect = forward * 1000 + trace[#"position"];
                    reflect_trace = physicstrace(trace[#"position"], end_reflect, (trace_size * -1, trace_size * -1, trace_size * -1), (trace_size, trace_size, trace_size), self, 32);
                    if (isdefined(reflect_trace)) {
                        droporigin = reflect_trace[#"position"] + (0, 0, self.dropoffset);
                        if (reflect_trace[#"fraction"] < 1) {
                            forward = (cos(tempangle), sin(tempangle), 0);
                            forward = vectornormalize(forward - vectorscale(reflect_trace[#"normal"], vectordot(forward, reflect_trace[#"normal"])));
                        }
                    }
                }
            }
            dropangles = vectortoangles(forward);
        } else {
            dropangles = (0, tempangle, 0);
        }
        foreach (visual in self.visuals) {
            visual animation::stop(0);
            visual.origin = droporigin;
            visual.angles = dropangles;
            visual dontinterpolate();
            visual show();
        }
        self.trigger set_trigger_origin(droporigin);
        self.curorigin = droporigin;
        if (isdefined(self.e_object)) {
            self.e_object.origin = droporigin;
            self.e_object.angles = dropangles;
        }
        self thread pickup_timeout(trace[#"position"][2], startorigin[2]);
    } else {
        self move_visuals_to_base();
        self.trigger.origin = self.trigger.baseorigin;
        self.curorigin = self.trigger.baseorigin;
    }
    if (isdefined(self.ondrop)) {
        self [[ self.ondrop ]](droppingplayer);
    }
    self.trigger triggerenable(1);
    self update_objective();
    self.isresetting = 0;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x7604906a, Offset: 0x4978
// Size: 0x54
function set_carrier(carrier) {
    self.carrier = carrier;
    self notify(#"reset");
    if (isdefined(self.objectiveid)) {
        objective_setplayerusing(self.objectiveid, carrier);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x0
// Checksum 0x1f03b00a, Offset: 0x49d8
// Size: 0x2e
function get_carrier() {
    mdl_gameobject = self function_fd4a5f2f();
    return mdl_gameobject.carrier;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xbfc647ac, Offset: 0x4a10
// Size: 0x146
function clear_carrier() {
    if (!isdefined(self.carrier)) {
        return;
    }
    self.carrier callback::remove_on_death(&function_19f7be2d);
    self.carrier take_object(self);
    if (isdefined(self.objectiveid)) {
        objective_clearplayerusing(self.objectiveid, self.carrier);
        objective_setvisibletoplayer(self.objectiveid, self.carrier);
    }
    if (isdefined(self.carrier) && isdefined(self.carrier.var_ea1458aa)) {
        if (!isdefined(self.carrier.var_ea1458aa.var_cba684c2)) {
            self.carrier.var_ea1458aa.var_cba684c2 = [];
        }
        self.carrier.var_ea1458aa.var_cba684c2[self getentitynumber()] = 1;
    }
    self.carrier = undefined;
    self notify(#"carrier_cleared");
}

// Namespace gameobjects/gameobjects_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x7ad553ce, Offset: 0x4b60
// Size: 0x112
function is_touching_any_trigger(triggers, minz, maxz, var_943e96ce) {
    foreach (trigger in triggers) {
        if (trigger istriggerenabled()) {
            if (is_true(var_943e96ce)) {
                if (istouching(self.origin, trigger)) {
                    return true;
                }
                continue;
            }
            if (self istouchingswept(trigger, minz, maxz)) {
                return true;
            }
        }
    }
    return false;
}

// Namespace gameobjects/gameobjects_shared
// Params 5, eflags: 0x2 linked
// Checksum 0x3a1b729f, Offset: 0x4c80
// Size: 0x5a
function is_touching_any_trigger_key_value(value, key, minz, maxz, var_943e96ce) {
    return self is_touching_any_trigger(getentarray(value, key), minz, maxz, var_943e96ce);
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x5c1386d9, Offset: 0x4ce8
// Size: 0x20a
function should_be_reset(minz, maxz) {
    if (self.visuals[0] is_touching_any_trigger_key_value("minefield", "targetname", minz, maxz, self.var_ac304f56)) {
        return true;
    }
    if (self.visuals[0] is_touching_any_trigger_key_value("trigger_hurt", "classname", minz, maxz, self.var_ac304f56)) {
        return true;
    }
    arrayremovevalue(level.oob_triggers, undefined);
    if (self.visuals[0] is_touching_any_trigger(level.oob_triggers, minz, maxz, self.var_ac304f56)) {
        return true;
    }
    if (is_true(self.var_8c812e0a)) {
        self.var_8c812e0a = 0;
        return true;
    }
    elevators = getentarray("script_elevator", "targetname");
    foreach (elevator in elevators) {
        assert(isdefined(elevator.occupy_volume));
        if (self.visuals[0] istouchingswept(elevator.occupy_volume, minz, maxz)) {
            return true;
        }
    }
    return false;
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x92134e15, Offset: 0x4f00
// Size: 0x2dc
function pickup_timeout(minz, maxz) {
    self endon(#"pickup_object", #"reset", #"death");
    waitframe(1);
    if (self should_be_reset(minz, maxz)) {
        self thread return_home();
        return;
    } else if (self.var_22389d70 && !ispointonnavmesh(self.visuals[0].origin, 32)) {
        v_pos = getclosestpointonnavmesh(self.visuals[0].origin, 256, 16);
        if (!isdefined(v_pos) || sessionmodeismultiplayergame() || sessionmodeiswarzonegame()) {
            self thread return_home();
            return;
        }
        v_drop = v_pos + (0, 0, self.dropoffset);
        foreach (visual in self.visuals) {
            visual animation::stop(0);
            visual.origin = v_drop;
            visual dontinterpolate();
            visual show();
        }
        self.trigger set_trigger_origin(v_drop);
        self.curorigin = v_drop;
        if (isdefined(self.e_object)) {
            self.e_object.origin = v_drop;
        }
    }
    if (isdefined(self.pickuptimeoutoverride)) {
        self thread [[ self.pickuptimeoutoverride ]]();
        return;
    }
    if (isdefined(self.autoresettime)) {
        wait(self.autoresettime);
        if (!isdefined(self.carrier)) {
            self thread return_home();
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x54e62f05, Offset: 0x51e8
// Size: 0x30c
function take_object(object) {
    if (isdefined(object.visiblecarriermodel)) {
        self weapons::detach_all_weapons();
    }
    shouldenableweapon = 1;
    if (isdefined(object.carryweapon) && !isdefined(self.player_disconnected)) {
        shouldenableweapon = 0;
        self thread wait_take_carry_weapon(object.carryweapon);
    }
    if (object.type == "carryObject") {
        /#
            if (isdefined(self.carryicon)) {
                self.carryicon hud::destroyelem();
            }
        #/
        self.carryobject = undefined;
    } else if (object.type == "packObject") {
        if (isdefined(self.packicon) && self.packicon.size > 0) {
            for (i = 0; i < self.packicon.size; i++) {
                if (isdefined(self.packicon[i].script_string)) {
                    if (self.packicon[i].script_string == object.packicon) {
                        elem = self.packicon[i];
                        arrayremovevalue(self.packicon, elem);
                        /#
                            elem hud::destroyelem();
                        #/
                        self thread adjust_remaining_packicons();
                    }
                }
            }
        }
        arrayremovevalue(self.packobject, object);
    }
    if (!isalive(self) || isdefined(self.player_disconnected)) {
        return;
    }
    self notify(#"drop_object");
    self.disallowvehicleusage = 0;
    if (object.triggertype == "proximity") {
        self thread pickup_object_delay(object.trigger.origin);
    }
    if (isdefined(object.visiblecarriermodel)) {
        self weapons::force_stowed_weapon_update();
    }
    allowweapons = object.allowweapons;
    if (isdefined(object.allowweaponscallback)) {
        allowweapons = [[ object.allowweaponscallback ]](object);
    }
    if (!allowweapons && shouldenableweapon) {
        self val::reset(#"carry_object", "disable_weapons");
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc1333e2, Offset: 0x5500
// Size: 0x8c
function wait_take_carry_weapon(weapon) {
    self thread take_carry_weapon_on_death(weapon);
    wait(max(0, weapon.firetime - 2 * float(function_60d95f53()) / 1000));
    self take_carry_weapon(weapon);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x630be5e6, Offset: 0x5598
// Size: 0x4c
function take_carry_weapon_on_death(weapon) {
    self endon(#"take_carry_weapon");
    self waittill(#"death");
    self take_carry_weapon(weapon);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc563fc96, Offset: 0x55f0
// Size: 0x12c
function take_carry_weapon(weapon) {
    self notify(#"take_carry_weapon");
    if (self hasweapon(weapon, 1)) {
        ballweapon = getweapon(#"ball");
        currweapon = self getcurrentweapon();
        if (weapon == ballweapon && currweapon === ballweapon) {
            self killstreaks::switch_to_last_non_killstreak_weapon(undefined, 1);
        }
        self setblockweaponpickup(weapon, 0);
        self takeweapon(weapon);
        self enableweaponcycling();
        if (level.gametype == "ball") {
            self enableoffhandweapons();
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x576767d6, Offset: 0x5728
// Size: 0x6a
function function_6e870d38(weapon) {
    assert(isweapon(weapon), "<unknown string>");
    mdl_gameobject = self function_fd4a5f2f();
    mdl_gameobject.carryweapon = weapon;
}

// Namespace gameobjects/gameobjects_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x3b4e70a8, Offset: 0x57a0
// Size: 0x62
function function_a8c842d6(var_e13b2d32, b_delay, var_242b6839) {
    mdl_gameobject = self function_fd4a5f2f();
    mdl_gameobject.droponusebutton = var_e13b2d32;
    mdl_gameobject.droponusehasdelay = b_delay;
    mdl_gameobject.var_97c7a495 = var_242b6839;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x2403db3f, Offset: 0x5810
// Size: 0xba
function function_98c39cbc(b_enable) {
    mdl_gameobject = self function_fd4a5f2f();
    mdl_gameobject.var_bee2a129 = b_enable;
    if (b_enable) {
        if (is_true(mdl_gameobject.droponusebutton)) {
            mdl_gameobject.droponusebutton = 0;
        }
        if (is_true(mdl_gameobject.droponusehasdelay)) {
            mdl_gameobject.droponusehasdelay = 0;
        }
        if (is_true(mdl_gameobject.var_97c7a495)) {
            mdl_gameobject.var_97c7a495 = 0;
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x197b939f, Offset: 0x58d8
// Size: 0x138
function track_carrier(object) {
    level endon(#"game_ended");
    self endon(#"disconnect", #"death", #"drop_object");
    waitframe(1);
    while (isdefined(object.carrier) && object.carrier == self && isalive(self)) {
        if (self isonground()) {
            trace = bullettrace(self.origin + (0, 0, 20), self.origin - (0, 0, 20), 0, undefined);
            if (trace[#"fraction"] < 1) {
                object.safeorigin = trace[#"position"];
            }
        }
        waitframe(1);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x354b199d, Offset: 0x5a18
// Size: 0x168
function manual_drop_think() {
    level endon(#"game_ended");
    self endon(#"disconnect", #"death", #"drop_object");
    for (;;) {
        while (self attackbuttonpressed() || self fragbuttonpressed() || self secondaryoffhandbuttonpressed() || self meleebuttonpressed()) {
            waitframe(1);
        }
        while (!self attackbuttonpressed() && !self fragbuttonpressed() && !self secondaryoffhandbuttonpressed() && !self meleebuttonpressed()) {
            waitframe(1);
        }
        if (isdefined(self.carryobject) && !self usebuttonpressed()) {
            self.carryobject thread set_dropped();
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x1ed9aed1, Offset: 0x5b88
// Size: 0xb4
function droponusebutton() {
    level endon(#"game_ended");
    self endon(#"disconnect", #"death", #"drop_object");
    while (self usebuttonpressed()) {
        waitframe(1);
    }
    while (!self usebuttonpressed()) {
        waitframe(1);
    }
    if (isdefined(self.carryobject)) {
        self.carryobject thread set_dropped();
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x66922de, Offset: 0x5c50
// Size: 0x2d8
function watchholdusedrop() {
    level endon(#"game_ended");
    self endon(#"death", #"disconnect", #"drop_object");
    assert(isdefined(self.carryobject));
    assert(isdefined(self.carryobject.droptrigger));
    trigger = self.carryobject.droptrigger;
    while (true) {
        waitresult = trigger waittill(#"trigger");
        if (self usebuttonpressed() && !self.throwinggrenade && !self meleebuttonpressed() && !self attackbuttonpressed() && !is_true(self.isplanting) && !is_true(self.isdefusing) && !self isremotecontrolling()) {
            if (isdefined(self.carryobject)) {
                if (!isdefined(self.carryobject.ignore_use_time)) {
                    self.carryobject.ignore_use_time = [];
                }
                self.carryobject.ignore_use_time[self getentitynumber()] = level.time + 500;
                self sethintstring("");
                if (!self.carryobject function_4ea98a09() && isdefined(self.carryobject.trigger.str_hint)) {
                    self.carryobject.trigger setcursorhint("HINT_NOICON");
                    self.carryobject.trigger sethintstring(self.carryobject.trigger.str_hint);
                }
                self.carryobject thread set_dropped();
            }
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x72b8eead, Offset: 0x5f30
// Size: 0x2a4
function droponholdusebutton() {
    level endon(#"game_ended");
    self endon(#"disconnect", #"death", #"drop_object");
    if (!isdefined(self.carryobject)) {
        return;
    }
    while (self usebuttonpressed()) {
        waitframe(1);
    }
    if (!isdefined(self.carryobject.droptrigger)) {
        pos = self.origin + (0, 0, 15);
        self.carryobject.droptrigger = spawn("trigger_radius_use", pos);
    }
    if (self.carryobject.var_97c7a495 === 1) {
        self.carryobject.droptrigger function_750d6379();
    }
    self.carryobject.droptrigger sethintlowpriority(1);
    self.carryobject.droptrigger sethintstring(#"hash_7944e4820b9c7227");
    self.carryobject.droptrigger setcursorhint("HINT_NOICON", self.carryobject);
    self.carryobject.droptrigger enablelinkto();
    self.carryobject.droptrigger linkto(self, "tag_origin", (0, 0, 15));
    self.carryobject.droptrigger setteamfortrigger(self.team);
    self.carryobject.droptrigger setinvisibletoall();
    self.carryobject.droptrigger setvisibletoplayer(self);
    self clientclaimtrigger(self.carryobject.droptrigger);
    self thread watchholdusedrop();
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x4ae2560d, Offset: 0x61e0
// Size: 0x286
function function_2544bab6() {
    level endon(#"game_ended");
    self endon(#"death", #"disconnect", #"drop_object");
    assert(isdefined(self.carryobject));
    while (true) {
        while (!self usebuttonpressed()) {
            waitframe(1);
        }
        var_f783260f = gettime();
        while (self usebuttonpressed() && var_f783260f + 500 > gettime()) {
            waitframe(1);
        }
        if (var_f783260f + 500 <= gettime()) {
            continue;
        }
        while (!self usebuttonpressed() && var_f783260f + 1000 > gettime()) {
            waitframe(1);
        }
        if (var_f783260f + 1000 <= gettime()) {
            continue;
        }
        if (isdefined(self.carryobject)) {
            if (!isdefined(self.carryobject.ignore_use_time)) {
                self.carryobject.ignore_use_time = [];
            }
            self.carryobject.ignore_use_time[self getentitynumber()] = level.time + 500;
            self sethintstring("");
            if (!self.carryobject function_4ea98a09() && isdefined(self.carryobject.trigger.str_hint)) {
                self.carryobject.trigger setcursorhint("HINT_NOICON");
                self.carryobject.trigger sethintstring(self.carryobject.trigger.str_hint);
            }
            self.carryobject thread set_dropped();
        }
        waitframe(1);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xc62843ce, Offset: 0x6470
// Size: 0x244
function function_bee2a129() {
    level endon(#"game_ended");
    self endon(#"disconnect", #"death", #"drop_object");
    if (!isdefined(self.carryobject)) {
        return;
    }
    if (!isdefined(self.carryobject.droptrigger)) {
        pos = self.origin + (0, 0, 15);
        self.carryobject.droptrigger = spawn("trigger_radius_use", pos);
    }
    self.carryobject.droptrigger sethintlowpriority(1);
    self.carryobject.droptrigger sethintstring(#"hash_50dd3fca372feb35");
    self.carryobject.droptrigger setcursorhint("HINT_NOICON", self.carryobject);
    self.carryobject.droptrigger enablelinkto();
    self.carryobject.droptrigger linkto(self, "tag_origin", (0, 0, 15));
    self.carryobject.droptrigger setteamfortrigger(self.team);
    self.carryobject.droptrigger setinvisibletoall();
    self.carryobject.droptrigger setvisibletoplayer(self);
    self clientclaimtrigger(self.carryobject.droptrigger);
    self thread function_2544bab6();
}

// Namespace gameobjects/gameobjects_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xd90d670e, Offset: 0x66c0
// Size: 0x26e
function create_generic_object(ownerteam, trigger, visuals, offset) {
    generic_object = spawn("script_model", trigger.origin);
    generic_object.type = "GenericObject";
    generic_object.curorigin = trigger.origin;
    generic_object.entnum = trigger getentitynumber();
    generic_object.keyobject = undefined;
    generic_object.triggertype = "proximity";
    generic_object.trigger = trigger;
    generic_object linkto(trigger);
    for (index = 0; index < visuals.size; index++) {
        visuals[index].baseorigin = visuals[index].origin;
        visuals[index].baseangles = visuals[index].angles;
    }
    generic_object.visuals = visuals;
    generic_object _set_team(ownerteam);
    if (!isdefined(offset)) {
        offset = (0, 0, 0);
    }
    if (sessionmodeiscampaigngame()) {
        generic_object.keepweapon = 1;
    }
    generic_object.interactteam = #"hash_161f03feaadc9b8f";
    generic_object.onuse = undefined;
    generic_object.oncantuse = undefined;
    generic_object.onresumeuse = undefined;
    generic_object.usetime = 10000;
    generic_object.var_9288c4c0 = generic_object.usetime;
    generic_object.decayprogress = 0;
    generic_object.var_98bb0715 = 1;
    generic_object.var_5c196da4 = 0;
    generic_object clear_progress();
    if (generic_object.triggertype == "proximity") {
        generic_object function_e553e480();
    }
    array::add(level.a_gameobjects, generic_object, 0);
    generic_object.b_reusable = 1;
    return generic_object;
}

// Namespace gameobjects/gameobjects_shared
// Params 9, eflags: 0x2 linked
// Checksum 0x1294e848, Offset: 0x6938
// Size: 0x4f6
function create_use_object(ownerteam, trigger, visuals, var_da26a41 = (0, 0, 0), objectivename, allowinitialholddelay = 0, allowweaponcyclingduringhold = 0, start_enabled = 1, angles) {
    useobject = spawn("script_model", trigger.origin + var_da26a41);
    useobject.type = "useObject";
    useobject.curorigin = trigger.origin;
    useobject.entnum = trigger getentitynumber();
    useobject.keyobject = undefined;
    if (issubstr(trigger.classname, "use")) {
        useobject.triggertype = "use";
    } else {
        useobject.triggertype = "proximity";
    }
    if (visuals.size > 0) {
        useobject.angles = visuals[0].angles;
    } else if (isdefined(angles)) {
        useobject.angles = angles;
    }
    useobject.trigger = trigger;
    useobject linkto(trigger);
    for (index = 0; index < visuals.size; index++) {
        visuals[index].baseorigin = visuals[index].origin;
        visuals[index].baseangles = visuals[index].angles;
    }
    useobject.visuals = visuals;
    useobject _set_team(ownerteam);
    if (sessionmodeiscampaigngame()) {
        useobject.keepweapon = 1;
    }
    useobject.compassicons = [];
    if (useobject function_4ea98a09()) {
        assert(isdefined(objectivename), "<unknown string>");
        useobject.objid = [];
        useobject.var_f23c87bd = objectivename;
        useobject.var_25010336 = &function_4d047b8d;
        if (is_true(start_enabled)) {
            useobject enable_object();
        }
    } else {
        useobject.trigger setcursorhint("HINT_NOICON");
        if (isdefined(useobject.trigger.str_hint)) {
            useobject.trigger sethintstring(useobject.trigger.str_hint);
        }
        if (is_true(self.m_b_reusable)) {
            allowinitialholddelay = 1;
        }
    }
    useobject.interactteam = #"hash_161f03feaadc9b8f";
    useobject.worldicons = [];
    useobject.visibleteam = #"hash_161f03feaadc9b8f";
    useobject.worldiswaypoint = [];
    useobject.worldicons_disabled = [];
    useobject.onuse = undefined;
    useobject.oncantuse = undefined;
    useobject.onresumeuse = undefined;
    useobject.usetext = "default";
    useobject.usetime = 10000;
    useobject.var_9288c4c0 = useobject.usetime;
    useobject.decayprogress = 0;
    useobject.var_98bb0715 = 1;
    useobject.var_5c196da4 = 1;
    useobject.curprogress = 0;
    useobject.decayprogressmin = 0;
    if (useobject.triggertype == "proximity") {
        useobject function_e553e480();
        useobject thread use_object_prox_think();
    } else {
        useobject.userate = 1;
        useobject thread use_object_use_think(!allowinitialholddelay, !allowweaponcyclingduringhold);
    }
    useobject clear_progress();
    array::add(level.a_gameobjects, useobject, 0);
    useobject.b_reusable = 1;
    return useobject;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x73b2bc17, Offset: 0x6e38
// Size: 0x16c
function private function_4d047b8d() {
    useobject = self;
    assert(isdefined(useobject.var_f23c87bd));
    assert(!isdefined(useobject.objectiveid));
    useobject.objectiveid = get_next_obj_id();
    objective_add(useobject.objectiveid, "invisible", useobject, useobject.var_f23c87bd);
    requiredspecialty = objective_getrequiredspecialty(useobject.var_f23c87bd);
    if (isdefined(useobject.trigger) && isdefined(requiredspecialty) && requiredspecialty != "None") {
        useobject.trigger setperkfortrigger(requiredspecialty);
    }
    requiredweapon = function_1fce1758(useobject.objectiveid);
    if (isdefined(requiredweapon)) {
        useobject.requiredweapon = getweapon(requiredweapon);
        useobject.trigger function_ca21f900(useobject.requiredweapon);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe72bc3bf, Offset: 0x6fb0
// Size: 0x130
function set_key_object(object) {
    mdl_gameobject = self function_fd4a5f2f();
    object = object function_fd4a5f2f();
    if (!isdefined(object)) {
        mdl_gameobject.keyobject = undefined;
        return;
    }
    if (!isdefined(mdl_gameobject.keyobject)) {
        mdl_gameobject.keyobject = [];
    }
    if (isarray(object)) {
        foreach (obj in object) {
            mdl_gameobject.keyobject[mdl_gameobject.keyobject.size] = obj;
        }
        return;
    }
    mdl_gameobject.keyobject[mdl_gameobject.keyobject.size] = object;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0xa7a08583, Offset: 0x70e8
// Size: 0x156
function function_fe788e71(object) {
    mdl_gameobject = self function_fd4a5f2f();
    object = object function_fd4a5f2f();
    if (!isdefined(mdl_gameobject.keyobject)) {
        return;
    }
    arrayremovevalue(mdl_gameobject.keyobject, undefined, 0);
    if (isarray(object)) {
        foreach (obj in object) {
            arrayremovevalue(mdl_gameobject.keyobject, obj, 0);
        }
    } else {
        arrayremovevalue(mdl_gameobject.keyobject, object, 0);
    }
    if (!mdl_gameobject.keyobject.size) {
        mdl_gameobject.keyobject = undefined;
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x5449c644, Offset: 0x7248
// Size: 0xd6
function has_key_object(use) {
    if (!isdefined(use.keyobject)) {
        return false;
    }
    for (x = 0; x < use.keyobject.size; x++) {
        if (isdefined(self.carryobject) && self.carryobject == use.keyobject[x]) {
            return true;
        }
        if (isdefined(self.packobject)) {
            for (i = 0; i < self.packobject.size; i++) {
                if (self.packobject[i] == use.keyobject[x]) {
                    return true;
                }
            }
        }
    }
    return false;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x7a9111c0, Offset: 0x7328
// Size: 0x4a
function function_e7e3d146(b_enable = 1) {
    mdl_gameobject = self function_fd4a5f2f();
    mdl_gameobject.var_c0eeec46 = b_enable;
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x0
// Checksum 0x519286e4, Offset: 0x7380
// Size: 0x8c
function function_f4ccb04c(e_player, var_5098afd6 = 0) {
    mdl_gameobject = self function_fd4a5f2f();
    e_player.var_17bc9194 = 1;
    mdl_gameobject.trigger notify(#"trigger", {#activator:e_player, #forced:var_5098afd6});
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xe5c11107, Offset: 0x7418
// Size: 0x5a8
function use_object_use_think(disableinitialholddelay, disableweaponcyclingduringhold) {
    self.trigger.mdl_gameobject = self;
    self.trigger endon(#"destroyed", #"death");
    if (self.usetime > 0 && disableinitialholddelay) {
        self.trigger usetriggerignoreuseholdtime();
    }
    while (true) {
        waitresult = self.trigger waittill(#"trigger");
        player = waitresult.activator;
        if (game.state != #"playing") {
            continue;
        }
        if (!is_true(waitresult.forced)) {
            if (!self can_touch(player)) {
                continue;
            }
            if (!self can_interact_with(player)) {
                continue;
            }
            if (!is_true(self.var_33d50507)) {
                if (!player isonground() && !player isplayerswimming() || player iswallrunning()) {
                    continue;
                }
            }
            if (is_true(player.var_5e6eba64)) {
                continue;
            }
        }
        if (isdefined(self.keyobject) && !player has_key_object(self)) {
            if (isdefined(self.oncantuse)) {
                self [[ self.oncantuse ]](player);
            }
            continue;
        }
        self notify(#"engaged");
        result = 1;
        if (self.usetime > 0) {
            self thread play_interact_anim(player);
            self apply_player_use_modifiers(player);
            if (isdefined(self.onbeginuse)) {
                if (isdefined(self.classobj)) {
                    self.classobj [[ self.onbeginuse ]](self, player);
                } else {
                    self [[ self.onbeginuse ]](player);
                }
            }
            team = player.pers[#"team"];
            result = self use_hold_think(player, disableweaponcyclingduringhold);
            self remove_player_use_modifiers(player);
            if (isdefined(self.onenduse)) {
                if (isdefined(self.classobj)) {
                    self.classobj [[ self.onenduse ]](self, team, player, result);
                } else {
                    self [[ self.onenduse ]](team, player, result);
                }
            }
        }
        if (isdefined(self.e_object) && is_true(self.e_object.var_c65066ad)) {
            self.e_object thread function_49184ad0(team, player, result);
        }
        if (!is_true(result)) {
            self notify(#"gameobject_abort");
            if (isdefined(self.e_object)) {
                self.e_object notify(#"gameobject_abort");
            }
            continue;
        }
        if (isdefined(self.e_object)) {
            if (!self.e_object flag::exists("gameobject_end_use")) {
                self.e_object flag::init("gameobject_end_use");
            }
            self.e_object flag::set("gameobject_end_use");
        }
        potm::bookmark(#"interact", gettime(), player);
        self notify(#"gameobject_end_use_player", {#player:player});
        if (isdefined(self.onuse)) {
            if (is_true(self.onuse_thread)) {
                self thread use_object_onuse(player);
            } else {
                self use_object_onuse(player);
                self callback::callback(#"hash_7de173a0523c27c9", player);
            }
        }
        if (self.type == "carryObject" || self.type === "packObject") {
            self set_picked_up(player);
        }
        self check_gameobject_reenable();
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x998163cf, Offset: 0x79c8
// Size: 0x90
function use_object_onuse(player) {
    level endon(#"game_ended");
    self.trigger endon(#"destroyed", #"death");
    if (isdefined(self.classobj)) {
        self.classobj [[ self.onuse ]](self, player);
        return;
    }
    self [[ self.onuse ]](player);
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xca7648b5, Offset: 0x7a60
// Size: 0x142
function get_earliest_claim_player() {
    assert(function_350d0352());
    earliestplayer = self.claimplayer;
    user = self.var_a4926509;
    if (self.users[user].touching.players.size > 0) {
        earliesttime = undefined;
        foreach (touchdata in self.users[user].touching.players) {
            if (!isdefined(earliesttime) || touchdata.starttime < earliesttime) {
                earliestplayer = touchdata.player;
                earliesttime = touchdata.starttime;
            }
        }
    }
    return earliestplayer;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x77416d01, Offset: 0x7bb0
// Size: 0x30
function apply_player_use_modifiers(e_player) {
    if (isdefined(level.var_4e3ded37)) {
        e_player [[ level.var_4e3ded37 ]]();
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x5e03037, Offset: 0x7be8
// Size: 0x30
function remove_player_use_modifiers(e_player) {
    if (isdefined(level.var_4dbea2a4)) {
        e_player [[ level.var_4dbea2a4 ]]();
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x960c81e7, Offset: 0x7c20
// Size: 0x94
function private function_76f3a4cd() {
    if (self.cancontestclaim) {
        num = self get_num_touching(self.var_a4926509);
        numother = self function_3a7a2963(self.var_a4926509);
        if (num && numother) {
            if (!level.gameobjectscontestedmajoritywins || num === numother) {
                return true;
            }
        }
    }
    return false;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x757fb044, Offset: 0x7cc0
// Size: 0x7e
function private function_4783042a() {
    if (isdefined(self.oncontested)) {
        self [[ self.oncontested ]]();
        self callback::callback(#"hash_7de173a0523c27c9", undefined);
    }
    if (!self.decayprogress || self.curprogress == 0) {
        self function_58901d83();
        self.claimplayer = undefined;
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x9de60620, Offset: 0x7d48
// Size: 0xbe
function private function_d897ff7() {
    numclaimants = isdefined(get_num_touching(self.var_a4926509)) ? get_num_touching(self.var_a4926509) : 0;
    if (numclaimants == 0) {
        return true;
    } else if (level.gameobjectscontestedmajoritywins) {
        numother = isdefined(function_3a7a2963(self.var_a4926509)) ? function_3a7a2963(self.var_a4926509) : 0;
        return (numother > numclaimants);
    }
    return false;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xa820abb1, Offset: 0x7e10
// Size: 0x202
function private function_72307b09(progress) {
    if (!is_true(self.var_5c196da4) || !progress) {
        return;
    }
    user = self.var_a4926509;
    if (!isdefined(user) || !isdefined(self.users[user]) || !isdefined(self.users[user].contributors)) {
        return;
    }
    if (0 > progress) {
        foreach (contributor in self.users[user].contributors) {
            contributor.contribution = math::clamp(contributor.contribution + progress, 0, self.usetime);
        }
        return;
    }
    keys = getarraykeys(self.users[user].touching.players);
    for (i = 0; i < keys.size; i++) {
        contributor = self.users[user].contributors[keys[i]];
        assert(isdefined(contributor));
        contributor.contribution = math::clamp(contributor.contribution + progress, 0, self.usetime);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x2c975955, Offset: 0x8020
// Size: 0x1a
function function_1b4d64d8(enabled) {
    self.var_79f2beba = enabled;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x81a65cac, Offset: 0x8048
// Size: 0xe60
function use_object_prox_think() {
    level endon(#"game_ended");
    self.trigger endon(#"destroyed", #"death");
    self thread prox_trigger_think();
    while (true) {
        if (game.state != #"playing") {
            waitframe(1);
            continue;
        }
        if (self.usetime && self.curprogress >= self.usetime || self.usetime <= 0 && get_num_touching(self.var_a4926509) > 0) {
            creditplayer = get_earliest_claim_player();
            if (isdefined(self.onenduse)) {
                if (isdefined(self.classobj)) {
                    self.classobj [[ self.onenduse ]](self, self function_14fccbd9(), creditplayer, isdefined(creditplayer));
                } else {
                    self [[ self.onenduse ]](self function_14fccbd9(), creditplayer, isdefined(creditplayer));
                }
            }
            if (isdefined(self.e_object)) {
                if (!self.e_object flag::exists("gameobject_end_use")) {
                    self.e_object flag::init("gameobject_end_use");
                }
                self.e_object flag::set("gameobject_end_use");
                if (is_true(self.e_object.var_c65066ad)) {
                    self.e_object thread function_49184ad0(self function_14fccbd9(), creditplayer, isdefined(creditplayer));
                }
            }
            if (isdefined(creditplayer)) {
                self notify(#"gameobject_end_use_player", {#player:creditplayer});
            }
            if (isdefined(creditplayer) && isdefined(self.onuse)) {
                if (isdefined(self.classobj)) {
                    self.classobj [[ self.onuse ]](self, creditplayer);
                } else {
                    self [[ self.onuse ]](creditplayer);
                    self callback::callback(#"hash_7de173a0523c27c9", creditplayer);
                }
            }
            self clear_progress();
            if (!self.mustmaintainclaim) {
                self function_58901d83();
                self.claimplayer = undefined;
            }
            self thread check_gameobject_reenable();
            if (isdefined(creditplayer) && (self.type == "carryObject" || self.type === "packObject")) {
                self set_picked_up(creditplayer);
                self callback::callback(#"hash_7de173a0523c27c9", creditplayer);
            }
        }
        previousprogress = self.curprogress;
        if (self function_350d0352()) {
            if (self.usetime && (!self.mustmaintainclaim || !self function_abe3458c())) {
                if (self.decayprogress && self function_d897ff7()) {
                    if (isdefined(self.autodecaytime) && self.autodecaytime > 0 && self.curprogress > 0) {
                        self.curprogress -= level.var_9fee970c * self.usetime / int(self.autodecaytime * 1000);
                        deltaprogress = self.curprogress - previousprogress;
                        self function_72307b09(deltaprogress);
                        self update_current_progress();
                        if (self.curprogress <= 0) {
                            self clear_progress();
                        }
                        previousprogress = self.curprogress;
                    }
                    self.inuse = 0;
                    hadprogress = self.curprogress > 0;
                    if (isdefined(self.claimplayer)) {
                        if (isdefined(self.onenduse)) {
                            if (isdefined(self.classobj)) {
                                self.classobj [[ self.onenduse ]](self, self function_14fccbd9(), self.claimplayer, 0);
                            } else {
                                self [[ self.onenduse ]](self function_14fccbd9(), self.claimplayer, 0);
                            }
                        }
                        if (isdefined(self.e_object) && is_true(self.e_object.var_c65066ad)) {
                            self.e_object thread function_49184ad0(self function_14fccbd9(), self.claimplayer, 0);
                        }
                        self.claimplayer = undefined;
                    }
                    decayscale = 0;
                    if (self.var_98bb0715 && isdefined(self.decaytime) && self.decaytime > 0) {
                        decayscale = self.usetime / self.decaytime;
                    }
                    if (isdefined(self.getuseratemultiplier)) {
                        var_5b06cc31 = self [[ self.getuseratemultiplier ]](self function_14fccbd9());
                    }
                    if (!isdefined(var_5b06cc31)) {
                        var_5b06cc31 = 1;
                    }
                    self.curprogress -= level.var_9fee970c * self.userate * decayscale * var_5b06cc31;
                    deltaprogress = self.curprogress - previousprogress;
                    self function_72307b09(deltaprogress);
                    if (isdefined(self.decayprogressmin) && self.curprogress < self.decayprogressmin) {
                        self.curprogress = self.decayprogressmin;
                    }
                    if (self.curprogress <= 0) {
                        self clear_progress();
                    }
                    self update_current_progress();
                    if (isdefined(self.onuseupdate)) {
                        self [[ self.onuseupdate ]](self function_14fccbd9(), self.curprogress / self.usetime, deltaprogress / self.usetime);
                    }
                    if (isdefined(self.var_ff74c7e9)) {
                        self [[ self.var_ff74c7e9 ]](self function_14fccbd9(), self.curprogress / self.usetime, deltaprogress / self.usetime);
                    }
                    if (self.curprogress == 0 && self function_350d0352()) {
                        self function_58901d83();
                    }
                    if (is_true(hadprogress) && isdefined(self.ondecaycomplete) && self.curprogress <= (isdefined(self.decayprogressmin) ? self.decayprogressmin : 0)) {
                        self [[ self.ondecaycomplete ]]();
                    }
                } else if (get_num_touching(self.var_a4926509) == 0) {
                    self.inuse = 0;
                    if (isdefined(self.onenduse)) {
                        if (isdefined(self.classobj)) {
                            self.classobj [[ self.onenduse ]](self, self function_14fccbd9(), self.claimplayer, 0);
                        } else {
                            self [[ self.onenduse ]](self function_14fccbd9(), self.claimplayer, 0);
                        }
                    }
                    if (isdefined(self.e_object) && is_true(self.e_object.var_c65066ad)) {
                        self.e_object thread function_49184ad0(self function_14fccbd9(), self.claimplayer, 0);
                    }
                    self function_58901d83();
                    self.claimplayer = undefined;
                } else if (function_76f3a4cd()) {
                    function_4783042a();
                } else {
                    if (isdefined(self.getuseratemultiplier)) {
                        var_5b06cc31 = self [[ self.getuseratemultiplier ]](self function_14fccbd9());
                    }
                    if (!isdefined(var_5b06cc31)) {
                        var_5b06cc31 = 1;
                    }
                    self.inuse = 1;
                    self.curprogress += level.var_9fee970c * self.userate * var_5b06cc31;
                    deltaprogress = self.curprogress - previousprogress;
                    function_72307b09(deltaprogress);
                    self update_current_progress();
                    if (isdefined(self.onuseupdate)) {
                        self [[ self.onuseupdate ]](self function_14fccbd9(), self.curprogress / self.usetime, level.var_9fee970c * self.userate / self.usetime);
                    }
                    if (isdefined(self.var_ff74c7e9)) {
                        self [[ self.var_ff74c7e9 ]](self function_14fccbd9(), self.curprogress / self.usetime, level.var_9fee970c * self.userate / self.usetime);
                    }
                }
            } else if (!self.mustmaintainclaim) {
                if (isdefined(self.onuse)) {
                    self use_object_onuse(self.claimplayer);
                }
                if (!self.mustmaintainclaim && self function_350d0352()) {
                    self function_58901d83();
                    self.claimplayer = undefined;
                }
            } else if (get_num_touching(self.var_a4926509) == 0) {
                self.inuse = 0;
                if (isdefined(self.onunoccupied)) {
                    self [[ self.onunoccupied ]]();
                }
                self function_58901d83();
                self.claimplayer = undefined;
            } else if (function_76f3a4cd()) {
                function_4783042a();
            }
        } else {
            if (!self.decayprogress && self.curprogress > 0 && self.var_79f2beba !== 1 && gettime() - self.lastclaimtime > int(self.claimgraceperiod * 1000)) {
                self clear_progress();
            }
            if (self.mustmaintainclaim && self function_abb86400()) {
                if (self function_b64fb43d() == 0) {
                    self.inuse = 0;
                    if (isdefined(self.onunoccupied)) {
                        self [[ self.onunoccupied ]]();
                    }
                } else if (isdefined(self.onuncontested) && self.cancontestclaim && self function_3e092344() && get_num_touching(self.var_5f35f19a) > 0) {
                    if (function_3a7a2963(self.var_5f35f19a) == 0) {
                        self [[ self.onuncontested ]](self.var_5f35f19a);
                    }
                }
            } else if (function_76f3a4cd()) {
                function_4783042a();
            }
        }
        waitframe(1);
        hostmigration::waittillhostmigrationdone();
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x5e215c71, Offset: 0x8eb0
// Size: 0x25c
function check_gameobject_reenable() {
    self endon(#"death");
    if (isdefined(self.e_object) && is_true(self.b_reusable)) {
        self.e_object endon(#"death");
        if (!self.e_object flag::exists("gameobject_end_use")) {
            self.e_object flag::init("gameobject_end_use");
        }
        if (is_true(self.b_auto_reenable)) {
            self disable_object();
            wait(1);
            self.e_object flag::clear("gameobject_end_use");
            self enable_object();
        } else {
            waittillframeend();
            self.e_object flag::clear("gameobject_end_use");
        }
    }
    if (isdefined(self.keyobject) && is_true(self.var_c0eeec46)) {
        foreach (mdl_key in self.keyobject) {
            mdl_key destroy_object(1, 1);
        }
    }
    if (!is_true(self.b_reusable)) {
        self.e_object flag::set(#"gameobject_destroyed");
        util::wait_network_frame();
        self thread destroy_object(1, 1);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x7086c411, Offset: 0x9118
// Size: 0x18c
function can_claim(sentient) {
    if (isdefined(self.carrier)) {
        return false;
    }
    if (self.cancontestclaim) {
        num = self get_num_touching(sentient.team);
        numother = function_3a7a2963(function_4e3386a8(sentient.team));
        if (numother != 0 && (!level.gameobjectscontestedmajoritywins || numother >= num)) {
            return false;
        }
    }
    if (self.var_a4926509 == function_4e3386a8(sentient.team)) {
        return false;
    }
    if (sentient has_key_object(self)) {
        return true;
    }
    if (!isdefined(self.keyobject)) {
        if (level.gameobjectscontestedmajoritywins) {
            num = self get_num_touching(function_4e3386a8(sentient.team));
            numother = function_3a7a2963(function_4e3386a8(sentient.team));
            if (numother >= num) {
                return false;
            }
        }
        return true;
    }
    return false;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x4ba31ff2, Offset: 0x92b0
// Size: 0x142
function private function_dfec159b(player) {
    if (!isalive(player)) {
        return false;
    }
    if (is_true(player.laststand) && !is_true(player.can_capture) && !is_true(player.can_contest)) {
        return false;
    }
    if (player.spawntime == gettime()) {
        return false;
    }
    if (is_true(player.selectinglocation) && self.triggertype === "use") {
        return false;
    }
    if (player isweaponviewonlylinked()) {
        return false;
    }
    if (!is_true(self.cancontestclaim) && isdefined(self.keyobject) && !player has_key_object(self)) {
        return false;
    }
    return true;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xddab7c78, Offset: 0x9400
// Size: 0x21c
function private function_bbb55f41(sentient) {
    if (!self can_interact_with(sentient)) {
        return false;
    }
    if (!self function_350d0352() || level.gameobjectscontestedmajoritywins && self.curprogress == 0) {
        if (self can_claim(sentient)) {
            set_claim_team(sentient.team);
            self.claimplayer = sentient;
            var_4cb15f1 = self get_relative_team(sentient.team);
            if (isdefined(self.var_faffc842) && isdefined(self.var_faffc842[var_4cb15f1])) {
                self.usetime = self.var_faffc842[var_4cb15f1];
            }
            self notify(#"engaged");
            self.inuse = 1;
            if (self.usetime && isdefined(self.onbeginuse)) {
                if (isdefined(self.classobj)) {
                    self.classobj [[ self.onbeginuse ]](self, self.claimplayer);
                } else {
                    self [[ self.onbeginuse ]](self.claimplayer);
                }
            }
        } else if (isdefined(self.oncantuse)) {
            self [[ self.oncantuse ]](sentient);
        }
    } else if (self function_4b64b7fd(sentient.team) && self can_claim(sentient) && get_num_touching(self.var_a4926509) == 0) {
        return true;
    }
    return false;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x3982941e, Offset: 0x9628
// Size: 0x180
function prox_trigger_think() {
    level endon(#"game_ended");
    self.trigger endon(#"destroyed", #"death");
    entitynumber = self.entnum;
    while (true) {
        waitresult = self.trigger waittill(#"trigger");
        sentient = waitresult.activator;
        if (game.state != #"playing") {
            continue;
        }
        if (!self can_touch(sentient) || !isdefined(sentient.touchtriggers)) {
            continue;
        }
        resume_use = self function_bbb55f41(sentient);
        if (isalive(sentient) && !isdefined(sentient.touchtriggers[entitynumber])) {
            sentient thread trigger_touch_think(self);
            if (resume_use && isdefined(self.onresumeuse)) {
                self [[ self.onresumeuse ]](sentient);
            }
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x111e031a, Offset: 0x97b0
// Size: 0xb4
function is_excluded(sentient) {
    if (!isdefined(self.exclusions)) {
        return false;
    }
    foreach (exclusion in self.exclusions) {
        if (isdefined(exclusion) && sentient is_touching_trigger(exclusion)) {
            return true;
        }
    }
    return false;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb341fd69, Offset: 0x9870
// Size: 0x48
function clear_progress() {
    self.curprogress = 0;
    self.decayprogressmin = 0;
    self update_current_progress();
    if (isdefined(self.onuseclear)) {
        self [[ self.onuseclear ]]();
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x952c9068, Offset: 0x98c0
// Size: 0x1a
function function_3510971a(enabled) {
    self.var_5083077c = enabled;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf107a991, Offset: 0x98e8
// Size: 0x134
function set_claim_team(newteam) {
    new_user = newteam;
    assert(new_user != self.var_a4926509);
    if (self.var_5083077c !== 1) {
        if (!self.decayprogress && !self function_350d0352() && gettime() - self.lastclaimtime > int(self.claimgraceperiod * 1000)) {
            self clear_progress();
        } else if (function_7db44d1b(new_user) && new_user != self.var_5f35f19a) {
            self clear_progress();
        }
    }
    self.var_5f35f19a = self.var_a4926509;
    self.lastclaimtime = gettime();
    self.var_a4926509 = new_user;
    self update_use_rate();
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x6676e9fc, Offset: 0x9a28
// Size: 0x22
function is_touching_trigger(trigger) {
    return self istouching(trigger);
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa36cfaf7, Offset: 0x9a58
// Size: 0x11e
function continue_trigger_touch_think(*team, object) {
    if (!isalive(self)) {
        return false;
    }
    if (is_true(self.laststand) && !is_true(self.can_capture) && !is_true(self.can_contest)) {
        return false;
    }
    if (!isdefined(object) || !isdefined(object.trigger)) {
        return false;
    }
    if (!object.trigger istriggerenabled()) {
        return false;
    }
    if (!object can_touch(self)) {
        return false;
    }
    if (!self is_touching_trigger(object.trigger)) {
        return false;
    }
    return true;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0xc23d62f3, Offset: 0x9b80
// Size: 0x32
function allow_vehicle_proximity_pickup(b_enable) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject.b_allow_vehicle_proximity_pickup = b_enable;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xbf227f37, Offset: 0x9bc0
// Size: 0x1c
function function_ad0c0995(callbackfunc) {
    level.var_5daabc2f = callbackfunc;
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xdc58d10, Offset: 0x9be8
// Size: 0x72
function function_56be3b4b(player, var_9e1307f8) {
    if (!self.var_5c196da4) {
        return;
    }
    user = function_4e3386a8(player.team);
    function_136c2270(user);
    return function_a1839d6b(user, player, var_9e1307f8);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0xd2c2e6f3, Offset: 0x9c68
// Size: 0x1a
function setplayergametypeuseratecallback(callbackfunc) {
    self.var_def3c25b = callbackfunc;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x578893a, Offset: 0x9c90
// Size: 0x7c
function function_14c9bdaa() {
    player_use_rate = 1;
    if (isdefined(self.playerrole) && isdefined(self.playerrole.gameobjectuserate)) {
        player_use_rate = self.playerrole.gameobjectuserate;
    }
    if (isdefined(self.var_def3c25b)) {
        player_use_rate *= self [[ self.var_def3c25b ]](self);
    }
    return player_use_rate;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb269e58a, Offset: 0x9d18
// Size: 0x524
function trigger_touch_think(object) {
    object.trigger endon(#"destroyed", #"death");
    user = function_4e3386a8(self.team);
    player_use_rate = self function_14c9bdaa();
    object function_818d69ee(user);
    object function_22c9de38(user);
    object function_f1342bb2(user, player_use_rate);
    var_5717fa0c = self getentitynumber();
    object function_fdf87288(user, self, player_use_rate, var_5717fa0c);
    contribution = object function_56be3b4b(self, var_5717fa0c);
    if (isdefined(level.var_10c0e6bb)) {
        self thread [[ level.var_10c0e6bb ]](object, 1);
    }
    if (object.usetime) {
        object update_use_rate();
    }
    if (isdefined(object.objectiveid) && object.type != "carryObject") {
        if (isplayer(self)) {
            objective_setplayerusing(object.objectiveid, self);
        } else {
            objective_setplayerusing(object.objectiveid, self.owner);
        }
    }
    self.touchtriggers[object.entnum] = object.trigger;
    if (isdefined(object.ontouchuse)) {
        object [[ object.ontouchuse ]](self);
    }
    if (is_true(self.var_17bc9194)) {
        object.curprogress = object.usetime + 1;
        object.users[object.var_a4926509].touching.num = 1;
        self.var_17bc9194 = undefined;
        while (object.curprogress >= 1) {
            waitframe(1);
        }
    } else {
        if (object.usetime == 0 && level.var_c85170d1 === 1) {
            object update_use_rate();
        }
        while (isdefined(self) && self continue_trigger_touch_think(self.team, object)) {
            waitframe(1);
        }
    }
    if (isdefined(self)) {
        self.touchtriggers[object.entnum] = undefined;
        if (isdefined(object.objectiveid) && object.type != "carryObject") {
            if (isplayer(self)) {
                objective_clearplayerusing(object.objectiveid, self);
            } else {
                objective_clearplayerusing(object.objectiveid, self.owner);
            }
        }
    } else {
        object function_f30290b(user, var_5717fa0c);
    }
    if (game.state != #"playing") {
        return;
    }
    if (isdefined(contribution)) {
        contribution.var_e22ea52b = 0;
    }
    object function_472b3c15(user, var_5717fa0c);
    object function_26237f3c(user);
    object function_27b84c22(user, player_use_rate);
    if (isdefined(level.var_10c0e6bb)) {
        self thread [[ level.var_10c0e6bb ]](object);
    }
    if (object.usetime) {
        if (object get_num_touching(user) <= 0 && object.curprogress >= object.usetime) {
            object.curprogress = object.usetime - 1;
            object update_current_progress();
        }
    }
    if (isdefined(object.onendtouchuse)) {
        object [[ object.onendtouchuse ]](self);
    }
    object update_use_rate();
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x3ddc2646, Offset: 0xa248
// Size: 0x194
function update_use_rate() {
    numclaimants = get_num_touching(self.var_a4926509);
    claimantsuserate = function_9f894584(self.var_a4926509);
    numother = 0;
    numother = function_3a7a2963(self.var_a4926509);
    otheruserate = function_a7dbb00b(self.var_a4926509);
    self.userate = 0;
    if (self.decayprogress) {
        if (numclaimants && !numother) {
            self.userate = claimantsuserate;
        } else if (!numclaimants && numother) {
            self.userate = otheruserate;
        } else if (!numclaimants && !numother) {
            self.userate = 0;
        } else if (numclaimants && numother && level.gameobjectscontestedmajoritywins) {
            self.userate = self function_21db7d02(numclaimants, numother);
        }
    } else if (numclaimants && !numother) {
        self.userate = claimantsuserate;
    }
    if (isdefined(self.onupdateuserate)) {
        self [[ self.onupdateuserate ]]();
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x326b8e04, Offset: 0xa3e8
// Size: 0x6d8
function use_hold_think(player, disableweaponcyclingduringhold) {
    player notify(#"use_hold");
    if (!isdefined(self.var_bca8171a)) {
        self.var_bca8171a = spawnstruct();
    }
    self.var_bca8171a.player = player;
    if (!is_true(self.dontlinkplayertotrigger)) {
        if (!sessionmodeismultiplayergame() && !sessionmodeiswarzonegame()) {
            gameobject_link = util::spawn_model("tag_origin", player.origin, player.angles);
            if (is_true(self.var_2e39d9ef)) {
                player playerlinktodelta(gameobject_link, "tag_origin", 1, 0, 0, 0, 0);
            } else {
                player playerlinkto(gameobject_link);
            }
        } else {
            player playerlinkto(self.trigger);
            player playerlinkedoffsetenable();
        }
    }
    player clientclaimtrigger(self.trigger);
    player.claimtrigger = self.trigger;
    useweapon = self.useweapon;
    if (isdefined(useweapon)) {
        if (is_true(useweapon.var_d2751f9d)) {
            player val::set(#"gameobject_use", "disable_gestures");
        }
        if (!player hasweapon(useweapon)) {
            player giveweapon(useweapon);
        }
        player setweaponammostock(useweapon, 0);
        player setweaponammoclip(useweapon, 0);
        player switchtoweapon(useweapon);
    } else if (self.keepweapon !== 1) {
        player val::set(#"gameobject_use", "disable_weapons");
    }
    self clear_progress();
    self.inuse = 1;
    self.userate = 0;
    if (isdefined(self.objectiveid)) {
        objective_setplayerusing(self.objectiveid, player);
    }
    if (disableweaponcyclingduringhold) {
        player disableweaponcycling();
        enableweaponcyclingafterhold = 1;
        self.var_bca8171a.enableweaponcycling = 1;
    }
    if (self.var_fd6764c2 === 1 && player getstance() === "stand") {
        player val::set("gameobjects", "allow_crouch", 0);
        player val::set("gameobjects", "allow_prone", 0);
    }
    if (is_true(player.var_17bc9194)) {
        self.curprogress = self.usetime;
        result = 1;
        player.var_17bc9194 = undefined;
    } else {
        result = use_hold_think_loop(player);
        if (!isdefined(result)) {
            result = 0;
        }
    }
    self.inuse = 0;
    if (isdefined(player)) {
        if (enableweaponcyclingafterhold === 1) {
            player enableweaponcycling();
            self.var_bca8171a.enableweaponcycling = 0;
        }
        player val::reset("gameobjects", "allow_crouch");
        player val::reset("gameobjects", "allow_prone");
        if (isdefined(self.objectiveid)) {
            objective_clearplayerusing(self.objectiveid, player);
        }
        self clear_progress();
        if (isdefined(player.attachedusemodel)) {
            player detach(player.attachedusemodel, "tag_inhand");
            player.attachedusemodel = undefined;
        }
        player notify(#"done_using");
        player.claimtrigger = undefined;
        player clientreleasetrigger(self.trigger);
        if (isdefined(useweapon) && !(self.var_dddda5d8 === 1 && result === 1)) {
            player thread take_use_weapon(useweapon);
            player killstreaks::switch_to_last_non_killstreak_weapon();
        } else if (self.keepweapon !== 1) {
            player val::reset(#"gameobject_use", "disable_weapons");
        }
        if (!is_true(self.dontlinkplayertotrigger)) {
            player unlink();
        }
        if (!isalive(player)) {
            player.killedinuse = 1;
        }
        if (level.gameended) {
            player waitthenfreezeplayercontrolsifgameendedstill();
        }
    }
    if (isdefined(gameobject_link)) {
        gameobject_link delete();
    }
    return result;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x7efe3740, Offset: 0xaac8
// Size: 0x74
function waitthenfreezeplayercontrolsifgameendedstill(wait_time = 1) {
    player = self;
    wait(wait_time);
    if (isdefined(player) && level.gameended) {
        player val::set(#"gameobjects_gameended", "freezecontrols", 1);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x7fbafcb0, Offset: 0xab48
// Size: 0xf4
function take_use_weapon(useweapon) {
    self endon(#"use_hold", #"death", #"disconnect");
    level endon(#"game_ended");
    while (self getcurrentweapon() == useweapon && !self.throwinggrenade) {
        waitframe(1);
    }
    if (is_true(useweapon.var_d2751f9d)) {
        self val::reset(#"gameobject_use", "disable_gestures");
    }
    if (self hasweapon(useweapon)) {
        self takeweapon(useweapon);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x626fa6ef, Offset: 0xac48
// Size: 0x62
function has_line_of_sight(player) {
    eye = player util::get_eye();
    trace = sighttracepassed(eye, self.origin, 0, self.var_5ecd70, player);
    return trace;
}

// Namespace gameobjects/gameobjects_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xa990e5ae, Offset: 0xacb8
// Size: 0x338
function continue_hold_think_loop(player, waitforweapon, timedout, usetime) {
    maxwaittime = 1.5;
    if (!isalive(player)) {
        return false;
    }
    if (isdefined(player.laststand) && player.laststand) {
        return false;
    }
    if (self.curprogress >= usetime) {
        return false;
    }
    if (!player usebuttonpressed()) {
        return false;
    }
    if (player isinexecutionvictim()) {
        return false;
    }
    if (player function_f75eb1ae()) {
        return false;
    }
    if (player.throwinggrenade && (player isthrowinggrenade() || player function_55acff10()) && (!isdefined(self.var_c2f21609) || self.var_c2f21609 != 14 && self.var_c2f21609 != 15)) {
        return false;
    }
    if (player isinvehicle()) {
        return false;
    }
    if (player isremotecontrolling() || player util::isusingremote()) {
        return false;
    }
    if (is_true(player.selectinglocation)) {
        return false;
    }
    if (player isweaponviewonlylinked()) {
        return false;
    }
    if (isdefined(self.var_1567ba56)) {
        if (!self [[ self.var_1567ba56 ]](player)) {
            return false;
        }
    } else if (!player is_touching_trigger(self.trigger)) {
        if (!isdefined(player.cursorhintent) || player.cursorhintent != self) {
            return false;
        }
    }
    if (is_true(self.requireslos) && !has_line_of_sight(player)) {
        return false;
    }
    if (is_true(self.var_fd6764c2) && player getstance() !== "stand") {
        return false;
    }
    if (!self.userate && !waitforweapon) {
        return false;
    }
    if (waitforweapon && timedout > maxwaittime) {
        return false;
    }
    if (is_true(self.interrupted)) {
        return false;
    }
    if (game.state != #"playing") {
        return false;
    }
    return true;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x64b8339c, Offset: 0xaff8
// Size: 0x94
function update_current_progress() {
    if (self.usetime) {
        if (isdefined(self.curprogress)) {
            progress = float(self.curprogress) / self.usetime;
        } else {
            progress = 0;
        }
        if (isdefined(self.objectiveid)) {
            objective_setprogress(self.objectiveid, math::clamp(progress, 0, 1));
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2a438b12, Offset: 0xb098
// Size: 0x382
function use_hold_think_loop(player) {
    self endon(#"disabled");
    useweapon = self.useweapon;
    waitforweapon = 1;
    timedout = 0;
    while (self continue_hold_think_loop(player, waitforweapon, timedout, self.usetime)) {
        if (!isdefined(useweapon) || useweapon == level.weaponnone || player getcurrentweapon() == useweapon) {
            playerusemultiplier = 1;
            if (isdefined(self.getuseratemultiplier)) {
                playerusemultiplier = self [[ self.getuseratemultiplier ]](player);
            }
            if (waitforweapon) {
                userate = isdefined(self.userate) && self.userate !== 0 ? self.userate : 1;
                self.curprogress += int(timedout * 1000) * userate * playerusemultiplier;
            }
            previousprogress = self.curprogress;
            self.curprogress += level.var_9fee970c * self.userate * playerusemultiplier;
            deltaprogress = self.curprogress - previousprogress;
            self function_72307b09(deltaprogress);
            self update_current_progress();
            if (isdefined(self.onuseupdate)) {
                self [[ self.onuseupdate ]](self function_14fccbd9(), self.curprogress / self.usetime, deltaprogress / self.usetime);
            }
            if (isdefined(self.var_ff74c7e9)) {
                self [[ self.var_ff74c7e9 ]](self function_14fccbd9(), self.curprogress / self.usetime, deltaprogress / self.usetime);
            }
            self.userate = 1;
            waitforweapon = 0;
        } else {
            self.userate = 0;
        }
        if (sessionmodeismultiplayergame() || sessionmodeiswarzonegame()) {
            if (self.curprogress >= self.usetime) {
                return true;
            }
            waitframe(1);
        } else {
            waitframe(1);
            if (self.curprogress >= self.usetime) {
                util::wait_network_frame();
                return true;
            }
        }
        timedout += float(function_60d95f53()) / 1000;
        hostmigration::waittillhostmigrationdone();
    }
    return false;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xf2be1c00, Offset: 0xb428
// Size: 0x204
function update_trigger() {
    if (self.triggertype != "use") {
        return;
    }
    if (!isdefined(self.trigger)) {
        return;
    }
    if (isdefined(self.absolute_visible_and_interact_team)) {
        self.trigger triggerenable(1);
        self.trigger setteamfortrigger(self.absolute_visible_and_interact_team);
        return;
    }
    if (self.interactteam == #"hash_161f03feaadc9b8f") {
        self.trigger triggerenable(0);
        return;
    }
    if (self.interactteam == #"hash_150a20fa4efc5c7a") {
        self.trigger triggerenable(1);
        if (isdefined(level.teams[self.ownerteam])) {
            self.trigger setteamfortrigger(self.ownerteam);
        } else {
            self.trigger triggerenable(0);
        }
        return;
    }
    if (self.interactteam == #"hash_33c49a99551acae7") {
        self.trigger triggerenable(1);
        self.trigger setexcludeteamfortrigger(self.ownerteam);
        return;
    }
    if (self.interactteam == #"hash_5ccfd7bbbf07c770" || !level.teambased) {
        self.trigger triggerenable(1);
        self.trigger setteamfortrigger(#"invalid");
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x2938fce1, Offset: 0xb638
// Size: 0x46c
function update_objective() {
    if (self.type === "GenericObject" || !isdefined(self.objectiveid)) {
        return;
    }
    if (isdefined(self.e_object) && is_true(self.e_object.var_c65066ad)) {
        function_ebffa9f6(self.objectiveid, #"none");
    } else {
        function_ebffa9f6(self.objectiveid, self.ownerteam);
    }
    if (isdefined(self.absolute_visible_and_interact_team) && self.visibleteam != #"hash_161f03feaadc9b8f") {
        objective_setstate(self.objectiveid, "active");
        function_311b7785(self.objectiveid);
        function_e3cc1e96(self.objectiveid, self.absolute_visible_and_interact_team);
    } else if (isdefined(self.ownerteam) && (self.ownerteam == #"all" || self.ownerteam == #"any") || self.visibleteam == #"hash_5ccfd7bbbf07c770") {
        objective_setstate(self.objectiveid, "active");
        function_33420053(self.objectiveid);
    } else if (isdefined(self.ownerteam) && isdefined(level.teams[self.ownerteam]) && self.visibleteam == #"hash_150a20fa4efc5c7a") {
        objective_setstate(self.objectiveid, "active");
        function_311b7785(self.objectiveid);
        function_e3cc1e96(self.objectiveid, self.ownerteam);
    } else if (isdefined(self.ownerteam) && isdefined(level.teams[self.ownerteam]) && self.visibleteam == #"hash_33c49a99551acae7") {
        objective_setstate(self.objectiveid, "active");
        function_33420053(self.objectiveid);
        function_6c27e90c(self.objectiveid, self.ownerteam);
    } else {
        objective_setstate(self.objectiveid, "invisible");
        function_311b7785(self.objectiveid);
    }
    if (self.type == "carryObject" || self.type == "packObject") {
        if (isalive(self.carrier)) {
            objective_onentity(self.objectiveid, self.carrier);
            objective_setinvisibletoplayer(self.objectiveid, self.carrier);
            return;
        }
        if (isdefined(self.objectiveonvisuals) && self.objectiveonvisuals) {
            objective_onentity(self.objectiveid, self.visuals[0]);
            return;
        }
        if (isdefined(self.objectiveonself) && self.objectiveonself) {
            objective_onentity(self.objectiveid, self);
            return;
        }
        objective_clearentity(self.objectiveid);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x9a013063, Offset: 0xbab0
// Size: 0x74
function function_c59e69d3(team) {
    mdl_gameobject = self function_fd4a5f2f();
    if (!isdefined(team)) {
        team = team.ownerteam;
    }
    team = util::get_team_mapping(team);
    function_29ef32ee(mdl_gameobject.objectiveid, team);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xfebfe261, Offset: 0xbb30
// Size: 0x24
function function_9f42b8fd(user) {
    function_c59e69d3(user);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x38ad73ac, Offset: 0xbb60
// Size: 0x64
function function_2b948aef(team) {
    mdl_gameobject = self function_fd4a5f2f();
    team = util::get_team_mapping(team);
    function_29ef32ee(mdl_gameobject.objectiveid, team);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb64f7ce8, Offset: 0xbbd0
// Size: 0xbc
function hide_waypoint(e_player) {
    mdl_gameobject = self function_fd4a5f2f();
    if (!isdefined(mdl_gameobject.objectiveid)) {
        return;
    }
    if (isdefined(e_player)) {
        if (!isplayer(e_player)) {
            assert(0, "<unknown string>");
            return;
        }
        objective_setinvisibletoplayer(mdl_gameobject.objectiveid, e_player);
        return;
    }
    objective_setinvisibletoall(mdl_gameobject.objectiveid);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x7d2879ac, Offset: 0xbc98
// Size: 0xbc
function show_waypoint(e_player) {
    mdl_gameobject = self function_fd4a5f2f();
    if (!isdefined(mdl_gameobject.objectiveid)) {
        return;
    }
    if (isdefined(e_player)) {
        if (!isplayer(e_player)) {
            assert(0, "<unknown string>");
            return;
        }
        objective_setvisibletoplayer(mdl_gameobject.objectiveid, e_player);
        return;
    }
    objective_setvisibletoall(mdl_gameobject.objectiveid);
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x47e6a275, Offset: 0xbd60
// Size: 0x44
function function_924032a4() {
    mdl_gameobject = self function_fd4a5f2f();
    objective_setvisibletoall(mdl_gameobject.objectiveid);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0xb803e161, Offset: 0xbdb0
// Size: 0x64
function should_ping_object(relativeteam) {
    if (relativeteam == #"hash_150a20fa4efc5c7a" && self.objidpingfriendly) {
        return true;
    } else if (relativeteam == #"hash_33c49a99551acae7" && self.objidpingenemy) {
        return true;
    }
    return false;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x28106df9, Offset: 0xbe20
// Size: 0x9a
function should_show_compass_due_to_radar(team) {
    showcompass = 0;
    if (!isdefined(self.carrier)) {
        return 0;
    }
    if (self.carrier hasperk(#"specialty_gpsjammer") == 0) {
        if (killstreaks::hasuav(team)) {
            showcompass = 1;
        }
    }
    if (killstreaks::hassatellite(team)) {
        showcompass = 1;
    }
    return showcompass;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x3d66b580, Offset: 0xbec8
// Size: 0xba
function private _set_team(team) {
    self.ownerteam = team;
    if (team != #"any") {
        self.team = team;
        foreach (visual in self.visuals) {
            visual.team = team;
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x28645523, Offset: 0xbf90
// Size: 0x8c
function set_owner_team(team) {
    mdl_gameobject = self function_fd4a5f2f();
    team = util::get_team_mapping(team);
    mdl_gameobject _set_team(team);
    mdl_gameobject update_trigger();
    mdl_gameobject update_objective();
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x18399720, Offset: 0xc028
// Size: 0x2e
function get_owner_team() {
    mdl_gameobject = self function_fd4a5f2f();
    return mdl_gameobject.ownerteam;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x8cf07abe, Offset: 0xc060
// Size: 0x12
function function_167d3a40() {
    return get_owner_team();
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xfda90683, Offset: 0xc080
// Size: 0x24
function function_2efe0342() {
    self allow_use(#"hash_161f03feaadc9b8f");
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe01b99b6, Offset: 0xc0b0
// Size: 0x3c
function function_407c83be() {
    if (isdefined(level.a_gameobjects)) {
        array::thread_all(level.a_gameobjects, &function_2efe0342);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x62dd19d3, Offset: 0xc0f8
// Size: 0x5c
function function_664b40(player) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject.trigger setvisibletoplayer(player);
    mdl_gameobject show_waypoint(player);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x21d8b7c9, Offset: 0xc160
// Size: 0x5c
function function_7a00d78c(player) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject.trigger setinvisibletoplayer(player);
    mdl_gameobject hide_waypoint(player);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x5752c5d3, Offset: 0xc1c8
// Size: 0x44
function function_8046ddd0(player) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject.trigger setinvisibletoplayer(player);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x7b6d911a, Offset: 0xc218
// Size: 0x3c
function function_6cdadc59(point) {
    if (isdefined(level.a_gameobjects)) {
        return arraygetclosest(point, level.a_gameobjects);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x5c3c8ede, Offset: 0xc260
// Size: 0x32
function set_decay_time(time) {
    self.decaytime = int(time * 1000);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc2bb1880, Offset: 0xc2a0
// Size: 0x32
function set_use_time(time) {
    self.usetime = int(time * 1000);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x36ca67f3, Offset: 0xc2e0
// Size: 0x32
function function_e887a9d0(time) {
    self.var_9288c4c0 = int(time * 1000);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x4d450fdc, Offset: 0xc320
// Size: 0x1a
function function_3dc7107c(var_aad2b0a1) {
    self.maxusers = var_aad2b0a1;
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x0
// Checksum 0xbc4c459, Offset: 0xc348
// Size: 0x58
function function_3c3a122f(var_a6f93bb0, time) {
    if (!isdefined(self.var_faffc842)) {
        self.var_faffc842 = [];
    }
    self.var_faffc842[var_a6f93bb0] = int(time * 1000);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xa2411b58, Offset: 0xc3a8
// Size: 0x32
function function_86d3b442(time) {
    self.var_d0b697a4 = int(time * 1000);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0xa78fbce, Offset: 0xc3e8
// Size: 0x1a
function set_use_text(text) {
    self.usetext = text;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x8fe6d7ae, Offset: 0xc410
// Size: 0x24
function set_use_hint_text(text) {
    self.trigger sethintstring(text);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x1a8eb935, Offset: 0xc440
// Size: 0x3c
function allow_carry(relativeteam) {
    /#
        function_9ddbc967(relativeteam);
    #/
    allow_use(relativeteam);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x1ffda56b, Offset: 0xc488
// Size: 0x64
function allow_use(relativeteam) {
    /#
        function_9ddbc967(relativeteam);
    #/
    mdl_gameobject = self function_fd4a5f2f();
    mdl_gameobject.interactteam = relativeteam;
    mdl_gameobject update_trigger();
}

/#

    // Namespace gameobjects/gameobjects_shared
    // Params 1, eflags: 0x0
    // Checksum 0x765bb858, Offset: 0xc4f8
    // Size: 0x4c
    function function_9ddbc967(group) {
        if (is_relative_team(group)) {
            return;
        }
        assertmsg("<unknown string>" + group);
    }

#/

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xcacc077f, Offset: 0xc550
// Size: 0x74
function set_visible(relativeteam) {
    /#
        function_9ddbc967(relativeteam);
    #/
    mdl_gameobject = self function_fd4a5f2f();
    if (!isdefined(mdl_gameobject)) {
        return;
    }
    mdl_gameobject.visibleteam = relativeteam;
    mdl_gameobject update_objective();
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x0
// Checksum 0xbc02005e, Offset: 0xc5d0
// Size: 0x1c4
function set_model_visibility(visibility, var_41e71541) {
    if (visibility) {
        for (index = 0; index < self.visuals.size; index++) {
            self.visuals[index] show();
            if (self.visuals[index].classname == "script_brushmodel" && !is_true(var_41e71541) || self.visuals[index].classname == "script_model") {
                self.visuals[index] thread make_solid();
            }
        }
        return;
    }
    for (index = 0; index < self.visuals.size; index++) {
        self.visuals[index] ghost();
        if (self.visuals[index].classname == "script_brushmodel" && !is_true(var_41e71541) || self.visuals[index].classname == "script_model") {
            self.visuals[index] notify(#"changing_solidness");
            self.visuals[index] notsolid();
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x75ce2ca9, Offset: 0xc7a0
// Size: 0xd2
function make_solid() {
    self endon(#"death");
    self notify(#"changing_solidness");
    self endon(#"changing_solidness");
    while (true) {
        for (i = 0; i < level.players.size; i++) {
            if (level.players[i] is_touching_trigger(self)) {
                break;
            }
        }
        if (i == level.players.size) {
            self solid();
            break;
        }
        waitframe(1);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x8b4b6053, Offset: 0xc880
// Size: 0x24
function set_2d_icon(relativeteam, shader) {
    self.compassicons[relativeteam] = shader;
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xf36f70b2, Offset: 0xc8b0
// Size: 0x54
function set_3d_icon(relativeteam, shader) {
    if (!isdefined(shader)) {
        self.worldicons_disabled[relativeteam] = 1;
    } else {
        self.worldicons_disabled[relativeteam] = 0;
    }
    self.worldicons[relativeteam] = shader;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0xb3d4505f, Offset: 0xc910
// Size: 0x34
function set_objective_entity(entity) {
    if (isdefined(self.objectiveid)) {
        objective_onentity(self.objectiveid, entity);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0xd9e751df, Offset: 0xc950
// Size: 0x34
function function_ab00d417(objectivename) {
    if (isdefined(self.objectiveid)) {
        function_18fbab10(self.objectiveid, objectivename);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x74c5b5c1, Offset: 0xc990
// Size: 0x7e
function get_objective_ids(*team) {
    a_objective_ids = [];
    if (isdefined(self.objectiveid)) {
        if (!isdefined(a_objective_ids)) {
            a_objective_ids = [];
        } else if (!isarray(a_objective_ids)) {
            a_objective_ids = array(a_objective_ids);
        }
        a_objective_ids[a_objective_ids.size] = self.objectiveid;
    }
    return a_objective_ids;
}

// Namespace gameobjects/gameobjects_shared
// Params 5, eflags: 0x0
// Checksum 0xdd095fc0, Offset: 0xca18
// Size: 0x222
function gameobject_is_player_looking_at(origin, dot, do_trace, ignore_ent, ignore_trace_distance) {
    assert(isplayer(self), "<unknown string>");
    if (!isdefined(dot)) {
        dot = 0.7;
    }
    if (!isdefined(do_trace)) {
        do_trace = 1;
    }
    eye = self util::get_eye();
    delta_vec = anglestoforward(vectortoangles(origin - eye));
    view_vec = anglestoforward(self getplayerangles());
    new_dot = vectordot(delta_vec, view_vec);
    if (new_dot >= dot) {
        if (do_trace) {
            trace = bullettrace(eye, origin, 0, ignore_ent);
            if (trace[#"position"] == origin) {
                return true;
            } else if (isdefined(ignore_trace_distance)) {
                n_mag = distance(origin, eye);
                n_dist = distance(trace[#"position"], eye);
                n_delta = abs(n_dist - n_mag);
                if (n_delta <= ignore_trace_distance) {
                    return true;
                }
            }
        } else {
            return true;
        }
    }
    return false;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x95f3713e, Offset: 0xcc48
// Size: 0x1cc
function hide_icons(team) {
    if (self.visibleteam == #"hash_5ccfd7bbbf07c770" || self.visibleteam == #"hash_150a20fa4efc5c7a") {
        hide_friendly = 1;
    } else {
        hide_friendly = 0;
    }
    if (self.visibleteam == #"hash_5ccfd7bbbf07c770" || self.visibleteam == #"hash_33c49a99551acae7") {
        hide_enemy = 1;
    } else {
        hide_enemy = 0;
    }
    self.hidden_compassicon = [];
    self.hidden_worldicon = [];
    if (hide_friendly == 1) {
        self.hidden_compassicon[#"hash_150a20fa4efc5c7a"] = self.compassicons[#"hash_150a20fa4efc5c7a"];
        self.hidden_worldicon[#"hash_150a20fa4efc5c7a"] = self.worldicons[#"hash_150a20fa4efc5c7a"];
    }
    if (hide_enemy == 1) {
        self.hidden_compassicon[#"hash_33c49a99551acae7"] = self.compassicons[#"enemyy"];
        self.hidden_worldicon[#"hash_33c49a99551acae7"] = self.worldicons[#"hash_33c49a99551acae7"];
    }
    self set_2d_icon(team, undefined);
    self set_3d_icon(team, undefined);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0xab5c62e8, Offset: 0xce20
// Size: 0x7c
function show_icons(team) {
    if (isdefined(self.hidden_compassicon[team])) {
        self set_2d_icon(team, self.hidden_compassicon[team]);
    }
    if (isdefined(self.hidden_worldicon[team])) {
        self set_3d_icon(team, self.hidden_worldicon[team]);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x0
// Checksum 0xb74fad27, Offset: 0xcea8
// Size: 0x24
function set_3d_use_icon(relativeteam, shader) {
    self.worlduseicons[relativeteam] = shader;
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x0
// Checksum 0x995876a9, Offset: 0xced8
// Size: 0x24
function set_3d_is_waypoint(relativeteam, waypoint) {
    self.worldiswaypoint[relativeteam] = waypoint;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd943b070, Offset: 0xcf08
// Size: 0x4a
function set_carry_icon(shader) {
    assert(self.type == "<unknown string>", "<unknown string>");
    self.carryicon = shader;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xa4aac277, Offset: 0xcf60
// Size: 0x1a
function set_visible_carrier_model(visiblemodel) {
    self.visiblecarriermodel = visiblemodel;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb4cb8aed, Offset: 0xcf88
// Size: 0xa
function get_visible_carrier_model() {
    return self.visiblecarriermodel;
}

// Namespace gameobjects/gameobjects_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x123ce208, Offset: 0xcfa0
// Size: 0x444
function destroy_object(deletetrigger, forcehide, b_connect_paths = 0, b_success = 0) {
    mdl_gameobject = function_fd4a5f2f();
    if (isdefined(mdl_gameobject.e_object)) {
        mdl_gameobject.e_object flag::set(#"gameobject_destroyed");
    }
    mdl_gameobject endon(#"death");
    if (!isdefined(forcehide)) {
        forcehide = 1;
    }
    mdl_gameobject disable_object(forcehide, undefined, b_success, 1);
    if (isdefined(self.c_door) && self.c_door.m_str_type === "security") {
        if (isdefined(self.c_door.m_e_door)) {
            self.c_door.m_e_door notify(#"door_cleared");
        }
    }
    waittillframeend();
    foreach (visual in mdl_gameobject.visuals) {
        if (b_connect_paths) {
            visual connectpaths();
        }
        if (isdefined(visual)) {
            visual ghost();
            visual delete();
        }
    }
    if (isdefined(mdl_gameobject.trigger)) {
        mdl_gameobject.trigger notify(#"destroyed");
        if (is_true(deletetrigger)) {
            mdl_gameobject.trigger delete();
        } else {
            mdl_gameobject.trigger triggerenable(1);
        }
    }
    if (isinarray(level.a_gameobjects, mdl_gameobject)) {
        arrayremovevalue(level.a_gameobjects, mdl_gameobject);
    }
    if (isdefined(mdl_gameobject.var_bca8171a) && isdefined(mdl_gameobject.var_bca8171a.player)) {
        if (isdefined(mdl_gameobject.var_bca8171a.enableweaponcycling) && mdl_gameobject.var_bca8171a.enableweaponcycling) {
            mdl_gameobject.var_bca8171a.player enableweaponcycling();
        }
    }
    if (isdefined(mdl_gameobject.var_bca8171a) && isdefined(mdl_gameobject.var_bca8171a.player)) {
        mdl_gameobject.var_bca8171a.player val::reset(#"carry_object", "disable_weapons");
    }
    if (isdefined(mdl_gameobject.droptrigger)) {
        mdl_gameobject.droptrigger delete();
    }
    mdl_gameobject notify(#"destroyed_complete");
    e_container = mdl_gameobject.e_object;
    if (!isdefined(e_container) || !is_true(e_container.var_c65066ad)) {
        mdl_gameobject release_all_objective_ids();
    }
    mdl_gameobject delete();
}

// Namespace gameobjects/gameobjects_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xf051cf8c, Offset: 0xd3f0
// Size: 0x2d4
function disable_object(var_fa771a51, var_ffd61eb5 = 1, b_success = 0, b_destroyed = 0) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject.b_enabled = undefined;
    mdl_gameobject notify(#"disabled");
    if (isdefined(mdl_gameobject.type) && (mdl_gameobject.type == "carryObject" || mdl_gameobject.type == "packObject") || is_true(var_fa771a51)) {
        if (isdefined(mdl_gameobject.carrier)) {
            mdl_gameobject.carrier take_object(mdl_gameobject);
        }
        for (i = 0; i < mdl_gameobject.visuals.size; i++) {
            if (isdefined(mdl_gameobject.visuals[i])) {
                mdl_gameobject.visuals[i] ghost();
                mdl_gameobject.visuals[i] notsolid();
            }
        }
    }
    if (isdefined(mdl_gameobject.trigger)) {
        mdl_gameobject.trigger triggerenable(0);
    }
    if (var_ffd61eb5) {
        if (!isdefined(mdl_gameobject.str_restore_visible_team_after_disable)) {
            mdl_gameobject.str_restore_visible_team_after_disable = mdl_gameobject.visibleteam;
        }
        mdl_gameobject set_visible(#"hash_161f03feaadc9b8f");
        if (isdefined(mdl_gameobject.objectiveid)) {
            objective_clearentity(mdl_gameobject.objectiveid);
            if (isdefined(mdl_gameobject.var_25010336)) {
                release_obj_id(mdl_gameobject.objectiveid);
                objective_delete(mdl_gameobject.objectiveid);
                mdl_gameobject.objectiveid = undefined;
            }
        }
    }
    e_container = mdl_gameobject.e_object;
    if (isdefined(e_container) && is_true(e_container.var_c65066ad)) {
        e_container function_8dbe8332(b_success, b_destroyed);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x2657b4ac, Offset: 0xd6d0
// Size: 0x304
function enable_object(var_13c260df, b_show_objective = 1) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject endon(#"death");
    e_container = mdl_gameobject.e_object;
    if (isdefined(e_container) && is_true(e_container.var_c65066ad)) {
        e_container function_35a012bf();
    }
    mdl_gameobject.b_enabled = 1;
    if (isdefined(mdl_gameobject.type) && (mdl_gameobject.type == "carryObject" || mdl_gameobject.type == "packObject") || is_true(var_13c260df)) {
        for (i = 0; i < mdl_gameobject.visuals.size; i++) {
            mdl_gameobject.visuals[i] show();
            mdl_gameobject.visuals[i] solid();
        }
    }
    if (isdefined(mdl_gameobject.trigger)) {
        mdl_gameobject.trigger triggerenable(1);
    }
    if (b_show_objective) {
        if (!isdefined(mdl_gameobject.objectiveid) && isdefined(mdl_gameobject.var_25010336)) {
            mdl_gameobject [[ mdl_gameobject.var_25010336 ]]();
        }
        if (isdefined(mdl_gameobject.str_restore_visible_team_after_disable)) {
            mdl_gameobject set_visible(mdl_gameobject.str_restore_visible_team_after_disable);
            mdl_gameobject.str_restore_visible_team_after_disable = undefined;
        } else if (isdefined(mdl_gameobject.visibleteam)) {
            mdl_gameobject set_visible(mdl_gameobject.visibleteam);
        } else {
            mdl_gameobject set_visible(#"hash_5ccfd7bbbf07c770");
        }
        if (isdefined(mdl_gameobject.objectiveid)) {
            objective_onentity(mdl_gameobject.objectiveid, mdl_gameobject);
            if (mdl_gameobject.type == "carryObject" || mdl_gameobject.type == "packObject") {
                mdl_gameobject notify(#"hash_431541b507a8c588");
                objective_setposition(mdl_gameobject.objectiveid, (0, 0, 0));
            }
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x34270af5, Offset: 0xd9e0
// Size: 0xba
function get_relative_team(team) {
    team = util::get_team_mapping(team);
    if (self.ownerteam == #"any") {
        return #"hash_150a20fa4efc5c7a";
    }
    if (team == self.ownerteam) {
        return #"hash_150a20fa4efc5c7a";
    } else if (team != self.ownerteam && team != #"neutral") {
        return #"hash_33c49a99551acae7";
    }
    return #"hash_161f03feaadc9b8f";
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xfe5b40d7, Offset: 0xdaa8
// Size: 0x2c2
function can_touch(sentient) {
    var_47a62b7b = isvehicle(sentient) || isplayer(sentient) && sentient isinvehicle() && !sentient function_a867284b();
    if (var_47a62b7b && !is_true(level.b_allow_vehicle_proximity_pickup) && !is_true(self.b_allow_vehicle_proximity_pickup)) {
        if (!isdefined(level.var_5daabc2f) || [[ level.var_5daabc2f ]](sentient) !== 1) {
            return false;
        }
    }
    if (isplayer(sentient)) {
        if (!function_dfec159b(sentient)) {
            return false;
        }
        if (is_true(self.var_d647eb08) && sentient isreloading()) {
            return false;
        }
    } else if (!isdefined(sentient.var_69d05189) || sentient.var_69d05189 == 0) {
        return false;
    }
    if (self is_excluded(sentient)) {
        return false;
    }
    if (isdefined(self.canuseobject) && ![[ self.canuseobject ]](sentient)) {
        return false;
    }
    if (self.triggertype === "use" && isdefined(sentient.var_121392a1) && sentient.var_121392a1.size > 0) {
        foreach (var_cd6ef3e2 in sentient.var_121392a1) {
            if (isdefined(var_cd6ef3e2.var_4f6b79a4) && (isdefined(var_cd6ef3e2.var_4f6b79a4.var_cb34970a) ? var_cd6ef3e2.var_4f6b79a4.var_cb34970a : 0)) {
                return false;
            }
        }
    }
    return true;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x7999f800, Offset: 0xdd78
// Size: 0x27a
function can_interact_with(sentient) {
    if (isdefined(self.ignore_use_time)) {
        ignore_time = self.ignore_use_time[sentient getentitynumber()];
        if (isdefined(ignore_time)) {
            if (level.time < ignore_time) {
                return 0;
            } else {
                self.ignore_use_time[sentient getentitynumber()] = undefined;
            }
        }
    }
    team = sentient.team;
    if (isdefined(self.absolute_visible_and_interact_team)) {
        if (team == self.absolute_visible_and_interact_team) {
            return 1;
        }
    }
    if (isdefined(self.requiredweapon) && isplayer(sentient)) {
        player = sentient;
        if (!player hasweapon(self.requiredweapon)) {
            return 0;
        }
        ammocount = player getammocount(self.requiredweapon);
        if (ammocount == 0) {
            return 0;
        }
    }
    switch (self.interactteam) {
    case #"hash_161f03feaadc9b8f":
        return 0;
    case #"hash_5ccfd7bbbf07c770":
        return 1;
    case #"hash_150a20fa4efc5c7a":
        if (team == self.ownerteam) {
            return 1;
        } else {
            return 0;
        }
    case #"hash_33c49a99551acae7":
        if (team != self.ownerteam) {
            return 1;
        } else if (isdefined(self.decayprogress) && self.decayprogress && self.curprogress > 0 && (!isdefined(self.decayprogressmin) || self.curprogress > self.decayprogressmin)) {
            return 1;
        } else {
            return 0;
        }
    default:
        assert(0, "<unknown string>");
        return 0;
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x263e0939, Offset: 0xe000
// Size: 0x82
function is_relative_team(relativeteam) {
    switch (relativeteam) {
    case #"hash_150a20fa4efc5c7a":
    case #"hash_161f03feaadc9b8f":
    case #"hash_33c49a99551acae7":
    case #"hash_5ccfd7bbbf07c770":
        return 1;
    default:
        return 0;
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0xe1d43c41, Offset: 0xe090
// Size: 0x7a
function set_absolute_visible_and_interact_team(team) {
    team = util::get_team_mapping(team);
    assert(team == #"allies" || team == #"axis", "<unknown string>");
    self.absolute_visible_and_interact_team = team;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x917eb1ce, Offset: 0xe118
// Size: 0x4e
function function_b03b5362(b_enable = 1) {
    mdl_gameobject = self function_fd4a5f2f();
    mdl_gameobject.disallowvehicleusage = !b_enable;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x53962015, Offset: 0xe170
// Size: 0x6a
function function_8f776dd0(b_enable = 1) {
    mdl_gameobject = self function_fd4a5f2f();
    mdl_gameobject.trigger function_67f9bbb6();
    mdl_gameobject.var_fd6764c2 = b_enable;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x7208d0ea, Offset: 0xe1e8
// Size: 0x98
function get_next_obj_id() {
    if (level.numgametypereservedobjectives < 64) {
        nextid = level.numgametypereservedobjectives;
        level.numgametypereservedobjectives++;
    } else if (level.releasedobjectives.size > 0) {
        nextid = array::pop_front(level.releasedobjectives, 0);
    }
    if (!isdefined(nextid)) {
        println("<unknown string>");
        nextid = 63;
    }
    return nextid;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xac7e6776, Offset: 0xe288
// Size: 0xf4
function release_obj_id(objid) {
    assert(objid < level.numgametypereservedobjectives);
    for (i = 0; i < level.releasedobjectives.size; i++) {
        if (objid == level.releasedobjectives[i] && objid == 63) {
            return;
        }
        assert(objid != level.releasedobjectives[i], "<unknown string>" + objid);
    }
    level.releasedobjectives[level.releasedobjectives.size] = objid;
    objective_setstate(objid, "empty");
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x2c5f4086, Offset: 0xe388
// Size: 0xb4
function release_all_objective_ids() {
    if (isdefined(self.objid)) {
        foreach (v in self.objid) {
            release_obj_id(v);
        }
    }
    if (isdefined(self.objectiveid)) {
        release_obj_id(self.objectiveid);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x0
// Checksum 0x2d8fad74, Offset: 0xe448
// Size: 0x5e
function get_label() {
    label = self.trigger.script_label;
    if (!isdefined(label)) {
        label = "";
        return label;
    }
    if (label[0] != "_") {
        return ("_" + label);
    }
    return label;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x7452b341, Offset: 0xe4b0
// Size: 0x1a
function must_maintain_claim(enabled) {
    self.mustmaintainclaim = enabled;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x4013f05d, Offset: 0xe4d8
// Size: 0x1a
function can_contest_claim(enabled) {
    self.cancontestclaim = enabled;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x3311ea14, Offset: 0xe500
// Size: 0x34
function set_flags(flags) {
    if (isdefined(self.objectiveid)) {
        objective_setgamemodeflags(self.objectiveid, flags);
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0xef9dddc6, Offset: 0xe540
// Size: 0x36
function get_flags(*flags) {
    if (isdefined(self.objectiveid)) {
        return objective_getgamemodeflags(self.objectiveid);
    }
    return 0;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x7cc9e089, Offset: 0xe580
// Size: 0x1a
function set_identifier(identifier) {
    self.identifier = identifier;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x0
// Checksum 0xef02ec37, Offset: 0xe5a8
// Size: 0xa
function get_identifier() {
    return self.identifier;
}

// Namespace gameobjects/gameobjects_shared
// Params 8, eflags: 0x2 linked
// Checksum 0xfe89ff41, Offset: 0xe5c0
// Size: 0x526
function create_pack_object(ownerteam, trigger, visuals, offset, objectivename, allowinitialholddelay = 0, allowweaponcyclingduringhold = 0, var_6f828297 = undefined) {
    assert(isdefined(objectivename), "<unknown string>");
    if (!isdefined(level.max_packobjects)) {
        level.max_packobjects = 4;
    }
    assert(level.max_packobjects < 5, "<unknown string>");
    if (!isdefined(offset)) {
        offset = (0, 0, 0);
    }
    packobject = spawn("script_model", trigger.origin);
    packobject.type = "packObject";
    packobject.curorigin = trigger.origin;
    packobject.entnum = trigger getentitynumber();
    if (issubstr(trigger.classname, "use")) {
        packobject.triggertype = "use";
    } else {
        packobject.triggertype = "proximity";
    }
    trigger.baseorigin = trigger.origin;
    packobject.trigger = trigger;
    trigger enablelinkto();
    packobject linkto(trigger);
    packobject.useweapon = undefined;
    for (index = 0; index < visuals.size; index++) {
        visuals[index].baseorigin = visuals[index].origin;
        visuals[index].baseangles = visuals[index].angles;
    }
    packobject.visuals = visuals;
    packobject _set_team(ownerteam);
    packobject.compassicons = [];
    packobject.objidpingfriendly = 0;
    packobject.objidpingenemy = 0;
    if (packobject function_4ea98a09()) {
        assert(isdefined(objectivename), "pack");
        packobject.objid = [];
        level.objidstart += 2;
        packobject.objectiveid = get_next_obj_id();
        objective_add(packobject.objectiveid, "invisible", packobject.curorigin, objectivename);
        if (isdefined(var_6f828297)) {
            function_18fbab10(packobject.objectiveid, var_6f828297);
        }
    }
    packobject.carrier = undefined;
    packobject.isresetting = 0;
    packobject.interactteam = #"hash_161f03feaadc9b8f";
    packobject.allowweapons = 1;
    packobject.visiblecarriermodel = undefined;
    packobject.dropoffset = 0;
    packobject.worldicons = [];
    packobject.carriervisible = 0;
    packobject.visibleteam = #"hash_161f03feaadc9b8f";
    packobject.worldiswaypoint = [];
    packobject.worldicons_disabled = [];
    packobject.packicon = undefined;
    packobject.setdropped = undefined;
    packobject.ondrop = undefined;
    packobject.onpickup = undefined;
    packobject.onreset = undefined;
    packobject.usetime = 10000;
    packobject.var_9288c4c0 = packobject.usetime;
    packobject.decayprogress = 0;
    packobject.var_98bb0715 = 1;
    packobject.var_5c196da4 = 0;
    if (packobject.triggertype == "use") {
        packobject.trigger setcursorhint("HINT_INTERACTIVE_PROMPT");
        packobject.userate = 1;
        packobject thread use_object_use_think(!allowinitialholddelay, !allowweaponcyclingduringhold);
    } else {
        packobject function_e553e480();
        packobject thread use_object_prox_think();
    }
    packobject thread update_carry_object_objective_origin();
    packobject.b_reusable = 1;
    return packobject;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x504b96f, Offset: 0xeaf0
// Size: 0x3c
function give_pack_object(object) {
    self.packobject[self.packobject.size] = object;
    self thread track_carrier(object);
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x25a203e8, Offset: 0xeb38
// Size: 0x7e
function get_packicon_offset(index = 0) {
    if (self issplitscreen()) {
        size = 25;
        base = -130;
    } else {
        size = 35;
        base = -40;
    }
    int = base - size * index;
    return int;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb6e81f14, Offset: 0xebc0
// Size: 0x72
function adjust_remaining_packicons() {
    if (!isdefined(self.packicon)) {
        return;
    }
    if (self.packicon.size > 0) {
        for (i = 0; i < self.packicon.size; i++) {
            self.packicon[i].x = get_packicon_offset(i);
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xfc45110a, Offset: 0xec40
// Size: 0x4a
function set_pack_icon(shader) {
    assert(self.type == "<unknown string>", "<unknown string>");
    self.packicon = shader;
}

// Namespace gameobjects/gameobjects_shared
// Params 8, eflags: 0x2 linked
// Checksum 0x6a4171dc, Offset: 0xec98
// Size: 0x108
function init_game_objects(str_gameobject_bundle, str_team_override, b_allow_companion_command, t_override, a_keyline_objects, str_objective_override, str_tag_override, str_identifier_override) {
    c_interact_obj = new cinteractobj();
    c_interact_obj.e_object = self;
    str_bundle = undefined;
    if (isdefined(str_gameobject_bundle)) {
        str_bundle = str_gameobject_bundle;
        self.scriptbundlename = str_bundle;
    } else if (self.classname === "scriptbundle_gameobject") {
        str_bundle = self.scriptbundlename;
    }
    assert(isdefined(str_bundle), "<unknown string>" + self.origin);
    [[ c_interact_obj ]]->init_game_object(str_bundle, str_team_override, str_tag_override, str_identifier_override, a_keyline_objects, t_override, b_allow_companion_command, str_objective_override);
    return c_interact_obj;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x40af73f9, Offset: 0x10490
// Size: 0x32
function assign_class_object(o_class) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject.classobj = o_class;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x59cd3769, Offset: 0x104d0
// Size: 0x32
function set_onbeginuse_event(func) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject.onbeginuse = func;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xbeb832f9, Offset: 0x10510
// Size: 0x32
function set_onuse_event(func) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject.onuse = func;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x6d7ddb5f, Offset: 0x10550
// Size: 0x32
function set_onenduse_event(func) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject.onenduse = func;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0xa7ec0593, Offset: 0x10590
// Size: 0x32
function set_onpickup_event(func) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject.onpickup = func;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x43965527, Offset: 0x105d0
// Size: 0x32
function function_13798243(func) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject.ondrop = func;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x25e642f6, Offset: 0x10610
// Size: 0x32
function function_997b21ed(func) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject.oncantuse = func;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x7fd4a977, Offset: 0x10650
// Size: 0x32
function function_6362d6ea(func) {
    mdl_gameobject = function_fd4a5f2f();
    mdl_gameobject.onuseupdate = func;
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x95c6c6e, Offset: 0x10690
// Size: 0x20
function private function_fd4a5f2f() {
    if (isdefined(self.mdl_gameobject)) {
        return self.mdl_gameobject;
    }
    return self;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x3e1200f1, Offset: 0x106b8
// Size: 0x46c
function play_interact_anim(e_player) {
    e_player endon(#"disconnect");
    if (isdefined(self.str_player_scene_anim)) {
        str_player_scene = self.str_player_scene_anim;
        if (is_true(self.b_use_gameobject_for_alignment)) {
            e_align = self.e_object;
        } else if (is_true(self.var_75ea46f6)) {
            e_align = e_player;
        } else {
            e_align = level;
        }
        a_ents = array(e_player);
        if (self.type == "carryObject") {
            if (!isdefined(a_ents)) {
                a_ents = [];
            } else if (!isarray(a_ents)) {
                a_ents = array(a_ents);
            }
            a_ents[a_ents.size] = self.visuals[0];
        }
        if (is_true(self.var_a7ef92ac)) {
            s_waitresult = self waittill(#"gameobject_end_use_player", #"gameobject_abort", #"death");
            if (s_waitresult._notify === "gameobject_end_use_player") {
                e_align thread scene::play(str_player_scene, a_ents);
            }
        } else {
            e_align thread scene::play(str_player_scene, a_ents);
            waitframe(1);
            if (isdefined(self) && isdefined(e_player.str_current_anim) && is_true(self.b_scene_use_time_override)) {
                var_484df237 = getanimlength(e_player.str_current_anim);
                self set_use_time(var_484df237);
            }
            while (e_player usebuttonpressed() && isdefined(self) && isdefined(self.e_object) && !self.e_object flag::get("gameobject_end_use")) {
                waitframe(1);
            }
            e_align scene::stop(str_player_scene);
            if (isdefined(self) && self.type == "carryObject" && !isdefined(self.carrier)) {
                self thread set_dropped(e_player);
            }
        }
        return;
    }
    if (isdefined(self.str_anim)) {
        mdl_anchor = util::spawn_model("tag_origin", e_player.origin, e_player.angles);
        self thread anchor_delete_watcher(mdl_anchor);
        str_anim = self.str_anim;
        if (isdefined(str_anim)) {
            e_player thread animation::play(str_anim, mdl_anchor, undefined, 1, 0.2, 0);
        }
        if (isdefined(self.str_obj_anim)) {
            self.e_object thread animation::play(self.str_obj_anim, self.e_object, undefined, 1, 0.2, 0);
        }
        while (e_player usebuttonpressed() && isdefined(self) && !self.e_object flag::get("gameobject_end_use")) {
            waitframe(1);
        }
        if (e_player.str_current_anim === str_anim) {
            e_player thread animation::stop();
        }
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xac924abb, Offset: 0x10b30
// Size: 0x6c
function anchor_delete_watcher(mdl_anchor) {
    self.e_object waittill(#"gameobject_end_use", #"gameobject_abort");
    util::wait_network_frame();
    if (isdefined(mdl_anchor)) {
        mdl_anchor delete();
    }
}

// Namespace gameobjects/gameobjects_shared
// Params 0, eflags: 0x0
// Checksum 0xc8546d15, Offset: 0x10ba8
// Size: 0x27a
function function_c6fa00c2() {
    if (!is_true(self.var_5c196da4)) {
        return;
    }
    contributors = [];
    var_1dbb2b2b = [];
    user = function_167d3a40();
    if (isdefined(self.users[user]) && isdefined(self.users[user].contributors) && self.users[user].contributors.size > 0) {
        var_1dbb2b2b = self.users[user].contributors;
    } else {
        user = self.var_a4926509;
        if (isdefined(self.users[user]) && isdefined(self.users[user].contributors) && self.users[user].contributors.size > 0) {
            var_1dbb2b2b = self.users[user].contributors;
        }
    }
    foreach (contribution in var_1dbb2b2b) {
        contributor = contribution.player;
        percentage = 100 * contribution.contribution / self.usetime;
        contributor.var_759a143b = int(0.5 + percentage);
        if (contributor.var_759a143b > getgametypesetting(#"contributionmin")) {
            if (!isdefined(contributors)) {
                contributors = [];
            } else if (!isarray(contributors)) {
                contributors = array(contributors);
            }
            contributors[contributors.size] = contributor;
        }
    }
    return contributors;
}

// Namespace gameobjects/gameobjects_shared
// Params 1, eflags: 0x0
// Checksum 0x547b4e98, Offset: 0x10e30
// Size: 0x44
function function_e9492e8f(enabled) {
    if (self function_4ea98a09()) {
        function_9a8950ee(self.objectiveid, enabled);
    }
}


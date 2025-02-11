#using scripts\core_common\callbacks_shared;
#using scripts\core_common\flag_shared;
#using scripts\cp_common\bb;

#namespace namespace_517e3310;

// Namespace namespace_517e3310/namespace_517e3310
// Params 0, eflags: 0x0
// Checksum 0x68371dc8, Offset: 0x2d8
// Size: 0x24
function postload() {
    callback::on_spawned(&on_player_spawned);
}

// Namespace namespace_517e3310/namespace_517e3310
// Params 0, eflags: 0x0
// Checksum 0x51b720a0, Offset: 0x308
// Size: 0x74
function on_player_spawned() {
    self thread function_dbeb79a6();
    level thread function_5043d668();
    self callback::on_player_killed(&on_player_killed);
    callback::on_ai_killed(&on_ai_killed);
}

// Namespace namespace_517e3310/namespace_517e3310
// Params 0, eflags: 0x0
// Checksum 0x7227387c, Offset: 0x388
// Size: 0x11e
function function_dbeb79a6() {
    self endon(#"death");
    while (true) {
        s_notify = self waittill(#"hash_1cafc79970a29eb1", #"bunker_stealth_successful", #"hash_5612e889a163033a");
        switch (s_notify._notify) {
        case #"hash_1cafc79970a29eb1":
            bb::function_cd497743(s_notify.var_14af458a + "_used", self);
            break;
        case #"bunker_stealth_successful":
            bb::function_cd497743("bunker_stealth_successful", self);
            break;
        case #"hash_5612e889a163033a":
            bb::function_cd497743("survey_equipment_zoom_used", self);
            break;
        }
    }
}

// Namespace namespace_517e3310/namespace_517e3310
// Params 0, eflags: 0x0
// Checksum 0xf538d34d, Offset: 0x4b0
// Size: 0x3ae
function function_5043d668() {
    a_e_players = getplayers();
    e_player = a_e_players[0];
    e_player endon(#"death");
    while (true) {
        s_notify = level waittill(#"hash_7e64e93d8fd00029", #"flg_bunker_optional_key_found", #"flg_bunker_optional_objective_completed", #"survey_equipment_bunker_located", #"survey_equipment_loading_dock_located", #"hash_6b2091e6c001e49a", #"survey_equipment_exit", #"hash_389991321cecac89");
        switch (s_notify._notify) {
        case #"hash_7e64e93d8fd00029":
            bb::function_cd497743("found_safe_before_key", e_player);
            break;
        case #"flg_bunker_optional_key_found":
            bb::function_cd497743("found_safe_key", e_player);
            break;
        case #"flg_bunker_optional_objective_completed":
            bb::function_cd497743("optional_objective_complete", e_player);
            break;
        case #"survey_equipment_bunker_located":
            bb::function_cd497743("survey_bunker_located", e_player);
            break;
        case #"survey_equipment_loading_dock_located":
            bb::function_cd497743("survey_loading_dock_located", e_player);
            break;
        case #"hash_6b2091e6c001e49a":
            bb::function_248394b9("survey_crane_building_located", s_notify.var_d69de23d);
            break;
        case #"survey_equipment_exit":
            bb::function_248394b9("survey_equipment_exit", s_notify.var_d69de23d);
            break;
        case #"hash_389991321cecac89":
            if (s_notify.var_b128c445 === "damage") {
                if (level flag::get("flg_woods_regroup_radio_destroyed_early")) {
                    bb::function_cd497743("radio_destroyed_early", e_player);
                } else if (level flag::get("flg_woods_regroup_radio_destroyed")) {
                    bb::function_cd497743("radio_destroyed_after", e_player);
                }
            } else if (s_notify.var_b128c445 === "timeout") {
                bb::function_cd497743("radio_timeout", e_player);
            } else if (s_notify.var_b128c445 === "dialog_stealth_blown") {
                bb::function_cd497743("radio_dialog_fail", e_player);
            } else if (s_notify.var_b128c445 === "dialog_stealth_maintained") {
                bb::function_cd497743("radio_dialog_success", e_player);
            }
            break;
        }
    }
}

// Namespace namespace_517e3310/namespace_517e3310
// Params 1, eflags: 0x0
// Checksum 0xad706416, Offset: 0x868
// Size: 0x44
function on_player_killed(*params) {
    if (is_true(self.var_37936369)) {
        bb::function_cd497743("vault_lift_player_death", self);
    }
}

// Namespace namespace_517e3310/namespace_517e3310
// Params 1, eflags: 0x0
// Checksum 0x1277e2f6, Offset: 0x8b8
// Size: 0x74
function on_ai_killed(params) {
    e_attacker = params.eattacker;
    if (isplayer(e_attacker) && is_true(e_attacker.var_37936369)) {
        bb::function_cd497743("vault_lift_enemy_kill", e_attacker);
    }
}


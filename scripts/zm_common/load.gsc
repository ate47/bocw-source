// Atian COD Tools GSC CW decompiler test
#using script_5e96d104c70be5ac;
#using scripts\zm_common\zm_aoe.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_traps.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_power.gsc;
#using scripts\zm_common\zm_magicbox.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_clone.gsc;
#using scripts\zm_common\zm_blockers.gsc;
#using scripts\zm_common\zm_behavior.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\callbacks.gsc;
#using scripts\zm_common\bots\zm_bot.gsc;
#using scripts\zm_common\art.gsc;
#using scripts\weapons\zm\weaponobjects.gsc;
#using scripts\zm_common\gametypes\spectating.gsc;
#using scripts\zm_common\gametypes\shellshock.gsc;
#using scripts\zm_common\gametypes\serversettings.gsc;
#using scripts\zm_common\gametypes\clientids.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\zm_common\gametypes\spawnlogic.gsc;
#using scripts\zm_common\zm.gsc;
#using script_165beea08a63a243;
#using scripts\core_common\item_supply_drop.gsc;
#using script_d5e47f3a0e95613;
#using script_54f593f5beb1464a;
#using scripts\core_common\item_world_debug.gsc;
#using scripts\core_common\item_world_cleanup.gsc;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\item_drop.gsc;
#using script_2a30ac7aa0ee8988;
#using script_655e1025200f4d5b;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\turret_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\hud_message_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\audio_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace load;

// Namespace load/createstruct
// Params 1, eflags: 0x26 linked
// Checksum 0xf0614eb2, Offset: 0x2b8
// Size: 0x25c
function private event_handler[createstruct] function_e0a8e4ba(struct) {
    foreach (var_e7c98186, k in ["content_script_name", "content_key", "zombie_weapon_upgrade", "script_unitrigger_type"]) {
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

// Namespace load/load
// Params 0, eflags: 0x1
// Checksum 0xecd52ccc, Offset: 0x520
// Size: 0x3c
function autoexec function_aeb1baea() {
    assert(!isdefined(level.var_f18a6bd6));
    level.var_f18a6bd6 = &function_5e443ed1;
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0x3a059c06, Offset: 0x568
// Size: 0xfc
function function_5e443ed1() {
    assert(isdefined(level.first_frame), "<unknown string>");
    zm::init();
    level._loadstarted = 1;
    register_clientfields();
    level.aitriggerspawnflags = getaitriggerflags() | 8192;
    level.vehicletriggerspawnflags = getvehicletriggerflags();
    level thread start_intro_screen_zm();
    system::function_c11b0642();
    level thread art_review();
    level flag::set(#"load_main_complete");
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0xb82c9c75, Offset: 0x670
// Size: 0x92
function start_intro_screen_zm() {
    players = getplayers();
    for (i = 0; i < players.size; i++) {
        players[i] lui::screen_fade_out(0, undefined);
        players[i] val::set(#"start_intro_screen_zm", "freezecontrols");
    }
    wait(1);
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0xc773604c, Offset: 0x710
// Size: 0x34
function register_clientfields() {
    clientfield::register("allplayers", "zmbLastStand", 1, 1, "int");
}


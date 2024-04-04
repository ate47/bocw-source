// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\deployable.gsc;
#using script_4266a5d281c65453;
#using scripts\cp_common\gametypes\globallogic_player.gsc;
#using scripts\cp_common\gametypes\globallogic_actor.gsc;
#using scripts\cp_common\gametypes\globallogic.gsc;
#using scripts\cp_common\challenges.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\globallogic\globallogic_vehicle.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace callback;

// Namespace callback/callbacks
// Params 0, eflags: 0x5
// Checksum 0x2f5016a8, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"callback", &preinit, undefined, undefined, undefined);
}

// Namespace callback/callbacks
// Params 0, eflags: 0x6 linked
// Checksum 0xf6c31ded, Offset: 0x118
// Size: 0x14
function private preinit() {
    set_default_callbacks();
}

// Namespace callback/callbacks
// Params 2, eflags: 0x2 linked
// Checksum 0xc5bdb3f1, Offset: 0x138
// Size: 0x3c
function function_8a0395cd(func, obj) {
    function_d8abfc3d(#"hash_31c83c1c404a846b", func, obj);
}

// Namespace callback/callbacks
// Params 2, eflags: 0x0
// Checksum 0x3edf1371, Offset: 0x180
// Size: 0x3c
function function_b9e4759f(func, obj) {
    function_52ac9652(#"hash_31c83c1c404a846b", func, obj);
}

// Namespace callback/event_bcae220e
// Params 1, eflags: 0x20
// Checksum 0x8223909e, Offset: 0x1c8
// Size: 0x2c
function event_handler[event_bcae220e] function_980de2d1(eventstruct) {
    self callback(#"hash_31c83c1c404a846b", eventstruct);
}

// Namespace callback/callbacks
// Params 0, eflags: 0x2 linked
// Checksum 0x614efb7d, Offset: 0x200
// Size: 0x20c
function set_default_callbacks() {
    level.callbackstartgametype = &globallogic::callback_startgametype;
    level.callbackplayerconnect = &globallogic_player::callback_playerconnect;
    level.callbackplayerdisconnect = &globallogic_player::callback_playerdisconnect;
    level.callbackplayerdamage = &globallogic_player::callback_playerdamage;
    level.callbackplayerkilled = &globallogic_player::callback_playerkilled;
    level.callbackplayershielddamageblocked = &globallogic_player::callback_playershielddamageblocked;
    level.var_3a9881cb = &globallogic_player::function_74b6d714;
    level.callbackplayermelee = &globallogic_player::callback_playermelee;
    level.callbackactorspawned = &globallogic_actor::callback_actorspawned;
    level.callbackactordamage = &globallogic_actor::callback_actordamage;
    level.callbackactorkilled = &globallogic_actor::callback_actorkilled;
    level.callbackactorcloned = &globallogic_actor::callback_actorcloned;
    level.var_6788bf11 = &globallogic_scriptmover::function_8c7ec52f;
    level.callbackvehiclespawned = &globallogic_vehicle::callback_vehiclespawned;
    level.callbackvehicledamage = &globallogic_vehicle::callback_vehicledamage;
    level.callbackvehiclekilled = &globallogic_vehicle::callback_vehiclekilled;
    level.callbackvehicleradiusdamage = &globallogic_vehicle::callback_vehicleradiusdamage;
    level.callbackplayermigrated = &globallogic_player::callback_playermigrated;
    level.callbackdecorationawarded = &challenges::function_f901cb3c;
    level.var_69959686 = &deployable::function_209fda28;
    level._custom_weapon_damage_func = &callback_weapon_damage;
    level._gametype_default = "coop";
}


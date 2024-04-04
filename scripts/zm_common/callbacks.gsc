// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\gametypes\hostmigration.gsc;
#using scripts\zm_common\gametypes\globallogic_scriptmover.gsc;
#using scripts\zm_common\gametypes\globallogic_player.gsc;
#using scripts\zm_common\gametypes\globallogic_actor.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\core_common\globallogic\globallogic_vehicle.gsc;
#using scripts\weapons\deployable.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\struct.gsc;

#namespace callback;

// Namespace callback/callbacks
// Params 0, eflags: 0x5
// Checksum 0xebad4c22, Offset: 0xf0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"callback", &preinit, undefined, undefined, undefined);
}

// Namespace callback/callbacks
// Params 0, eflags: 0x6 linked
// Checksum 0xa82a32e6, Offset: 0x138
// Size: 0x1c
function private preinit() {
    level thread setup_callbacks();
}

// Namespace callback/callbacks
// Params 0, eflags: 0x2 linked
// Checksum 0xcedea19f, Offset: 0x160
// Size: 0xf0
function setup_callbacks() {
    setdefaultcallbacks();
    level.idflags_noflag = 0;
    level.idflags_radius = 1;
    level.idflags_no_armor = 2;
    level.idflags_no_knockback = 4;
    level.idflags_penetration = 8;
    level.idflags_destructible_entity = 16;
    level.idflags_shield_explosive_impact = 32;
    level.idflags_shield_explosive_impact_huge = 64;
    level.idflags_shield_explosive_splash = 128;
    level.idflags_hurt_trigger_allow_laststand = 256;
    level.idflags_disable_ragdoll_skip = 512;
    level.idflags_no_team_protection = 8192;
    level.var_598c4d23 = 16384;
    level.var_681a9181 = 32768;
}

// Namespace callback/callbacks
// Params 0, eflags: 0x2 linked
// Checksum 0x1f5ec44d, Offset: 0x258
// Size: 0x17c
function setdefaultcallbacks() {
    level.callbackstartgametype = &globallogic::callback_startgametype;
    level.callbackplayerconnect = &globallogic_player::callback_playerconnect;
    level.callbackplayerdisconnect = &globallogic_player::callback_playerdisconnect;
    level.callbackplayermelee = &globallogic_player::callback_playermelee;
    level.callbackactorspawned = &globallogic_actor::callback_actorspawned;
    level.callbackactorcloned = &globallogic_actor::callback_actorcloned;
    level.var_6788bf11 = &globallogic_scriptmover::function_8c7ec52f;
    level.callbackvehiclespawned = &globallogic_vehicle::callback_vehiclespawned;
    level.callbackplayermigrated = &globallogic_player::callback_playermigrated;
    level.callbackhostmigration = &hostmigration::callback_hostmigration;
    level.callbackhostmigrationsave = &hostmigration::callback_hostmigrationsave;
    level.callbackprehostmigrationsave = &hostmigration::callback_prehostmigrationsave;
    level.var_69959686 = &deployable::function_209fda28;
    level.var_523faa05 = &function_2750bb69;
    level.var_3a9881cb = &zm_player::function_74b6d714;
    level._gametype_default = "zclassic";
}

// Namespace callback/callbacks
// Params 1, eflags: 0x2 linked
// Checksum 0x751650f7, Offset: 0x3e0
// Size: 0x44
function function_2750bb69(weapon) {
    self callback(#"hash_6dc96d04d1ba7f5a", {#weapon:weapon});
}

// Namespace callback/callbacks
// Params 2, eflags: 0x0
// Checksum 0x8d87ddb8, Offset: 0x430
// Size: 0x3c
function function_6e6149a6(func, obj) {
    add_callback(#"hash_1eda827ff5e6895b", func, obj);
}

// Namespace callback/callbacks
// Params 2, eflags: 0x0
// Checksum 0x7b10dcd5, Offset: 0x478
// Size: 0x3c
function function_823e7181(func, obj) {
    remove_callback(#"hash_34edc1c4f45e5572", func, obj);
}

// Namespace callback/callbacks
// Params 2, eflags: 0x0
// Checksum 0x5dcc96c6, Offset: 0x4c0
// Size: 0x3c
function function_4b58e5ab(func, obj) {
    add_callback(#"hash_210adcf09e99fba1", func, obj);
}

// Namespace callback/callbacks
// Params 2, eflags: 0x0
// Checksum 0x8a928d53, Offset: 0x508
// Size: 0x3c
function function_66d5d485(func, obj) {
    remove_callback(#"hash_1863ba8e81df2a64", func, obj);
}

// Namespace callback/callbacks
// Params 2, eflags: 0x2 linked
// Checksum 0x9cc3a6ff, Offset: 0x550
// Size: 0x3c
function function_dfd4b1a0(func, obj) {
    add_callback(#"hash_7cdd5b06f3e281c6", func, obj);
}

// Namespace callback/callbacks
// Params 2, eflags: 0x0
// Checksum 0xcdca3227, Offset: 0x598
// Size: 0x3c
function function_34700b93(func, obj) {
    remove_callback(#"hash_4e737d409e1399c9", func, obj);
}

// Namespace callback/callbacks
// Params 2, eflags: 0x2 linked
// Checksum 0xd7808127, Offset: 0x5e0
// Size: 0x3c
function function_74872db6(func, obj) {
    add_callback(#"hash_6df5348c2fb9a509", func, obj);
}

// Namespace callback/callbacks
// Params 2, eflags: 0x2 linked
// Checksum 0xe7af0daf, Offset: 0x628
// Size: 0x3c
function function_50fdac80(func, obj) {
    remove_callback(#"hash_6df5348c2fb9a509", func, obj);
}

// Namespace callback/callbacks
// Params 2, eflags: 0x2 linked
// Checksum 0xfaf36842, Offset: 0x670
// Size: 0x3c
function on_round_end(func, obj) {
    add_callback(#"on_round_end", func, obj);
}

// Namespace callback/callbacks
// Params 2, eflags: 0x2 linked
// Checksum 0x7dc8176, Offset: 0x6b8
// Size: 0x3c
function remove_on_round_end(func, obj) {
    remove_callback(#"on_round_end", func, obj);
}

// Namespace callback/callbacks
// Params 2, eflags: 0x0
// Checksum 0x3b1e07d7, Offset: 0x700
// Size: 0x3c
function function_b3c9adb7(func, obj) {
    add_callback(#"hash_7d40e25056b9275c", func, obj);
}

// Namespace callback/callbacks
// Params 2, eflags: 0x0
// Checksum 0x348d14b3, Offset: 0x748
// Size: 0x3c
function function_342b2f6(func, obj) {
    remove_callback(#"hash_7d40e25056b9275c", func, obj);
}

// Namespace callback/callbacks
// Params 2, eflags: 0x0
// Checksum 0x1bb32e3d, Offset: 0x790
// Size: 0x3c
function function_aebeafc0(func, obj) {
    add_callback(#"hash_790b67aca1bf8fc0", func, obj);
}

// Namespace callback/callbacks
// Params 2, eflags: 0x0
// Checksum 0x656d5924, Offset: 0x7d8
// Size: 0x3c
function function_3e2ed898(func, obj) {
    remove_callback(#"hash_790b67aca1bf8fc0", func, obj);
}


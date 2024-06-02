// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\archetype_aivsaimelee.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai\archetype_notetracks.gsc;
#using scripts\core_common\ai\archetype_human_cover.gsc;
#using scripts\core_common\ai\archetype_cover_utility.gsc;
#using scripts\core_common\ai\archetype_mocomps_utility.gsc;
#using scripts\core_common\ai\systems\shared.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace aiutility;

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x5
// Checksum 0xd2009e09, Offset: 0xb20
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"archetype_utility", &preinit, undefined, undefined, undefined);
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x6 linked
// Checksum 0xd3e37742, Offset: 0xb68
// Size: 0x14
function private preinit() {
    registerbehaviorscriptfunctions();
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x6b7ea7f1, Offset: 0xb88
// Size: 0x26e4
function private registerbehaviorscriptfunctions() {
    assert(iscodefunctionptr(&btapi_forceragdoll));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"btapi_forceragdoll", &btapi_forceragdoll);
    assert(iscodefunctionptr(&btapi_hasammo));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"btapi_hasammo", &btapi_hasammo);
    assert(iscodefunctionptr(&btapi_haslowammo));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"btapi_haslowammo", &btapi_haslowammo);
    assert(isscriptfunctionptr(&function_2de6da8));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6a474bfdd215a3f4", &function_2de6da8);
    assert(isscriptfunctionptr(&function_a9bc841));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_185ec143f3641fa6", &function_a9bc841);
    assert(iscodefunctionptr(&btapi_hasenemy));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"btapi_hasenemy", &btapi_hasenemy);
    assert(isscriptfunctionptr(&function_e0454a8b));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_10923e11cc70c83f", &function_e0454a8b);
    assert(isscriptfunctionptr(&issafefromgrenades));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"issafefromgrenades", &issafefromgrenades);
    assert(isscriptfunctionptr(&function_f557fb8b));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1226ab372ff4dc13", &function_f557fb8b);
    assert(isscriptfunctionptr(&function_865ea8e6));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2ff118c59ed4bd9e", &function_865ea8e6);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_78488585a31af367", &function_8f12f910);
    assert(isscriptfunctionptr(&recentlysawenemy));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"recentlysawenemy", &recentlysawenemy);
    assert(isscriptfunctionptr(&shouldbeaggressive));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldbeaggressive", &shouldbeaggressive);
    assert(isscriptfunctionptr(&shouldonlyfireaccurately));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldonlyfireaccurately", &shouldonlyfireaccurately);
    assert(isscriptfunctionptr(&canblindfire));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"canblindfire", &canblindfire);
    assert(isscriptfunctionptr(&shouldreacttonewenemy));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldreacttonewenemy", &shouldreacttonewenemy);
    assert(isscriptfunctionptr(&shouldreacttonewenemy));
    behaviorstatemachine::registerbsmscriptapiinternal(#"shouldreacttonewenemy", &shouldreacttonewenemy);
    assert(isscriptfunctionptr(&hasweaponmalfunctioned));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hasweaponmalfunctioned", &hasweaponmalfunctioned);
    assert(isscriptfunctionptr(&shouldstopmoving));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldstopmoving", &shouldstopmoving);
    assert(isscriptfunctionptr(&shouldstopmoving));
    behaviorstatemachine::registerbsmscriptapiinternal(#"shouldstopmoving", &shouldstopmoving);
    assert(isscriptfunctionptr(&function_abb9c007));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_750c8220e46d9ba", &function_abb9c007);
    assert(isscriptfunctionptr(&function_abb9c007));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_750c8220e46d9ba", &function_abb9c007);
    assert(isscriptfunctionptr(&choosebestcovernodeasap));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"choosebestcovernodeasap", &choosebestcovernodeasap);
    assert(isscriptfunctionptr(&function_c1ac838a));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_12126a94eb75c541", &function_c1ac838a);
    assert(isscriptfunctionptr(&choosebettercoverservicecodeversion));
    behaviortreenetworkutility::registerbehaviortreescriptapi("chooseBetterCoverService", &choosebettercoverservicecodeversion, 1);
    assert(isscriptfunctionptr(&sensenearbyplayers));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"sensenearbyplayers", &sensenearbyplayers);
    assert(isscriptfunctionptr(&function_4755155f));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_28725784491067a5", &function_4755155f);
    assert(iscodefunctionptr(&btapi_refillammo));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"btapi_refillammoifneededservice", &btapi_refillammo);
    assert(isscriptfunctionptr(&function_43a090a8));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2b72d392931b3fe0", &function_43a090a8);
    assert(isscriptfunctionptr(&function_dc44803c));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_44ffd558c93366a3", &function_dc44803c);
    assert(isscriptfunctionptr(&function_a7abd081));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_338bde0d7a1d8ab4", &function_a7abd081);
    assert(isscriptfunctionptr(&trystoppingservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"trystoppingservice", &trystoppingservice);
    assert(isscriptfunctionptr(&isfrustrated));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"isfrustrated", &isfrustrated);
    assert(isscriptfunctionptr(&function_22766ccd));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7a7ca1fd075b9349", &function_22766ccd);
    assert(isscriptfunctionptr(&function_d116f6b4));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_40e03ac97f371cb1", &function_d116f6b4);
    assert(iscodefunctionptr(&btapi_updatefrustrationlevel));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"btapi_updatefrustrationlevel", &btapi_updatefrustrationlevel);
    assert(isscriptfunctionptr(&islastknownenemypositionapproachable));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"islastknownenemypositionapproachable", &islastknownenemypositionapproachable);
    assert(isscriptfunctionptr(&tryadvancingonlastknownpositionbehavior));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"tryadvancingonlastknownpositionbehavior", &tryadvancingonlastknownpositionbehavior);
    assert(isscriptfunctionptr(&function_15b9bbef));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6eddb51350d11f58", &function_15b9bbef);
    assert(isscriptfunctionptr(&trygoingtoclosestnodetoenemybehavior));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"trygoingtoclosestnodetoenemybehavior", &trygoingtoclosestnodetoenemybehavior);
    assert(isscriptfunctionptr(&tryrunningdirectlytoenemybehavior));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"tryrunningdirectlytoenemybehavior", &tryrunningdirectlytoenemybehavior);
    assert(isscriptfunctionptr(&flagenemyunattackableservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"flagenemyunattackableservice", &flagenemyunattackableservice);
    assert(isscriptfunctionptr(&keepclaimnode));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"keepclaimnode", &keepclaimnode);
    assert(isscriptfunctionptr(&keepclaimnode));
    behaviorstatemachine::registerbsmscriptapiinternal(#"keepclaimnode", &keepclaimnode);
    assert(isscriptfunctionptr(&releaseclaimnode));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"releaseclaimnode", &releaseclaimnode);
    assert(isscriptfunctionptr(&releaseclaimnode));
    behaviorstatemachine::registerbsmscriptapiinternal(#"releaseclaimnode", &releaseclaimnode);
    assert(isscriptfunctionptr(&function_8b760d36));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_674fb2fe0b622d15", &function_8b760d36);
    assert(isscriptfunctionptr(&scriptstartragdoll));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"startragdoll", &scriptstartragdoll);
    assert(isscriptfunctionptr(&notstandingcondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"notstandingcondition", &notstandingcondition);
    assert(isscriptfunctionptr(&notcrouchingcondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"notcrouchingcondition", &notcrouchingcondition);
    assert(isscriptfunctionptr(&function_736c20e1));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_34d02056cda999ed", &function_736c20e1);
    assert(isscriptfunctionptr(&function_4aff5b9d));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_67f7516b1162e7ee", &function_4aff5b9d);
    assert(isscriptfunctionptr(&function_4fefd9b));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5eb98eaec46c01af", &function_4fefd9b);
    assert(isscriptfunctionptr(&function_31cbd57e));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_587aa92de0ae4cdd", &function_31cbd57e);
    assert(isscriptfunctionptr(&function_4aff5b9d));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_67f7516b1162e7ee", &function_4aff5b9d);
    assert(isscriptfunctionptr(&meleeacquiremutex));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"meleeacquiremutex", &meleeacquiremutex);
    assert(isscriptfunctionptr(&meleereleasemutex));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"meleereleasemutex", &meleereleasemutex);
    assert(isscriptfunctionptr(&prepareforexposedmelee));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"prepareforexposedmelee", &prepareforexposedmelee);
    assert(isscriptfunctionptr(&cleanupmelee));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"cleanupmelee", &cleanupmelee);
    assert(iscodefunctionptr(&btapi_shouldnormalmelee));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"btapi_shouldnormalmelee", &btapi_shouldnormalmelee);
    assert(iscodefunctionptr(&btapi_shouldnormalmelee));
    behaviorstatemachine::registerbsmscriptapiinternal(#"btapi_shouldnormalmelee", &btapi_shouldnormalmelee);
    assert(iscodefunctionptr(&btapi_shouldmelee));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"btapi_shouldmelee", &btapi_shouldmelee);
    assert(iscodefunctionptr(&btapi_shouldmelee));
    behaviorstatemachine::registerbsmscriptapiinternal(#"btapi_shouldmelee", &btapi_shouldmelee);
    assert(isscriptfunctionptr(&isbalconydeath));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"isbalconydeath", &isbalconydeath);
    assert(isscriptfunctionptr(&function_c104a10e));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_73d21e0db2035bfa", &function_c104a10e);
    assert(isscriptfunctionptr(&balconydeath));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"balconydeath", &balconydeath);
    assert(isscriptfunctionptr(&usecurrentposition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"usecurrentposition", &usecurrentposition);
    assert(isscriptfunctionptr(&isunarmed));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"isunarmed", &isunarmed);
    assert(isscriptfunctionptr(&function_459c5ea7));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_712bff7525e4a6b8", &function_459c5ea7);
    assert(isscriptfunctionptr(&function_b375c36c));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_3da552249ce651af", &function_b375c36c);
    assert(isscriptfunctionptr(&function_39c7ce7f));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_a8b8446f4206a0a", &function_39c7ce7f);
    assert(iscodefunctionptr(&btapi_shouldchargemelee));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"btapi_shouldchargemelee", &btapi_shouldchargemelee);
    assert(iscodefunctionptr(&btapi_shouldchargemelee));
    behaviorstatemachine::registerbsmscriptapiinternal(#"btapi_shouldchargemelee", &btapi_shouldchargemelee);
    assert(isscriptfunctionptr(&cleanupchargemelee));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"cleanupchargemelee", &cleanupchargemelee);
    assert(isscriptfunctionptr(&cleanupchargemeleeattack));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"cleanupchargemeleeattack", &cleanupchargemeleeattack);
    assert(isscriptfunctionptr(&setupchargemeleeattack));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"setupchargemeleeattack", &setupchargemeleeattack);
    assert(isscriptfunctionptr(&function_de7e2d3f));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_209f67e4390a01e4", &function_de7e2d3f);
    assert(isscriptfunctionptr(&function_9414b79f));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_6cd29429666ea22d", &function_9414b79f);
    assert(isscriptfunctionptr(&function_bcbf3f38));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_6ae246561f9295e4", &function_bcbf3f38);
    assert(isscriptfunctionptr(&shouldchoosespecialpain));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldchoosespecialpain", &shouldchoosespecialpain);
    assert(isscriptfunctionptr(&function_3769693b));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_382af3d128c68e13", &function_3769693b);
    assert(isscriptfunctionptr(&function_9b0e7a22));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_50fc16dcf1175197", &function_9b0e7a22);
    assert(isscriptfunctionptr(&shouldchoosespecialpronepain));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldchoosespecialpronepain", &shouldchoosespecialpronepain);
    assert(isscriptfunctionptr(&function_89cb7bfd));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_78675d76c0c51e10", &function_89cb7bfd);
    assert(isscriptfunctionptr(&shouldchoosespecialdeath));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldchoosespecialdeath", &shouldchoosespecialdeath);
    assert(isscriptfunctionptr(&shouldchoosespecialpronedeath));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldchoosespecialpronedeath", &shouldchoosespecialpronedeath);
    assert(isscriptfunctionptr(&setupexplosionanimscale));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"setupexplosionanimscale", &setupexplosionanimscale);
    function_7a62f47d();
    assert(iscodefunctionptr(&btapi_isinphalanx));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"btapi_isinphalanx", &btapi_isinphalanx);
    assert(isscriptfunctionptr(&isinphalanx));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"isinphalanx", &isinphalanx);
    assert(isscriptfunctionptr(&isinphalanxstance));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"isinphalanxstance", &isinphalanxstance);
    assert(isscriptfunctionptr(&togglephalanxstance));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"togglephalanxstance", &togglephalanxstance);
    assert(isscriptfunctionptr(&isatattackobject));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"isatattackobject", &isatattackobject);
    assert(isscriptfunctionptr(&shouldattackobject));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldattackobject", &shouldattackobject);
    assert(isscriptfunctionptr(&generictryreacquireservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"generictryreacquireservice", &generictryreacquireservice);
    behaviortreenetworkutility::registerbehaviortreeaction(#"defaultaction", undefined, undefined, undefined);
    assert(isscriptfunctionptr(&function_331e64bd));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1e656fe04d8ca3d7", &function_331e64bd);
    archetype_aivsaimelee::registeraivsaimeleebehaviorfunctions();
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x80e2edc2, Offset: 0x3278
// Size: 0x24fc
function function_7a62f47d() {
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldstealth", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"stealthreactcondition", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"locomotionshouldstealth", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldstealthresume", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"stealthreactstart", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"stealthreactterminate", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"stealthidleterminate", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6015c026b1fa3b68", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6903274957b06c58", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"ifinstealth", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_30483c99fb320ecb", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5d5935e442748f9e", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2b4b5597da9bc2f8", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_8374ad58022a136", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_652e009b8323c31b", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"stealth_enemy_updateeveryframe", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_65e89f484bba20bb", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_14f8e3d6eda75d6a", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_458e9a34b803db29", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7ed5e6ee9b115c2a", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_77e5c00cfcf7002e", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5d73de1aab3eb35d", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_ae56f63cd9fbe86", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"stealth_shouldinvestigate", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6431cd50d65a767c", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_31b933dc0e7c5c84", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1e0ad4032a3da41f", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1c37119295b3cc48", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6a892d952d9c58b7", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_247b034a88a7e3b", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_540afeb2906c14c7", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_44e72b8fcdaf3ff8", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"stealth_shouldhunt", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1432a729e25120ac", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4691e67cad7d9b37", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6c20630dac281d70", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7c50b51a79eba680", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1a2cb215f0adfdab", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_a287df3d9435b4c", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4429fadb560937b5", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4d4262f789528f48", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6623ac05b3e89d2", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_c3501ebe051547e", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_633bd00a4c6c070d", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_38670b1f6bfc60d6", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_219ee8817462ba75", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_56707481883cec89", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_72041acc7d1e9e99", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_a1c1fb228689f9c", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_fef2a96c4de38c7", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_3cb50e01a7d9b2e0", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7faa7f08cbd182e0", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2792d75a8b597397", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"stealth_neutral_updateeveryframe", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_15db81c49c83357e", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"ifshoulddosmartobject", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"dosmartobject", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"dosmartobject_init", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_792be4bd91e1c9e2", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4ab3a0d2b8ce1d48", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_3fb32d4ff7ddb9f7", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2fa97de855da1e4f", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7ccd1fa8f8bd85fc", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7f29302adf2f1e45", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_52aa02ad4a142cb3", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_982f6b18e2cdc06", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_23286b53d24487b4", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_22ca87c523f21d6d", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1d1883695574917c", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1cad32c846c91188", &function_8f12f910);
    assert(isscriptfunctionptr(&function_865ea8e6));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_37829e514d614663", &function_865ea8e6);
    assert(isscriptfunctionptr(&function_865ea8e6));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_66bfafd78f8a2da4", &function_865ea8e6);
    assert(isscriptfunctionptr(&function_865ea8e6));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_28aa53308dae6714", &function_865ea8e6);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_77e5c00cfcf7002e", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_5d73de1aab3eb35d", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_ae56f63cd9fbe86", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_76d6aa4d32b2559c", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1082b3ce4938748d", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"locomotionshouldstealth", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_6015c026b1fa3b68", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_6903274957b06c58", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"stealthreactcondition", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_34ba896ad71ef639", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_247b034a88a7e3b", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_540afeb2906c14c7", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_44e72b8fcdaf3ff8", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_2fa97de855da1e4f", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_7cd1f4f1d328c8c", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_344cc9226dda1596", &function_8f12f910);
    assert(isscriptfunctionptr(&function_8f12f910));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_1082b3ce4938748d", &function_8f12f910);
    assert(isscriptfunctionptr(&function_865ea8e6));
    behaviorstatemachine::registerbsmscriptapiinternal(#"alwaystrue", &function_865ea8e6);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x89cd7d22, Offset: 0x5780
// Size: 0xe
function function_8f12f910(*entity) {
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xf7e13c56, Offset: 0x5798
// Size: 0x10
function function_865ea8e6(*entity) {
    return true;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x2af93ff1, Offset: 0x57b0
// Size: 0x2e
function private function_ba333ba3() {
    if (is_true(self.var_a8f2b553)) {
        return "SLOPE";
    }
    return "STAIRS";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x752ccbaf, Offset: 0x57e8
// Size: 0x152
function private bb_getstairsnumskipsteps() {
    assert(isdefined(self._stairsstartnode) && isdefined(self._stairsendnode));
    numtotalsteps = self getblackboardattribute("_staircase_num_total_steps");
    stepssofar = self getblackboardattribute("_staircase_num_steps");
    direction = self getblackboardattribute("_staircase_direction");
    numoutsteps = 2;
    totalstepswithoutout = numtotalsteps - numoutsteps;
    assert(stepssofar < totalstepswithoutout);
    remainingsteps = totalstepswithoutout - stepssofar;
    if (remainingsteps >= 8) {
        return "staircase_skip_8";
    } else if (remainingsteps >= 6) {
        return "staircase_skip_6";
    }
    assert(remainingsteps >= 3);
    return "staircase_skip_3";
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xfce62e27, Offset: 0x5948
// Size: 0x5c
function function_459c5ea7(entity) {
    return function_27675652(entity) === "_vault_over_drop" || function_b375c36c(entity) || function_39c7ce7f(entity);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x33b65471, Offset: 0x59b0
// Size: 0x2c
function function_b375c36c(entity) {
    return function_27675652(entity) === "_vault_jump_up_drop";
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x85e58fe9, Offset: 0x59e8
// Size: 0x2c
function function_39c7ce7f(entity) {
    return function_27675652(entity) === "_vault_jump_down_drop";
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x4436e83b, Offset: 0x5a20
// Size: 0x37e
function function_27675652(entity) {
    assert(isdefined(entity.var_854857c6));
    traversaltype = entity getblackboardattribute("_parametric_traversal_type");
    if (!isdefined(traversaltype) || traversaltype != "mantle_traversal") {
        return undefined;
    }
    if (!isdefined(entity.var_854857c6)) {
        return undefined;
    }
    if (!isdefined(entity.ai.var_e233df10)) {
        entity.ai.var_e233df10 = [];
        bundle = getscriptbundle(entity.var_854857c6);
        entity.ai.var_e233df10[#"min"] = bundle.var_f850cb73;
        entity.ai.var_e233df10[#"max"] = bundle.var_f724517b;
    }
    if (!isdefined(entity.ai.var_e233df10[#"min"])) {
        entity.ai.var_e233df10[#"min"] = 0.8;
    }
    if (!isdefined(entity.ai.var_e233df10[#"max"])) {
        entity.ai.var_e233df10[#"max"] = 1.2;
    }
    startnode = entity.traversestartnode;
    endnode = entity.traverseendnode;
    mantlenode = entity.traversemantlenode;
    if (!isdefined(mantlenode)) {
        return undefined;
    }
    startheight = mantlenode.origin[2] - startnode.origin[2];
    var_b6b9b5f0 = mantlenode.origin[2] - endnode.origin[2];
    /#
        if (startheight == 0 || var_b6b9b5f0 == 0) {
            assertmsg("has_left_arm_no" + mantlenode.origin[0] + "disablereload" + mantlenode.origin[1] + "disablereload" + mantlenode.origin[2] + "cover_pillar");
        }
    #/
    ratio = abs(var_b6b9b5f0 / startheight);
    if (ratio < entity.ai.var_e233df10[#"min"]) {
        return "_vault_jump_up_drop";
    }
    if (ratio > entity.ai.var_e233df10[#"max"]) {
        return "_vault_jump_down_drop";
    }
    return "_vault_over_drop";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x6 linked
// Checksum 0xaaea9c8c, Offset: 0x5da8
// Size: 0x8a
function private function_36e869c5() {
    entity = self;
    startnode = entity.traversestartnode;
    mantlenode = entity.traversemantlenode;
    if (!isdefined(mantlenode)) {
        return undefined;
    }
    startheight = abs(mantlenode.origin[2] - startnode.origin[2]);
    return startheight;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x2e3ab690, Offset: 0x5e40
// Size: 0x8a
function private function_975e9355() {
    entity = self;
    endnode = entity.traverseendnode;
    mantlenode = entity.traversemantlenode;
    if (!isdefined(mantlenode)) {
        return undefined;
    }
    var_b6b9b5f0 = abs(mantlenode.origin[2] - endnode.origin[2]);
    return var_b6b9b5f0;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x94d2159a, Offset: 0x5ed8
// Size: 0x2c4
function private bb_gettraversalheight() {
    entity = self;
    startposition = entity.traversalstartpos;
    endposition = entity.traversalendpos;
    if (isdefined(entity.traveseheightoverride)) {
        /#
            record3dtext("cover_turret" + entity.traveseheightoverride, self.origin + (0, 0, 32), (1, 0, 0), "melee_fire");
        #/
        return entity.traveseheightoverride;
    }
    if (isdefined(entity.traversemantlenode) || entity function_dd4f686e()) {
        pivotorigin = archetype_mocomps_utility::calculatepivotoriginfromedge(entity, entity.traversemantlenode, entity.origin);
        traversalheight = pivotorigin[2] - (is_true(entity.var_fad2bca9) && isdefined(entity.traversalstartpos) ? entity.traversalstartpos[2] : entity.origin[2]);
        /#
            record3dtext("cover_turret" + traversalheight, self.origin + (0, 0, 32), (1, 0, 0), "melee_fire");
            if (traversalheight < 24) {
                println("MOD_PISTOL_BULLET" + entity.traversalstartpos + "<unknown string>" + traversalheight + "<unknown string>");
            }
        #/
        return traversalheight;
    } else if (isdefined(startposition) && isdefined(endposition)) {
        traversalheight = endposition[2] - startposition[2];
        if (bb_getparametrictraversaltype() == "jump_across_traversal" && function_dabc588b(entity.aitype)) {
            traversalheight = abs(traversalheight);
        }
        /#
            record3dtext("cover_turret" + traversalheight, self.origin + (0, 0, 32), (1, 0, 0), "melee_fire");
        #/
        return traversalheight;
    }
    return 0;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x3daf3508, Offset: 0x61a8
// Size: 0x124
function private bb_gettraversalwidth() {
    entity = self;
    startposition = entity.traversalstartpos;
    endposition = entity.traversalendpos;
    if (isdefined(entity.travesewidthoverride)) {
        /#
            record3dtext("<unknown string>" + entity.travesewidthoverride, self.origin + (0, 0, 48), (1, 0, 0), "melee_fire");
        #/
        return entity.travesewidthoverride;
    }
    if (isdefined(startposition) && isdefined(endposition)) {
        var_d4b651b8 = distance2d(startposition, endposition);
        /#
            record3dtext("<unknown string>" + var_d4b651b8, self.origin + (0, 0, 48), (1, 0, 0), "melee_fire");
        #/
        return var_d4b651b8;
    }
    return 0;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xed80ec11, Offset: 0x62d8
// Size: 0x3aa
function bb_getparametrictraversaltype() {
    entity = self;
    if (entity function_3c566724()) {
        if (entity function_dd4f686e()) {
            return "mantle_traversal";
        }
        startposition = entity.traversalstartpos;
        endposition = entity.traversalendpos;
        if (isdefined(startposition) && isdefined(endposition)) {
            traversaldistance = distance2d(startposition, endposition);
            isendpointaboveorsamelevel = startposition[2] <= endposition[2];
            if (traversaldistance >= 108 && abs(endposition[2] - startposition[2]) <= 100) {
                return "jump_across_traversal";
            }
            /#
                if (abs(endposition[2] - startposition[2]) <= 24) {
                    var_a4122588 = isendpointaboveorsamelevel ? "<unknown string>" : "<unknown string>";
                    height = endposition[2] - startposition[2];
                    println("<unknown string>" + var_a4122588 + "<unknown string>" + height + "<unknown string>" + startposition + "<unknown string>" + endposition + "<unknown string>");
                }
            #/
            if (isendpointaboveorsamelevel) {
                return "jump_up_traversal";
            }
            return "jump_down_traversal";
        }
        return "unknown_traversal";
    }
    entity = self;
    startposition = entity.traversalstartpos;
    endposition = entity.traversalendpos;
    if (!isdefined(entity.traversestartnode) || entity.traversestartnode.type != "Volume" || !isdefined(entity.traverseendnode) || entity.traverseendnode.type != "Volume") {
        return "unknown_traversal";
    }
    if (isdefined(entity.traversestartnode) && isdefined(entity.traversemantlenode)) {
        return "mantle_traversal";
    }
    if (isdefined(startposition) && isdefined(endposition)) {
        traversaldistance = distance2d(startposition, endposition);
        isendpointaboveorsamelevel = startposition[2] <= endposition[2];
        if (traversaldistance >= 108 && abs(endposition[2] - startposition[2]) <= 100) {
            return "jump_across_traversal";
        }
        if (isendpointaboveorsamelevel) {
            if (is_true(entity.traverseendnode.hanging_traversal) && is_true(entity.var_1731eda3)) {
                return "jump_up_hanging_traversal";
            } else {
                return "jump_up_traversal";
            }
        }
        return "jump_down_traversal";
    }
    return "unknown_traversal";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x5845be37, Offset: 0x6690
// Size: 0xa
function bb_getawareness() {
    return self.awarenesslevelcurrent;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x1cda80c1, Offset: 0x66a8
// Size: 0xa
function bb_getawarenessprevious() {
    return self.awarenesslevelprevious;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xfa795c9b, Offset: 0x66c0
// Size: 0xb2
function function_cc26899f() {
    if (isdefined(self.zombie_move_speed)) {
        if (self.zombie_move_speed == "walk") {
            return "locomotion_speed_walk";
        } else if (self.zombie_move_speed == "run") {
            return "locomotion_speed_run";
        } else if (self.zombie_move_speed == "sprint") {
            return "locomotion_speed_sprint";
        } else if (self.zombie_move_speed == "super_sprint") {
            return "locomotion_speed_super_sprint";
        } else if (self.zombie_move_speed == "super_super_sprint") {
            return "locomotion_speed_super_super_sprint";
        }
    }
    return "locomotion_speed_walk";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x6 linked
// Checksum 0xc7dcddac, Offset: 0x6780
// Size: 0xa6
function private bb_getgibbedlimbs() {
    entity = self;
    rightarmgibbed = gibserverutils::isgibbed(entity, 16);
    leftarmgibbed = gibserverutils::isgibbed(entity, 32);
    if (rightarmgibbed && leftarmgibbed) {
        return "both_arms";
    } else if (rightarmgibbed) {
        return "right_arm";
    } else if (leftarmgibbed) {
        return "left_arm";
    }
    return "none";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xe304b04a, Offset: 0x6830
// Size: 0x132
function bb_getyawtocovernode() {
    if (!isdefined(self.node) || self.node.spawnflags & 128) {
        return 0;
    }
    disttonodesqr = distance2dsquared(self getnodeoffsetposition(self.node), self.origin);
    if (is_true(self.keepclaimednode)) {
        if (disttonodesqr > sqr(64)) {
            return 0;
        }
    } else if (disttonodesqr > sqr(24)) {
        return 0;
    }
    angletonode = ceil(angleclamp180(self.angles[1] - self getnodeoffsetangles(self.node)[1]));
    return angletonode;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x0
// Checksum 0x33c5c39b, Offset: 0x6970
// Size: 0x84
function bb_gethigheststance() {
    if (self isatcovernodestrict() && self shouldusecovernode()) {
        higheststance = self gethighestnodestance(self.node);
        return higheststance;
    }
    return self getblackboardattribute("_stance");
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x7af2bc6c, Offset: 0x6a00
// Size: 0xba
function bb_getlocomotionfaceenemyquadrantprevious() {
    if (isdefined(self.prevrelativedir)) {
        direction = self.prevrelativedir;
        switch (direction) {
        case 0:
            return "locomotion_face_enemy_none";
        case 1:
            return "locomotion_face_enemy_front";
        case 2:
            return "locomotion_face_enemy_right";
        case 3:
            return "locomotion_face_enemy_left";
        case 4:
            return "locomotion_face_enemy_back";
        }
    }
    return "locomotion_face_enemy_none";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x24c0e3ab, Offset: 0x6ac8
// Size: 0x1a
function bb_getcurrentcovernodetype() {
    return getcovertype(self.node);
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x817b1d49, Offset: 0x6af0
// Size: 0x2e
function bb_getcoverconcealed() {
    if (iscoverconcealed(self.node)) {
        return "concealed";
    }
    return "unconcealed";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xb786d947, Offset: 0x6b28
// Size: 0x7a
function bb_getcurrentlocationcovernodetype() {
    if (isdefined(self.node) && distancesquared(self.origin, self.node.origin) < sqr(24)) {
        return bb_getcurrentcovernodetype();
    }
    return bb_getpreviouscovernodetype();
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xc2782b53, Offset: 0x6bb0
// Size: 0x92
function function_8493bd6a() {
    if (isdefined(self.node) && distancesquared(self.origin, self.node.origin) < sqr(24)) {
        return self gethighestnodestance(self.node);
    }
    return self gethighestnodestance(self.prevnode);
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xfe2ba52b, Offset: 0x6c50
// Size: 0xbe
function function_7f1ff852() {
    var_c6e68bb4 = self.prevnode;
    if (isdefined(self.node) && distancesquared(self.origin, self.node.origin) < sqr(24)) {
        var_c6e68bb4 = self.node;
    }
    if (isdefined(var_c6e68bb4)) {
        if (isinarray(getvalidcoverpeekouts(var_c6e68bb4), "over")) {
            return "YES";
        }
    }
    return "NO";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xd55f3112, Offset: 0x6d18
// Size: 0x2a
function bb_getshouldturn() {
    if (isdefined(self.should_turn) && self.should_turn) {
        return "should_turn";
    }
    return "should_not_turn";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xf999e8bc, Offset: 0x6d50
// Size: 0x3a
function bb_getarmsposition() {
    if (isdefined(self.zombie_arms_position)) {
        if (self.zombie_arms_position == "up") {
            return "arms_up";
        }
        return "arms_down";
    }
    return "arms_up";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xbeec5eb2, Offset: 0x6d98
// Size: 0x1e
function bb_gethaslegsstatus() {
    if (self.missinglegs) {
        return "has_legs_no";
    }
    return "has_legs_yes";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x8b8092bc, Offset: 0x6dc0
// Size: 0x2e
function function_f61d3341() {
    if (gibserverutils::isgibbed(self, 256)) {
        return "has_left_leg_no";
    }
    return "has_left_leg_yes";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x835c9a7e, Offset: 0x6df8
// Size: 0x2e
function function_9b395e55() {
    if (gibserverutils::isgibbed(self, 128)) {
        return "has_right_leg_no";
    }
    return "has_right_leg_yes";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x3243ae22, Offset: 0x6e30
// Size: 0x2e
function function_99e55609() {
    if (gibserverutils::isgibbed(self, 32)) {
        return "has_left_arm_no";
    }
    return "has_left_arm_yes";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x2883900b, Offset: 0x6e68
// Size: 0x2e
function function_aa8f1e69() {
    if (gibserverutils::isgibbed(self, 16)) {
        return "has_right_arm_no";
    }
    return "has_right_arm_yes";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x27d52580, Offset: 0x6ea0
// Size: 0x1e
function function_5b03a448() {
    if (isdefined(self.e_grapplee)) {
        return "has_grapplee_yes";
    }
    return "has_grapplee_no";
}

// Namespace aiutility/archetype_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xe3110dbd, Offset: 0x6ec8
// Size: 0x162
function actorgetpredictedyawtoenemy(entity, lookaheadtime) {
    if (isdefined(entity.predictedyawtoenemy) && isdefined(entity.predictedyawtoenemytime) && entity.predictedyawtoenemytime == gettime()) {
        return entity.predictedyawtoenemy;
    }
    selfpredictedpos = entity.origin;
    moveangle = entity.angles[1] + entity getmotionangle();
    selfpredictedpos += (cos(moveangle), sin(moveangle), 0) * 200 * lookaheadtime;
    aimpos = entity function_c709ce88();
    yaw = vectortoangles(aimpos - selfpredictedpos)[1] - entity.angles[1];
    yaw = absangleclamp360(yaw);
    entity.predictedyawtoenemy = yaw;
    entity.predictedyawtoenemytime = gettime();
    return yaw;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x3c32c74a, Offset: 0x7038
// Size: 0x1e
function function_e28a3ee5() {
    if (isdefined(self.var_920617c1)) {
        return self.var_920617c1;
    }
    return "stealth_investigate_height_default";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xce2839ca, Offset: 0x7060
// Size: 0x5e
function bb_actorispatroling() {
    entity = self;
    if (entity ai::has_behavior_attribute("patrol") && entity ai::get_behavior_attribute("patrol")) {
        return "patrol_enabled";
    }
    return "patrol_disabled";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x942f8d91, Offset: 0x70c8
// Size: 0x2e
function bb_actorhasenemy() {
    entity = self;
    if (isdefined(entity.enemy)) {
        return "has_enemy";
    }
    return "no_enemy";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x62fa0703, Offset: 0x7100
// Size: 0x6c
function function_b3f35a07() {
    c_door = self.ai.doortoopen;
    if (!isdefined(c_door)) {
        return "door_will_open_no";
    }
    if (is_true(self.ai.door_opened)) {
        return "door_will_open_yes";
    }
    return "door_will_open_no";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x2afa9d87, Offset: 0x7178
// Size: 0x3c
function function_7970d18b() {
    if (is_true(self.ai.var_10150769)) {
        return "door_overlay_disabled";
    }
    return "door_overlay_enabled";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x58d522d, Offset: 0x71c0
// Size: 0x162
function function_19574f85() {
    c_door = self.ai.doortoopen;
    if (!isdefined(c_door)) {
        return 999999;
    }
    var_203b2da1 = c_door.var_85f2454d.doorbottomcenter;
    if (!isdefined(var_203b2da1)) {
        var_203b2da1 = c_door.origin;
    }
    var_f56439f = c_door.var_85f2454d.var_c4269c41;
    if (!isdefined(var_f56439f)) {
        var_f56439f = anglestoright(c_door.angles);
    }
    var_a003c4d6 = math::vec_to_angles(var_f56439f);
    var_93b76ac5 = var_203b2da1 - self.origin;
    var_3ea61d84 = math::vec_to_angles(var_93b76ac5);
    angle_diff = var_a003c4d6 - var_3ea61d84;
    angle_diff = angleclamp180(angle_diff);
    var_deeb5ea3 = undefined;
    if (angle_diff < 0) {
        var_deeb5ea3 = angle_diff + 90;
    } else {
        var_deeb5ea3 = angle_diff - 90;
    }
    return var_deeb5ea3;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x901bd4e0, Offset: 0x7330
// Size: 0x52
function bb_actorgetenemyyaw() {
    enemy = self.enemy;
    if (!isdefined(enemy)) {
        return 0;
    }
    toenemyyaw = actorgetpredictedyawtoenemy(self, 0.2);
    return toenemyyaw;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x29183ab0, Offset: 0x7390
// Size: 0x148
function function_dc8e1a0a() {
    enemy = isdefined(self.var_2df45b5d) ? self.var_2df45b5d : self.enemy;
    if (!isdefined(enemy)) {
        return 0;
    }
    node = undefined;
    if (isdefined(self.node) && self nearnode(self.node)) {
        node = self.node;
    } else {
        node = self.prevnode;
    }
    if (!isdefined(node)) {
        return 0;
    }
    toenemyyaw = vectortoangles(enemy.origin - node.origin)[1] - node.angles[1];
    toenemyyaw = absangleclamp360(toenemyyaw);
    /#
        record3dtext("<unknown string>" + toenemyyaw, self.origin, (1, 0, 0), "<unknown string>", self);
    #/
    return toenemyyaw;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xb837bbff, Offset: 0x74e0
// Size: 0xe0
function bb_actorgetperfectenemyyaw() {
    enemy = isdefined(self.var_2df45b5d) ? self.var_2df45b5d : self.enemy;
    if (!isdefined(enemy)) {
        return 0;
    }
    toenemyyaw = vectortoangles(enemy.origin - self.origin)[1] - self.angles[1];
    toenemyyaw = absangleclamp360(toenemyyaw);
    /#
        record3dtext("<unknown string>" + toenemyyaw, self.origin, (1, 0, 0), "<unknown string>", self);
    #/
    return toenemyyaw;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xdc6af419, Offset: 0x75c8
// Size: 0xb4
function function_caea19a8() {
    result = self.angles[1];
    if (isdefined(self.stealth.patrol_react_pos) && isdefined(self.stealth) && isdefined(self.stealth.patrol_react_time) && gettime() - self.stealth.patrol_react_time < 2000) {
        deltaorigin = self.stealth.patrol_react_pos - self.origin;
        result = vectortoangles(deltaorigin)[1];
    }
    return result;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x8bf83dbe, Offset: 0x7688
// Size: 0x42
function bb_actorgetreactyaw() {
    return absangleclamp360(self.angles[1] - self getblackboardattribute("_react_yaw_world"));
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xb3ff6a48, Offset: 0x76d8
// Size: 0xbc
function function_bee4de6() {
    result = self.angles[1];
    if (isdefined(self.var_5aaa7f76)) {
        deltaorigin = self.var_5aaa7f76 - self.origin;
        /#
            recordstar(self.var_5aaa7f76, (1, 0, 1), "melee_fire", self);
            recordline(self.origin, self.var_5aaa7f76, (1, 0, 1), "melee_fire", self);
        #/
        result = vectortoangles(deltaorigin)[1];
    }
    return result;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xec376704, Offset: 0x77a0
// Size: 0x90
function function_6568cc68() {
    angle = absangleclamp360(self.angles[1] - self getblackboardattribute("_zombie_react_yaw_world"));
    /#
        record3dtext("<unknown string>" + angle, self.origin, (1, 0, 1), "melee_fire", self);
    #/
    return angle;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xded39103, Offset: 0x7838
// Size: 0x7a
function function_abb9c007(*entity) {
    if (isdefined(self.stealth)) {
        if (is_true(self.stealth.var_7f670ead)) {
            return 0;
        }
        return is_true(self.stealth.var_527ef51c);
    }
    return self haspath();
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xc2da4a24, Offset: 0x78c0
// Size: 0xb2
function getangleusingdirection(direction) {
    directionyaw = vectortoangles(direction)[1];
    yawdiff = directionyaw - self.angles[1];
    yawdiff *= 0.00277778;
    flooredyawdiff = floor(yawdiff + 0.5);
    turnangle = (yawdiff - flooredyawdiff) * 360;
    return absangleclamp360(turnangle);
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xf927e81b, Offset: 0x7980
// Size: 0x13c
function wasatcovernode() {
    if (isdefined(self.prevnode)) {
        if (self.prevnode.type == #"cover left" || self.prevnode.type == #"cover right" || self.prevnode.type == #"cover pillar" || self.prevnode.type == #"cover stand" || self.prevnode.type == #"conceal stand" || self.prevnode.type == #"cover crouch" || self.prevnode.type == #"cover crouch window" || self.prevnode.type == #"conceal crouch") {
            return true;
        }
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xfbd59acc, Offset: 0x7ac8
// Size: 0x636
function bb_getlocomotionexityaw(*blackboard, *yaw) {
    if (self haspath()) {
        predictedlookaheadinfo = self predictexit();
        status = predictedlookaheadinfo[#"path_prediction_status"];
        if (!isdefined(self.pathgoalpos)) {
            return -1;
        }
        if (status == 3) {
            start = self.origin;
            end = start + vectorscale((0, predictedlookaheadinfo[#"path_prediction_travel_vector"][1], 0), 100);
            angletoexit = vectortoangles(predictedlookaheadinfo[#"path_prediction_travel_vector"])[1];
            exityaw = absangleclamp360(angletoexit - self.prevnode.angles[1]);
            /#
                record3dtext("<unknown string>" + int(exityaw), self.origin - (0, 0, 5), (1, 0, 0), "<unknown string>", undefined, 0.4);
            #/
            return exityaw;
        } else if (status == 4) {
            start = self.origin;
            end = start + vectorscale((0, predictedlookaheadinfo[#"path_prediction_travel_vector"][1], 0), 100);
            angletoexit = vectortoangles(predictedlookaheadinfo[#"path_prediction_travel_vector"])[1];
            exityaw = absangleclamp360(angletoexit - self.angles[1]);
            /#
                record3dtext("<unknown string>" + int(exityaw), self.origin - (0, 0, 5), (1, 0, 0), "<unknown string>", undefined, 0.4);
            #/
            return exityaw;
        } else if (status == 0) {
            if (wasatcovernode() && distancesquared(self.prevnode.origin, self.origin) < 25) {
                end = self.pathgoalpos;
                angletodestination = vectortoangles(end - self.origin)[1];
                exityaw = absangleclamp360(angletodestination - self.prevnode.angles[1]);
                /#
                    record3dtext("<unknown string>" + int(exityaw), self.origin - (0, 0, 5), (1, 0, 0), "<unknown string>", undefined, 0.4);
                #/
                return exityaw;
            }
            start = predictedlookaheadinfo[#"path_prediction_start_point"];
            end = start + predictedlookaheadinfo[#"path_prediction_travel_vector"];
            exityaw = getangleusingdirection(predictedlookaheadinfo[#"path_prediction_travel_vector"]);
            /#
                record3dtext("<unknown string>" + int(exityaw), self.origin - (0, 0, 5), (1, 0, 0), "<unknown string>", undefined, 0.4);
            #/
            return exityaw;
        } else if (status == 2) {
            if (wasatcovernode() && distancesquared(self.prevnode.origin, self.origin) < 25) {
                end = self.pathgoalpos;
                angletodestination = vectortoangles(end - self.origin)[1];
                exityaw = absangleclamp360(angletodestination - self.prevnode.angles[1]);
                /#
                    record3dtext("<unknown string>" + int(exityaw), self.origin - (0, 0, 5), (1, 0, 0), "<unknown string>", undefined, 0.4);
                #/
                return exityaw;
            }
            exityaw = getangleusingdirection(vectornormalize(self.pathgoalpos - self.origin));
            /#
                record3dtext("<unknown string>" + int(exityaw), self.origin - (0, 0, 5), (1, 0, 0), "<unknown string>", undefined, 0.4);
            #/
            return exityaw;
        }
    }
    return -1;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x4d77c242, Offset: 0x8108
// Size: 0x14a
function bb_getlocomotionfaceenemyquadrant() {
    /#
        walkstring = getdvarstring(#"tacticalwalkdirection");
        switch (walkstring) {
        case #"right":
            return "<unknown string>";
        case #"left":
            return "<unknown string>";
        case #"back":
            return "<unknown string>";
        }
    #/
    if (isdefined(self.relativedir)) {
        direction = self.relativedir;
        switch (direction) {
        case 0:
            return "locomotion_face_enemy_front";
        case 1:
            return "locomotion_face_enemy_front";
        case 2:
            return "locomotion_face_enemy_right";
        case 3:
            return "locomotion_face_enemy_left";
        case 4:
            return "locomotion_face_enemy_back";
        }
    }
    return "locomotion_face_enemy_front";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xf68e0e09, Offset: 0x8260
// Size: 0x26a
function bb_getlocomotionpaintype() {
    if (self haspath()) {
        predictedlookaheadinfo = self predictpath();
        status = predictedlookaheadinfo[#"path_prediction_status"];
        startpos = self.origin;
        furthestpointtowardsgoalclear = 1;
        if (status == 2) {
            furthestpointalongtowardsgoal = startpos + vectorscale(self.lookaheaddir, 300);
            furthestpointtowardsgoalclear = self findpath(startpos, furthestpointalongtowardsgoal, 0, 0) && self maymovetopoint(furthestpointalongtowardsgoal);
        }
        if (furthestpointtowardsgoalclear) {
            forwarddir = anglestoforward(self.angles);
            possiblepaintypes = [];
            endpos = startpos + vectorscale(forwarddir, 300);
            if (self maymovetopoint(endpos) && self findpath(startpos, endpos, 0, 0)) {
                possiblepaintypes[possiblepaintypes.size] = "locomotion_moving_pain_long";
            }
            endpos = startpos + vectorscale(forwarddir, 200);
            if (self maymovetopoint(endpos) && self findpath(startpos, endpos, 0, 0)) {
                possiblepaintypes[possiblepaintypes.size] = "locomotion_moving_pain_med";
            }
            endpos = startpos + vectorscale(forwarddir, 150);
            if (self maymovetopoint(endpos) && self findpath(startpos, endpos, 0, 0)) {
                possiblepaintypes[possiblepaintypes.size] = "locomotion_moving_pain_short";
            }
            if (possiblepaintypes.size) {
                return array::random(possiblepaintypes);
            }
        }
    }
    return "locomotion_inplace_pain";
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xd024a896, Offset: 0x84d8
// Size: 0x42
function bb_getlookaheadangle() {
    return absangleclamp360(vectortoangles(self.lookaheaddir)[1] - self.angles[1]);
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x2948d881, Offset: 0x8528
// Size: 0x1a
function bb_getpreviouscovernodetype() {
    return getcovertype(self.prevnode);
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x59dd5ac1, Offset: 0x8550
// Size: 0x246
function bb_actorgettrackingturnyaw() {
    var_71a0045b = undefined;
    if (isdefined(self.enemy)) {
        if (self cansee(self.enemy)) {
            var_71a0045b = self.enemy.origin;
        } else if (issentient(self.enemy)) {
            if (self.highlyawareradius && distance2dsquared(self.enemy.origin, self.origin) < sqr(self.highlyawareradius)) {
                var_71a0045b = self.enemy.origin;
            } else {
                var_71a0045b = self function_c709ce88();
            }
        }
    } else if (isdefined(self.ai.var_3af1add3)) {
        var_71a0045b = [[ self.ai.var_3af1add3 ]](self);
    } else if (isdefined(self.likelyenemyposition)) {
        if (self canshoot(self.likelyenemyposition)) {
            if (!isdefined(self.var_2747663c)) {
                self.var_2747663c = 0;
                self.var_dec89a60 = 0;
            }
            if (gettime() - self.var_2747663c > 500) {
                self.var_dec89a60 = sighttracepassed(self.origin + (0, 0, 64), self.likelyenemyposition, 0, self);
                self.var_2747663c = gettime();
            }
            if (self.var_dec89a60) {
                var_71a0045b = self.likelyenemyposition;
            }
        }
    }
    if (isdefined(var_71a0045b)) {
        turnyaw = absangleclamp360(self.angles[1] - vectortoangles(var_71a0045b - self.origin)[1]);
        return turnyaw;
    }
    return 0;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x8c55067b, Offset: 0x87a0
// Size: 0x8a
function function_db9d3d() {
    var_f2db693 = self gettagangles("j_head");
    if (!isdefined(var_f2db693)) {
        return 0;
    }
    var_f2db693 = var_f2db693[1];
    var_b00fa06a = self.angles[1];
    var_18f32ba4 = angleclamp180(var_f2db693 - var_b00fa06a);
    return var_18f32ba4;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xcf5706f3, Offset: 0x8838
// Size: 0x11a
function bb_getweaponclass() {
    weaponclass = isdefined(self.weaponclass) ? self.weaponclass : "rifle";
    switch (weaponclass) {
    case #"rifle":
        return "rifle";
    case #"rifle":
        return "rifle";
    case #"mg":
        return "mg";
    case #"smg":
        return "smg";
    case #"spread":
        return "spread";
    case #"pistol":
        return "pistol";
    case #"grenade":
        return "grenade";
    case #"rocketlauncher":
        return "rocketlauncher";
    default:
        return "rifle";
    }
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xf162681c, Offset: 0x8960
// Size: 0x42
function function_6f949118() {
    angles = self gettagangles("tag_origin");
    return angleclamp180(angles[0]);
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x5881a509, Offset: 0x89b0
// Size: 0x4a
function function_38855dc8() {
    if (!isdefined(self.favoriteenemy)) {
        return 0;
    }
    velocity = self.favoriteenemy getvelocity();
    return length(velocity);
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xbf0903fa, Offset: 0x8a08
// Size: 0x36
function function_ebaa4b7c() {
    if (!isdefined(self.enemy)) {
        return 0;
    }
    return self.enemy.origin[2] - self.origin[2];
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x666bc0b2, Offset: 0x8a48
// Size: 0x42
function function_6ecd367e() {
    if (!isdefined(self.traversestartnode) || !isdefined(self.traversestartnode.type)) {
        return "NONE";
    }
    return self.traversestartnode.type;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x6d27aa53, Offset: 0x8a98
// Size: 0xd2
function function_b51ae338() {
    if (!isdefined(self.lastfootsteptime)) {
        self.lastfootsteptime = -1;
        self.var_82a8657 = "";
    }
    currenttime = gettime();
    if (currenttime != self.lastfootsteptime) {
        self.lastfootsteptime = currenttime;
        var_ddf4687a = self function_502c064();
        self.var_82a8657 = isdefined(var_ddf4687a.name) ? var_ddf4687a.name : "";
        self.var_5476bfce = isdefined(var_ddf4687a.percentage) ? var_ddf4687a.percentage : 0;
    }
    return self.var_82a8657;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x7e5b536e, Offset: 0x8b78
// Size: 0xd2
function function_4dbfd949() {
    if (!isdefined(self.lastfootsteptime)) {
        self.lastfootsteptime = -1;
        self.var_5476bfce = 0;
    }
    currenttime = gettime();
    if (currenttime != self.lastfootsteptime) {
        self.lastfootsteptime = currenttime;
        var_ddf4687a = self function_502c064();
        self.var_82a8657 = isdefined(var_ddf4687a.name) ? var_ddf4687a.name : "";
        self.var_5476bfce = isdefined(var_ddf4687a.percentage) ? var_ddf4687a.percentage : 0;
    }
    return self.var_5476bfce;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xa062ece9, Offset: 0x8c58
// Size: 0x6e
function function_463cbab0() {
    if (isdefined(self.ai.var_9ec404f2)) {
        return self.ai.var_9ec404f2;
    }
    return isdefined(self getblackboardattribute("_stance")) ? self getblackboardattribute("_stance") : "stand";
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x63abdeb8, Offset: 0x8cd0
// Size: 0x40
function notstandingcondition(entity) {
    if (entity getblackboardattribute("_stance") != "stand") {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x92c39438, Offset: 0x8d18
// Size: 0x40
function notcrouchingcondition(entity) {
    if (entity getblackboardattribute("_stance") != "crouch") {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xb9eea4cf, Offset: 0x8d60
// Size: 0x40
function function_736c20e1(entity) {
    if (entity getblackboardattribute("_stance") != "prone") {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xc432670d, Offset: 0x8da8
// Size: 0x88
function function_4aff5b9d(entity) {
    var_899a4d57 = 0;
    if (notstandingcondition(entity)) {
        if (isdefined(entity.prevnode) && (!iscovernode(entity.prevnode) || !entity function_4c2fffe6(entity.prevnode))) {
            var_899a4d57 = 1;
        }
    }
    return var_899a4d57;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x56fae4e3, Offset: 0x8e38
// Size: 0x16c
function function_4fefd9b(entity) {
    var_a65f9f38 = 0;
    if (gettime() > (isdefined(entity.var_20b5b6da) ? entity.var_20b5b6da : 0)) {
        if (isdefined(entity.prevnode) && iscovernode(entity.prevnode) && entity function_4c2fffe6(entity.prevnode) && entity nearnode(entity.prevnode)) {
            exityaw = bb_getlocomotionexityaw();
            if (exityaw > 120 && exityaw < 240) {
                tacpoint = function_5e657d(entity.prevnode);
                if (isdefined(tacpoint) && isdefined(entity.enemy) && function_96c81b85(tacpoint, entity.enemy.origin + (0, 0, 60))) {
                    var_a65f9f38 = 1;
                }
            }
        }
    }
    return var_a65f9f38;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xd935db51, Offset: 0x8fb0
// Size: 0x34
function function_31cbd57e(entity) {
    entity.var_20b5b6da = gettime() + 3000;
    function_2da76de(entity);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x847cbf86, Offset: 0x8ff0
// Size: 0x6c
function scriptstartragdoll(entity) {
    entity startragdoll();
    /#
        record3dtext("<unknown string>", entity.origin + (0, 0, 4), (1, 0, 0), "<unknown string>", undefined, 0.4);
    #/
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x88bccce1, Offset: 0x9068
// Size: 0x104
function private prepareforexposedmelee(entity) {
    keepclaimnode(entity);
    meleeacquiremutex(entity);
    currentstance = entity getblackboardattribute("_stance");
    if (isdefined(entity.enemy) && entity.enemy.scriptvehicletype === "firefly") {
        entity setblackboardattribute("_melee_enemy_type", "fireflyswarm");
        entity.var_9af77489 = 1;
    }
    if (currentstance == "crouch") {
        entity setblackboardattribute("_desired_stance", "stand");
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x2a8fffff, Offset: 0x9178
// Size: 0x3c
function isfrustrated(entity) {
    return isdefined(entity.ai.frustrationlevel) && entity.ai.frustrationlevel > 0;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x206cb518, Offset: 0x91c0
// Size: 0x86
function function_22766ccd(entity) {
    if (isdefined(entity.ai.frustrationlevel) && entity.ai.frustrationlevel >= 2) {
        if (entity isatcovernode()) {
            var_7153a971 = gettime() - entity.var_79f94433;
            if (var_7153a971 >= 3000) {
                return true;
            }
        }
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x2f884686, Offset: 0x9250
// Size: 0x24
function flagenemyunattackableservice(entity) {
    entity flagenemyunattackable();
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x8a538866, Offset: 0x9280
// Size: 0x90
function islastknownenemypositionapproachable(entity) {
    if (isdefined(entity.enemy)) {
        lastknownpositionofenemy = entity lastknownpos(entity.enemy);
        if (entity isingoal(lastknownpositionofenemy) && entity findpath(entity.origin, lastknownpositionofenemy, 1, 0)) {
            return true;
        }
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xd28388b1, Offset: 0x9318
// Size: 0x22
function function_d116f6b4(entity) {
    return is_true(entity.fixednode);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xfa66bd2c, Offset: 0x9348
// Size: 0xdc
function tryadvancingonlastknownpositionbehavior(entity) {
    if (isdefined(entity.enemy)) {
        if (is_true(entity.aggressivemode)) {
            lastknownpositionofenemy = entity lastknownpos(entity.enemy);
            if (entity isingoal(lastknownpositionofenemy) && entity findpath(entity.origin, lastknownpositionofenemy, 1, 0)) {
                entity function_a57c34b7(lastknownpositionofenemy, lastknownpositionofenemy);
                setnextfindbestcovertime(entity);
                return true;
            }
        }
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xe71fd3d9, Offset: 0x9430
// Size: 0x7e
function function_15b9bbef(entity) {
    if (function_d116f6b4(entity) || entity.goalforced) {
        return false;
    }
    if (shouldonlyfireaccurately(entity)) {
        return false;
    }
    if (!isdefined(entity.var_df6c21d4)) {
        return true;
    }
    if (gettime() > entity.var_df6c21d4) {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x5cc98888, Offset: 0x94b8
// Size: 0x3b4
function trygoingtoclosestnodetoenemybehavior(entity) {
    var_be8baf32 = randomintrange(30000, 60000);
    if (entity.aggressivemode) {
        var_be8baf32 /= 2;
    }
    entity.var_df6c21d4 = gettime() + var_be8baf32;
    if (isdefined(entity.weapon) && isdefined(entity.weapon.weapclass) && entity.weapon.weapclass == "spread") {
        if (!is_true(entity.var_64a1455c) && isdefined(entity.team) && entity.team !== #"allies") {
            var_75f2bdf3 = tryrunningdirectlytoenemybehavior(entity);
            if (var_75f2bdf3) {
                return true;
            }
        }
    }
    if (isdefined(entity.enemy)) {
        lastknownpositionofenemy = entity lastknownpos(entity.enemy);
        closestrandomnode = undefined;
        nodes = entity findbestcovernodes();
        if (nodes.size > 0) {
            var_e416dc99 = [];
            foreach (node in nodes) {
                if (node.spawnflags & 128) {
                    var_e416dc99[var_e416dc99.size] = node;
                    continue;
                }
                var_c86d779 = anglestoforward(node.angles);
                dirtoenemy = vectornormalize((lastknownpositionofenemy - node.origin) * (1, 1, 0));
                dot = vectordot(var_c86d779, dirtoenemy);
                if (dot > 0.5) {
                    var_e416dc99[var_e416dc99.size] = node;
                }
            }
            if (var_e416dc99.size > 0) {
                nodes = var_e416dc99;
            }
            var_abe95912 = min(nodes.size, 15);
            bestnodes = array::slice(nodes, 0, var_abe95912 - 1);
            var_1a11849e = arraysortclosest(bestnodes, lastknownpositionofenemy, 1);
            closestrandomnode = var_1a11849e[0];
        }
        if (isdefined(closestrandomnode) && entity isingoal(closestrandomnode.origin)) {
            releaseclaimnode(entity);
            usecovernodewrapper(entity, closestrandomnode);
            return true;
        }
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xabcd39f9, Offset: 0x9878
// Size: 0x22c
function tryrunningdirectlytoenemybehavior(entity) {
    if (isdefined(entity.enemy) && is_true(entity.aggressivemode)) {
        origin = entity.enemy.origin;
        var_4bb69ed1 = 0;
        if (entity isingoal(origin)) {
            var_4bb69ed1 = 1;
        } else {
            goalinfo = self function_4794d6a3();
            if (isdefined(goalinfo.goalvolume)) {
                var_28fe9101 = goalinfo.goalvolume.maxs - goalinfo.goalvolume.mins;
                var_2e7904ce = (var_28fe9101[0] + var_28fe9101[1]) / 2;
                var_9fd6b922 = var_2e7904ce * 0.5;
                var_7ccdb9a2 = function_1ec73db4(origin, goalinfo.goalvolume);
                if (var_7ccdb9a2 < var_9fd6b922) {
                    var_4bb69ed1 = 1;
                }
            } else {
                var_d1530255 = goalinfo.goalradius * 0.5;
                var_30a12270 = distance(origin, goalinfo.goalpos) - goalinfo.goalradius;
                if (var_30a12270 < var_d1530255) {
                    var_4bb69ed1 = 1;
                }
            }
        }
        if (var_4bb69ed1 && entity findpath(entity.origin, origin, 1, 0)) {
            function_106ea3ab(entity, origin);
            thread function_97d5dde9(entity, entity.enemy);
            return true;
        }
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 2, eflags: 0x6 linked
// Checksum 0xd005fbfe, Offset: 0x9ab0
// Size: 0x8a
function private function_106ea3ab(entity, origin) {
    entity function_a57c34b7(origin, undefined, "run_to_enemy");
    releaseclaimnode(entity);
    setnextfindbestcovertime(entity);
    if (entity.nextfindbestcovertime - gettime() < 20000) {
        entity.nextfindbestcovertime = gettime() + 20000;
    }
}

// Namespace aiutility/archetype_utility
// Params 2, eflags: 0x6 linked
// Checksum 0xb88a8767, Offset: 0x9b48
// Size: 0x140
function private function_97d5dde9(entity, currentenemy) {
    entity endon(#"death", #"entitydeleted");
    self notify("676a46e517cf5043");
    self endon("676a46e517cf5043");
    while (true) {
        if (!isdefined(entity.enemy)) {
            entity function_d4c687c9();
            return;
        }
        if (entity.enemy != currentenemy) {
            function_106ea3ab(entity, entity.enemy.origin);
            currentenemy = entity.enemy;
        }
        if (gettime() > entity.nextfindbestcovertime) {
            entity function_d4c687c9();
            return;
        }
        if (entity cansee(entity.enemy)) {
            function_106ea3ab(entity, entity.enemy.origin);
        }
        wait(1);
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xfbc7773e, Offset: 0x9c90
// Size: 0x16
function shouldreacttonewenemy(entity) {
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x6e911e45, Offset: 0x9d30
// Size: 0x22
function hasweaponmalfunctioned(entity) {
    return is_true(entity.malfunctionreaction);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xe3741858, Offset: 0x9d60
// Size: 0x70
function function_2de6da8(entity) {
    if (entity ai::get_behavior_attribute("disablereload")) {
        return true;
    }
    if (btapi_hasammo(entity) || function_5ac894ba(entity)) {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x5baebe9f, Offset: 0x9dd8
// Size: 0x6a
function function_a9bc841(entity) {
    if (entity ai::get_behavior_attribute("disablereload")) {
        return false;
    }
    if (btapi_haslowammo(entity) && !function_5ac894ba(entity)) {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x94984bfc, Offset: 0x9e50
// Size: 0x44
function function_e0454a8b(entity) {
    if (btapi_hasenemy(entity)) {
        return true;
    }
    if (isdefined(entity.var_38754eac)) {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x3b13d97e, Offset: 0x9ea0
// Size: 0x22
function issafefromgrenades(entity) {
    return entity issafefromgrenade();
}

// Namespace aiutility/archetype_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x66cc3b26, Offset: 0x9ed0
// Size: 0x96
function function_f557fb8b(entity, optionalorigin) {
    if (isdefined(optionalorigin)) {
        if (!entity function_e8448790(optionalorigin)) {
            return false;
        }
        if (entity function_3f7004eb(optionalorigin)) {
            return false;
        }
    } else {
        if (!issafefromgrenades(entity)) {
            return false;
        }
        if (!entity function_b6149e2e()) {
            return false;
        }
    }
    return true;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xc5922da8, Offset: 0x9f70
// Size: 0x50
function recentlysawenemy(entity) {
    if (isdefined(entity.enemy) && entity seerecently(entity.enemy, 6)) {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xb8509965, Offset: 0x9fc8
// Size: 0x2e
function shouldonlyfireaccurately(entity) {
    if (is_true(entity.accuratefire)) {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xb1958575, Offset: 0xa000
// Size: 0x2e
function canblindfire(entity) {
    if (is_true(entity.var_57314c74)) {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xb565f7b1, Offset: 0xa038
// Size: 0x2e
function shouldbeaggressive(entity) {
    if (is_true(entity.aggressivemode)) {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x9a24fb28, Offset: 0xa070
// Size: 0xee
function usecovernodewrapper(entity, node) {
    samenode = entity.node === node;
    entity usecovernode(node);
    if (!samenode) {
        entity setblackboardattribute("_cover_mode", "cover_mode_none");
        entity setblackboardattribute("_previous_cover_mode", "cover_mode_none");
    }
    if (samenode) {
        setnextfindbestcovertime(entity);
    } else {
        entity.var_11b1735a = 1;
    }
    entity.ai.var_47823ae7 = gettime() + 1000;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x29ef80e5, Offset: 0xa168
// Size: 0xca
function function_3823e69e(entity) {
    var_f4406fbd = 0;
    if (is_true(entity.var_11b1735a)) {
        var_f4406fbd = 1;
        if (isdefined(entity.node)) {
            offsetorigin = entity getnodeoffsetposition(entity.node);
            if (!entity isposatgoal(offsetorigin)) {
                var_f4406fbd = 0;
            }
        }
    }
    if (var_f4406fbd) {
        setnextfindbestcovertime(entity);
        entity.var_79f94433 = gettime();
        entity.var_11b1735a = undefined;
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xd6fcbc33, Offset: 0xa240
// Size: 0x2a
function setnextfindbestcovertime(entity) {
    entity.nextfindbestcovertime = entity getnextfindbestcovertime();
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x286d0621, Offset: 0xa278
// Size: 0x64
function choosebestcovernodeasap(entity) {
    node = getbestcovernodeifavailable(entity);
    if (isdefined(node)) {
        releaseclaimnode(entity);
        usecovernodewrapper(entity, node);
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x6bc5ce95, Offset: 0xa2e8
// Size: 0xd4
function function_c1ac838a(entity) {
    var_eddf1d34 = function_f557fb8b(entity);
    if (!var_eddf1d34) {
        node = getbestcovernodeifavailable(entity);
        if (isdefined(node)) {
            if (isdefined(entity.node) && !var_eddf1d34 && !function_f557fb8b(entity, node.origin)) {
                node = undefined;
            }
        }
        if (isdefined(node)) {
            releaseclaimnode(entity);
            usecovernodewrapper(entity, node);
        }
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x4a5fcd33, Offset: 0xa3c8
// Size: 0x11c
function function_589c524f(entity) {
    var_edbb5c0d = 0;
    if (isdefined(entity.ai.var_bb3caa0f)) {
        goalinfo = self function_4794d6a3();
        if (isdefined(goalinfo.overridegoalpos)) {
            if (goalinfo.var_93096ed5 === "exposed_reacquire") {
                var_edbb5c0d = 1;
            }
        }
    }
    if (var_edbb5c0d) {
        if (!goalinfo.var_9e404264) {
            return 1;
        }
        curtime = gettime();
        var_20d51dfe = gettime() - entity.ai.var_bb3caa0f;
        var_5b03a551 = var_20d51dfe >= 5000;
        if (!var_5b03a551) {
            return 2;
        }
        var_bb5564f2 = var_20d51dfe > 30000;
        if (!var_bb5564f2) {
            return 3;
        } else {
            return 4;
        }
    }
    return 0;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x9ab0d683, Offset: 0xa4f0
// Size: 0x30e
function choosebettercoverservicecodeversion(entity) {
    if (!isalive(entity)) {
        return false;
    }
    if (isdefined(entity.stealth) && entity ai::get_behavior_attribute("stealth")) {
        return false;
    }
    if (is_true(entity.fixednode)) {
        var_d4302a98 = 0;
        if (isdefined(entity getgoalvolume())) {
            if (!isdefined(entity.node) || !entity isapproachinggoal()) {
                var_d4302a98 = 1;
            }
        }
        if (!var_d4302a98) {
            return false;
        }
    }
    if (is_true(entity.avoid_cover)) {
        return false;
    }
    var_eddf1d34 = function_f557fb8b(entity);
    if (var_eddf1d34) {
        if (entity isatcovernode() && issuppressedatcovercondition(entity)) {
            return false;
        }
        if (function_22766ccd(entity) && function_15b9bbef(entity)) {
            return false;
        }
    }
    var_d78ca29a = function_589c524f(entity);
    if (var_d78ca29a == 1 || var_d78ca29a == 2) {
        return false;
    }
    if (is_true(entity.keepclaimednode)) {
        return false;
    }
    var_eef1785f = !is_true(entity.var_11b1735a);
    newnode = entity choosebettercovernode(1, !var_eef1785f);
    if (isdefined(newnode)) {
        if (isdefined(entity.node) && !var_eddf1d34 && !function_f557fb8b(entity)) {
            newnode = undefined;
        }
    }
    if (isdefined(newnode)) {
        usecovernodewrapper(entity, newnode);
        return true;
    }
    var_c8d2b0aa = is_true(entity.var_11b1735a);
    if (gettime() > entity.nextfindbestcovertime && !var_c8d2b0aa) {
        setnextfindbestcovertime(entity);
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0xfc93f8d7, Offset: 0xa808
// Size: 0x2d0
function private sensenearbyplayers(entity) {
    if (isdefined(entity.stealth) && entity ai::get_behavior_attribute("stealth")) {
        return 0;
    }
    var_821a7a87 = getplayers();
    if (entity.team === #"allies") {
        allai = getaiarray();
        foreach (ai in allai) {
            if (ai.team === #"axis") {
                array::add(var_821a7a87, ai);
            }
        }
    }
    foreach (target in var_821a7a87) {
        distancesq = distancesquared(target.origin, entity.origin);
        if (isdefined(entity.ai.var_5a4e769f)) {
            var_89f8daa2 = entity.ai.var_5a4e769f;
            var_f7df3136 = sqr(var_89f8daa2);
        } else {
            var_89f8daa2 = 360;
            var_f7df3136 = sqr(360);
        }
        if (distancesq <= var_f7df3136) {
            distancetotarget = sqrt(distancesq);
            randchance = 1 - distancetotarget / var_89f8daa2;
            var_56e2d5dc = randomfloat(1);
            if (var_56e2d5dc < randchance) {
                entity getperfectinfo(target);
            }
        }
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0xe7e16b2a, Offset: 0xaae0
// Size: 0x24
function private function_4755155f(entity) {
    btapi_trackcoverparamsservice(entity);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xa94298fc, Offset: 0xab10
// Size: 0x22
function function_43a090a8(entity) {
    entity.ai.reloading = 1;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xfdd090e1, Offset: 0xab40
// Size: 0xfc
function function_dc44803c(entity) {
    btapi_refillammo(entity);
    entity.ai.reloading = 0;
    if (isdefined(entity.var_bd5efde2)) {
        animationstatenetwork::function_9d41000(entity);
    }
    if (isdefined(entity.var_af41987d) && entity haspart(entity.var_af41987d)) {
        entity showpart(entity.var_af41987d);
    }
    if (isdefined(entity.var_91d2328b) && entity haspart(entity.var_91d2328b)) {
        entity showpart(entity.var_91d2328b);
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0xe4d9cac3, Offset: 0xac48
// Size: 0xc
function private function_a7abd081(*entity) {
    
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xfcaee1bf, Offset: 0xac60
// Size: 0xa2
function getbestcovernodeifavailable(entity) {
    node = entity findbestcovernode();
    if (!isdefined(node)) {
        return undefined;
    }
    if (entity nearclaimnode()) {
        currentnode = self.node;
    }
    if (isdefined(currentnode) && node == currentnode) {
        return undefined;
    }
    if (isdefined(entity.covernode) && node == entity.covernode) {
        return undefined;
    }
    return node;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x0
// Checksum 0xc60cd1b1, Offset: 0xad10
// Size: 0xca
function getsecondbestcovernodeifavailable(entity) {
    nodes = entity findbestcovernodes();
    if (nodes.size > 1) {
        node = nodes[1];
    }
    if (!isdefined(node)) {
        return undefined;
    }
    if (entity nearclaimnode()) {
        currentnode = self.node;
    }
    if (isdefined(currentnode) && node == currentnode) {
        return undefined;
    }
    if (isdefined(entity.covernode) && node == entity.covernode) {
        return undefined;
    }
    return node;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x6fcf2ae6, Offset: 0xade8
// Size: 0x1c6
function getcovertype(node) {
    if (isdefined(node)) {
        if (node.type == #"cover pillar") {
            return "cover_pillar";
        } else if (node.type == #"cover left") {
            return "cover_left";
        } else if (node.type == #"cover right") {
            return "cover_right";
        } else if (node.type == #"cover stand" || node.type == #"conceal stand") {
            return "cover_stand";
        } else if (node.type == #"cover crouch" || node.type == #"cover crouch window" || node.type == #"conceal crouch") {
            return "cover_crouch";
        } else if (node.type == #"exposed" || node.type == #"guard") {
            return "cover_exposed";
        } else if (node.type == #"turret") {
            return "cover_turret";
        }
    }
    return "cover_none";
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x5a56e545, Offset: 0xafb8
// Size: 0x52
function iscoverconcealed(node) {
    if (isdefined(node)) {
        return (node.type == #"conceal crouch" || node.type == #"conceal stand");
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 0, eflags: 0x0
// Checksum 0x25fed4d0, Offset: 0xb018
// Size: 0x494
function canseeenemywrapper() {
    if (!isdefined(self.enemy)) {
        return 0;
    }
    if (!isdefined(self.node)) {
        return self cansee(self.enemy);
    }
    node = self.node;
    enemyeye = self.enemy geteye();
    yawtoenemy = angleclamp180(node.angles[1] - vectortoangles(enemyeye - node.origin)[1]);
    if (node.type == #"cover left" || node.type == #"cover right") {
        if (yawtoenemy > 60 || yawtoenemy < -60) {
            return 0;
        }
        if (self function_c97b59f8("stand", node)) {
            if (node.type == #"cover left" && yawtoenemy > 10) {
                return 0;
            }
            if (node.type == #"cover right" && yawtoenemy < -10) {
                return 0;
            }
        }
    }
    nodeoffset = (0, 0, 0);
    if (node.type == #"cover pillar") {
        assert(!(isdefined(node.spawnflags) && (node.spawnflags & 2048) == 2048) || !(isdefined(node.spawnflags) && (node.spawnflags & 1024) == 1024));
        canseefromleft = 1;
        canseefromright = 1;
        nodeoffset = (-32, 3.7, 60);
        lookfrompoint = calculatenodeoffsetposition(node, nodeoffset);
        canseefromleft = sighttracepassed(lookfrompoint, enemyeye, 0, undefined);
        nodeoffset = (32, 3.7, 60);
        lookfrompoint = calculatenodeoffsetposition(node, nodeoffset);
        canseefromright = sighttracepassed(lookfrompoint, enemyeye, 0, undefined);
        return (canseefromright || canseefromleft);
    }
    if (node.type == #"cover left") {
        nodeoffset = (-36, 7, 63);
    } else if (node.type == #"cover right") {
        nodeoffset = (36, 7, 63);
    } else if (node.type == #"cover stand" || node.type == #"conceal stand") {
        nodeoffset = (-3.7, -22, 63);
    } else if (node.type == #"cover crouch" || node.type == #"cover crouch window" || node.type == #"conceal crouch") {
        nodeoffset = (3.5, -12.5, 45);
    }
    lookfrompoint = calculatenodeoffsetposition(node, nodeoffset);
    if (sighttracepassed(lookfrompoint, enemyeye, 0, undefined)) {
        return 1;
    }
    return 0;
}

// Namespace aiutility/archetype_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xd777341d, Offset: 0xb4b8
// Size: 0x94
function calculatenodeoffsetposition(node, nodeoffset) {
    right = anglestoright(node.angles);
    forward = anglestoforward(node.angles);
    return node.origin + vectorscale(right, nodeoffset[0]) + vectorscale(forward, nodeoffset[1]) + (0, 0, nodeoffset[2]);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x9b6e7ed5, Offset: 0xb558
// Size: 0x49a
function gethighestnodestance(node) {
    assert(isdefined(node));
    assert(isdefined(self));
    if (self function_c97b59f8("stand", node)) {
        return "stand";
    }
    if (self function_c97b59f8("crouch", node)) {
        return "crouch";
    }
    if (self function_c97b59f8("prone", node)) {
        return "prone";
    }
    /#
        var_f078bbdd = [];
        if (doesnodeallowstance(node, "<unknown string>")) {
            var_f078bbdd[var_f078bbdd.size] = "<unknown string>";
        }
        if (doesnodeallowstance(node, "<unknown string>")) {
            var_f078bbdd[var_f078bbdd.size] = "<unknown string>";
        }
        if (doesnodeallowstance(node, "<unknown string>")) {
            var_f078bbdd[var_f078bbdd.size] = "<unknown string>";
        }
        var_58cb7691 = [];
        if (self function_f0e4aede("<unknown string>", node)) {
            var_58cb7691[var_58cb7691.size] = "<unknown string>";
        }
        if (self function_f0e4aede("<unknown string>", node)) {
            var_58cb7691[var_58cb7691.size] = "<unknown string>";
        }
        if (self function_f0e4aede("<unknown string>", node)) {
            var_58cb7691[var_58cb7691.size] = "<unknown string>";
        }
        msg1 = "<unknown string>" + self.aitype + "<unknown string>" + node.type + "<unknown string>" + node.origin + "<unknown string>";
        msg2 = "<unknown string>";
        if (var_f078bbdd.size == 0) {
            msg2 += "<unknown string>";
        } else {
            foreach (stance in var_f078bbdd) {
                msg2 += "<unknown string>" + stance + "<unknown string>";
            }
        }
        msg2 += "<unknown string>";
        msg3 = "<unknown string>";
        if (var_58cb7691.size == 0) {
            msg3 += "<unknown string>";
        } else {
            foreach (stance in var_58cb7691) {
                msg3 += "<unknown string>" + stance + "<unknown string>";
            }
        }
        msg3 += "<unknown string>";
        errormsg("<unknown string>" + msg1 + "<unknown string>" + msg2 + "<unknown string>" + msg3);
    #/
    if (node.type == #"cover crouch" || node.type == #"cover crouch window" || node.type == #"conceal crouch") {
        return "crouch";
    }
    return "stand";
}

// Namespace aiutility/archetype_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x66ded17f, Offset: 0xba00
// Size: 0x108
function function_c97b59f8(stance, node) {
    assert(isdefined(stance));
    assert(isdefined(node) && ispathnode(node));
    assert(isdefined(self) && isactor(self));
    if (ispathnode(node) && isactor(self) && isdefined(stance)) {
        return (doesnodeallowstance(node, stance) && self function_f0e4aede(stance, node));
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xa67a9c82, Offset: 0xbb10
// Size: 0x6e
function trystoppingservice(entity) {
    if (entity shouldholdgroundagainstenemy()) {
        entity clearpath();
        keepclaimnode(entity);
        return true;
    }
    releaseclaimnode(entity);
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xeb00a09c, Offset: 0xbb88
// Size: 0x2e
function shouldstopmoving(entity) {
    if (entity shouldholdgroundagainstenemy()) {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x17344b0f, Offset: 0xbbc0
// Size: 0x8e
function setcurrentweapon(weapon) {
    self.weapon = weapon;
    self.weaponclass = weapon.weapclass;
    if (weapon != level.weaponnone) {
        assert(isdefined(weapon.worldmodel), "<unknown string>" + weapon.name + "<unknown string>");
    }
    self.weaponmodel = weapon.worldmodel;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x6f329a86, Offset: 0xbc58
// Size: 0x7c
function setprimaryweapon(weapon) {
    self.primaryweapon = weapon;
    self.primaryweaponclass = weapon.weapclass;
    if (weapon != level.weaponnone) {
        assert(isdefined(weapon.worldmodel), "<unknown string>" + weapon.name + "<unknown string>");
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xd53095a6, Offset: 0xbce0
// Size: 0x7c
function setsecondaryweapon(weapon) {
    self.secondaryweapon = weapon;
    self.secondaryweaponclass = weapon.weapclass;
    if (weapon != level.weaponnone) {
        assert(isdefined(weapon.worldmodel), "<unknown string>" + weapon.name + "<unknown string>");
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x2b13fecc, Offset: 0xbd68
// Size: 0x1e
function keepclaimnode(entity) {
    entity.keepclaimednode = 1;
    return true;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x582ef3de, Offset: 0xbd90
// Size: 0x1a
function releaseclaimnode(entity) {
    entity.keepclaimednode = 0;
    return true;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xf69b8c06, Offset: 0xbdb8
// Size: 0x36
function function_8b760d36(entity) {
    if (entity isingoal(entity.origin)) {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x11fd2a0f, Offset: 0xbdf8
// Size: 0x7a
function getaimyawtoenemyfromnode(entity, node, *enemy) {
    return angleclamp180(vectortoangles(node lastknownpos(node.enemy) - enemy.origin)[1] - enemy.angles[1]);
}

// Namespace aiutility/archetype_utility
// Params 3, eflags: 0x2 linked
// Checksum 0xebd49175, Offset: 0xbe80
// Size: 0x7a
function getaimpitchtoenemyfromnode(entity, node, *enemy) {
    return angleclamp180(vectortoangles(node lastknownpos(node.enemy) - enemy.origin)[0] - enemy.angles[0]);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x2fea3761, Offset: 0xbf08
// Size: 0x7c
function choosefrontcoverdirection(entity) {
    coverdirection = entity getblackboardattribute("_cover_direction");
    entity setblackboardattribute("_previous_cover_direction", coverdirection);
    entity setblackboardattribute("_cover_direction", "cover_front_direction");
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x0
// Checksum 0x286350cb, Offset: 0xbf90
// Size: 0x70
function locomotionshouldpatrol(entity) {
    if (entity haspath() && entity ai::has_behavior_attribute("patrol") && entity ai::get_behavior_attribute("patrol")) {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x84a75c80, Offset: 0xc008
// Size: 0x74
function private _dropriotshield(riotshieldinfo) {
    entity = self;
    entity shared::throwweapon(riotshieldinfo.weapon, riotshieldinfo.tag, 1, 0);
    if (isdefined(entity)) {
        entity detach(riotshieldinfo.model, riotshieldinfo.tag);
    }
}

// Namespace aiutility/archetype_utility
// Params 4, eflags: 0x0
// Checksum 0xdd88db0c, Offset: 0xc088
// Size: 0x92
function attachriotshield(entity, riotshieldweapon, riotshieldmodel, riotshieldtag) {
    riotshield = spawnstruct();
    riotshield.weapon = riotshieldweapon;
    riotshield.tag = riotshieldtag;
    riotshield.model = riotshieldmodel;
    entity attach(riotshieldmodel, riotshield.tag);
    entity.riotshield = riotshield;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xd05065a3, Offset: 0xc128
// Size: 0x54
function dropriotshield(entity) {
    if (isdefined(entity.riotshield)) {
        riotshieldinfo = entity.riotshield;
        entity.riotshield = undefined;
        entity thread _dropriotshield(riotshieldinfo);
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x274d4617, Offset: 0xc188
// Size: 0x90
function meleeacquiremutex(entity) {
    if (isdefined(entity) && isdefined(entity.enemy)) {
        entity.meleeenemy = entity.enemy;
        if (isplayer(entity.meleeenemy)) {
            if (!isdefined(entity.meleeenemy.meleeattackers)) {
                entity.meleeenemy.meleeattackers = 0;
            }
            entity.meleeenemy.meleeattackers++;
        }
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x6b42f983, Offset: 0xc220
// Size: 0xaa
function meleereleasemutex(entity) {
    if (isdefined(entity.meleeenemy)) {
        if (isplayer(entity.meleeenemy)) {
            if (isdefined(entity.meleeenemy.meleeattackers)) {
                entity.meleeenemy.meleeattackers -= 1;
                if (entity.meleeenemy.meleeattackers <= 0) {
                    entity.meleeenemy.meleeattackers = undefined;
                }
            }
        }
    }
    entity.meleeenemy = undefined;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x0
// Checksum 0xa48ea915, Offset: 0xc2d8
// Size: 0x22
function shouldmutexmelee(entity) {
    return function_3d91d94b(entity);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x0
// Checksum 0xec6d8412, Offset: 0xc308
// Size: 0x22
function shouldnormalmelee(entity) {
    return hascloseenemytomelee(entity);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x0
// Checksum 0xd6fd31df, Offset: 0xc338
// Size: 0x22
function shouldmelee(entity) {
    return btapi_shouldmelee(entity);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xd724346f, Offset: 0xc368
// Size: 0x22
function hascloseenemytomelee(entity) {
    return btapi_shouldnormalmelee(entity);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x0
// Checksum 0x59eaef39, Offset: 0xc398
// Size: 0x22
function shouldchargemelee(entity) {
    return btapi_shouldchargemelee(entity);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x8f50137f, Offset: 0xc3c8
// Size: 0x104
function private setupchargemeleeattack(entity) {
    if (isdefined(entity.enemy) && entity.enemy.scriptvehicletype === "firefly") {
        entity setblackboardattribute("_melee_enemy_type", "fireflyswarm");
        entity.var_9af77489 = 1;
    }
    meleeacquiremutex(entity);
    keepclaimnode(entity);
    /#
        record3dtext("<unknown string>" + distance(self.origin, self.enemy.origin), self.origin + (0, 0, 64), (1, 0, 0), "<unknown string>");
    #/
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0xca0adc90, Offset: 0xc4d8
// Size: 0x104
function private cleanupmelee(entity) {
    meleereleasemutex(entity);
    releaseclaimnode(entity);
    if (is_true(entity.var_9af77489)) {
        entity setblackboardattribute("_melee_enemy_type", undefined);
        entity.var_9af77489 = undefined;
    }
    if (isdefined(entity.ai.var_aba9dcfd) && isdefined(entity.ai.var_38ee3a42)) {
        entity pathmode("move delayed", 1, randomfloatrange(entity.ai.var_aba9dcfd, entity.ai.var_38ee3a42));
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x50b43013, Offset: 0xc5e8
// Size: 0xdc
function private cleanupchargemelee(entity) {
    entity.ai.nextchargemeleetime = gettime() + 2000;
    if (is_true(entity.var_9af77489)) {
        entity setblackboardattribute("_melee_enemy_type", undefined);
        entity.var_9af77489 = undefined;
    }
    meleereleasemutex(entity);
    releaseclaimnode(entity);
    entity pathmode("move delayed", 1, randomfloatrange(0.75, 1.5));
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x14060fb8, Offset: 0xc6d0
// Size: 0x144
function cleanupchargemeleeattack(entity) {
    meleereleasemutex(entity);
    releaseclaimnode(entity);
    if (is_true(entity.var_9af77489)) {
        entity setblackboardattribute("_melee_enemy_type", undefined);
        entity.var_9af77489 = undefined;
    }
    if (isdefined(entity.ai.var_aba9dcfd) && isdefined(entity.ai.var_38ee3a42)) {
        entity pathmode("move delayed", 1, randomfloatrange(entity.ai.var_aba9dcfd, entity.ai.var_38ee3a42));
        return;
    }
    entity pathmode("move delayed", 1, randomfloatrange(0.5, 1));
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x8c028823, Offset: 0xc820
// Size: 0x56
function private shouldchoosespecialpronepain(entity) {
    stance = entity getblackboardattribute("_stance");
    return stance == "prone_back" || stance == "prone_front";
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x77de6f17, Offset: 0xc880
// Size: 0x20
function private function_9b0e7a22(entity) {
    return entity.var_40543c03 === "concussion";
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0xcec41fec, Offset: 0xc8a8
// Size: 0x20
function private function_3769693b(entity) {
    return entity.var_40543c03 === "fire";
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x2ed4ed4b, Offset: 0xc8d0
// Size: 0xe
function private shouldchoosespecialpain(*entity) {
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x75fdc0ae, Offset: 0xc8e8
// Size: 0x16
function private function_89cb7bfd(entity) {
    return entity.var_ab2486b4;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0xe1b2d528, Offset: 0xc908
// Size: 0x32
function private shouldchoosespecialdeath(entity) {
    if (isdefined(entity.damageweapon)) {
        return entity.damageweapon.specialpain;
    }
    return 0;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x4cb5229b, Offset: 0xc948
// Size: 0x56
function private shouldchoosespecialpronedeath(entity) {
    stance = entity getblackboardattribute("_stance");
    return stance == "prone_back" || stance == "prone_front";
}

// Namespace aiutility/archetype_utility
// Params 2, eflags: 0x6 linked
// Checksum 0xb24c888d, Offset: 0xc9a8
// Size: 0x40
function private setupexplosionanimscale(*entity, *asmstatename) {
    self.animtranslationscale = 2;
    self asmsetanimationrate(0.7);
    return 4;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x8baf108d, Offset: 0xc9f0
// Size: 0x1fe
function isbalconydeath(entity) {
    if (is_true(entity.var_2f38dcc9) || is_true(entity.var_f13e4919)) {
        self.b_balcony_death = 1;
        return true;
    }
    if (!isdefined(entity.node)) {
        return false;
    }
    if (!(entity.node.spawnflags & 1024 || entity.node.spawnflags & 2048)) {
        return false;
    }
    if (isdefined(entity.node.script_balconydeathchance) && randomint(100) > int(100 * entity.node.script_balconydeathchance)) {
        return false;
    }
    distsq = distancesquared(entity.origin, entity.node.origin);
    if (distsq > sqr(64)) {
        return false;
    }
    anglediff = math::angle_dif(int(entity.node.angles[1]), int(entity.angles[1]));
    if (abs(anglediff) > 15) {
        return false;
    }
    self.b_balcony_death = 1;
    return true;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xaf9e0f59, Offset: 0xcbf8
// Size: 0x1aa
function function_c104a10e(entity) {
    if (is_true(entity.var_20ed6efb)) {
        return true;
    }
    if (!isdefined(entity.node)) {
        return false;
    }
    if (!is_true(entity.node.var_f0a93b8d)) {
        return false;
    }
    if (isdefined(entity.node.var_b8179184) && randomint(100) > int(100 * entity.node.var_b8179184)) {
        return false;
    }
    distsq = distancesquared(entity.origin, entity.node.origin);
    if (distsq > sqr(64)) {
        return false;
    }
    anglediff = math::angle_dif(int(entity.node.angles[1]), int(entity.angles[1]));
    if (abs(anglediff) > 15) {
        return false;
    }
    return true;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x5b622014, Offset: 0xcdb0
// Size: 0xd4
function balconydeath(entity) {
    entity.clamptonavmesh = 0;
    if (is_true(entity.var_2f38dcc9) || entity.node.spawnflags & 1024) {
        entity setblackboardattribute("_special_death", "balcony");
        return;
    }
    if (is_true(entity.var_f13e4919) || entity.node.spawnflags & 2048) {
        entity setblackboardattribute("_special_death", "balcony_norail");
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x551921b0, Offset: 0xce90
// Size: 0x2c
function usecurrentposition(entity) {
    entity function_a57c34b7(entity.origin);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x37fd20f8, Offset: 0xcec8
// Size: 0x2c
function isunarmed(entity) {
    if (entity.weapon == level.weaponnone) {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x0
// Checksum 0x2a62be40, Offset: 0xcf00
// Size: 0x174
function function_7bbe1407(ai) {
    ai endon(#"death");
    sniper_glint = #"lensflares/fx9_lf_sniper_glint";
    var_910f361 = ai.weapon;
    fx_tags = ["tag_sights", "tag_scope_rear_lid_animate", "tag_scope", "tag_barrel", "tag_flash", "tag_eye"];
    while (true) {
        ai waittill(#"about_to_fire");
        if (ai.weapon != var_910f361) {
            continue;
        }
        for (i = 0; i < fx_tags.size; i++) {
            tag = fx_tags[i];
            has_tag = isdefined(ai gettagorigin(tag));
            if (has_tag) {
                playfxontag(sniper_glint, ai, tag);
                break;
            }
        }
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x0
// Checksum 0x32341bd1, Offset: 0xd080
// Size: 0x48
function function_efed8903(ai) {
    ai endon(#"death");
    while (true) {
        ai waittill(#"stopped_firing");
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x50184dc, Offset: 0xd0d0
// Size: 0x2a
function private isinphalanx(entity) {
    return entity ai::get_behavior_attribute("phalanx");
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x304cf978, Offset: 0xd108
// Size: 0xb6
function private isinphalanxstance(entity) {
    phalanxstance = entity ai::get_behavior_attribute("phalanx_force_stance");
    currentstance = entity getblackboardattribute("_stance");
    switch (phalanxstance) {
    case #"stand":
        return (currentstance == "stand");
    case #"crouch":
        return (currentstance == "crouch");
    }
    return true;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x20dba543, Offset: 0xd1c8
// Size: 0xba
function private togglephalanxstance(entity) {
    phalanxstance = entity ai::get_behavior_attribute("phalanx_force_stance");
    switch (phalanxstance) {
    case #"stand":
        entity setblackboardattribute("_desired_stance", "stand");
        break;
    case #"crouch":
        entity setblackboardattribute("_desired_stance", "crouch");
        break;
    }
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xec4f350c, Offset: 0xd290
// Size: 0x9a
function isatattackobject(entity) {
    if (isdefined(entity.enemy_override)) {
        return false;
    }
    if (isdefined(entity.attackable) && is_true(entity.attackable.is_active)) {
        if (!isdefined(entity.attackable_slot)) {
            return false;
        }
        if (entity isatgoal()) {
            entity.is_at_attackable = 1;
            return true;
        }
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x434f8323, Offset: 0xd338
// Size: 0x7e
function shouldattackobject(entity) {
    if (isdefined(entity.enemy_override)) {
        return false;
    }
    if (isdefined(entity.attackable) && is_true(entity.attackable.is_active)) {
        if (is_true(entity.is_at_attackable)) {
            return true;
        }
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 4, eflags: 0x0
// Checksum 0x3a7f7bdd, Offset: 0xd3c0
// Size: 0xaa
function meleeattributescallback(entity, attribute, *oldvalue, value) {
    switch (oldvalue) {
    case #"can_melee":
        if (value) {
            attribute.canmelee = 1;
        } else {
            attribute.canmelee = 0;
        }
        break;
    case #"can_be_meleed":
        if (value) {
            attribute.canbemeleed = 1;
        } else {
            attribute.canbemeleed = 0;
        }
        break;
    }
}

// Namespace aiutility/archetype_utility
// Params 4, eflags: 0x0
// Checksum 0xef1eb1a4, Offset: 0xd478
// Size: 0x82
function arrivalattributescallback(entity, attribute, *oldvalue, value) {
    switch (oldvalue) {
    case #"disablearrivals":
        if (value) {
            attribute.ai.disablearrivals = 1;
        } else {
            attribute.ai.disablearrivals = 0;
        }
        break;
    }
}

// Namespace aiutility/archetype_utility
// Params 4, eflags: 0x0
// Checksum 0xcfb353a6, Offset: 0xd508
// Size: 0x82
function function_eef4346c(entity, attribute, *oldvalue, value) {
    switch (oldvalue) {
    case #"disablepeek":
        if (value) {
            attribute.ai.disablepeek = 1;
        } else {
            attribute.ai.disablepeek = 0;
        }
        break;
    }
}

// Namespace aiutility/archetype_utility
// Params 4, eflags: 0x0
// Checksum 0x48e31bcb, Offset: 0xd598
// Size: 0x82
function function_1cd75f29(entity, attribute, *oldvalue, value) {
    switch (oldvalue) {
    case #"disablelean":
        if (value) {
            attribute.ai.disablelean = 1;
        } else {
            attribute.ai.disablelean = 0;
        }
        break;
    }
}

// Namespace aiutility/archetype_utility
// Params 4, eflags: 0x0
// Checksum 0xcb0b21b9, Offset: 0xd628
// Size: 0x82
function function_a626b1a9(entity, attribute, *oldvalue, value) {
    switch (oldvalue) {
    case #"disablereload":
        if (value) {
            attribute.ai.disablereload = 1;
        } else {
            attribute.ai.disablereload = 0;
        }
        break;
    }
}

// Namespace aiutility/archetype_utility
// Params 4, eflags: 0x0
// Checksum 0x58f55905, Offset: 0xd6b8
// Size: 0x5a
function phalanxattributecallback(entity, *attribute, *oldvalue, value) {
    if (value) {
        oldvalue.ai.phalanx = 1;
        return;
    }
    oldvalue.ai.phalanx = 0;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0xf63e3e93, Offset: 0xd720
// Size: 0x2c6
function private generictryreacquireservice(entity) {
    if (!isdefined(entity.reacquire_state)) {
        entity.reacquire_state = 0;
    }
    if (!isdefined(entity.enemy)) {
        entity.reacquire_state = 0;
        return false;
    }
    if (entity haspath()) {
        entity.reacquire_state = 0;
        return false;
    }
    if (is_true(entity.fixednode)) {
        entity.reacquire_state = 0;
        return false;
    }
    if (entity seerecently(entity.enemy, 4)) {
        entity.reacquire_state = 0;
        return false;
    }
    dirtoenemy = vectornormalize(entity.enemy.origin - entity.origin);
    forward = anglestoforward(entity.angles);
    if (vectordot(dirtoenemy, forward) < 0.5) {
        entity.reacquire_state = 0;
        return false;
    }
    switch (entity.reacquire_state) {
    case 0:
    case 1:
    case 2:
        step_size = 32 + entity.reacquire_state * 32;
        reacquirepos = entity reacquirestep(step_size);
        break;
    case 4:
        if (!entity cansee(entity.enemy) || !entity canshootenemy()) {
            entity flagenemyunattackable();
        }
        break;
    default:
        if (entity.reacquire_state > 15) {
            entity.reacquire_state = 0;
            return false;
        }
        break;
    }
    if (isvec(reacquirepos)) {
        entity function_a57c34b7(reacquirepos);
        return true;
    }
    entity.reacquire_state++;
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x9e0edd8a, Offset: 0xd9f0
// Size: 0x2ee
function private function_bcbf3f38(*entity) {
    if (!isdefined(self.enemy)) {
        return false;
    }
    animation = self asmgetcurrentdeltaanimation();
    currenttime = self getanimtime(animation);
    notes = getnotetracktimes(animation, "melee_fire");
    if (!isdefined(notes)) {
        if (!isalive(self.enemy)) {
            return true;
        }
        return false;
    }
    meleetime = notes[0];
    if (meleetime > currenttime && meleetime - currenttime < 0.05) {
        weapon = self.weapon;
        if (isdefined(self.meleeweapon) && self.meleeweapon != getweapon(#"none")) {
            weapon = self.meleeweapon;
        }
        if (!isdefined(weapon)) {
            return false;
        }
        distancetotarget = distance(self.origin, self.enemy.origin);
        /#
            record3dtext("<unknown string>" + distancetotarget, self.origin + (0, 0, 64), (1, 0, 0), "<unknown string>");
        #/
        if (distancetotarget <= weapon.aimeleerange) {
            return false;
        }
        settingsbundle = self ai::function_9139c839();
        if (!(isdefined(settingsbundle) && isdefined(settingsbundle.var_158394c8))) {
            return false;
        }
        if (distancetotarget > weapon.aimeleerange + settingsbundle.var_158394c8) {
            return true;
        }
        toenemy = vectornormalize(self.enemy.origin - self.origin);
        dot = vectordot(toenemy, self getweaponforwarddir());
        dot = math::clamp(dot, -1, 1);
        if (dot < 0 || acos(dot) > 80) {
            return true;
        }
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x4ab59c79, Offset: 0xdce8
// Size: 0x58
function private function_de7e2d3f(entity) {
    entity setblackboardattribute("_charge_melee_anim", math::cointoss());
    entity setupchargemeleeattack(entity);
    return true;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x5c154882, Offset: 0xdd48
// Size: 0x28
function private function_9414b79f(entity) {
    entity cleanupchargemelee(entity);
    return true;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x6 linked
// Checksum 0xafceb437, Offset: 0xdd78
// Size: 0x24
function private function_331e64bd(entity) {
    function_644b35fa(entity);
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x0
// Checksum 0xeb380048, Offset: 0xdda8
// Size: 0xce
function function_493e5914(smeansofdeath) {
    var_62ea2e0c = ["MOD_PISTOL_BULLET", "MOD_RIFLE_BULLET", "MOD_GRENADE", "MOD_PROJECTILE", "MOD_MELEE", "MOD_MELEE_WEAPON_BUTT", "MOD_MELEE_ASSASSINATE", "MOD_HEAD_SHOT", "MOD_IMPACT"];
    if (isinarray(var_62ea2e0c, smeansofdeath)) {
        return true;
    }
    return false;
}

// Namespace aiutility/archetype_utility
// Params 2, eflags: 0x0
// Checksum 0xdfc3f55c, Offset: 0xde80
// Size: 0x84
function function_254912d7(weapon_name, smeansofdeath) {
    if (!isdefined(level.var_feba6a94)) {
        level.var_feba6a94 = [];
    } else if (!isarray(level.var_feba6a94)) {
        level.var_feba6a94 = array(level.var_feba6a94);
    }
    level.var_feba6a94[weapon_name] = smeansofdeath;
}

// Namespace aiutility/archetype_utility
// Params 2, eflags: 0x0
// Checksum 0x58280d0e, Offset: 0xdf10
// Size: 0x8c
function function_e2278a4b(weapon, smeansofdeath) {
    if (sessionmodeiszombiesgame() && killstreaks::is_killstreak_weapon(weapon)) {
        return 0;
    }
    if (isdefined(smeansofdeath) && level.var_feba6a94[weapon.name] === smeansofdeath) {
        return 1;
    }
    return function_69c2d36f(weapon, smeansofdeath);
}

// Namespace aiutility/archetype_utility
// Params 2, eflags: 0x6 linked
// Checksum 0x9259c4a0, Offset: 0xdfa8
// Size: 0xee
function private function_69c2d36f(weapon, smeansofdeath) {
    if (sessionmodeiszombiesgame() && killstreaks::is_killstreak_weapon(weapon)) {
        return false;
    }
    if (isdefined(weapon) && weapon.var_349c3324 <= 1) {
        return false;
    }
    var_4e9743c0 = ["MOD_GRENADE", "MOD_PROJECTILE_SPLASH", "MOD_MELEE", "MOD_MELEE_WEAPON_BUTT", "MOD_MELEE_ASSASSINATE"];
    if (isinarray(var_4e9743c0, smeansofdeath)) {
        return false;
    }
    return true;
}

// Namespace aiutility/archetype_utility
// Params 1, eflags: 0x0
// Checksum 0xc0e7eb6d, Offset: 0xe0a0
// Size: 0x8c
function function_cb552839(entity) {
    var_cd13f926 = entity.origin;
    if (isdefined(entity.var_28621cf4)) {
        var_cd13f926 = entity gettagorigin(entity.var_28621cf4);
    }
    offset = (0, 0, 60);
    if (isdefined(entity.var_e5365d8a)) {
        offset = entity.var_e5365d8a;
    }
    return var_cd13f926 + offset;
}


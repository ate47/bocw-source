// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.gsc;
#using scripts\weapons\trapd.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\placeables.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\damagefeedback_shared.gsc;
#using scripts\core_common\damage.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace traps_deployable;

// Namespace traps_deployable
// Method(s) 3 Total 3
class class_7b5e0861 {

    var m_empdamage;
    var m_health;
    var m_model;
    var m_name;
    var m_placeimmediately;
    var m_spawnsentity;
    var m_timeout;
    var m_type;
    var m_vehicle;
    var m_weapon;
    var var_28f1ce55;
    var var_31e7e66a;
    var var_3efa7c17;
    var var_656cbe2d;
    var var_b4662b52;
    var var_c59ba447;
    var var_e84fc5dc;
    var var_f81e0192;

    // Namespace namespace_7b5e0861/traps_deployable
    // Params 0, eflags: 0x80 class_linked
    // Checksum 0x8b8eebef, Offset: 0x44f8
    // Size: 0x4c
    function destructor() {
        /#
            if (is_true(level.trapddebug)) {
                iprintlnbold("<unknown string>" + m_name);
            }
        #/
    }

    // Namespace namespace_7b5e0861/traps_deployable
    // Params 2, eflags: 0x0
    // Checksum 0x8ef2994e, Offset: 0x4550
    // Size: 0x162
    function function_8df621c(bundle, var_a8539bf6) {
        m_type = bundle.trap_type;
        m_name = bundle.name;
        m_weapon = bundle.weapon;
        m_vehicle = bundle.vehicle;
        m_model = bundle.model;
        var_e84fc5dc = bundle.var_f495bc84;
        var_28f1ce55 = bundle.var_90f05429;
        m_spawnsentity = bundle.spawnsentity;
        var_656cbe2d = bundle.var_28bb5240;
        m_timeout = bundle.timeout;
        m_health = bundle.health;
        if (isdefined(m_health)) {
            var_c59ba447 = m_health - int(m_health / 3);
        }
        m_empdamage = bundle.empdamage;
        var_f81e0192 = bundle.str_place;
        var_b4662b52 = bundle.var_6e2ae4a5;
        m_placeimmediately = bundle.placeimmediately;
        var_31e7e66a = bundle.var_d6011052;
        var_3efa7c17 = var_a8539bf6;
    }

}

// Namespace traps_deployable/traps_deployable
// Params 0, eflags: 0x5
// Checksum 0x9eb0b2e8, Offset: 0x290
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"traps_deployable", &preinit, undefined, undefined, #"load");
}

// Namespace traps_deployable/traps_deployable
// Params 0, eflags: 0x4
// Checksum 0xc5f0c1cb, Offset: 0x2e0
// Size: 0x34
function private preinit() {
    callback::on_spawned(&on_player_spawned);
    thread init_traps();
}

// Namespace traps_deployable/traps_deployable
// Params 0, eflags: 0x0
// Checksum 0x7e8c4ef3, Offset: 0x320
// Size: 0x3c
function on_player_spawned() {
    if (!isdefined(level._traps_deployable)) {
        return;
    }
    player = self;
    player owner_init();
}

// Namespace traps_deployable/traps_deployable
// Params 0, eflags: 0x0
// Checksum 0x2225f5ed, Offset: 0x368
// Size: 0x62
function owner_init() {
    owner = self;
    if (!isdefined(owner._traps_deployable)) {
        owner._traps_deployable = spawnstruct();
    }
    if (!isdefined(owner._traps_deployable.watchers_init)) {
        owner._traps_deployable.watchers_init = [];
    }
}

// Namespace traps_deployable/traps_deployable
// Params 0, eflags: 0x0
// Checksum 0xe2581d25, Offset: 0x3d8
// Size: 0x34
function function_18bbaaf9() {
    return isdefined(self._traps_deployable) && is_true(self._traps_deployable.var_18bbaaf9);
}

// Namespace traps_deployable/traps_deployable
// Params 0, eflags: 0x0
// Checksum 0xa6778245, Offset: 0x418
// Size: 0x2c
function init_traps() {
    function_5726a711();
    /#
        thread debug_init();
    #/
}

// Namespace traps_deployable/traps_deployable
// Params 0, eflags: 0x0
// Checksum 0xd914685, Offset: 0x450
// Size: 0x348
function function_5726a711() {
    level flag::wait_till("all_players_spawned");
    var_59eaf9e1 = struct::get_script_bundle_instances("traps_deployable");
    foreach (var_5e63b00d in var_59eaf9e1) {
        if (isdefined(var_5e63b00d.scriptbundlename)) {
            var_2d727ba0 = getscriptbundle(var_5e63b00d.scriptbundlename);
            if (isdefined(var_2d727ba0)) {
                var_a8539bf6 = spawnstruct();
                if (isdefined(var_5e63b00d.script_team) && var_5e63b00d.script_team != #"none") {
                    var_a8539bf6.team = var_5e63b00d.script_team;
                } else {
                    var_a8539bf6.team = #"any";
                }
                var_a8539bf6.origin = var_5e63b00d.origin;
                var_a8539bf6.angles = var_5e63b00d.angles;
                var_a8539bf6.model = var_5e63b00d.model;
                gameobject = var_2d727ba0.gameobject;
                if (isdefined(var_5e63b00d.scriptbundle_gameobject_override)) {
                    gameobject = var_5e63b00d.scriptbundle_gameobject_override;
                }
                var_a8539bf6.var_5b026504 = var_5e63b00d.script_objective;
                var_a8539bf6.var_ef146db5 = var_5e63b00d.var_d513a1cb;
                var_a8539bf6.gameobject = gameobject;
                if (var_a8539bf6 register_trap(var_2d727ba0)) {
                    var_5e63b00d.var_a8539bf6 = var_a8539bf6;
                    if (!is_true(var_5e63b00d.script_enable_on_start)) {
                        var_a8539bf6 gameobjects::disable_object(1);
                    }
                    if (is_true(var_5e63b00d.script_autoactivate_trap)) {
                        if (isdefined(var_5e63b00d.script_waittill)) {
                            var_5e63b00d thread function_8ecf6615(var_a8539bf6.mdl_gameobject.var_3af54106);
                        }
                        var_5e63b00d thread function_69996073(var_a8539bf6.mdl_gameobject.var_3af54106);
                    }
                    level function_8f66239f(var_5e63b00d.var_d513a1cb);
                    /#
                        var_5e63b00d function_ef942626();
                    #/
                }
            } else {
                /#
                    printerror("<unknown string>" + var_5e63b00d.scriptbundlename);
                #/
            }
            continue;
        }
        /#
            printerror("<unknown string>");
        #/
    }
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0xa24df2f7, Offset: 0x7a0
// Size: 0x3ae
function register_trap(var_2d727ba0) {
    var_a8539bf6 = self;
    if (isdefined(var_2d727ba0) && isdefined(var_2d727ba0.trap_type)) {
        switch (var_2d727ba0.trap_type) {
        case #"generic":
            function_2ce21754(var_2d727ba0.trap_type, &function_c75a9937, &function_6ce6a400, &function_2b8baf6d, &function_a879466e, &function_efe68db2, &function_6ef47474, &function_a21e6a22);
            break;
        case #"fire_bomb":
        case #"flash_disruptor":
        case #"mine":
        case #"claymore":
            function_2ce21754(var_2d727ba0.trap_type, &function_3c3f30e3, &function_6ce6a400, &function_2b8baf6d, &function_a879466e, &function_4a401677, &function_6ef47474, &function_b501ff0b);
            break;
        case #"guardian":
        case #"turret":
            function_2ce21754(var_2d727ba0.trap_type, &function_a39b7bb6, &function_6ce6a400, &function_69efb3b0, &function_a879466e, &function_612e5ef9, &function_6ef47474, &function_b501ff0b);
            break;
        case #"vehicle":
            function_2ce21754(var_2d727ba0.trap_type, &function_deb3cb22, &function_6ce6a400, &function_51d36222, &function_c66a11d0, &function_5c1d01, &function_6ef47474, &function_b501ff0b);
            break;
        default:
            assertmsg("<unknown string>" + var_2d727ba0.trap_type);
            /#
                printerror("<unknown string>");
            #/
            return;
        }
        if (var_a8539bf6 function_cf4b6e75(var_2d727ba0)) {
            return 1;
        }
    }
    /#
        printerror("<unknown string>");
    #/
    return 0;
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0x77b1097, Offset: 0xb58
// Size: 0xc6
function function_cf4b6e75(var_2d727ba0) {
    var_a8539bf6 = self;
    if (isdefined(var_2d727ba0.gameobject)) {
        var_3af54106 = new class_7b5e0861();
        [[ var_3af54106 ]]->function_8df621c(var_2d727ba0, var_a8539bf6);
        var_a8539bf6 function_19e12558(var_3af54106, var_a8539bf6.origin, var_a8539bf6.angles);
        /#
            printinfo("<unknown string>" + var_2d727ba0.name);
        #/
        return true;
    }
    /#
        printerror("<unknown string>");
    #/
    return false;
}

// Namespace traps_deployable/traps_deployable
// Params 4, eflags: 0x0
// Checksum 0x7e33fd63, Offset: 0xc28
// Size: 0x1ec
function function_19e12558(var_3af54106, origin, angles, var_563080be = undefined) {
    var_a8539bf6 = self;
    model = var_3af54106.m_model;
    if (isdefined(var_3af54106.var_3efa7c17.model)) {
    }
    var_ed8e6d51 = undefined;
    if (isdefined(model)) {
        var_ed8e6d51 = util::spawn_model(model, origin, angles);
    }
    if (isdefined(origin) && isdefined(angles)) {
        var_a8539bf6.origin = origin;
        var_a8539bf6.angles = angles;
    }
    var_a8539bf6 gameobjects::init_game_objects(var_a8539bf6.gameobject, var_a8539bf6.team, 0, undefined, var_ed8e6d51);
    var_a8539bf6 gameobjects::set_onuse_event(&function_e191d35c);
    if (isdefined(var_a8539bf6.mdl_gameobject.trigger) && !is_true(var_a8539bf6.mdl_gameobject.trigger.var_a865c2cd)) {
        var_a8539bf6.mdl_gameobject gameobjects::set_use_hint_text(var_3af54106.var_656cbe2d);
    }
    var_a8539bf6.mdl_gameobject.trigger usetriggerrequirelookat();
    if (isdefined(var_563080be)) {
        var_a8539bf6.mdl_gameobject.b_reusable = 0;
    }
    var_a8539bf6.mdl_gameobject.var_3af54106 = var_3af54106;
    var_3af54106 function_94e3167b(var_a8539bf6.mdl_gameobject);
}

// Namespace traps_deployable/traps_deployable
// Params 8, eflags: 0x0
// Checksum 0xf9f8609, Offset: 0xe20
// Size: 0x144
function function_2ce21754(type, onplacecallback, oncancelcallback, onmovecallback, var_11451882, var_f4ff98c9, ondamagecallback, damagewrapper) {
    if (function_77a3b730(type)) {
        return;
    }
    function_422733d9(type);
    function_1abc0efa(type, onplacecallback);
    function_b7d6919(type, oncancelcallback);
    function_8bcde666(type, onmovecallback);
    function_fe99979d(type, ondamagecallback);
    function_670497bc(type, var_11451882);
    function_51a2f229(type, var_f4ff98c9);
    function_f885ebd3(type, damagewrapper);
    /#
        printinfo("<unknown string>" + type);
    #/
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0x463393bf, Offset: 0xf70
// Size: 0x50
function function_77a3b730(type) {
    return isdefined(level._traps_deployable) && isdefined(level._traps_deployable.traptypes) && isdefined(level._traps_deployable.traptypes[type]);
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0x7d12cfc4, Offset: 0xfc8
// Size: 0xa0
function function_422733d9(type) {
    if (!isdefined(level._traps_deployable)) {
        level._traps_deployable = spawnstruct();
    }
    if (!isdefined(level._traps_deployable.traptypes)) {
        level._traps_deployable.traptypes = [];
    }
    if (!isdefined(level._traps_deployable.traptypes[type])) {
        level._traps_deployable.traptypes[type] = spawnstruct();
    }
}

// Namespace traps_deployable/traps_deployable
// Params 3, eflags: 0x0
// Checksum 0x14d0d57e, Offset: 0x1070
// Size: 0x6c
function add_callback(type, callbackname, callbackfunc) {
    if (function_77a3b730(type)) {
        if (isdefined(callbackname) && isdefined(callbackfunc)) {
            level._traps_deployable.traptypes[type].(callbackname) = callbackfunc;
        }
    }
}

// Namespace traps_deployable/traps_deployable
// Params 2, eflags: 0x0
// Checksum 0xf94761bf, Offset: 0x10e8
// Size: 0x34
function function_1abc0efa(type, callback) {
    add_callback(type, "onPlaceCallback", callback);
}

// Namespace traps_deployable/traps_deployable
// Params 2, eflags: 0x0
// Checksum 0xc1b8891b, Offset: 0x1128
// Size: 0x34
function function_b7d6919(type, callback) {
    add_callback(type, "onCancelCallback", callback);
}

// Namespace traps_deployable/traps_deployable
// Params 2, eflags: 0x0
// Checksum 0xb3113563, Offset: 0x1168
// Size: 0x34
function function_8bcde666(type, callback) {
    add_callback(type, "onMoveCallback", callback);
}

// Namespace traps_deployable/traps_deployable
// Params 2, eflags: 0x0
// Checksum 0x7eab6954, Offset: 0x11a8
// Size: 0x34
function function_670497bc(type, callback) {
    add_callback(type, "onActivateTrap", callback);
}

// Namespace traps_deployable/traps_deployable
// Params 2, eflags: 0x0
// Checksum 0xa26bca95, Offset: 0x11e8
// Size: 0x34
function function_51a2f229(type, callback) {
    add_callback(type, "onAutoActivateTrap", callback);
}

// Namespace traps_deployable/traps_deployable
// Params 2, eflags: 0x0
// Checksum 0x543c9217, Offset: 0x1228
// Size: 0x34
function function_fe99979d(type, callback) {
    add_callback(type, "onDamageCallback", callback);
}

// Namespace traps_deployable/traps_deployable
// Params 2, eflags: 0x0
// Checksum 0x7f907f5f, Offset: 0x1268
// Size: 0x34
function function_f885ebd3(type, callback) {
    add_callback(type, "damageWrapper", callback);
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0x47b2299b, Offset: 0x12a8
// Size: 0x4c
function function_e191d35c(e_player) {
    e_gameobject = self;
    e_player thread activate_trap(e_gameobject.var_3af54106, e_gameobject.origin, e_gameobject.angles);
}

// Namespace traps_deployable/traps_deployable
// Params 2, eflags: 0x0
// Checksum 0x3da90899, Offset: 0x1300
// Size: 0x16a
function function_51ca9c38(origin, team) {
    actorteam = team;
    if (actorteam == #"any") {
        actorteam = "all";
    }
    owners = getactorteamarray(actorteam);
    foreach (player in level.players) {
        if (player.team == team || team == #"any") {
            if (!isdefined(owners)) {
                owners = [];
            } else if (!isarray(owners)) {
                owners = array(owners);
            }
            owners[owners.size] = player;
        }
    }
    owner = arraygetclosest(origin, owners);
    return owner;
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0x5e40f480, Offset: 0x1478
// Size: 0xb8
function function_6153484f(team) {
    if (!isdefined(level._traps_deployable.team_owners)) {
        level._traps_deployable.team_owners = [];
    }
    if (!isdefined(level._traps_deployable.team_owners[team])) {
        level._traps_deployable.team_owners[team] = spawn("script_origin", (0, 0, 0));
    }
    level._traps_deployable.team_owners[team].team = team;
    return level._traps_deployable.team_owners[team];
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0xa5cb93e5, Offset: 0x1538
// Size: 0x124
function function_69996073(var_3af54106) {
    var_5e63b00d = self;
    var_5e63b00d.var_a8539bf6.mdl_gameobject endon(#"destroyed_complete", #"death");
    var_5e63b00d flag::function_5f02becb();
    teamowner = undefined;
    team = util::get_team_mapping(var_5e63b00d.var_a8539bf6.team);
    if (team == #"any") {
        var_db4c606e = function_51ca9c38(var_5e63b00d.var_a8539bf6.origin, team);
        team = var_db4c606e.team;
    }
    teamowner = function_6153484f(team);
    var_5e63b00d.var_a8539bf6 thread function_186e3cc4(var_3af54106, teamowner, team);
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0xbf1f4e06, Offset: 0x1668
// Size: 0x174
function function_8ecf6615(var_3af54106) {
    var_5e63b00d = self;
    var_5e63b00d.var_a8539bf6.mdl_gameobject endon(#"destroyed_complete", #"death");
    waitresult = level waittill(var_5e63b00d.script_waittill);
    teamowner = waitresult.owner;
    team = waitresult.team;
    if (!isdefined(teamowner) || !isplayer(teamowner)) {
        if (!isdefined(team)) {
            team = util::get_team_mapping(var_5e63b00d.var_a8539bf6.team);
        }
        if (team == #"any") {
            var_db4c606e = function_51ca9c38(var_5e63b00d.var_a8539bf6.origin, team);
            team = var_db4c606e.team;
        }
        teamowner = function_6153484f(team);
    }
    var_5e63b00d.var_a8539bf6 thread function_186e3cc4(var_3af54106, teamowner, team);
}

// Namespace traps_deployable/traps_deployable
// Params 3, eflags: 0x0
// Checksum 0x634ae485, Offset: 0x17e8
// Size: 0x1cc
function function_186e3cc4(var_3af54106, owner, team) {
    var_a8539bf6 = self;
    type = var_3af54106.m_type;
    if (isdefined(owner)) {
        owner owner_init();
        time = gettime();
        if (isdefined(owner._traps_deployable.var_1b518274)) {
            while (owner._traps_deployable.var_1b518274 == time) {
                waitframe(1);
                if (!isdefined(owner)) {
                    /#
                        printerror("<unknown string>" + var_3af54106.m_name + "<unknown string>");
                    #/
                    return;
                }
                time = gettime();
            }
        }
        owner._traps_deployable.var_1b518274 = time;
        if (function_77a3b730(type) && isdefined(level._traps_deployable.traptypes[type].onautoactivatetrap)) {
            tracktrap = var_a8539bf6 [[ level._traps_deployable.traptypes[type].onautoactivatetrap ]](var_3af54106, owner, team);
        }
        waitframe(1);
        if (isdefined(var_a8539bf6.mdl_gameobject)) {
            var_a8539bf6.mdl_gameobject thread gameobjects::check_gameobject_reenable();
        }
        return;
    }
    /#
        printerror("<unknown string>" + var_3af54106.m_name + "<unknown string>");
    #/
}

// Namespace traps_deployable/traps_deployable
// Params 3, eflags: 0x0
// Checksum 0x67be5059, Offset: 0x19c0
// Size: 0x104
function activate_trap(var_3af54106, origin, angles) {
    player = self;
    type = var_3af54106.m_type;
    player owner_init();
    self._traps_deployable.var_18bbaaf9 = 1;
    if (function_77a3b730(type) && isdefined(level._traps_deployable.traptypes[type].onactivatetrap)) {
        player [[ level._traps_deployable.traptypes[type].onactivatetrap ]](var_3af54106, origin, angles);
        return;
    }
    /#
        printerror("<unknown string>" + var_3af54106.m_name + "<unknown string>");
    #/
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0x5979e58d, Offset: 0x1ad0
// Size: 0x15c
function track_trap(trap_instance) {
    var_3af54106 = self;
    if (!isdefined(level._traps_deployable.trap_instances)) {
        level._traps_deployable.trap_instances = [];
    }
    if (isdefined(trap_instance)) {
        if (isdefined(var_3af54106.var_3efa7c17.var_5b026504)) {
            trap_instance.var_5b026504 = var_3af54106.var_3efa7c17.var_5b026504;
        }
        if (isdefined(var_3af54106.var_3efa7c17.var_ef146db5)) {
            trap_instance.var_ef146db5 = var_3af54106.var_3efa7c17.var_ef146db5;
        }
        if (!isdefined(level._traps_deployable.trap_instances)) {
            level._traps_deployable.trap_instances = [];
        } else if (!isarray(level._traps_deployable.trap_instances)) {
            level._traps_deployable.trap_instances = array(level._traps_deployable.trap_instances);
        }
        level._traps_deployable.trap_instances[level._traps_deployable.trap_instances.size] = trap_instance;
    }
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0x1e414a3, Offset: 0x1c38
// Size: 0x15c
function function_94e3167b(mdl_gameobject) {
    var_3af54106 = self;
    if (!isdefined(level._traps_deployable.var_9afef5eb)) {
        level._traps_deployable.var_9afef5eb = [];
    }
    if (isdefined(mdl_gameobject)) {
        if (isdefined(var_3af54106.var_3efa7c17.var_5b026504)) {
            mdl_gameobject.var_5b026504 = var_3af54106.var_3efa7c17.var_5b026504;
        }
        if (isdefined(var_3af54106.var_3efa7c17.var_ef146db5)) {
            mdl_gameobject.var_ef146db5 = var_3af54106.var_3efa7c17.var_ef146db5;
        }
        if (!isdefined(level._traps_deployable.var_9afef5eb)) {
            level._traps_deployable.var_9afef5eb = [];
        } else if (!isarray(level._traps_deployable.var_9afef5eb)) {
            level._traps_deployable.var_9afef5eb = array(level._traps_deployable.var_9afef5eb);
        }
        level._traps_deployable.var_9afef5eb[level._traps_deployable.var_9afef5eb.size] = mdl_gameobject;
    }
}

// Namespace traps_deployable/traps_deployable
// Params 3, eflags: 0x0
// Checksum 0x9f6c75c8, Offset: 0x1da0
// Size: 0x20
function function_c26db3e(*origin, *angles, *player) {
    return true;
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0x3756c338, Offset: 0x1dc8
// Size: 0xc
function function_e4fd9a4c(*var_3af54106) {
    
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0x5a813dd8, Offset: 0x1de0
// Size: 0xc
function function_df4e6283(*var_3af54106) {
    
}

// Namespace traps_deployable/traps_deployable
// Params 3, eflags: 0x0
// Checksum 0xc4d38725, Offset: 0x1df8
// Size: 0x3d4
function function_a879466e(var_3af54106, *origin, *angles) {
    player = self;
    type = angles.m_type;
    if (function_77a3b730(type)) {
        onmovecallback = level._traps_deployable.traptypes[type].onmovecallback;
        if (angles.var_31e7e66a === 1) {
            onmovecallback = undefined;
        }
        if (isdefined(angles.m_weapon) && angles.m_weapon.deployable) {
            player function_e4fd9a4c(angles);
            placeable = player placeables::function_f872b831(level._traps_deployable.traptypes[type].onplacecallback, level._traps_deployable.traptypes[type].oncancelcallback, onmovecallback, level._traps_deployable.traptypes[type].onshutdowncallback, level._traps_deployable.traptypes[type].ondeathcallback, level._traps_deployable.traptypes[type].onempcallback, level._traps_deployable.traptypes[type].ondamagecallback, level._traps_deployable.traptypes[type].var_d0dd7e76, &function_c26db3e, angles.m_weapon, angles.var_656cbe2d, angles.var_f81e0192, angles.var_b4662b52, angles.m_timeout);
            placeable.var_3af54106 = angles;
            placeable.is_placeable = 1;
            placeable.var_25404db4 = 1;
            placeable placeables::function_613a226a(1);
            return;
        }
        placeable = player placeables::spawnplaceable(level._traps_deployable.traptypes[type].onplacecallback, level._traps_deployable.traptypes[type].oncancelcallback, onmovecallback, level._traps_deployable.traptypes[type].onshutdowncallback, level._traps_deployable.traptypes[type].ondeathcallback, level._traps_deployable.traptypes[type].onempcallback, level._traps_deployable.traptypes[type].ondamagecallback, level._traps_deployable.traptypes[type].var_d0dd7e76, angles.m_model, angles.var_e84fc5dc, angles.var_28f1ce55, angles.m_spawnsentity, angles.var_656cbe2d, angles.m_timeout, angles.m_health, angles.m_empdamage, angles.var_f81e0192, angles.var_b4662b52, angles.m_placeimmediately, level._traps_deployable.traptypes[type].damagewrapper);
        placeable.var_3af54106 = angles;
        placeable.is_placeable = 1;
        placeable.var_25404db4 = 1;
        placeable placeables::function_613a226a(1);
        placeable notsolid();
    }
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0xde50e66b, Offset: 0x21d8
// Size: 0x44
function function_c75a9937(placeable) {
    player = self;
    var_3af54106 = placeable.var_3af54106;
    player function_df4e6283(var_3af54106);
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0xdf04d382, Offset: 0x2228
// Size: 0x84
function function_6ce6a400(placeable) {
    player = self;
    var_3af54106 = placeable.var_3af54106;
    player function_df4e6283(var_3af54106);
    placeable.var_3af54106.var_3efa7c17 function_19e12558(placeable.var_3af54106, placeable.origin, placeable.angles, 1);
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0xc9dd752, Offset: 0x22b8
// Size: 0x52
function function_2b8baf6d(placeable) {
    player = self;
    var_3af54106 = placeable.var_3af54106;
    player function_e4fd9a4c(var_3af54106);
    placeable.cancelable = 1;
}

// Namespace traps_deployable/traps_deployable
// Params 3, eflags: 0x0
// Checksum 0x15a3f908, Offset: 0x2318
// Size: 0x58
function function_efe68db2(var_3af54106, *owner, *team) {
    var_a8539bf6 = self;
    /#
        printerror("<unknown string>" + var_a8539bf6.scriptbundlename);
    #/
    return team;
}

// Namespace traps_deployable/traps_deployable
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x2378
// Size: 0x4
function function_6ef47474() {
    
}

// Namespace traps_deployable/traps_deployable
// Params 4, eflags: 0x0
// Checksum 0x6de3d910, Offset: 0x2388
// Size: 0x74
function function_a21e6a22(damagecallback, destroyedcallback, var_1891d3cd, var_2053fdc6) {
    placeable = self;
    placeable function_b501ff0b(damagecallback, destroyedcallback, var_1891d3cd, var_2053fdc6);
    placeable thread function_59a79a68(placeable.var_3af54106, damagecallback, destroyedcallback, var_1891d3cd, var_2053fdc6);
}

// Namespace traps_deployable/traps_deployable
// Params 4, eflags: 0x0
// Checksum 0xd804704d, Offset: 0x2408
// Size: 0x8c
function function_b501ff0b(*damagecallback, *destroyedcallback, *var_1891d3cd, *var_2053fdc6) {
    waitframe(1);
    placeable = self;
    placeable.health = 9999999;
    placeable.damagetaken = 0;
    placeable function_6253b65f(placeable.var_3af54106.m_health, placeable.var_3af54106.var_c59ba447);
}

// Namespace traps_deployable/traps_deployable
// Params 5, eflags: 0x0
// Checksum 0xd95aafbc, Offset: 0x24a0
// Size: 0x44e
function function_59a79a68(var_3af54106, *damage_callback, destroyed_callback, emp_damage, emp_callback) {
    self endon(#"death", #"delete");
    assert(!isvehicle(self) || !issentient(self), "<unknown string>");
    while (true) {
        weapon_damage = undefined;
        waitresult = self waittill(#"damage");
        attacker = waitresult.attacker;
        inflictor = waitresult.inflictor;
        damage = waitresult.amount;
        type = waitresult.mod;
        weapon = waitresult.weapon;
        if (is_true(self.invulnerable)) {
            continue;
        }
        if (!isdefined(attacker)) {
            continue;
        }
        friendlyfire = damage::friendlyfirecheck(self.owner, attacker);
        if (!friendlyfire) {
            continue;
        }
        if (isdefined(self.owner) && attacker == self.owner) {
        }
        isvalidattacker = 1;
        if (level.teambased) {
            isvalidattacker = isdefined(attacker.team) && attacker.team != self.team;
        }
        if (isvalidattacker) {
        }
        if (weapon.isemp && type == "MOD_GRENADE_SPLASH") {
            emp_damage_to_apply = damage_callback.m_empdamage;
            if (!isdefined(emp_damage_to_apply)) {
                emp_damage_to_apply = isdefined(emp_damage) ? emp_damage : 1;
            }
            if (isdefined(emp_callback) && emp_damage_to_apply > 0) {
                self [[ emp_callback ]](attacker);
            }
            weapon_damage = emp_damage_to_apply;
        }
        if (is_true(self.selfdestruct)) {
            weapon_damage = self.maxhealth + 1;
        }
        if (!isdefined(weapon_damage)) {
            weapon_damage = damage;
        }
        if (weapon_damage > 0) {
            if (damagefeedback::dodamagefeedback(weapon, inflictor, weapon_damage, type)) {
                attacker damagefeedback::update();
            }
            self challenges::trackassists(attacker, weapon_damage, 0);
        }
        self.damagetaken += weapon_damage;
        if (!issentient(self) && weapon_damage > 0) {
            self.attacker = attacker;
        }
        if (self.damagetaken > self.maxhealth) {
            weaponstatname = "destroyed";
            switch (weapon.name) {
            case #"tow_turret":
            case #"tow_turret_drop":
            case #"auto_tow":
                weaponstatname = "kills";
                break;
            }
            if (isdefined(destroyed_callback)) {
                self thread [[ destroyed_callback ]](attacker, weapon);
            }
            return;
        }
        remaining_health = self.maxhealth - self.damagetaken;
        if (remaining_health < self.lowhealth && weapon_damage > 0) {
            self.currentstate = "damaged";
        }
    }
}

// Namespace traps_deployable/traps_deployable
// Params 2, eflags: 0x0
// Checksum 0x5e8c9534, Offset: 0x28f8
// Size: 0x3e
function function_6253b65f(max_health, low_health) {
    self.maxhealth = max_health;
    self.lowhealth = low_health;
    self.hackedhealth = self.maxhealth;
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0xf5500bbb, Offset: 0x2940
// Size: 0x5c
function function_da421875(placeable) {
    self waittill(#"death");
    if (isdefined(placeable) && is_true(placeable.is_placeable)) {
        placeable placeables::forceshutdown();
    }
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0x1af32b35, Offset: 0x29a8
// Size: 0x1c8
function watcher_init(var_3af54106) {
    owner = self;
    var_c29551e1 = var_3af54106.m_weapon.name;
    var_c98531e5 = undefined;
    if (!is_true(owner._traps_deployable.watchers_init[var_c29551e1])) {
        type = var_3af54106.m_type;
        if (type == "claymore") {
            var_c98531e5 = owner weaponobjects::createwatcher(var_c29551e1, &trapd::function_ae7e49da, 0);
        } else if (type == "flash_disruptor") {
            var_c98531e5 = owner weaponobjects::createwatcher(var_c29551e1, &trapd::function_d8d3b49b, 0);
        } else if (type == "fire_bomb") {
            var_c98531e5 = owner weaponobjects::createwatcher(var_c29551e1, &trapd::function_518130e, 0);
        } else {
            var_c98531e5 = owner weaponobjects::createwatcher(var_c29551e1, &trapd::function_1daa29fc, 0);
        }
        owner._traps_deployable.watchers_init[var_c29551e1] = 1;
    } else {
        var_c98531e5 = owner weaponobjects::getweaponobjectwatcher(var_c29551e1);
    }
    if (!isplayer(owner)) {
        owner thread weaponobjects::watchweaponobjectspawn("grenade_fire", "death");
    }
    return var_c98531e5;
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0x84647221, Offset: 0x2b78
// Size: 0x148
function function_3c3f30e3(placeable) {
    player = self;
    var_3af54106 = placeable.var_3af54106;
    if (isplayer(player)) {
        var_c98531e5 = player watcher_init(var_3af54106);
        placeable.weapon_instance = player magicgrenadeplayer(var_3af54106.m_weapon, placeable.origin, (0, 0, -1));
        if (isdefined(placeable.weapon_instance)) {
            placeable.weapon_instance.angles = placeable.angles;
            placeable.weapon_instance.var_cea6a2fb = placeable;
            trap_instance = spawnstruct();
            trap_instance.var_c98531e5 = var_c98531e5;
            trap_instance.weapon_instance = placeable.weapon_instance;
            var_3af54106 track_trap(trap_instance);
            player function_c75a9937(placeable);
        }
    }
    return var_3af54106;
}

// Namespace traps_deployable/traps_deployable
// Params 3, eflags: 0x0
// Checksum 0xaf207bc8, Offset: 0x2cc8
// Size: 0x218
function function_4a401677(var_3af54106, owner, *team) {
    var_a8539bf6 = self;
    if (isdefined(team)) {
        weapon_instance = undefined;
        var_c98531e5 = team watcher_init(owner);
        if (isplayer(team)) {
            weapon_instance = team magicgrenadeplayer(owner.m_weapon, var_a8539bf6.origin, (0, 0, -1));
        } else {
            weapon_instance = team magicgrenadetype(owner.m_weapon, var_a8539bf6.origin, (0, 0, -1));
        }
        if (isdefined(weapon_instance)) {
            weapon_instance.angles = var_a8539bf6.angles;
            trap_instance = spawnstruct();
            trap_instance.weapon_instance = weapon_instance;
            trap_instance.var_c98531e5 = var_c98531e5;
            owner track_trap(trap_instance);
            if (!isdefined(var_a8539bf6.var_6a698b3c)) {
                var_a8539bf6.var_6a698b3c = [];
            } else if (!isarray(var_a8539bf6.var_6a698b3c)) {
                var_a8539bf6.var_6a698b3c = array(var_a8539bf6.var_6a698b3c);
            }
            var_a8539bf6.var_6a698b3c[var_a8539bf6.var_6a698b3c.size] = weapon_instance;
            arrayremovevalue(var_a8539bf6.var_6a698b3c, undefined);
        }
    } else {
        /#
            printerror("<unknown string>" + owner.m_name + "<unknown string>");
        #/
    }
    return owner;
}

// Namespace traps_deployable/traps_deployable
// Params 3, eflags: 0x0
// Checksum 0xb5026ccb, Offset: 0x2ee8
// Size: 0xb8
function function_612e5ef9(var_3af54106, owner, team) {
    var_a8539bf6 = self;
    vehicle = turret_activate(var_3af54106, owner, team, undefined, var_a8539bf6.origin, var_a8539bf6.angles, undefined);
    if (isdefined(vehicle)) {
        trap_instance = spawnstruct();
        trap_instance.var_71676691 = vehicle;
        var_3af54106 track_trap(trap_instance);
    }
    return var_3af54106;
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0x79090d70, Offset: 0x2fa8
// Size: 0xf8
function function_a39b7bb6(placeable) {
    player = self;
    var_3af54106 = placeable.var_3af54106;
    placeable.vehicle = player turret_activate(var_3af54106, player, player.team, placeable.vehicle, placeable.origin, placeable.angles, placeable);
    if (isdefined(placeable.vehicle)) {
        placeable.vehicle thread util::ghost_wait_show(0.05);
        trap_instance = spawnstruct();
        trap_instance.var_71676691 = placeable.vehicle;
        trap_instance.var_cea6a2fb = placeable;
        var_3af54106 track_trap(trap_instance);
    }
    return var_3af54106;
}

// Namespace traps_deployable/traps_deployable
// Params 7, eflags: 0x0
// Checksum 0x1f0bbe2b, Offset: 0x30a8
// Size: 0x3f0
function turret_activate(var_3af54106, owner, team, vehicle, origin, angles, parent) {
    if (isdefined(vehicle)) {
        vehicle.origin = origin;
        vehicle.angles = angles;
        if (vehicle vehicle_ai::has_state("unaware")) {
            vehicle vehicle_ai::set_state("unaware");
        }
    } else {
        vehicle = spawnvehicle(var_3af54106.m_vehicle, origin, angles, "dynamic_spawn_ai");
        if (isdefined(owner)) {
            ownerteam = owner.team;
            vehicle.owner = owner;
            vehicle.ownerentnum = owner.entnum;
            if (isplayer(owner)) {
                vehicle setowner(owner);
            }
        }
        if (!isdefined(team)) {
            team = ownerteam;
        }
        if (isdefined(team)) {
            vehicle.team = team;
            vehicle setteam(team);
        }
        vehicle.parentstruct = parent;
        vehicle.controlled = 0;
        vehicle.treat_owner_damage_as_friendly_fire = 1;
        vehicle.ignore_team_kills = 1;
        vehicle.deal_no_crush_damage = 1;
        if (isdefined(vehicle.parentstruct) && is_true(vehicle.parentstruct.is_placeable)) {
            vehicle thread function_da421875(vehicle.parentstruct);
        }
    }
    if (is_true(vehicle.settings.var_d3cc01c7) && !is_true(vehicle.has_bad_place)) {
        if (!isdefined(level.var_c70c6768)) {
            level.var_c70c6768 = 0;
        } else {
            level.var_c70c6768 += 1;
        }
        vehicle.turret_id = string(level.var_c70c6768);
        badplace_cylinder("turret_bad_place_" + vehicle.turret_id, 0, vehicle.origin, vehicle.settings.var_9493f6dc, vehicle.settings.var_c9c01aa4, #"axis", #"allies", #"neutral");
        vehicle.has_bad_place = 1;
    }
    vehicle unlink();
    targetoffset = (isdefined(vehicle.settings.lockon_offsetx) ? vehicle.settings.lockon_offsetx : 0, isdefined(vehicle.settings.lockon_offsety) ? vehicle.settings.lockon_offsety : 0, isdefined(vehicle.settings.lockon_offsetz) ? vehicle.settings.lockon_offsetz : 36);
    vehicle::make_targetable(vehicle, targetoffset);
    return vehicle;
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0xcb561cfb, Offset: 0x34a0
// Size: 0x12e
function function_69efb3b0(placeable) {
    player = self;
    if (isdefined(placeable.vehicle)) {
        placeable.cancelable = 1;
        placeable.vehicle ghost();
        if (placeable.vehicle vehicle_ai::has_state("off")) {
            placeable.vehicle vehicle_ai::set_state("off");
        }
        placeable.vehicle linkto(placeable);
        target_remove(placeable.vehicle);
        if (is_true(placeable.vehicle.has_bad_place)) {
            badplace_delete("turret_bad_place_" + placeable.vehicle.turret_id);
            placeable.vehicle.has_bad_place = 0;
        }
    }
}

// Namespace traps_deployable/traps_deployable
// Params 3, eflags: 0x0
// Checksum 0x4302cef2, Offset: 0x35d8
// Size: 0xb8
function function_5c1d01(var_3af54106, owner, team) {
    var_a8539bf6 = self;
    vehicle = vehicle_activate(var_3af54106, owner, team, undefined, var_a8539bf6.origin, var_a8539bf6.angles, undefined);
    if (isdefined(vehicle)) {
        trap_instance = spawnstruct();
        trap_instance.var_71676691 = vehicle;
        var_3af54106 track_trap(trap_instance);
    }
    return var_3af54106;
}

// Namespace traps_deployable/traps_deployable
// Params 3, eflags: 0x0
// Checksum 0x78e60a06, Offset: 0x3698
// Size: 0xd8
function function_c66a11d0(var_3af54106, origin, angles) {
    player = self;
    if (!isdefined(origin)) {
        origin = player.origin;
    }
    if (!isdefined(angles)) {
        angles = player.angles;
    }
    vehicle = vehicle_activate(var_3af54106, player, player.team, undefined, origin, angles, undefined);
    if (isdefined(vehicle)) {
        trap_instance = spawnstruct();
        trap_instance.var_71676691 = vehicle;
        var_3af54106 track_trap(trap_instance);
    }
    return var_3af54106;
}

// Namespace traps_deployable/traps_deployable
// Params 7, eflags: 0x0
// Checksum 0x510cbe7b, Offset: 0x3778
// Size: 0x290
function vehicle_activate(var_3af54106, owner, team, vehicle, origin, angles, parent) {
    if (isdefined(vehicle)) {
        vehicle.origin = origin;
        vehicle.angles = angles;
    } else {
        vehicle = spawnvehicle(var_3af54106.m_vehicle, origin, angles, "dynamic_spawn_ai");
        if (isdefined(owner)) {
            ownerteam = owner.team;
            vehicle.owner = owner;
            vehicle.ownerentnum = owner.entnum;
            if (isplayer(owner)) {
                vehicle setowner(owner);
            }
        }
        if (!isdefined(team)) {
            team = ownerteam;
        }
        if (isdefined(team)) {
            vehicle.team = team;
            vehicle setteam(team);
        }
        vehicle.parentstruct = parent;
        vehicle.controlled = 0;
        vehicle.treat_owner_damage_as_friendly_fire = 1;
        vehicle.ignore_team_kills = 1;
        vehicle.deal_no_crush_damage = 1;
        if (isdefined(vehicle.parentstruct) && is_true(vehicle.parentstruct.is_placeable)) {
            vehicle thread function_da421875(vehicle.parentstruct);
        }
    }
    vehicle unlink();
    targetoffset = (isdefined(vehicle.settings.lockon_offsetx) ? vehicle.settings.lockon_offsetx : 0, isdefined(vehicle.settings.lockon_offsety) ? vehicle.settings.lockon_offsety : 0, isdefined(vehicle.settings.lockon_offsetz) ? vehicle.settings.lockon_offsetz : 0);
    vehicle::make_targetable(vehicle, targetoffset);
    return vehicle;
}

// Namespace traps_deployable/traps_deployable
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x3a10
// Size: 0x4
function function_deb3cb22() {
    
}

// Namespace traps_deployable/traps_deployable
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x3a20
// Size: 0x4
function function_51d36222() {
    
}

// Namespace traps_deployable/traps_deployable
// Params 0, eflags: 0x0
// Checksum 0x96a768cc, Offset: 0x3a30
// Size: 0xd4
function function_ad3a08af() {
    trap_instance = self;
    if (!isdefined(trap_instance)) {
        return;
    }
    if (isdefined(trap_instance.weapon_instance)) {
        if (isdefined(trap_instance.var_c98531e5)) {
            trap_instance.var_c98531e5 weaponobjects::waitandfizzleout(trap_instance.weapon_instance, 0.1);
        } else {
            trap_instance.weapon_instance delete();
        }
    }
    if (isdefined(trap_instance.var_71676691)) {
        trap_instance.var_71676691 delete();
    }
    if (isdefined(trap_instance.var_cea6a2fb)) {
        trap_instance.var_cea6a2fb placeables::forceshutdown();
    }
}

// Namespace traps_deployable/traps_deployable
// Params 0, eflags: 0x0
// Checksum 0x2813fc7d, Offset: 0x3b10
// Size: 0x3c
function function_96155e4f() {
    mdl_gameobject = self;
    if (!isdefined(mdl_gameobject)) {
        return;
    }
    mdl_gameobject gameobjects::destroy_object(1, 1);
}

// Namespace traps_deployable/traps_deployable
// Params 3, eflags: 0x0
// Checksum 0x73de860d, Offset: 0x3b58
// Size: 0x30c
function clean_traps(all, skipto = undefined, flag = undefined) {
    if (all) {
        level notify(#"hash_6bd910abadea6345");
    }
    if (isdefined(skipto)) {
        players = getplayers();
        foreach (player in players) {
            if (isdefined(player._traps_deployable)) {
                player._traps_deployable.var_18bbaaf9 = undefined;
            }
        }
    }
    if (isdefined(level._traps_deployable) && isdefined(level._traps_deployable.trap_instances)) {
        trap_instances = level._traps_deployable.trap_instances;
        for (i = trap_instances.size - 1; i >= 0; i--) {
            if (isdefined(trap_instances[i])) {
                trap_instance = trap_instances[i];
                if (all || isdefined(skipto) && trap_instance.var_5b026504 === skipto || isdefined(flag) && trap_instance.var_ef146db5 === flag) {
                    trap_instance function_ad3a08af();
                    arrayremoveindex(trap_instances, i);
                }
            }
        }
    }
    if (isdefined(level._traps_deployable) && isdefined(level._traps_deployable.var_9afef5eb)) {
        var_18d5323c = level._traps_deployable.var_9afef5eb;
        for (i = var_18d5323c.size - 1; i >= 0; i--) {
            if (isdefined(var_18d5323c[i])) {
                mdl_gameobject = var_18d5323c[i];
                if (all || isdefined(skipto) && mdl_gameobject.var_5b026504 === skipto || isdefined(flag) && mdl_gameobject.var_ef146db5 === flag) {
                    mdl_gameobject function_96155e4f();
                    arrayremoveindex(var_18d5323c, i);
                }
            }
        }
    }
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0x97a273a3, Offset: 0x3e70
// Size: 0x94
function function_8f66239f(flags) {
    if (isdefined(flags) && flags != "") {
        var_bb7aa074 = util::create_flags_and_return_tokens(flags);
        for (i = 0; i < var_bb7aa074.size; i++) {
            flag = var_bb7aa074[i];
            level thread function_f6ea9af9(flag);
        }
    }
}

// Namespace traps_deployable/traps_deployable
// Params 1, eflags: 0x0
// Checksum 0x209a89b6, Offset: 0x3f10
// Size: 0x8c
function function_f6ea9af9(flag) {
    level endon(#"hash_6bd910abadea6345");
    level notify("traps_clean" + "_" + flag);
    level endon("traps_clean" + "_" + flag);
    level flag::wait_till(flag);
    clean_traps(0, undefined, flag);
}

/#

    // Namespace traps_deployable/traps_deployable
    // Params 1, eflags: 0x0
    // Checksum 0x2be54c9d, Offset: 0x3fa8
    // Size: 0x2c
    function printerror(message) {
        println("<unknown string>", message);
    }

    // Namespace traps_deployable/traps_deployable
    // Params 1, eflags: 0x0
    // Checksum 0x5dd660cb, Offset: 0x3fe0
    // Size: 0x2c
    function printinfo(message) {
        println("<unknown string>", message);
    }

    // Namespace traps_deployable/traps_deployable
    // Params 0, eflags: 0x0
    // Checksum 0x341bedff, Offset: 0x4018
    // Size: 0x134
    function function_ef942626() {
        if (is_true(level.trapddebug)) {
            var_a8539bf6 = self;
            if (!isdefined(level.var_d56d2937)) {
                level.var_d56d2937 = spawnstruct();
            }
            if (!isdefined(level.var_d56d2937.var_59eaf9e1)) {
                level.var_d56d2937.var_59eaf9e1 = [];
            }
            if (!isdefined(level.var_d56d2937.var_59eaf9e1)) {
                level.var_d56d2937.var_59eaf9e1 = [];
            } else if (!isarray(level.var_d56d2937.var_59eaf9e1)) {
                level.var_d56d2937.var_59eaf9e1 = array(level.var_d56d2937.var_59eaf9e1);
            }
            level.var_d56d2937.var_59eaf9e1[level.var_d56d2937.var_59eaf9e1.size] = var_a8539bf6;
        }
    }

    // Namespace traps_deployable/traps_deployable
    // Params 0, eflags: 0x0
    // Checksum 0x921b8cb, Offset: 0x4158
    // Size: 0xc8
    function function_3b7cb719() {
        level.trapddebug = getdvarint(#"scr_trapd_debug", 0);
        while (true) {
            trapddebug = level.trapddebug;
            level.trapddebug = getdvarint(#"scr_trapd_debug", 0);
            if (!(trapddebug === level.trapddebug)) {
                destroy_traps();
                waitframe(1);
                function_5726a711();
            }
            wait(1);
        }
    }

    // Namespace traps_deployable/traps_deployable
    // Params 0, eflags: 0x0
    // Checksum 0xcc1bd9f8, Offset: 0x4228
    // Size: 0x19c
    function destroy_traps() {
        if (isdefined(level.var_d56d2937) && isdefined(level.var_d56d2937.var_59eaf9e1)) {
            var_59eaf9e1 = level.var_d56d2937.var_59eaf9e1;
            for (i = var_59eaf9e1.size - 1; i >= 0; i--) {
                if (isdefined(var_59eaf9e1[i])) {
                    var_5e63b00d = var_59eaf9e1[i];
                    if (isdefined(var_5e63b00d.script_flag_true)) {
                        tokens = util::create_flags_and_return_tokens(var_5e63b00d.script_flag_true);
                        for (j = 0; j < tokens.size; j++) {
                            level flag::clear(tokens[j]);
                        }
                    }
                    if (isdefined(var_5e63b00d.script_flag_false)) {
                        tokens = util::create_flags_and_return_tokens(var_5e63b00d.script_flag_false);
                        for (j = 0; j < tokens.size; j++) {
                            level flag::clear(tokens[j]);
                        }
                    }
                }
                arrayremoveindex(var_59eaf9e1, i);
            }
        }
        clean_traps(1);
    }

    // Namespace traps_deployable/traps_deployable
    // Params 0, eflags: 0x0
    // Checksum 0x80c0ccbe, Offset: 0x43d0
    // Size: 0x10c
    function debug_init() {
        thread function_3b7cb719();
        while (true) {
            debugint = getdvarint(#"scr_trapd_int", 0);
            if (debugint) {
                switch (debugint) {
                case 1:
                    if (is_true(level.trapddebug)) {
                        destroy_traps();
                        waitframe(1);
                        function_5726a711();
                    }
                    break;
                }
                setdvar(#"scr_trapd_int", 0);
            }
            wait(1);
        }
        thread debug_init();
    }

#/

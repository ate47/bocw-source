// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.gsc;
#using scripts\weapons\deployable.gsc;
#using script_4721de209091b1a6;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\globallogic\globallogic_score.gsc;
#using script_1cc417743d7c262d;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\contracts_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\battlechatter.gsc;

#namespace jammer;

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x5
// Checksum 0xfb2c5250, Offset: 0x288
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"gadget_jammer", &preinit, undefined, undefined, undefined);
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x4ca42c4d, Offset: 0x2d0
// Size: 0x14
function private preinit() {
    init_shared();
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xd71331d8, Offset: 0x2f0
// Size: 0x264
function init_shared() {
    if (!isdefined(level.var_578f7c6d)) {
        level.var_578f7c6d = spawnstruct();
    }
    if (!isdefined(level.var_578f7c6d.weapontypeoverrides)) {
        level.var_578f7c6d.weapontypeoverrides = [];
    }
    if (!isdefined(level.var_578f7c6d.var_240161c3)) {
        level.var_578f7c6d.var_240161c3 = [];
    }
    level.var_578f7c6d.weapon = getweapon(#"gadget_jammer");
    registerclientfields();
    if (!isdefined(level.var_578f7c6d.weapon) || level.var_578f7c6d.weapon == getweapon(#"none")) {
        return;
    }
    level.var_578f7c6d.customsettings = getscriptbundle(level.var_578f7c6d.weapon.customsettings);
    weaponobjects::function_e6400478(#"gadget_jammer", &function_1a50ce7b, 1);
    level.var_578f7c6d.radiussqr = sqr(level.var_578f7c6d.weapon.explosionradius);
    level.var_578f7c6d.var_18b294e4 = int(level.var_578f7c6d.customsettings.var_647be42c * 1000);
    level.var_578f7c6d.var_b164e007 = [];
    level.var_578f7c6d.var_14cb9b30 = [];
    level.var_578f7c6d.var_5c3f49c1 = [];
    setupcallbacks();
    deployable::register_deployable(level.var_578f7c6d.weapon);
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x3120102b, Offset: 0x560
// Size: 0x14c
function setupcallbacks() {
    level.var_a5dacbea = &function_4e7e56a8;
    level.var_f9109dc6 = &function_32c879d;
    level.var_7b151daa = &function_7b151daa;
    level.var_86e3d17a = &function_86e3d17a;
    level.var_48c30195 = &function_48c30195;
    callback::on_spawned(&onplayerspawned);
    callback::on_finalize_initialization(&function_1c601b99);
    callback::add_callback(#"hash_7c6da2f2c9ef947a", &function_f87d8ea0);
    globallogic_score::register_kill_callback(level.var_578f7c6d.weapon, &function_767ffeec);
    globallogic_score::function_c1e9b86b(level.var_578f7c6d.weapon, &function_3d6d7536);
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x68264293, Offset: 0x6b8
// Size: 0x184
function private registerclientfields() {
    clientfield::register("scriptmover", "isJammed", 1, 1, "int");
    clientfield::register("missile", "isJammed", 1, 1, "int");
    clientfield::register("vehicle", "isJammed", 1, 1, "int");
    clientfield::register("toplayer", "isJammed", 1, 1, "int");
    clientfield::register("allplayers", "isHiddenByFriendlyJammer", 1, 1, "int");
    clientfield::register("missile", "jammer_active", 1, 1, "int");
    clientfield::register("missile", "jammer_hacked", 1, 1, "counter");
    clientfield::register("toplayer", "jammedvehpostfx", 1, 1, "int");
}

// Namespace jammer/gadget_jammer_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x717e908c, Offset: 0x848
// Size: 0xba
function private function_1a50ce7b(watcher) {
    watcher.ownergetsassist = 1;
    watcher.ignoredirection = 1;
    watcher.enemydestroy = 1;
    watcher.onspawn = &function_7d81a4ff;
    watcher.ondestroyed = &function_a4d07061;
    watcher.ontimeout = &function_b2e496fa;
    watcher.ondetonatecallback = &function_51a743f8;
    watcher.var_994b472b = &function_994b472b;
    watcher.var_10efd558 = "switched_field_upgrade";
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x77a9e68f, Offset: 0x910
// Size: 0x50
function function_1c601b99() {
    if (isdefined(level.var_1b900c1d)) {
        [[ level.var_1b900c1d ]](getweapon(#"gadget_jammer"), &function_bff5c062);
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xd0980596, Offset: 0x968
// Size: 0x1c0
function function_bff5c062(var_d148081d, attackingplayer) {
    var_f3ab6571 = var_d148081d.owner weaponobjects::function_8481fc06(var_d148081d.weapon) > 1;
    var_d148081d.owner thread globallogic_audio::function_a2cde53d(var_d148081d.weapon, var_f3ab6571);
    var_d148081d.team = attackingplayer.team;
    var_d148081d setteam(attackingplayer.team);
    var_d148081d.owner = attackingplayer;
    var_d148081d setowner(attackingplayer);
    if (isdefined(var_d148081d) && isdefined(level.var_f1edf93f)) {
        _station_up_to_detention_center_triggers = [[ level.var_f1edf93f ]]();
        if (isdefined(_station_up_to_detention_center_triggers) ? _station_up_to_detention_center_triggers : 0) {
            var_d148081d notify(#"cancel_timeout");
            var_d148081d thread weaponobjects::weapon_object_timeout(var_d148081d.var_2d045452, _station_up_to_detention_center_triggers);
        }
    }
    var_d148081d thread weaponobjects::function_6d8aa6a0(attackingplayer, var_d148081d.var_2d045452);
    var_d148081d clientfield::increment("jammer_hacked");
    if (isdefined(level.var_b7bc3c75.var_1d3ef959)) {
        attackingplayer [[ level.var_b7bc3c75.var_1d3ef959 ]]();
    }
}

// Namespace jammer/entity_deleted
// Params 1, eflags: 0x20
// Checksum 0xd77a6aee, Offset: 0xb30
// Size: 0xec
function event_handler[entity_deleted] codecallback_entitydeleted(*entity) {
    entitynumber = self getentitynumber();
    if (isdefined(level.var_578f7c6d.var_14cb9b30[entitynumber])) {
        level.var_578f7c6d.var_14cb9b30[entitynumber] = undefined;
        arrayremovevalue(level.var_578f7c6d.var_14cb9b30, undefined, 1);
    }
    if (isdefined(level.var_578f7c6d.var_b164e007[entitynumber])) {
        level.var_578f7c6d.var_b164e007[entitynumber] = undefined;
        arrayremovevalue(level.var_578f7c6d.var_b164e007, undefined, 1);
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x965b3f2c, Offset: 0xc28
// Size: 0x2a
function function_48c30195(entity, shouldignore) {
    if (isdefined(entity)) {
        entity.ignoreemp = shouldignore;
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xef69e47f, Offset: 0xc60
// Size: 0x34
function function_86e3d17a() {
    return isdefined(level.var_578f7c6d.var_18b294e4) ? level.var_578f7c6d.var_18b294e4 : 0;
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x0
// Checksum 0x538eebcd, Offset: 0xca0
// Size: 0x22
function register(entity, var_448f97f2) {
    entity.var_123aec6c = var_448f97f2;
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x87a2a6c1, Offset: 0xcd0
// Size: 0x30
function function_4e7e56a8(weapon, callbackfunction) {
    level.var_578f7c6d.weapontypeoverrides[weapon.name] = callbackfunction;
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x5d2f90bb, Offset: 0xd08
// Size: 0x30
function function_32c879d(weapon, callbackfunction) {
    level.var_578f7c6d.var_240161c3[weapon.name] = callbackfunction;
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x2cae25a9, Offset: 0xd40
// Size: 0xe
function onplayerspawned() {
    self.isjammed = 0;
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x57707deb, Offset: 0xd58
// Size: 0x19c
function private function_7d81a4ff(*watcher, player) {
    if (!isdefined(self.var_88d76fba)) {
        self.var_88d76fba = [];
    }
    self.owner = player;
    self.weapon = level.var_578f7c6d.weapon;
    self setweapon(level.var_578f7c6d.weapon);
    self setteam(player getteam());
    self.team = player getteam();
    self function_619a5c20();
    self.delete_on_death = 1;
    self.var_48d842c3 = 1;
    self clientfield::set("enemyequip", 1);
    self clientfield::set("jammer_active", 1);
    player battlechatter::function_fc82b10(self.weapon, self.origin, self);
    entnum = self getentitynumber();
    level.var_578f7c6d.var_b164e007[entnum] = self;
    function_a1924bff();
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xc77c328a, Offset: 0xf00
// Size: 0x3c
function private function_a1924bff() {
    if (is_true(level.var_578f7c6d.var_d355e20c)) {
        return;
    }
    thread function_3500dad3();
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x9ca65fa4, Offset: 0xf48
// Size: 0x558
function function_9da52774() {
    profilestart();
    var_c5f942f1 = getarraykeys(level.var_578f7c6d.var_14cb9b30);
    foreach (key in var_c5f942f1) {
        level.var_578f7c6d.var_14cb9b30[key] = 0;
    }
    var_5306fc83 = getarraykeys(level.var_578f7c6d.var_5c3f49c1);
    foreach (key in var_5306fc83) {
        level.var_578f7c6d.var_5c3f49c1[key] = 0;
    }
    foreach (jammer in level.var_578f7c6d.var_b164e007) {
        if (!isdefined(jammer)) {
            continue;
        }
        entities = getentitiesinradius(jammer.origin, level.var_578f7c6d.weapon.explosionradius);
        foreach (entity in entities) {
            distsqr = distance2dsquared(entity.origin, jammer.origin);
            if (distsqr <= level.var_578f7c6d.radiussqr) {
                if (function_b16c8865(entity, jammer.owner)) {
                    entitynumber = entity getentitynumber();
                    if (!isdefined(level.var_578f7c6d.var_14cb9b30[entitynumber])) {
                        level.var_578f7c6d.var_14cb9b30[entitynumber] = 0;
                    }
                    level.var_578f7c6d.var_14cb9b30[entitynumber]++;
                    if (is_true(entity.var_515d6dda)) {
                        if (!isdefined(entity.var_fe1ebada)) {
                            entity.var_fe1ebada = [];
                        }
                        arrayremovevalue(entity.var_fe1ebada, undefined, 1);
                        var_7d1eed4a = jammer getentitynumber();
                        if (!isdefined(entity.var_fe1ebada[var_7d1eed4a])) {
                            entity.var_fe1ebada[var_7d1eed4a] = jammer;
                            scoreevents::processscoreevent(#"hash_d3eebe3a5ddc62e", jammer.owner);
                            jammer.owner contracts::increment_contract(#"hash_7fb6b958e3fcbbc1");
                            jammer.owner stats::function_dad108fa(#"hash_1fa18fc0b5bb6695", 1);
                            if (isdefined(level.var_b7bc3c75.var_fbbc4c75)) {
                                jammer.owner [[ level.var_b7bc3c75.var_fbbc4c75 ]](jammer);
                            }
                        }
                    }
                    continue;
                }
                if (function_2fdf3111(entity, jammer.owner)) {
                    entitynumber = entity getentitynumber();
                    if (!isdefined(level.var_578f7c6d.var_5c3f49c1[entitynumber])) {
                        level.var_578f7c6d.var_5c3f49c1[entitynumber] = 0;
                    }
                    level.var_578f7c6d.var_5c3f49c1[entitynumber]++;
                }
            }
        }
    }
    profilestop();
}

// Namespace jammer/gadget_jammer_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x3915a78d, Offset: 0x14a8
// Size: 0x114
function function_322a8fc6(entity) {
    if (isplayer(entity)) {
        return;
    }
    if (!isdefined(entity.var_77807b8a)) {
        return;
    }
    if (is_true(entity.weapon.istimeddetonation) && !is_true(entity.var_cb19e5d4)) {
        entity resetmissiledetonationtime(500);
    }
    var_8429cbbb = entity.var_77807b8a + level.var_578f7c6d.var_18b294e4;
    if (gettime() > var_8429cbbb) {
        entity dodamage(1000, entity.origin, undefined, undefined, undefined, "MOD_GRENADE_SPLASH", 0, level.var_578f7c6d.weapon);
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x86fa45ce, Offset: 0x15c8
// Size: 0x33c
function function_af165064() {
    var_c5f942f1 = getarraykeys(level.var_578f7c6d.var_14cb9b30);
    foreach (key in var_c5f942f1) {
        entity = getentbynum(key);
        if (!isdefined(entity)) {
            continue;
        }
        if (level.var_578f7c6d.var_14cb9b30[key] > 0 && !is_true(entity.isjammed)) {
            function_93491e83(entity);
            continue;
        }
        if (level.var_578f7c6d.var_14cb9b30[key] > 0 && is_true(entity.isjammed)) {
            function_322a8fc6(entity);
            continue;
        }
        if (level.var_578f7c6d.var_14cb9b30[key] == 0 && is_true(entity.isjammed)) {
            function_d88f3e48(entity);
            level.var_578f7c6d.var_14cb9b30[key] = undefined;
        }
    }
    arrayremovevalue(level.var_578f7c6d.var_14cb9b30, undefined, 1);
    var_5306fc83 = getarraykeys(level.var_578f7c6d.var_5c3f49c1);
    foreach (key in var_5306fc83) {
        entity = getentbynum(key);
        if (!isdefined(entity)) {
            continue;
        }
        var_f7bd3349 = level.var_578f7c6d.var_5c3f49c1[key];
        entity clientfield::set("isHiddenByFriendlyJammer", var_f7bd3349 < 0 ? 0 : 1);
    }
    arrayremovevalue(level.var_578f7c6d.var_5c3f49c1, undefined, 1);
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xa582e676, Offset: 0x1910
// Size: 0x1b2
function private function_3500dad3() {
    self notify("7c657e882738c5c1");
    self endon("7c657e882738c5c1");
    level.var_578f7c6d.var_d355e20c = 1;
    while (true) {
        profilestart();
        function_9da52774();
        profilestop();
        waitframe(1);
        profilestart();
        function_af165064();
        profilestop();
        if (level.var_578f7c6d.var_b164e007.size == 0) {
            break;
        }
        waitframe(1);
    }
    var_9a7622f = getarraykeys(level.var_578f7c6d.var_14cb9b30);
    foreach (n_key in var_9a7622f) {
        entity = getentbynum(n_key);
        function_d88f3e48(entity);
        level.var_578f7c6d.var_14cb9b30[n_key] = undefined;
    }
    profilestart();
    function_af165064();
    profilestop();
    level.var_578f7c6d.var_d355e20c = 0;
}

// Namespace jammer/gadget_jammer_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xa048f475, Offset: 0x1ad0
// Size: 0x228
function private function_93491e83(entity) {
    if (!isdefined(entity)) {
        return false;
    }
    if (entity.var_1527fe94 === 1) {
        return false;
    }
    if (isalive(entity) && isactor(entity)) {
        entity callback::callback(#"hash_7140c3848cbefaa1");
    }
    if (isplayer(entity)) {
        entity clientfield::set_to_player("isJammed", 1);
        entity setempjammed(1);
    } else if (isvehicle(entity)) {
        entity function_803e9bf3(2);
    } else if (isdefined(entity.weapon) && is_true(entity.weapon.istimeddetonation) && !is_true(entity.var_cb19e5d4)) {
        entity resetmissiledetonationtime(500);
    }
    weapon = isdefined(entity.identifier_weapon) ? entity.identifier_weapon : entity.weapon;
    if (isdefined(weapon) && isdefined(level.var_578f7c6d.weapontypeoverrides[weapon.name])) {
        thread [[ level.var_578f7c6d.weapontypeoverrides[weapon.name] ]](entity);
    }
    function_1c430dad(entity, 1);
    return true;
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x0
// Checksum 0x7472284, Offset: 0x1d00
// Size: 0xdc
function function_4a82368f(entity, owner) {
    assert(isdefined(owner));
    if (isplayer(owner)) {
        owner clientfield::set_to_player("jammedvehpostfx", 1);
    }
    entity waittill(#"death", #"remote_weapon_end", #"hash_2476803a0d5fa572");
    if (!isdefined(owner)) {
        return;
    }
    if (isplayer(owner)) {
        owner clientfield::set_to_player("jammedvehpostfx", 0);
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa7db4af5, Offset: 0x1de8
// Size: 0xc2
function function_1c430dad(entity, isjammed) {
    if (!isplayer(entity) && !isactor(entity) && entity clientfield::is_registered("isJammed")) {
        entity clientfield::set("isJammed", isjammed);
    }
    entity.isjammed = isjammed;
    entity.emped = isjammed;
    if (isjammed) {
        entity.var_77807b8a = gettime();
        return;
    }
    entity.var_77807b8a = undefined;
}

// Namespace jammer/gadget_jammer_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x4539ba4d, Offset: 0x1eb8
// Size: 0x224
function private function_d88f3e48(entity) {
    if (!isdefined(entity)) {
        return;
    }
    if (!is_true(entity.isjammed)) {
        return;
    }
    if (isplayer(entity)) {
        entity clientfield::set_to_player("isJammed", 0);
        entity setempjammed(0);
    } else if (isvehicle(entity)) {
        entity function_803e9bf3(1);
    } else if (isdefined(entity.weapon) && is_true(entity.weapon.istimeddetonation) && !is_true(entity.var_cb19e5d4)) {
        entity resetmissiledetonationtime();
    }
    weapon = isdefined(entity.identifier_weapon) ? entity.identifier_weapon : entity.weapon;
    if (isdefined(weapon) && isdefined(level.var_578f7c6d.var_240161c3[weapon.name])) {
        thread [[ level.var_578f7c6d.var_240161c3[weapon.name] ]](entity);
    }
    function_1c430dad(entity, 0);
    if (isdefined(entity.weapon) && !isplayer(entity) && isdefined(entity.owner)) {
        function_2eb0a933(entity.weapon, entity.owner);
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x0
// Checksum 0x38891c4, Offset: 0x20e8
// Size: 0x64
function function_6a973411() {
    util::wait_network_frame();
    self clientfield::set("jammer_active", 0);
    util::wait_network_frame();
    self clientfield::set("jammer_active", 1);
}

// Namespace jammer/gadget_jammer_shared
// Params 1, eflags: 0x0
// Checksum 0x6da96d9e, Offset: 0x2158
// Size: 0x2a
function function_cc908239(entity) {
    if (isdefined(entity.owner)) {
        return entity.owner;
    }
    return undefined;
}

// Namespace jammer/gadget_jammer_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x5e378d75, Offset: 0x2190
// Size: 0x24
function function_994b472b(*player) {
    self weaponobjects::weaponobjectfizzleout();
}

// Namespace jammer/gadget_jammer_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xaeb9ba68, Offset: 0x21c0
// Size: 0xdc
function function_51a743f8(attacker, weapon, target) {
    if (isplayer(attacker) && isdefined(self) && attacker !== self.owner) {
        scoreevents::processscoreevent(#"hash_69a2a40ed6e84e00", attacker);
        var_f3ab6571 = self.owner weaponobjects::function_8481fc06(self.weapon) > 1;
        self.owner thread globallogic_audio::function_6daffa93(self.weapon, var_f3ab6571);
    }
    weaponobjects::proximitydetonate(attacker, weapon, target);
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xc69f33ce, Offset: 0x22a8
// Size: 0xd4
function function_a4d07061(attacker, *callback_data) {
    playfx(level._equipment_explode_fx_lg, self.origin);
    self playsound(#"dst_trophy_smash");
    if (isdefined(callback_data) && (!isdefined(self.owner) || self.owner util::isenemyplayer(callback_data))) {
        callback_data challenges::destroyedequipment();
        callback_data challenges::function_24db0c33(undefined, self.weapon);
    }
    self function_51a743f8(callback_data);
}

// Namespace jammer/gadget_jammer_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x3a5d0d17, Offset: 0x2388
// Size: 0x24
function function_b2e496fa(*watcher) {
    self delete();
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x22ccdaeb, Offset: 0x23b8
// Size: 0x82
function private function_2fdf3111(entity, attackingplayer) {
    if (self == entity) {
        return false;
    }
    if (isplayer(entity) && isdefined(entity.team) && !util::function_fbce7263(entity.team, attackingplayer.team)) {
        return true;
    }
    return false;
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xb1b6ea6c, Offset: 0x2448
// Size: 0x226
function private function_b16c8865(entity, attackingplayer) {
    if (self == entity) {
        return false;
    }
    if (!isplayer(entity) && (!isdefined(entity.model) || entity.model == #"")) {
        return false;
    }
    if (entity.classname === "weapon_") {
        return false;
    }
    if (isactor(entity) && !is_true(entity.var_8f61d7f4)) {
        return false;
    }
    if (isdefined(entity.team) && !util::function_fbce7263(entity.team, attackingplayer.team)) {
        return false;
    }
    if (isplayer(entity)) {
        if (entity hasperk(#"hash_f20e206dc87e35")) {
            return false;
        }
    }
    if (isdefined(entity.ignoreemp) ? entity.ignoreemp : 0) {
        return false;
    }
    if (!isplayer(entity)) {
        weapon = isdefined(entity.identifier_weapon) ? entity.identifier_weapon : entity.weapon;
        if (!isdefined(weapon)) {
            return false;
        }
        if (!is_true(weapon.var_8f61d7f4)) {
            return false;
        }
        if (!entity clientfield::is_registered("isJammed")) {
            return false;
        }
    }
    if (is_true(entity.var_4f0c8e9d)) {
        return false;
    }
    return true;
}

// Namespace jammer/gadget_jammer_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x376153bc, Offset: 0x2678
// Size: 0x28
function private function_7b151daa(player) {
    return isdefined(player.isjammed) && player.isjammed;
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x0
// Checksum 0x370593aa, Offset: 0x26a8
// Size: 0x194
function function_2e6238c0(weapon, owner) {
    if (!isdefined(weapon) || !isdefined(owner)) {
        return;
    }
    taacomdialog = undefined;
    leaderdialog = undefined;
    switch (weapon.name) {
    case #"tank_robot":
    case #"inventory_tank_robot":
    case #"ai_tank_marker":
        taacomdialog = "aiTankJammedStart";
        leaderdialog = "aiTankJammedStart";
        break;
    case #"ultimate_turret":
    case #"inventory_ultimate_turret":
        taacomdialog = "ultTurretJammedStart";
        leaderdialog = "ultTurretJammedStart";
        break;
    case #"ability_smart_cover":
    case #"gadget_smart_cover":
        taacomdialog = "smartCoverJammedStart";
        break;
    }
    if (isdefined(leaderdialog) && isdefined(owner)) {
        if (isdefined(level.var_57e2bc08)) {
            if (level.teambased) {
                thread [[ level.var_57e2bc08 ]](leaderdialog, owner.team, owner);
            }
        }
    }
    if (isdefined(taacomdialog) && isdefined(owner)) {
        owner thread namespace_f9b02f80::play_taacom_dialog(taacomdialog);
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xfd25a004, Offset: 0x2848
// Size: 0x194
function function_2eb0a933(weapon, owner) {
    if (!isdefined(weapon) || !isdefined(owner)) {
        return;
    }
    taacomdialog = undefined;
    leaderdialog = undefined;
    switch (weapon.name) {
    case #"tank_robot":
    case #"inventory_tank_robot":
    case #"ai_tank_marker":
        taacomdialog = "aiTankJammedEnd";
        leaderdialog = "aiTankJammedEnd";
        break;
    case #"ultimate_turret":
    case #"inventory_ultimate_turret":
        taacomdialog = "ultTurretJammedEnd";
        leaderdialog = "ultTurretJammedEnd";
        break;
    case #"ability_smart_cover":
    case #"gadget_smart_cover":
        taacomdialog = "smartCoverJammedEnd";
        break;
    }
    if (isdefined(leaderdialog) && isdefined(owner)) {
        if (isdefined(level.var_57e2bc08)) {
            if (level.teambased) {
                thread [[ level.var_57e2bc08 ]](leaderdialog, owner.team, owner);
            }
        }
    }
    if (isdefined(taacomdialog) && isdefined(owner)) {
        owner thread namespace_f9b02f80::play_taacom_dialog(taacomdialog);
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe8f64a41, Offset: 0x29e8
// Size: 0x1f4
function function_f87d8ea0(params) {
    if (!is_true(self.isjammed)) {
        return;
    }
    foreach (var_fde75ff9 in level.var_578f7c6d.var_b164e007) {
        if (!isdefined(var_fde75ff9)) {
            continue;
        }
        owner = var_fde75ff9.owner;
        if (isdefined(owner) && isdefined(params.players[owner getentitynumber()]) && level.var_578f7c6d.radiussqr >= distancesquared(var_fde75ff9.origin, self.origin)) {
            scoreevents::processscoreevent(#"hash_3f995db1490a1721", var_fde75ff9.owner);
            owner stats::function_622feb0d(var_fde75ff9.weapon.name, #"assists", 1);
            if (isdefined(level.var_b7bc3c75.var_e2298731)) {
                owner [[ level.var_b7bc3c75.var_e2298731 ]]();
            }
            if (isdefined(level.var_b7bc3c75.var_fbbc4c75)) {
                owner [[ level.var_b7bc3c75.var_fbbc4c75 ]](var_fde75ff9);
            }
        }
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 5, eflags: 0x2 linked
// Checksum 0xf88eb2f2, Offset: 0x2be8
// Size: 0x198
function function_767ffeec(attacker, victim, *weapon, *attackerweapon, *meansofdeath) {
    if (!is_true(meansofdeath.isjammed)) {
        return false;
    }
    foreach (var_fde75ff9 in level.var_578f7c6d.var_b164e007) {
        if (!isdefined(var_fde75ff9)) {
            continue;
        }
        if (var_fde75ff9.team == meansofdeath.team) {
            continue;
        }
        if (attackerweapon === var_fde75ff9.owner && level.var_578f7c6d.radiussqr >= distancesquared(var_fde75ff9.origin, meansofdeath.origin)) {
            attackerweapon contracts::increment_contract(#"hash_4254b43579ee6983");
            if (isdefined(level.var_b7bc3c75.var_fbbc4c75)) {
                attackerweapon [[ level.var_b7bc3c75.var_fbbc4c75 ]](var_fde75ff9);
            }
            return true;
        }
    }
    return false;
}

// Namespace jammer/gadget_jammer_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd0cd3f1b, Offset: 0x2d88
// Size: 0x74
function function_3d6d7536(params) {
    attacker = params.attacker;
    attacker stats::function_dad108fa(#"hash_1546fa6f8e98bd61", 1);
    attacker stats::function_bcf9602(#"hash_5a979e436e74441", 1, #"hash_6abe83944d701459");
}


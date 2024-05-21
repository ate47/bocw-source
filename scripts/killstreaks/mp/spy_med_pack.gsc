// Atian COD Tools GSC CW decompiler test
#using scripts\abilities\gadgets\gadget_health_regen.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\killstreaks\killstreak_bundles.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\weapons\weaponobjects.gsc;
#using scripts\core_common\battlechatter.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\damagefeedback_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\weapons\weapons.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\weapons\deployable.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace spy_med_pack;

// Namespace spy_med_pack/spy_med_pack
// Params 0, eflags: 0x5
// Checksum 0xb2d3b7ee, Offset: 0x200
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"spy_med_pack", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace spy_med_pack/spy_med_pack
// Params 0, eflags: 0x4
// Checksum 0x3d0728ab, Offset: 0x250
// Size: 0x174
function private preinit() {
    killstreaks::register_killstreak("killstreak_spy_med_pack", &function_12db55ec);
    level.var_c9404b0a = spawnstruct();
    level.var_c9404b0a.var_8e10bc5d = [];
    level.var_c9404b0a.medpacks = [];
    level.var_c9404b0a.var_d741a6a4 = [];
    level.var_c9404b0a.bundle = getscriptbundle("killstreak_spy_med_pack");
    level.var_c9404b0a.weapon = getweapon("spy_med_pack");
    level.var_c9404b0a.bundle.var_bdc8276 = 2;
    level.var_40346f16 = &function_e6d37a78;
    game.var_f39ffe9 = "med_pack_";
    weaponobjects::function_e6400478(#"spy_med_pack", &function_2ee8eb59, 1);
    deployable::register_deployable(level.var_c9404b0a.weapon, &function_4e22b9e6);
}

// Namespace spy_med_pack/spy_med_pack
// Params 1, eflags: 0x0
// Checksum 0xc263b9cb, Offset: 0x3d0
// Size: 0x188
function function_12db55ec(*killstreaktype) {
    killstreak_id = self killstreakrules::killstreakstart("spy_med_pack", self.team);
    if (killstreak_id == -1) {
        return 0;
    }
    var_29cabbb2 = getweapon("spy_med_pack");
    var_86d3b295 = self deployable::function_b3d993e9(var_29cabbb2);
    if (var_86d3b295) {
        self gestures::function_e62f6dde("gestable_spy_med_pack", undefined, 0);
        medpack = self magicgrenadeplayer(var_29cabbb2, self.var_b8878ba9, self.var_ddc03e10);
        medpack thread function_cc39bcf1(undefined, self);
        waitframe(2);
        var_970221b1 = self weapons::function_fe1f5cc();
        self weapons::function_d571ac59(var_970221b1, 1, undefined, 1);
        self stats::function_e24eec31(var_29cabbb2, #"used", 1);
    }
    return var_86d3b295;
}

// Namespace spy_med_pack/spy_med_pack
// Params 1, eflags: 0x0
// Checksum 0x78271d03, Offset: 0x560
// Size: 0x9a
function function_2ee8eb59(watcher) {
    watcher.watchforfire = 1;
    watcher.onspawn = &function_cc39bcf1;
    watcher.timeout = float(level.var_c9404b0a.bundle.ksduration) / 1000;
    watcher.ontimeout = &function_42c401bb;
    watcher.var_994b472b = &function_5d668640;
}

// Namespace spy_med_pack/spy_med_pack
// Params 1, eflags: 0x0
// Checksum 0x5cec265, Offset: 0x608
// Size: 0x4c
function function_5d668640(*player) {
    if (!isdefined(self.medpack)) {
        return;
    }
    self.medpack.var_8d834202 = 1;
    self.medpack thread function_e6d37a78(0);
}

// Namespace spy_med_pack/spy_med_pack
// Params 0, eflags: 0x0
// Checksum 0xaa1335d0, Offset: 0x660
// Size: 0x2c
function function_42c401bb() {
    if (!isdefined(self.medpack)) {
        return;
    }
    self.medpack thread function_e6d37a78(0);
}

// Namespace spy_med_pack/spy_med_pack
// Params 2, eflags: 0x0
// Checksum 0xf12d8458, Offset: 0x698
// Size: 0x184
function function_cc39bcf1(watcher, owner) {
    self endon(#"death");
    self thread weaponobjects::onspawnuseweaponobject(watcher, owner);
    self hide();
    self.canthack = 1;
    self.ignoreemp = 1;
    self.delete_on_death = 1;
    if (!is_true(self.previouslyhacked)) {
        if (isdefined(owner)) {
            owner stats::function_e24eec31(self.weapon, #"used", 1);
        }
        self waittilltimeout(10, #"stationary");
        if (!owner deployable::location_valid()) {
            owner setriotshieldfailhint();
            self deletedelay();
            return;
        }
        self deployable::function_dd266e08(owner);
        self.var_2625f7cb = owner.var_2625f7cb;
        owner.var_2625f7cb = undefined;
        owner function_9346db70(self);
    }
}

// Namespace spy_med_pack/spy_med_pack
// Params 0, eflags: 0x0
// Checksum 0x75f078fb, Offset: 0x828
// Size: 0x5c
function playdeathfx() {
    weaponobjects::function_b4793bda(self, level.var_c9404b0a.weapon);
    self playsound(level.var_c9404b0a.bundle.var_b3756378);
}

// Namespace spy_med_pack/spy_med_pack
// Params 0, eflags: 0x0
// Checksum 0xf6fcb438, Offset: 0x890
// Size: 0x5c
function function_263be969() {
    weaponobjects::function_f2a06099(self, level.var_c9404b0a.weapon);
    self playsound(level.var_c9404b0a.bundle.var_b3756378);
}

// Namespace spy_med_pack/spy_med_pack
// Params 3, eflags: 0x0
// Checksum 0xdb72b137, Offset: 0x8f8
// Size: 0x228
function function_4e22b9e6(origin, *angles, player) {
    if (!isdefined(player.var_2625f7cb)) {
        player.var_2625f7cb = spawnstruct();
    }
    var_7e37effb = isdefined(level.var_c9404b0a.bundle.var_bdc8276) ? level.var_c9404b0a.bundle.var_bdc8276 : 0;
    testdistance = var_7e37effb * var_7e37effb;
    ids = getarraykeys(level.var_c9404b0a.var_8e10bc5d);
    foreach (id in ids) {
        if (id == player.clientid) {
            continue;
        }
        packs = level.var_c9404b0a.var_8e10bc5d[id];
        foreach (medpack in packs) {
            if (!isdefined(medpack)) {
                continue;
            }
            distsqr = distancesquared(angles, medpack.origin);
            if (distsqr <= testdistance) {
                return false;
            }
        }
    }
    return true;
}

// Namespace spy_med_pack/spy_med_pack
// Params 1, eflags: 0x0
// Checksum 0x67214702, Offset: 0xb28
// Size: 0x74
function function_9346db70(medpack) {
    medpack setvisibletoall();
    if (isdefined(medpack.othermodel)) {
        medpack.othermodel setinvisibletoall();
    }
    if (isdefined(medpack.var_2625f7cb)) {
        self function_cb436f32(medpack);
    }
}

// Namespace spy_med_pack/spy_med_pack
// Params 13, eflags: 0x0
// Checksum 0x8ad7e0cd, Offset: 0xba8
// Size: 0x10a
function function_780f9aa(*einflictor, attacker, idamage, idflags, smeansofdeath, weapon, *var_fd90b0bb, *vpoint, *vdir, *shitloc, *psoffsettime, *iboneindex, *imodelindex) {
    bundle = level.var_c9404b0a.bundle;
    chargelevel = 0;
    weapon_damage = killstreak_bundles::get_weapon_damage("killstreak_spy_med_pack", bundle.kshealth, vdir, imodelindex, iboneindex, shitloc, psoffsettime, chargelevel);
    if (!isdefined(weapon_damage)) {
        weapon_damage = killstreaks::get_old_damage(vdir, imodelindex, iboneindex, shitloc, 1);
    }
    return int(weapon_damage);
}

// Namespace spy_med_pack/spy_med_pack
// Params 0, eflags: 0x0
// Checksum 0xe4ffe6ca, Offset: 0xcc0
// Size: 0x92
function function_438ca4e0() {
    medpack = self;
    medpack endon(#"hash_5f25f60b7159ac0f", #"death");
    level waittill(#"game_ended");
    if (!isdefined(self)) {
        return;
    }
    medpack.var_8d834202 = 1;
    self thread function_e6d37a78(0, 0);
    medpack.var_648955e6 = 1;
}

// Namespace spy_med_pack/spy_med_pack
// Params 0, eflags: 0x0
// Checksum 0x1236496b, Offset: 0xd60
// Size: 0x38
function function_530817e7() {
    currentid = game.var_f39ffe9;
    game.var_f39ffe9 += 1;
    return currentid;
}

// Namespace spy_med_pack/spy_med_pack
// Params 1, eflags: 0x0
// Checksum 0x9b3b53b3, Offset: 0xda0
// Size: 0x7c0
function function_cb436f32(object) {
    player = self;
    if (isdefined(level.var_c9404b0a.var_8e10bc5d[player.clientid]) && level.var_c9404b0a.var_8e10bc5d[player.clientid].size >= (isdefined(level.var_c9404b0a.bundle.var_cbe1e532) ? level.var_c9404b0a.bundle.var_cbe1e532 : 1)) {
        obj = level.var_c9404b0a.var_8e10bc5d[player.clientid][0];
        if (isdefined(obj)) {
            obj.var_8d834202 = 1;
            obj thread function_e6d37a78(0);
        } else {
            level.var_c9404b0a.var_8e10bc5d[self.clientid] = undefined;
        }
    }
    medpack = spawn("script_model", object.origin);
    medpack function_619a5c20();
    medpack setmodel(level.var_c9404b0a.weapon.var_22082a57);
    object.medpack = medpack;
    medpack.var_2d045452 = object;
    medpack function_41b29ff0("wpn_t9_eqp_med_pack_destructible");
    medpack useanimtree("generic");
    medpack.owner = player;
    medpack.clientid = medpack.owner.clientid;
    medpack.angles = player.angles;
    medpack.var_86a21346 = &function_780f9aa;
    medpack solid();
    medpack show();
    medpack.victimsoundmod = "vehicle";
    medpack.weapon = level.var_c9404b0a.weapon;
    medpack setweapon(medpack.weapon);
    medpack.maxusecount = isdefined(level.var_c9404b0a.bundle.var_5a0d87e0) ? level.var_c9404b0a.bundle.var_5a0d87e0 : 3;
    medpack.usecount = 0;
    medpack.objectiveid = gameobjects::get_next_obj_id();
    level.var_c9404b0a.medpacks[medpack.objectiveid] = medpack;
    if (!isdefined(level.var_c9404b0a.var_8e10bc5d[player.clientid])) {
        level.var_c9404b0a.var_8e10bc5d[player.clientid] = [];
    }
    var_a7edcaed = level.var_c9404b0a.var_8e10bc5d.size + 1;
    array::push(level.var_c9404b0a.var_8e10bc5d[player.clientid], medpack, var_a7edcaed);
    medpack setcandamage(1);
    medpack.var_99d2556b = gettime();
    medpack.uniqueid = function_530817e7();
    function_d7cd849c(level.var_c9404b0a.bundle.var_69b1ff7);
    if (isdefined(level.var_c9404b0a.bundle.var_a0db3d4d)) {
        medpack playloopsound(level.var_c9404b0a.bundle.var_a0db3d4d);
    }
    triggerradius = level.var_c9404b0a.bundle.var_366f43e9;
    triggerheight = level.var_c9404b0a.bundle.var_2f1567fb;
    var_b1a6d849 = level.var_c9404b0a.bundle.var_2d890f85;
    usetrigger = spawn("trigger_radius_use", object.origin - (0, 0, 50), 0, triggerradius, triggerheight);
    usetrigger usetriggerrequirelookat();
    usetrigger sethintstring(#"hash_75acfdc16a0732df");
    usetrigger triggerignoreteam();
    usetrigger setvisibletoall();
    usetrigger triggerenable(1);
    medpack.gameobject = gameobjects::create_use_object(player getteam(), usetrigger, [], undefined, level.var_c9404b0a.bundle.var_9333131b, 1);
    medpack.gameobject gameobjects::set_objective_entity(medpack);
    medpack.gameobject gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
    medpack.gameobject gameobjects::allow_use(#"hash_5ccfd7bbbf07c770");
    medpack.gameobject gameobjects::set_use_time(var_b1a6d849);
    usetrigger function_9b047eda(1);
    medpack.gameobject.onbeginuse = &function_8c8fb7b5;
    medpack.gameobject.onenduse = &function_a1434496;
    medpack.gameobject.var_5ecd70 = medpack;
    medpack.gameobject.var_33d50507 = 1;
    player deployable::function_6ec9ee30(medpack, level.var_c9404b0a.weapon);
    medpack animation::play(#"hash_7540bb5a61e603a");
    medpack thread function_438ca4e0();
    medpack thread watchfordamage();
    medpack thread watchfordeath();
    player notify(#"hash_4d8de48e4e1f053c", {#medpack:medpack});
}

// Namespace spy_med_pack/spy_med_pack
// Params 1, eflags: 0x4
// Checksum 0x403b60f0, Offset: 0x1568
// Size: 0xc
function private function_8c8fb7b5(*player) {
    
}

// Namespace spy_med_pack/spy_med_pack
// Params 3, eflags: 0x4
// Checksum 0x4c8e3f9e, Offset: 0x1580
// Size: 0x3ac
function private function_a1434496(*team, player, result) {
    if (!isdefined(player)) {
        return;
    }
    playerhealth = player getnormalhealth();
    if (playerhealth >= 0.99) {
        return;
    }
    medpack = self.var_5ecd70;
    medpack.isdisabled = 0;
    if (is_true(result)) {
        medpack.usecount++;
        medpack thread animation::play(#"hash_79647b3513fd2190");
        var_94d1a3ec = getweapon(#"hash_44678c77a1fa37b0");
        if (isdefined(var_94d1a3ec)) {
            var_70aa8c50 = player hasweapon(var_94d1a3ec);
            var_e6f54cba = 0;
            if (var_70aa8c50) {
                var_e6f54cba = player getweaponammoclip(var_94d1a3ec);
                if (var_e6f54cba == 0) {
                    player setweaponammoclip(var_94d1a3ec, 1);
                }
            } else {
                player giveweapon(var_94d1a3ec);
                player setweaponammoclip(var_94d1a3ec, 1);
            }
            player switchtoweapon(var_94d1a3ec, 1);
            player gestures::function_e62f6dde("gestable_t9_stimshot", undefined, 1);
            util::wait_network_frame(2);
            if (!isdefined(player)) {
                return;
            }
            slot = player gadgetgetslot(var_94d1a3ec);
            player function_ac25fc1f(slot, var_94d1a3ec);
            player gadgetactivate(slot, var_94d1a3ec);
            player gadget_health_regen::function_34daf34a(slot, var_94d1a3ec);
            util::wait_network_frame(2);
            if (!isdefined(player)) {
                return;
            }
            if (var_70aa8c50) {
                if (var_e6f54cba > 0) {
                    if (!player hasweapon(var_94d1a3ec)) {
                        player giveweapon(var_94d1a3ec);
                    }
                    player setweaponammoclip(var_94d1a3ec, var_e6f54cba);
                } else {
                    player takeweapon(var_94d1a3ec);
                }
            } else {
                player takeweapon(var_94d1a3ec);
            }
            util::wait_network_frame(2);
            if (isdefined(player)) {
                prevweapon = player weapons::function_fe1f5cc();
                if (isdefined(prevweapon)) {
                    player switchtoweapon(prevweapon);
                }
            }
        }
        if (medpack.usecount == medpack.maxusecount) {
            medpack thread function_e6d37a78(0);
        }
    }
}

// Namespace spy_med_pack/spy_med_pack
// Params 0, eflags: 0x0
// Checksum 0xb874059f, Offset: 0x1938
// Size: 0x74
function watchfordeath() {
    level endon(#"game_ended");
    self endon(#"hash_523ddcbd662010e5");
    waitresult = self waittill(#"death");
    if (!isdefined(self)) {
        return;
    }
    self thread function_e6d37a78(0);
}

// Namespace spy_med_pack/spy_med_pack
// Params 0, eflags: 0x0
// Checksum 0xa0483d4c, Offset: 0x19b8
// Size: 0x150
function watchfordamage() {
    self endon(#"death");
    level endon(#"game_ended");
    self endon(#"hash_523ddcbd662010e5");
    medpack = self;
    medpack endon(#"death");
    medpack.health = level.var_c9404b0a.bundle.kshealth;
    startinghealth = medpack.health;
    while (true) {
        waitresult = self waittill(#"damage");
        if (isdefined(waitresult.attacker) && waitresult.amount > 0 && damagefeedback::dodamagefeedback(waitresult.weapon, waitresult.attacker)) {
            waitresult.attacker damagefeedback::update(waitresult.mod, waitresult.inflictor, undefined, waitresult.weapon, self);
        }
    }
}

// Namespace spy_med_pack/spy_med_pack
// Params 0, eflags: 0x0
// Checksum 0xda0d1b6a, Offset: 0x1b10
// Size: 0xec
function function_134ae768() {
    if (!isdefined(level.var_35814054.var_8e10bc5d[self.clientid])) {
        return;
    }
    indextoremove = undefined;
    for (index = 0; index < level.var_35814054.var_8e10bc5d[self.clientid].size; index++) {
        if (level.var_35814054.var_8e10bc5d[self.clientid][index] == self) {
            indextoremove = index;
        }
    }
    if (isdefined(indextoremove)) {
        level.var_35814054.var_8e10bc5d[self.clientid] = array::remove_index(level.var_35814054.var_8e10bc5d[self.clientid], indextoremove, 0);
    }
}

// Namespace spy_med_pack/spy_med_pack
// Params 2, eflags: 0x0
// Checksum 0x1b280605, Offset: 0x1c08
// Size: 0x186
function function_e6d37a78(*var_d3213f00, var_7497ba51 = 1) {
    self notify(#"hash_523ddcbd662010e5");
    self.var_ab0875aa = 1;
    if (isdefined(self.var_1ba7e28e) && self.var_1ba7e28e) {
        return;
    }
    if (isdefined(self.objectiveid)) {
        objective_delete(self.objectiveid);
        gameobjects::release_obj_id(self.objectiveid);
    }
    if (isdefined(self.gameobject)) {
        self.gameobject thread gameobjects::destroy_object(1, 1);
    }
    self.var_1ba7e28e = 1;
    level.var_c9404b0a.medpacks[self.objectiveid] = undefined;
    self function_134ae768();
    if (var_7497ba51 && self.var_8d834202 === 1) {
        wait((isdefined(level.var_c9404b0a.bundle.var_fd663ee0) ? level.var_c9404b0a.bundle.var_fd663ee0 : 0) / 1000);
    }
    profilestart();
    function_897b13a9();
    profilestop();
}

// Namespace spy_med_pack/spy_med_pack
// Params 0, eflags: 0x0
// Checksum 0x23560757, Offset: 0x1d98
// Size: 0x26c
function function_897b13a9() {
    if (!isdefined(self)) {
        return;
    }
    player = self.owner;
    if (isdefined(self.var_846acfcf) && isdefined(player) && self.var_846acfcf != player) {
        self battlechatter::function_d2600afc(self.var_846acfcf, player, level.var_c9404b0a.weapon, self.var_d02ddb8e);
    }
    if (game.state == #"playing") {
        if (self.health <= 0) {
            if (isdefined(level.var_c9404b0a.bundle.var_b3756378)) {
                self playsound(level.var_c9404b0a.bundle.var_b3756378);
            }
        }
        function_d7cd849c(level.var_c9404b0a.bundle.var_10c9ba2d);
    }
    if (self.var_8d834202 === 1) {
        function_263be969();
    } else {
        playdeathfx();
    }
    if (isdefined(level.var_c9404b0a.bundle.var_bb6c29b4) && isdefined(self.var_d02ddb8e) && self.var_d02ddb8e == getweapon(#"shock_rifle")) {
        playfx(level.var_c9404b0a.bundle.var_bb6c29b4, self.origin);
    }
    deployable::function_81598103(self);
    if (isdefined(self.var_2d045452)) {
        self.var_2d045452 delete();
    }
    self stoploopsound();
    self notify(#"hash_5f25f60b7159ac0f");
    self deletedelay();
}

// Namespace spy_med_pack/spy_med_pack
// Params 1, eflags: 0x0
// Checksum 0x730cf7c0, Offset: 0x2010
// Size: 0xc4
function function_d7cd849c(soundbank) {
    if (!isdefined(soundbank)) {
        return;
    }
    if (!isdefined(level.var_c9404b0a.var_d741a6a4[soundbank])) {
        level.var_c9404b0a.var_d741a6a4[soundbank] = 0;
    }
    var_ad7969ca = level.var_c9404b0a.var_d741a6a4[soundbank];
    if (var_ad7969ca != 0 && gettime() < int(5 * 1000) + var_ad7969ca) {
        return;
    }
    level.var_c9404b0a.var_d741a6a4[soundbank] = gettime();
}


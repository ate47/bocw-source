// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\dynamic_loadout.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\gameobjects_shared.gsc;

#namespace pickup_ammo;

// Namespace pickup_ammo/pickup_ammo
// Params 0, eflags: 0x0
// Checksum 0xb643e779, Offset: 0xf0
// Size: 0x22e
function function_cff1656d() {
    pickup_ammos = getentarray("pickup_ammo", "targetname");
    foreach (pickup in pickup_ammos) {
        pickup.trigger = spawn("trigger_radius_use", pickup.origin + (0, 0, 15), 0, 120, 100);
        pickup.trigger setcursorhint("HINT_INTERACTIVE_PROMPT");
        pickup.trigger triggerignoreteam();
        pickup.gameobject = gameobjects::create_use_object(#"neutral", pickup.trigger, [], (0, 0, 0), "pickup_ammo");
        pickup.gameobject gameobjects::set_objective_entity(pickup.gameobject);
        pickup.gameobject gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
        pickup.gameobject gameobjects::allow_use(#"hash_5ccfd7bbbf07c770");
        pickup.gameobject gameobjects::set_use_time(0);
        pickup.gameobject.usecount = 0;
        pickup.gameobject.var_5ecd70 = pickup;
        pickup.gameobject.onuse = &function_5bb13b48;
    }
}

// Namespace pickup_ammo/pickup_ammo
// Params 1, eflags: 0x0
// Checksum 0x115b5ef1, Offset: 0x328
// Size: 0x2e8
function function_4827d817(weapon) {
    if (weapon.maxammo <= 0) {
        return false;
    }
    package = getscriptbundle(level.bountypackagelist[0]);
    slot = undefined;
    if (isdefined(self.pers[#"dynamic_loadout"].weapons[0]) && self.pers[#"dynamic_loadout"].weapons[0].name == weapon.name) {
        slot = 0;
    } else if (isdefined(self.pers[#"dynamic_loadout"].weapons[1]) && self.pers[#"dynamic_loadout"].weapons[1].name == weapon.name) {
        slot = 1;
    }
    if (!isdefined(slot)) {
        return false;
    }
    weapindex = self.pers[#"dynamic_loadout"].clientfields[slot].val - 1;
    package = getscriptbundle(level.bountypackagelist[weapindex]);
    var_e6e3de63 = package.var_ef921c3c;
    maxammo = package.refillammo;
    if (!isdefined(maxammo) || maxammo == 0) {
        maxammo = weapon.maxammo / weapon.clipsize;
        if (weapon.clipsize == 1) {
            maxammo += 1;
        }
    }
    clipammo = self getweaponammoclip(weapon);
    stockammo = self getweaponammostock(weapon);
    currentammo = float(clipammo + stockammo) / weapon.clipsize;
    if (currentammo >= maxammo) {
        return false;
    }
    currentammo += var_e6e3de63;
    if (currentammo > maxammo) {
        currentammo = maxammo;
    }
    self setweaponammostock(weapon, int(currentammo * weapon.clipsize) - clipammo);
    return true;
}

// Namespace pickup_ammo/pickup_ammo
// Params 1, eflags: 0x4
// Checksum 0xc1d187a2, Offset: 0x618
// Size: 0x284
function private function_5bb13b48(player) {
    if (isdefined(player) && isplayer(player)) {
        var_bd3d7a99 = 0;
        primaries = player getweaponslistprimaries();
        foreach (weapon in primaries) {
            ammogiven = player function_4827d817(weapon);
            if (ammogiven) {
                var_bd3d7a99 = 1;
            }
        }
        if (var_bd3d7a99) {
            if (isdefined(self.objectiveid)) {
                objective_setinvisibletoplayer(self.objectiveid, player);
            }
            self.var_5ecd70 setinvisibletoplayer(player);
            self.trigger setinvisibletoplayer(player);
            self playsoundtoplayer(#"hash_587fec4cf4ba3ebb", player);
            self.usecount++;
            player gestures::function_56e00fbf(#"gestable_grab", undefined, 0);
            if (is_true(level.var_aff59367)) {
                self thread function_7a80944d(player);
            }
        } else {
            player iprintlnbold(#"hash_2ea29b19d0e205e7");
            self playsoundtoplayer(#"uin_default_action_denied", player);
        }
    }
    if (!is_true(level.var_aff59367) && self.usecount >= level.var_ad9d03e7) {
        self.var_5ecd70 delete();
        self gameobjects::disable_object(1);
    }
}

// Namespace pickup_ammo/pickup_ammo
// Params 1, eflags: 0x4
// Checksum 0xd034f5cd, Offset: 0x8a8
// Size: 0xc4
function private function_7a80944d(player) {
    level endon(#"game_ended");
    self endon(#"death");
    player endon(#"disconnect");
    wait(isdefined(level.pickup_respawn_time) ? level.pickup_respawn_time : 0);
    if (isdefined(self.objectiveid)) {
        objective_setvisibletoplayer(self.objectiveid, player);
    }
    self.var_5ecd70 setvisibletoplayer(player);
    self.trigger setvisibletoplayer(player);
}


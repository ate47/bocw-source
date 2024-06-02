// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;

#namespace ballistic_knife;

// Namespace ballistic_knife/ballistic_knife
// Params 0, eflags: 0x2 linked
// Checksum 0xc4ddc905, Offset: 0xe8
// Size: 0xfc
function init_shared() {
    level.var_f676fe5a = #"hash_522eb6eca07bfe70";
    weaponobjects::function_e6400478(#"special_ballisticknife_t9_dw", &createballisticknifewatcher, 0);
    weaponobjects::function_e6400478(#"special_crossbow_t9", &createballisticknifewatcher, 0);
    if (is_true(level.var_b68902c4)) {
        weaponobjects::function_e6400478(#"special_ballisticknife_t9_dw_upgraded", &createballisticknifewatcher, 0);
        weaponobjects::function_e6400478(#"special_crossbow_t9_upgraded", &createballisticknifewatcher, 0);
    }
}

// Namespace ballistic_knife/ballistic_knife
// Params 2, eflags: 0x2 linked
// Checksum 0xd863cff4, Offset: 0x1f0
// Size: 0x3b0
function onspawn(watcher, player) {
    player endon(#"death", #"disconnect");
    level endon(#"game_ended");
    waitresult = self waittill(#"stationary", #"death");
    if (!isdefined(self)) {
        return;
    }
    endpos = waitresult.position;
    normal = waitresult.normal;
    angles = waitresult.direction;
    attacker = waitresult.attacker;
    prey = waitresult.target;
    bone = waitresult.bone_name;
    isfriendly = 0;
    if (isdefined(endpos)) {
        retrievable_model = spawn("script_model", endpos);
        retrievable_model setmodel(watcher.weapon.projectilemodel);
        retrievable_model setteam(player.team);
        retrievable_model setowner(player);
        retrievable_model.owner = player;
        retrievable_model.angles = angles;
        retrievable_model.name = watcher.weapon;
        retrievable_model.weapon = watcher.weapon;
        retrievable_model.targetname = "sticky_weapon";
        if (isdefined(prey)) {
            retrievable_model.prey = prey;
            if (level.teambased && player.team == prey.team) {
                isfriendly = 1;
            }
            if (!isfriendly) {
                if (isalive(prey) || !isdefined(prey gettagorigin(bone))) {
                    retrievable_model droptoground(retrievable_model.origin, 80);
                } else {
                    retrievable_model linkto(prey, bone);
                }
            } else if (isfriendly) {
                retrievable_model physicslaunch(normal, (randomint(10), randomint(10), randomint(10)));
                normal = (0, 0, 1);
            }
        }
        retrievable_model.normal = normal;
        watcher.objectarray[watcher.objectarray.size] = retrievable_model;
        if (isfriendly) {
            retrievable_model waittill(#"stationary");
        }
        if (!isdefined(retrievable_model)) {
            return;
        }
        retrievable_model thread dropknivestoground();
        player notify(#"ballistic_knife_stationary", {#retrievable_model:retrievable_model});
    }
}

// Namespace ballistic_knife/ballistic_knife
// Params 2, eflags: 0x2 linked
// Checksum 0xaa86bb89, Offset: 0x5a8
// Size: 0x2a4
function onspawnretrievetrigger(watcher, player) {
    player endon(#"death");
    player endon(#"disconnect");
    level endon(#"game_ended");
    waitresult = player waittill(#"ballistic_knife_stationary");
    retrievable_model = waitresult.retrievable_model;
    if (!isdefined(retrievable_model)) {
        return;
    }
    normal = retrievable_model.normal;
    prey = retrievable_model.prey;
    vec_scale = 10;
    trigger_pos = (0, 0, 0);
    if (isdefined(prey) && (isplayer(prey) || isai(prey))) {
        trigger_pos = prey.origin + (0, 0, vec_scale);
    } else {
        trigger_pos = retrievable_model.origin + vec_scale * normal;
    }
    retrievable_model clientfield::set("retrievable", 1);
    if (level.var_911aef07 !== 1) {
        retrievable_model clientfield::set("enemyequip", 1);
    }
    if (level.var_5ed53119 === 1) {
        retrievable_model clientfield::set("friendlyequip", 1);
    }
    retrievable_model weaponobjects::function_57152a5(watcher, player, trigger_pos);
    retrievable_model.pickuptrigger enablelinkto();
    if (isdefined(prey)) {
        if (sessionmodeiszombiesgame()) {
            retrievable_model thread function_8e6a040(prey);
        }
        retrievable_model.pickuptrigger linkto(prey);
    } else {
        retrievable_model.pickuptrigger linkto(retrievable_model);
    }
    retrievable_model thread weaponobjects::watchshutdown(player);
}

// Namespace ballistic_knife/ballistic_knife
// Params 1, eflags: 0x2 linked
// Checksum 0x2efceadc, Offset: 0x858
// Size: 0x8c
function function_8e6a040(*prey) {
    self endon(#"death");
    wait(2);
    self.pickuptrigger unlink();
    self unlink();
    waitframe(1);
    self physicslaunch();
    self thread updateretrievetrigger();
}

// Namespace ballistic_knife/ballistic_knife
// Params 2, eflags: 0x2 linked
// Checksum 0x910ec5d0, Offset: 0x8f0
// Size: 0x44
function onpickup(player, heldweapon) {
    self weaponobjects::function_db70257(player, heldweapon);
    self delete();
}

// Namespace ballistic_knife/ballistic_knife
// Params 0, eflags: 0x0
// Checksum 0x44d3db91, Offset: 0x940
// Size: 0x54
function destroy_ent() {
    if (isdefined(self)) {
        pickuptrigger = self.pickuptrigger;
        if (isdefined(pickuptrigger)) {
            pickuptrigger delete();
        }
        self delete();
    }
}

// Namespace ballistic_knife/ballistic_knife
// Params 0, eflags: 0x2 linked
// Checksum 0xea55b932, Offset: 0x9a0
// Size: 0x68
function dropknivestoground() {
    self endon(#"death");
    for (;;) {
        waitresult = level waittill(#"drop_objects_to_ground");
        self droptoground(waitresult.position, waitresult.radius);
    }
}

// Namespace ballistic_knife/ballistic_knife
// Params 2, eflags: 0x2 linked
// Checksum 0xaba4abe9, Offset: 0xa10
// Size: 0x7c
function droptoground(origin, radius) {
    if (distancesquared(origin, self.origin) < radius * radius) {
        self physicslaunch((0, 0, 1), (5, 5, 5));
        self thread updateretrievetrigger();
    }
}

// Namespace ballistic_knife/ballistic_knife
// Params 0, eflags: 0x2 linked
// Checksum 0x7294ebe0, Offset: 0xa98
// Size: 0x94
function updateretrievetrigger() {
    self endon(#"death");
    self waittill(#"stationary");
    trigger = self.pickuptrigger;
    if (isdefined(trigger)) {
        trigger.origin = (self.origin[0], self.origin[1], self.origin[2] + 10);
        trigger linkto(self);
    }
}

// Namespace ballistic_knife/ballistic_knife
// Params 0, eflags: 0x2 linked
// Checksum 0x874b22a6, Offset: 0xb38
// Size: 0x54
function onfizzleout() {
    self endon(#"death");
    playfx(level.var_f676fe5a, self.origin);
    self delete();
}

// Namespace ballistic_knife/ballistic_knife
// Params 1, eflags: 0x2 linked
// Checksum 0x2738df81, Offset: 0xb98
// Size: 0x8e
function createballisticknifewatcher(watcher) {
    watcher.onspawn = &onspawn;
    watcher.pickup = &onpickup;
    watcher.onfizzleout = &onfizzleout;
    watcher.ondetonatecallback = &delete;
    watcher.onspawnretrievetriggers = &onspawnretrievetrigger;
    watcher.storedifferentobject = 1;
}


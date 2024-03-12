// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\ai\systems\shared.gsc;

#namespace init;

// Namespace init/init
// Params 1, eflags: 0x2 linked
// Checksum 0x1fc4577, Offset: 0xd8
// Size: 0xc2
function initweapon(weapon) {
    self.weaponinfo[weapon.name] = spawnstruct();
    self.weaponinfo[weapon.name].position = "none";
    self.weaponinfo[weapon.name].hasclip = 1;
    if (isdefined(weapon.clipmodel)) {
        self.weaponinfo[weapon.name].useclip = 1;
        return;
    }
    self.weaponinfo[weapon.name].useclip = 0;
}

// Namespace init/init
// Params 0, eflags: 0x2 linked
// Checksum 0x71f0272f, Offset: 0x1a8
// Size: 0x45a
function main() {
    self.a = spawnstruct();
    self.a.weaponpos = [];
    if (self.weapon == level.weaponnone) {
        self aiutility::setcurrentweapon(level.weaponnone);
    }
    self aiutility::setprimaryweapon(self.weapon);
    if (self.secondaryweapon == level.weaponnone) {
        self aiutility::setsecondaryweapon(level.weaponnone);
    }
    self aiutility::setsecondaryweapon(self.secondaryweapon);
    self aiutility::setcurrentweapon(self.primaryweapon);
    self.initial_primaryweapon = self.primaryweapon;
    self.initial_secondaryweapon = self.secondaryweapon;
    self initweapon(self.primaryweapon);
    self initweapon(self.secondaryweapon);
    self initweapon(self.sidearm);
    self.weapon_positions = array("left", "right", "chest", "back");
    for (i = 0; i < self.weapon_positions.size; i++) {
        self.a.weaponpos[self.weapon_positions[i]] = level.weaponnone;
    }
    self.lastweapon = self.weapon;
    self.a.rockets = 3;
    self.a.rocketvisible = 1;
    self.a.pose = "stand";
    self.a.prevpose = self.a.pose;
    self.a.movement = "stop";
    self.a.special = "none";
    self.a.gunhand = "none";
    shared::placeweaponon(self.primaryweapon, "right");
    if (isdefined(self.secondaryweaponclass) && self.secondaryweaponclass != "none" && self.secondaryweaponclass != "pistol") {
        shared::placeweaponon(self.secondaryweapon, "back");
    }
    self.a.combatendtime = gettime();
    self.a.nextgrenadetrytime = 0;
    self.a.isaiming = 0;
    self.rightaimlimit = 45;
    self.leftaimlimit = -45;
    self.upaimlimit = 45;
    self.downaimlimit = -45;
    self.walk = 0;
    self.sprint = 0;
    self.a.postscriptfunc = undefined;
    if (!isdefined(self.script_accuracy)) {
        self.script_accuracy = 1;
    }
    self.a.misstime = 0;
    if (isactor(self)) {
        self.bulletsinclip = self.weapon.clipsize;
    } else {
        self.ai.bulletsinclip = self.weapon.clipsize;
    }
    self.lastenemysighttime = 0;
    self.combattime = 0;
    self.var_4a68f84b = 0.75;
    self.randomgrenaderange = 128;
    self.reacquire_state = 0;
}

// Namespace init/init
// Params 1, eflags: 0x2 linked
// Checksum 0x69c7f25b, Offset: 0x610
// Size: 0xe4
function addtomissiles(grenade) {
    if (!isdefined(level.missileentities)) {
        level.missileentities = [];
    }
    if (!isdefined(level.missileentities)) {
        level.missileentities = [];
    } else if (!isarray(level.missileentities)) {
        level.missileentities = array(level.missileentities);
    }
    level.missileentities[level.missileentities.size] = grenade;
    if (isdefined(grenade)) {
        grenade waittill(#"death");
    }
    arrayremovevalue(level.missileentities, grenade);
}

// Namespace init/grenade_fire
// Params 1, eflags: 0x20
// Checksum 0xafb18b83, Offset: 0x700
// Size: 0x6c
function event_handler[grenade_fire] function_960adbea(eventstruct) {
    grenade = eventstruct.projectile;
    weapon = eventstruct.weapon;
    if (isdefined(grenade)) {
        grenade.owner = self;
        grenade.weapon = weapon;
        level thread addtomissiles(grenade);
    }
}

// Namespace init/grenade_launcher_fire
// Params 1, eflags: 0x20
// Checksum 0x41c72d89, Offset: 0x778
// Size: 0x54
function event_handler[grenade_launcher_fire] function_c6ddaa47(eventstruct) {
    eventstruct.projectile.owner = self;
    eventstruct.projectile.weapon = eventstruct.weapon;
    level thread addtomissiles(eventstruct.projectile);
}

// Namespace init/missile_fire
// Params 1, eflags: 0x20
// Checksum 0x2f4a5d0d, Offset: 0x7d8
// Size: 0x54
function event_handler[missile_fire] function_596d3a28(eventstruct) {
    eventstruct.projectile.owner = self;
    eventstruct.projectile.weapon = eventstruct.weapon;
    level thread addtomissiles(eventstruct.projectile);
}

// Namespace init/init
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x838
// Size: 0x4
function end_script() {
    
}


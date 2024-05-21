// Atian COD Tools GSC CW decompiler test
#using script_32399001bdb550da;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\healthoverlay.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace loadout;

// Namespace loadout/loadout
// Params 0, eflags: 0x5
// Checksum 0x12609083, Offset: 0x200
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"loadout", &preinit, undefined, undefined, #"load");
}

// Namespace loadout/loadout
// Params 0, eflags: 0x6 linked
// Checksum 0x2e2f2033, Offset: 0x250
// Size: 0x64
function private preinit() {
    callback::on_start_gametype(&function_6fddd9e2);
    callback::on_connect(&on_connect);
    callback::on_disconnect(&function_5890c14e);
}

// Namespace loadout/loadout
// Params 0, eflags: 0x2 linked
// Checksum 0x1ffdef4c, Offset: 0x2c0
// Size: 0x44
function on_connect() {
    self.pers[#"loadout"] = spawnstruct();
    self function_c67222df();
}

// Namespace loadout/loadout
// Params 0, eflags: 0x6 linked
// Checksum 0xa9eb6ed8, Offset: 0x310
// Size: 0x1e
function private function_6fddd9e2() {
    profilestart();
    init();
    profilestop();
}

// Namespace loadout/loadout
// Params 0, eflags: 0x6 linked
// Checksum 0x9b7bf5aa, Offset: 0x338
// Size: 0x74
function private init() {
    level.maxkillstreaks = 4;
    level.maxspecialties = 6;
    level.maxallocation = getgametypesetting(#"maxallocation");
    level.loadoutkillstreaksenabled = getgametypesetting(#"loadoutkillstreaksenabled");
}

// Namespace loadout/loadout
// Params 0, eflags: 0x2 linked
// Checksum 0x8ce59d6e, Offset: 0x3b8
// Size: 0x144
function function_5890c14e() {
    self savegame::set_player_data("playerClass", undefined);
    self savegame::set_player_data("altPlayerID", undefined);
    self savegame::set_player_data("saved_weapon", undefined);
    self savegame::set_player_data("saved_weapon_attachments", undefined);
    self savegame::set_player_data("saved_weapondata", undefined);
    self savegame::set_player_data("lives", undefined);
    self savegame::set_player_data("saved_rig1", undefined);
    self savegame::set_player_data("saved_rig1_upgraded", undefined);
    self savegame::set_player_data("saved_rig2", undefined);
    self savegame::set_player_data("saved_rig2_upgraded", undefined);
}

// Namespace loadout/loadout
// Params 1, eflags: 0x0
// Checksum 0x5cd97d5e, Offset: 0x508
// Size: 0x50
function function_bac6b417(equipment_name) {
    if (isdefined(level.weapontacticalinsertion) && equipment_name == level.weapontacticalinsertion.name && level.disabletacinsert) {
        return false;
    }
    return true;
}

// Namespace loadout/loadout
// Params 0, eflags: 0x6 linked
// Checksum 0x2ccee897, Offset: 0x560
// Size: 0x14c
function private function_5536bd9e() {
    has_specialty_armor = self hasperk(#"specialty_armor");
    healthtoassign = self.spawnhealth;
    if (isdefined(level.maxspawnhealthboostprct)) {
        self.bonusspawnhealth = int(level.maxspawnhealthboostprct * self.spawnhealth);
        healthtoassign += self.bonusspawnhealth;
    }
    self player::function_9080887a(healthtoassign);
    self.maxhealth = healthtoassign;
    new_health = self.var_66cb03ad < 0 ? healthtoassign : self.var_66cb03ad;
    self.health = new_health;
    self.maxarmor = has_specialty_armor ? self.spawnarmor : 0;
    self.armor = has_specialty_armor ? self.spawnarmor : 0;
    self.var_ed2f8b3a = self.spawnhealth;
    self healthoverlay::restart_player_health_regen();
}

// Namespace loadout/loadout
// Params 3, eflags: 0x2 linked
// Checksum 0x17e22503, Offset: 0x6b8
// Size: 0x22e
function giveloadout(*team, *weaponclass, *var_d4a479a1) {
    profileNamedStart(#"");
    defaultweapon = getweapon("ar_accurate_t9");
    self takeallweapons();
    self giveweapon(defaultweapon);
    self switchtoweaponimmediate(defaultweapon);
    self setspawnweapon(defaultweapon);
    self setperk("specialty_sprint");
    self setperk("specialty_slide");
    self setperk("specialty_sprintreload");
    self.lastnonkillstreakweapon = defaultweapon;
    self.specialty = [];
    self.killstreak = [];
    self notify(#"give_map");
    self.class_num = 0;
    function_5536bd9e();
    self.var_699ca781 = 0;
    self.var_b204c655 = 0;
    self.grenadetypeprimary = level.weaponnone;
    self.grenadetypeprimarycount = 0;
    self.grenadetypesecondary = level.weaponnone;
    self.grenadetypesecondarycount = 0;
    if (isdefined(self.movementspeedmodifier)) {
        self setmovespeedscale(self.movementspeedmodifier * self getmovespeedscale());
    }
    self flag::set(#"loadout_given");
    callback::callback(#"on_loadout");
    profileNamedStop();
}

// Namespace loadout/loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x939bb00b, Offset: 0x8f0
// Size: 0x1a
function setclass(newclass) {
    self.curclass = newclass;
}

// Namespace loadout/player_loadoutchanged
// Params 1, eflags: 0x20
// Checksum 0x8da4f9c1, Offset: 0x918
// Size: 0x2c
function event_handler[player_loadoutchanged] loadout_changed(eventstruct) {
    self callback::callback(#"hash_39bf72fd97e248a0", eventstruct);
}

// Namespace loadout/loadout
// Params 1, eflags: 0x0
// Checksum 0x9369b5c1, Offset: 0x950
// Size: 0x64
function isexplosivedamage(meansofdeath) {
    switch (meansofdeath) {
    case #"mod_explosive":
    case #"mod_grenade":
    case #"mod_grenade_splash":
    case #"mod_projectile_splash":
        return true;
    }
    return false;
}

// Namespace loadout/loadout
// Params 1, eflags: 0x2 linked
// Checksum 0xaaa75981, Offset: 0x9c0
// Size: 0x74
function function_88c673cf(player) {
    return player hasperk(#"specialty_stunprotection") || player hasperk(#"specialty_flashprotection") || player hasperk(#"specialty_proximityprotection");
}

// Namespace loadout/loadout
// Params 2, eflags: 0x0
// Checksum 0x7677c82f, Offset: 0xa40
// Size: 0x64
function isfiredamage(weapon, meansofdeath) {
    if (weapon.doesfiredamage && (meansofdeath == "MOD_BURNED" || meansofdeath == "MOD_GRENADE" || meansofdeath == "MOD_GRENADE_SPLASH")) {
        return true;
    }
    return false;
}

// Namespace loadout/loadout
// Params 1, eflags: 0x0
// Checksum 0x129c86ca, Offset: 0xab0
// Size: 0x34
function function_82af57a1(inflictor) {
    return isdefined(inflictor) && isdefined(inflictor.stucktoplayer) && inflictor.stucktoplayer == self;
}


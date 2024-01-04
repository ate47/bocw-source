// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\player\player_loadout.gsc;
#using scripts\core_common\gameobjects_shared.gsc;

#namespace os;

// Namespace os/os
// Params 1, eflags: 0x0
// Checksum 0xea271db6, Offset: 0xc0
// Size: 0xc4
function turn_back_time(basegametype) {
    gameobjects::register_allowed_gameobject("os");
    gameobjects::register_allowed_gameobject(basegametype);
    level.oldschoolweapon = getweapon("pistol_standard_t8");
    level.primaryoffhandnull = getweapon(#"null_offhand_primary");
    level.secondaryoffhandnull = getweapon(#"null_offhand_secondary");
    level.givecustomloadout = &give_oldschool_loadout;
}

// Namespace os/os
// Params 0, eflags: 0x0
// Checksum 0x3ea5f2d9, Offset: 0x190
// Size: 0x136
function give_oldschool_loadout() {
    self loadout::init_player(1);
    self loadout::function_f436358b("CLASS_ASSAULT");
    self giveweapon(level.oldschoolweapon);
    self switchtoweapon(level.oldschoolweapon);
    self giveweapon(level.primaryoffhandnull);
    self giveweapon(level.secondaryoffhandnull);
    self setweaponammoclip(level.primaryoffhandnull, 0);
    self setweaponammoclip(level.secondaryoffhandnull, 0);
    if (self.firstspawn !== 0) {
        self setspawnweapon(level.oldschoolweapon);
    }
    return level.oldschoolweapon;
}


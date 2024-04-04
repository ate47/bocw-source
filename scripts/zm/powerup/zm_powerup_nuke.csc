// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_powerups.csc;
#using scripts\core_common\ai\zombie_death.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_powerup_nuke;

// Namespace zm_powerup_nuke/zm_powerup_nuke
// Params 0, eflags: 0x5
// Checksum 0x5d4455f7, Offset: 0xd8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_nuke", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_nuke/zm_powerup_nuke
// Params 0, eflags: 0x6 linked
// Checksum 0x63dde1ef, Offset: 0x120
// Size: 0xc4
function private preinit() {
    zm_powerups::include_zombie_powerup("nuke");
    zm_powerups::add_zombie_powerup("nuke");
    clientfield::register("actor", "zm_nuked", 1, 1, "int", &zombie_nuked, 0, 0);
    clientfield::register("vehicle", "zm_nuked", 1, 1, "int", &zombie_nuked, 0, 0);
}

// Namespace zm_powerup_nuke/zm_powerup_nuke
// Params 7, eflags: 0x2 linked
// Checksum 0x369bc325, Offset: 0x1f0
// Size: 0x54
function zombie_nuked(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self zombie_death::flame_death_fx(bwastimejump);
}


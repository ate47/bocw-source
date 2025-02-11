#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;

#namespace globallogic_player;

// Namespace globallogic_player/globallogic_player
// Params 0, eflags: 0x5
// Checksum 0x29021aa3, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"globallogic_player", &preinit, undefined, undefined, undefined);
}

// Namespace globallogic_player/globallogic_player
// Params 0, eflags: 0x4
// Checksum 0xbaa0dba3, Offset: 0x118
// Size: 0x4c
function private preinit() {
    clientfield::register("toplayer", "player_damage_type", 1, 1, "int", &player_damage_type_changed, 0, 0);
}

// Namespace globallogic_player/globallogic_player
// Params 7, eflags: 0x0
// Checksum 0xaf193cd7, Offset: 0x170
// Size: 0xd4
function player_damage_type_changed(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!self function_21c0fa55()) {
        return;
    }
    if (bwastimejump) {
        self setdamagedirectionindicator(1);
        setsoundcontext("plr_impact", "flesh");
        return;
    }
    self setdamagedirectionindicator(0);
    setsoundcontext("plr_impact", "flesh");
}


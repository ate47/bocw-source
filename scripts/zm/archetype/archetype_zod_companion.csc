// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\ai\systems\gib.csc;
#using scripts\core_common\ai\systems\fx_character.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace zodcompanionclientutils;

// Namespace zodcompanionclientutils/archetype_zod_companion
// Params 0, eflags: 0x5
// Checksum 0x4e3e21ae, Offset: 0x130
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_zod_companion", &preinit, undefined, undefined, undefined);
}

// Namespace zodcompanionclientutils/archetype_zod_companion
// Params 0, eflags: 0x4
// Checksum 0x48197ae, Offset: 0x178
// Size: 0x124
function private preinit() {
    clientfield::register("allplayers", "" + #"being_robot_revived", 24000, 1, "int", &play_revival_fx, 0, 0);
    ai::add_archetype_spawn_function(#"zod_companion", &zodcompanionspawnsetup);
    level._effect[#"fx_dest_robot_head_sparks"] = "destruct/fx_dest_robot_head_sparks";
    level._effect[#"fx_dest_robot_body_sparks"] = "destruct/fx_dest_robot_body_sparks";
    level._effect[#"companion_revive_effect"] = #"hash_3adc423957988632";
    ai::add_archetype_spawn_function(#"robot", &zodcompanionspawnsetup);
}

// Namespace zodcompanionclientutils/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x1979d57b, Offset: 0x2a8
// Size: 0x12c
function private zodcompanionspawnsetup(localclientnum) {
    entity = self;
    gibclientutils::addgibcallback(localclientnum, entity, 8, &zodcompanionheadgibfx);
    gibclientutils::addgibcallback(localclientnum, entity, 8, &_gibcallback);
    gibclientutils::addgibcallback(localclientnum, entity, 16, &_gibcallback);
    gibclientutils::addgibcallback(localclientnum, entity, 32, &_gibcallback);
    gibclientutils::addgibcallback(localclientnum, entity, 128, &_gibcallback);
    gibclientutils::addgibcallback(localclientnum, entity, 256, &_gibcallback);
    fxclientutils::playfxbundle(localclientnum, entity, entity.fxdef);
}

// Namespace zodcompanionclientutils/archetype_zod_companion
// Params 3, eflags: 0x0
// Checksum 0xdc58f1c, Offset: 0x3e0
// Size: 0x104
function zodcompanionheadgibfx(localclientnum, entity, *gibflag) {
    if (!isdefined(gibflag) || !gibflag isai() || !isalive(gibflag)) {
        return;
    }
    if (isdefined(gibflag.mindcontrolheadfx)) {
        stopfx(entity, gibflag.mindcontrolheadfx);
        gibflag.mindcontrolheadfx = undefined;
    }
    gibflag.headgibfx = util::playfxontag(entity, level._effect[#"fx_dest_robot_head_sparks"], gibflag, "j_neck");
    playsound(0, #"prj_bullet_impact_robot_headshot", gibflag.origin);
}

// Namespace zodcompanionclientutils/archetype_zod_companion
// Params 2, eflags: 0x0
// Checksum 0x8dbc63db, Offset: 0x4f0
// Size: 0x9a
function zodcompaniondamagedfx(localclientnum, entity) {
    if (!isdefined(entity) || !entity isai() || !isalive(entity)) {
        return;
    }
    entity.damagedfx = util::playfxontag(localclientnum, level._effect[#"fx_dest_robot_body_sparks"], entity, "j_spine4");
}

// Namespace zodcompanionclientutils/archetype_zod_companion
// Params 2, eflags: 0x0
// Checksum 0xe662c01e, Offset: 0x598
// Size: 0x3c
function zodcompanionclearfx(*localclientnum, entity) {
    if (!isdefined(entity) || !entity isai()) {
        return;
    }
}

// Namespace zodcompanionclientutils/archetype_zod_companion
// Params 3, eflags: 0x4
// Checksum 0x6022b973, Offset: 0x5e0
// Size: 0xba
function private _gibcallback(*localclientnum, entity, gibflag) {
    if (!isdefined(entity) || !entity isai()) {
        return;
    }
    switch (gibflag) {
    case 8:
        break;
    case 16:
        break;
    case 32:
        break;
    case 128:
        break;
    case 256:
        break;
    }
}

// Namespace zodcompanionclientutils/archetype_zod_companion
// Params 7, eflags: 0x0
// Checksum 0x81820f4c, Offset: 0x6a8
// Size: 0xf2
function play_revival_fx(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(self.robot_revival_fx) && fieldname == 1 && bwastimejump == 0) {
        stopfx(binitialsnap, self.robot_revival_fx);
    }
    if (bwastimejump === 1) {
        self playsound(0, #"evt_civil_protector_revive_plr");
        self.robot_revival_fx = util::playfxontag(binitialsnap, level._effect[#"companion_revive_effect"], self, "j_spine4");
    }
}


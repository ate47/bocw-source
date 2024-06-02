// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\struct.csc;

#namespace sd;

// Namespace sd/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x53900032, Offset: 0x108
// Size: 0xfc
function event_handler[gametype_init] main(*eventstruct) {
    if (getgametypesetting(#"silentplant") != 0) {
        setsoundcontext("bomb_plant", "silent");
    }
    level.var_e4935474 = [];
    clientfield::function_5b7d846d("hudItems.war.attackingTeam", #"hash_11ea1e04b846f98e", #"attackingteam", 1, 2, "int", undefined, 0, 1);
    clientfield::register("scriptmover", "entityModelsNum", 1, 10, "int", &function_e116df6c, 0, 0);
}

// Namespace sd/sd
// Params 7, eflags: 0x0
// Checksum 0xfa39d1ca, Offset: 0x210
// Size: 0xec
function function_e116df6c(*localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.var_e4935474)) {
        level.var_e4935474 = [];
    }
    if (bwastimejump != fieldname) {
        entitynumber = self getentitynumber();
        if (bwastimejump != -1) {
            level.var_e4935474[entitynumber] = {};
            level.var_e4935474[entitynumber].var_eec7f99d = bwastimejump;
            level.var_e4935474[entitynumber].var_7c69bb09 = self.team;
        }
        codcaster::function_12acfa84();
    }
}


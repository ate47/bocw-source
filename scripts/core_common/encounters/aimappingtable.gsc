// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace aimappingtableutility;

// Namespace aimappingtableutility/aimappingtable
// Params 2, eflags: 0x0
// Checksum 0x9b1f945c, Offset: 0xa8
// Size: 0x3c
function setmappingtableforteam(str_team, aimappingtable) {
    str_team = util::get_team_mapping(str_team);
    level.aimapppingtable[str_team] = aimappingtable;
}

// Namespace aimappingtableutility/aimappingtable
// Params 3, eflags: 0x0
// Checksum 0x1de36ddf, Offset: 0xf0
// Size: 0x100
function getspawnerforai(ai, team, str_mapping_table_override) {
    if (!isdefined(ai)) {
        return undefined;
    }
    aimappingtable = undefined;
    if (isdefined(str_mapping_table_override)) {
        aimappingtable = str_mapping_table_override;
    } else if (isdefined(level.aimapppingtable) && isdefined(level.aimapppingtable[team])) {
        aimappingtable = level.aimapppingtable[team];
    }
    if (!isdefined(aimappingtable)) {
        return undefined;
    }
    aimappingtablebundle = getscriptbundle(aimappingtable);
    if (!isdefined(aimappingtablebundle)) {
        return undefined;
    }
    aitype = aimappingtablebundle.("aitype_" + ai);
    if (isdefined(aitype)) {
        return aitype;
    }
    return aimappingtablebundle.("vehicle_" + ai);
}


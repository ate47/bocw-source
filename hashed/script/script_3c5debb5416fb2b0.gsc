// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace world_event_radio_tuning;

// Namespace world_event_radio_tuning/world_event_radio_tuning
// Params 0, eflags: 0x5
// Checksum 0x6065b674, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_7811e7ce71e374d0", &preinit, undefined, undefined, undefined);
}

// Namespace world_event_radio_tuning/world_event_radio_tuning
// Params 0, eflags: 0x2 linked
// Checksum 0xe2acc168, Offset: 0xe8
// Size: 0xe4
function preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_4e8a552c8b6dcbb2")) && !getdvarint(#"hash_730311c63805303a", 0)) {
        return;
    }
    util::register_system(#"musicunlock", &function_214fe607);
}

// Namespace world_event_radio_tuning/world_event_radio_tuning
// Params 3, eflags: 0x2 linked
// Checksum 0x587661c2, Offset: 0x1d8
// Size: 0x26c
function function_214fe607(localclientnum, state, *oldstate) {
    if (!isdefined(oldstate)) {
        return;
    }
    var_8c7054cc = undefined;
    switch (oldstate) {
    case #"unlocksrmus_01":
        var_8c7054cc = #"musictrack_sr_lullaby";
        break;
    case #"unlocksrmus_02":
        var_8c7054cc = #"musictrack_sr_theone";
        break;
    case #"unlocksrmus_03":
        var_8c7054cc = #"musictrack_sr_abra";
        break;
    case #"unlocksrmus_04":
        var_8c7054cc = #"musictrack_sr_brave";
        break;
    case #"unlocksrmus_05":
        var_8c7054cc = #"musictrack_sr_aminfil";
        break;
    case #"unlocksrmus_06":
        var_8c7054cc = #"musictrack_zm_silver_ee";
        break;
    case #"unlocksrmus_07":
        var_8c7054cc = #"musictrack_zm_gold_ee";
        break;
    case #"unlocksrmus_08":
        var_8c7054cc = #"musictrack_sr_generation";
        break;
    case #"unlocksrmus_09":
        var_8c7054cc = #"musictrack_sr_avogadro";
        break;
    case #"unlocksrmus_10":
        var_8c7054cc = #"musictrack_sr_frequency";
        break;
    case #"unlocksrmus_11":
        var_8c7054cc = #"musictrack_sr_boa";
        break;
    case #"unlocksrmus_12":
        var_8c7054cc = #"musictrack_sr_pareidolia";
        break;
    case #"unlocksrmus_13":
        var_8c7054cc = #"musictrack_sr_tribes";
        break;
    }
    if (isdefined(var_8c7054cc)) {
        function_2cca7b47(state, var_8c7054cc);
    }
}


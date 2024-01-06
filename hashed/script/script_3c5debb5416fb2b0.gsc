// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_e7ab676d;

// Namespace namespace_e7ab676d/namespace_e7ab676d
// Params 0, eflags: 0x5
// Checksum 0x6065b674, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_7811e7ce71e374d0", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_e7ab676d/namespace_e7ab676d
// Params 0, eflags: 0x0
// Checksum 0xe2acc168, Offset: 0xe8
// Size: 0xe4
function function_70a657d8() {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_4e8a552c8b6dcbb2")) && !getdvarint(#"hash_730311c63805303a", 0)) {
        return;
    }
    util::register_system(#"hash_38eb1a36dcb54190", &function_214fe607);
}

// Namespace namespace_e7ab676d/namespace_e7ab676d
// Params 3, eflags: 0x0
// Checksum 0x587661c2, Offset: 0x1d8
// Size: 0x26c
function function_214fe607(localclientnum, state, *oldstate) {
    if (!isdefined(oldstate)) {
        return;
    }
    var_8c7054cc = undefined;
    switch (oldstate) {
    case #"hash_7490a1208ba135a3":
        var_8c7054cc = #"musictrack_sr_lullaby";
        break;
    case #"hash_7490a2208ba13756":
        var_8c7054cc = #"musictrack_sr_theone";
        break;
    case #"hash_7490a3208ba13909":
        var_8c7054cc = #"musictrack_sr_abra";
        break;
    case #"hash_7490a4208ba13abc":
        var_8c7054cc = #"musictrack_sr_brave";
        break;
    case #"hash_7490a5208ba13c6f":
        var_8c7054cc = #"musictrack_sr_aminfil";
        break;
    case #"hash_7490a6208ba13e22":
        var_8c7054cc = #"musictrack_zm_silver_ee";
        break;
    case #"hash_7490a7208ba13fd5":
        var_8c7054cc = #"musictrack_zm_gold_ee";
        break;
    case #"hash_7490a8208ba14188":
        var_8c7054cc = #"musictrack_sr_generation";
        break;
    case #"hash_7490a9208ba1433b":
        var_8c7054cc = #"musictrack_sr_avogadro";
        break;
    case #"hash_749426208ba44d79":
        var_8c7054cc = #"musictrack_sr_frequency";
        break;
    case #"hash_749425208ba44bc6":
        var_8c7054cc = #"musictrack_sr_boa";
        break;
    case #"hash_749424208ba44a13":
        var_8c7054cc = #"musictrack_sr_pareidolia";
        break;
    case #"hash_749423208ba44860":
        var_8c7054cc = #"musictrack_sr_tribes";
        break;
    }
    if (isdefined(var_8c7054cc)) {
        function_2cca7b47(state, var_8c7054cc);
    }
}


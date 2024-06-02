// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;

#namespace activities;

// Namespace activities/activities_util
// Params 0, eflags: 0x5
// Checksum 0xe1d2329f, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"activities", &preinit, undefined, undefined, undefined);
}

// Namespace activities/activities_util
// Params 0, eflags: 0x4
// Checksum 0xe82ae9a6, Offset: 0xf0
// Size: 0x3a
function private preinit() {
    level.activities = {};
    level.activities.var_7e507488 = clientsysregister("a:obj");
}

// Namespace activities/activities_util
// Params 1, eflags: 0x0
// Checksum 0x7cbecd74, Offset: 0x138
// Size: 0x22
function function_b73af3c(name) {
    level.activities.levelname = name;
}

// Namespace activities/activities_util
// Params 1, eflags: 0x0
// Checksum 0x29132605, Offset: 0x168
// Size: 0x144
function function_59e67711(objective) {
    assert(!issubstr(objective, "<unknown string>"), "<unknown string>");
    if (isdefined(level.activities.levelname)) {
        clientsyssetstate(level.activities.var_7e507488, "0," + objective + "," + level.gameskill + "," + level.var_1c5d2bf4 + "," + level.activities.levelname);
        level.activities.levelname = undefined;
        return;
    }
    clientsyssetstate(level.activities.var_7e507488, "1," + objective + "," + level.gameskill + "," + level.var_1c5d2bf4);
}


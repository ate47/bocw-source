// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_a376209a;

// Namespace namespace_a376209a/gametype_start
// Params 1, eflags: 0x20
// Checksum 0x692dcf54, Offset: 0xc0
// Size: 0x2c
function event_handler[gametype_start] main(*eventstruct) {
    callback::on_gameplay_started(&on_gameplay_started);
}

// Namespace namespace_a376209a/namespace_a376209a
// Params 1, eflags: 0x2 linked
// Checksum 0x45f8a929, Offset: 0xf8
// Size: 0x2c
function on_gameplay_started(localclientnum) {
    waitframe(1);
    level thread function_807e8ee9(localclientnum);
}

// Namespace namespace_a376209a/namespace_a376209a
// Params 1, eflags: 0x2 linked
// Checksum 0x98a312fa, Offset: 0x130
// Size: 0x154
function function_807e8ee9(localclientnum) {
    var_296d73cb = getent(localclientnum, "clock_min_hand", "targetname");
    var_30bcd607 = getent(localclientnum, "clock_sec_hand", "targetname");
    timelimit = getgametypesetting(#"timelimit");
    if (!getdvarint(#"hash_151d18a5663d31ce", 1) || !isdefined(var_296d73cb) || !isdefined(var_30bcd607) || !isdefined(timelimit)) {
        return;
    }
    if (timelimit > 0) {
        var_296d73cb rotatepitch(360, timelimit * 60);
        var_30bcd607 rotatepitch(360 * timelimit, timelimit * 60);
        return;
    }
    var_30bcd607 thread function_da8da832();
}

// Namespace namespace_a376209a/namespace_a376209a
// Params 0, eflags: 0x2 linked
// Checksum 0x4a276715, Offset: 0x290
// Size: 0x6e
function function_da8da832() {
    while (isdefined(self) && getdvarint(#"hash_151d18a5663d31ce", 1)) {
        self rotatepitch(360, 60);
        self waittill(#"rotatedone");
    }
}


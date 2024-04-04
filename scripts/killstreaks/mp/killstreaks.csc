// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreak_vehicle.csc;
#using scripts\killstreaks\killstreak_detect.csc;
#using scripts\killstreaks\killstreaks_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace killstreaks;

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x5
// Checksum 0x9777ba56, Offset: 0xf8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"killstreaks", &preinit, undefined, undefined, #"renderoverridebundle");
}

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x6 linked
// Checksum 0x37b4b3ba, Offset: 0x148
// Size: 0x44
function private preinit() {
    init_shared();
    killstreak_vehicle::init();
    killstreak_detect::init_shared();
    function_f1707039();
}

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x6 linked
// Checksum 0x52b6c88a, Offset: 0x198
// Size: 0x2b4
function private function_f1707039() {
    level.var_4b42d599 = [];
    for (i = 0; i < 4; i++) {
        level.var_4b42d599[i] = "killstreaks.killstreak" + i + ".inUse";
        clientfield::register_clientuimodel(level.var_4b42d599[i], #"hash_38b7a28901866ae4", [#"killstreak" + (isdefined(i) ? "" + i : ""), #"inuse"], 1, 1, "int", undefined, 0, 0);
    }
    level.var_46b33f90 = [];
    level.var_ce69c3cb = [];
    level.var_a0d81b28 = max(8, 4);
    for (i = 0; i < level.var_a0d81b28; i++) {
        level.var_46b33f90[i] = "killstreaks.killstreak" + i + ".spaceFull";
        clientfield::register_clientuimodel(level.var_46b33f90[i], #"hash_38b7a28901866ae4", [#"killstreak" + (isdefined(i) ? "" + i : ""), #"hash_3bbe3fe57a438e3c"], 1, 1, "int", undefined, 0, 0);
        level.var_ce69c3cb[i] = "killstreaks.killstreak" + i + ".noTargets";
        clientfield::register_clientuimodel(level.var_ce69c3cb[i], #"hash_38b7a28901866ae4", [#"killstreak" + (isdefined(i) ? "" + i : ""), #"hash_361ce27ba0208918"], 1, 1, "int", undefined, 0, 0);
    }
}


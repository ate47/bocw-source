// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace cheat;

// Namespace cheat/cheat
// Params 0, eflags: 0x5
// Checksum 0x952a970e, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"cheat", &preinit, undefined, undefined, undefined);
}

// Namespace cheat/cheat
// Params 0, eflags: 0x4
// Checksum 0x742ae414, Offset: 0x100
// Size: 0x5c
function private preinit() {
    level.var_62079b93 = [];
    level.var_6722c38a = [];
    level.var_8c80c829 = [];
    level flag::init("has_cheated");
    level thread death_monitor();
}

// Namespace cheat/cheat
// Params 0, eflags: 0x0
// Checksum 0x5e2ee51, Offset: 0x168
// Size: 0x1c
function player_init() {
    self thread function_ae608e1a();
}

// Namespace cheat/cheat
// Params 0, eflags: 0x0
// Checksum 0x4f54537e, Offset: 0x190
// Size: 0x14
function death_monitor() {
    function_e380068d();
}

// Namespace cheat/cheat
// Params 0, eflags: 0x0
// Checksum 0x1a32121f, Offset: 0x1b0
// Size: 0x6c
function function_e380068d() {
    /#
        for (index = 0; index < level.var_8c80c829.size; index++) {
            setdvar(level.var_8c80c829[index], level.var_62079b93[level.var_8c80c829[index]]);
        }
    #/
}

// Namespace cheat/cheat
// Params 2, eflags: 0x0
// Checksum 0xf2d4231a, Offset: 0x228
// Size: 0x96
function function_8fb30e85(var_db66e5f5, var_beef13ae) {
    /#
        setdvar(var_db66e5f5, 0);
    #/
    level.var_62079b93[var_db66e5f5] = getdvarint(var_db66e5f5, 0);
    level.var_6722c38a[var_db66e5f5] = var_beef13ae;
    if (level.var_62079b93[var_db66e5f5]) {
        [[ var_beef13ae ]](level.var_62079b93[var_db66e5f5]);
    }
}

// Namespace cheat/cheat
// Params 1, eflags: 0x0
// Checksum 0x9985e848, Offset: 0x2c8
// Size: 0x96
function function_7f7b42b7(var_db66e5f5) {
    var_d8568d2f = getdvarint(var_db66e5f5, 0);
    if (level.var_62079b93[var_db66e5f5] == var_d8568d2f) {
        return;
    }
    if (var_d8568d2f) {
        level flag::set("has_cheated");
    }
    level.var_62079b93[var_db66e5f5] = var_d8568d2f;
    [[ level.var_6722c38a[var_db66e5f5] ]](var_d8568d2f);
}

// Namespace cheat/cheat
// Params 0, eflags: 0x0
// Checksum 0x7e278b30, Offset: 0x368
// Size: 0xb8
function function_ae608e1a() {
    level endon(#"unloaded");
    function_8fb30e85("sf_use_ignoreammo", &function_b68f06ea);
    level.var_8c80c829 = getarraykeys(level.var_62079b93);
    for (;;) {
        for (index = 0; index < level.var_8c80c829.size; index++) {
            function_7f7b42b7(level.var_8c80c829[index]);
        }
        wait(0.5);
    }
}

// Namespace cheat/cheat
// Params 1, eflags: 0x0
// Checksum 0xa56c112c, Offset: 0x428
// Size: 0x64
function function_b68f06ea(var_d8568d2f) {
    if (var_d8568d2f) {
        setsaveddvar(#"player_sustainammo", 1);
        return;
    }
    setsaveddvar(#"player_sustainammo", 0);
}

// Namespace cheat/cheat
// Params 0, eflags: 0x0
// Checksum 0x7305cb35, Offset: 0x498
// Size: 0x22
function is_cheating() {
    return level flag::get("has_cheated");
}


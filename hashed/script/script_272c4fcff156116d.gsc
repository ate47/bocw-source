// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;

#namespace namespace_643f86fe;

// Namespace namespace_643f86fe/namespace_1ef8852a
// Params 0, eflags: 0x5
// Checksum 0xe1d2329f, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_603e46b67e9ea6d8", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_643f86fe/namespace_1ef8852a
// Params 0, eflags: 0x6 linked
// Checksum 0xe82ae9a6, Offset: 0xf0
// Size: 0x3a
function private function_70a657d8() {
    level.var_643f86fe = {};
    level.var_643f86fe.var_7e507488 = clientsysregister("a:obj");
}

// Namespace namespace_643f86fe/namespace_1ef8852a
// Params 1, eflags: 0x2 linked
// Checksum 0x7cbecd74, Offset: 0x138
// Size: 0x22
function function_b73af3c(name) {
    level.var_643f86fe.levelname = name;
}

// Namespace namespace_643f86fe/namespace_1ef8852a
// Params 1, eflags: 0x2 linked
// Checksum 0x29132605, Offset: 0x168
// Size: 0x144
function function_59e67711(objective) {
    /#
        assert(!issubstr(objective, "<unknown string>"), "<unknown string>");
    #/
    if (isdefined(level.var_643f86fe.levelname)) {
        clientsyssetstate(level.var_643f86fe.var_7e507488, "0," + objective + "," + level.gameskill + "," + level.var_1c5d2bf4 + "," + level.var_643f86fe.levelname);
        level.var_643f86fe.levelname = undefined;
        return;
    }
    clientsyssetstate(level.var_643f86fe.var_7e507488, "1," + objective + "," + level.gameskill + "," + level.var_1c5d2bf4);
}


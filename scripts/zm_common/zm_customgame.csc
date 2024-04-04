// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace zm_custom;

// Namespace zm_custom/zm_customgame
// Params 0, eflags: 0x1
// Checksum 0x69b38c3d, Offset: 0x100
// Size: 0x4
function autoexec function_d776b402() {
    
}

// Namespace zm_custom/zm_customgame
// Params 3, eflags: 0x6 linked
// Checksum 0xa81cfaec, Offset: 0x248
// Size: 0x44
function private function_ecc5a0b9(*local_client_num, *player, damage) {
    if (int(damage) == 5) {
        return true;
    }
    return false;
}

// Namespace zm_custom/zm_customgame
// Params 1, eflags: 0x2 linked
// Checksum 0xe889370c, Offset: 0x298
// Size: 0x70
function function_901b751c(var_c9db62d5) {
    if (var_c9db62d5 === "") {
        return undefined;
    }
    setting = getgametypesetting(var_c9db62d5);
    assert(isdefined(setting), "<unknown string>" + var_c9db62d5 + "<unknown string>");
    return setting;
}


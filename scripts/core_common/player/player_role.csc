// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace player_role;

// Namespace player_role/player_role
// Params 0, eflags: 0x5
// Checksum 0xaacacca6, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"player_role", undefined, &__postload_init__, undefined, undefined);
}

// Namespace player_role/player_role
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0xd8
// Size: 0x4
function __postload_init__() {
    
}

// Namespace player_role/player_role
// Params 1, eflags: 0x2 linked
// Checksum 0x2237e382, Offset: 0xe8
// Size: 0xb6
function is_valid(index) {
    if (!isdefined(index)) {
        return false;
    }
    /#
        if (getdvarint(#"allowdebugcharacter", 0) == 1) {
            return (index >= 0 && index < getplayerroletemplatecount(currentsessionmode()));
        }
    #/
    return index > 0 && index < getplayerroletemplatecount(currentsessionmode());
}


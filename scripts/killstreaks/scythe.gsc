// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace scythe;

// Namespace scythe/scythe
// Params 0, eflags: 0x5
// Checksum 0x90b4dca0, Offset: 0xa8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"scythe", &__init__, undefined, undefined, #"killstreaks");
}

// Namespace scythe/scythe
// Params 0, eflags: 0x2 linked
// Checksum 0xbeeb5ce4, Offset: 0xf8
// Size: 0x3c
function __init__() {
    if (!sessionmodeiscampaigngame()) {
        killstreaks::register_killstreak("killstreak_scythe", &killstreaks::function_fc82c544);
    }
}


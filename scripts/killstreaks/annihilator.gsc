#using scripts\core_common\callbacks_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\killstreaks\killstreaks_shared;

#namespace annihilator;

// Namespace annihilator/annihilator
// Params 0, eflags: 0x5
// Checksum 0xbe346e4e, Offset: 0xc0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"annihilator", &__init__, undefined, undefined, #"killstreaks");
}

// Namespace annihilator/annihilator
// Params 0, eflags: 0x0
// Checksum 0x39525436, Offset: 0x110
// Size: 0x3c
function __init__() {
    if (!sessionmodeiscampaigngame()) {
        killstreaks::register_killstreak("killstreak_annihilator", &killstreaks::function_fc82c544);
    }
}


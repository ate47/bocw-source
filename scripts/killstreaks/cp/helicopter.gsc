// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\killstreaks\helicopter_shared.gsc;

#namespace helicopter;

// Namespace helicopter/helicopter
// Params 0, eflags: 0x5
// Checksum 0x6350d898, Offset: 0xc0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"helicopter", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace helicopter/helicopter
// Params 0, eflags: 0x4
// Checksum 0xf1f5e4f9, Offset: 0x110
// Size: 0x74
function private preinit() {
    if (sessionmodeismultiplayergame() || sessionmodeiswarzonegame()) {
        killstreaks::register_killstreak("killstreak_helicopter_comlink" + "_cp", &usekillstreakhelicopter);
    }
    init_shared();
}


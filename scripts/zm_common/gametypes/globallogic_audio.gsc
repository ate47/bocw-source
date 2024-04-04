// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\zm_common\gametypes\globallogic_utils.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using script_1cc417743d7c262d;
#using scripts\core_common\struct.gsc;

#namespace globallogic_audio;

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x5
// Checksum 0xf85d261d, Offset: 0x128
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_40da084132aa904b", &preinit, undefined, undefined, undefined);
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x6 linked
// Checksum 0x5763e1bc, Offset: 0x170
// Size: 0x7c
function private preinit() {
    if (zm_utility::is_survival()) {
        level.var_bc01f047 = "srtaacom";
        level.var_7ee6af9f = "srcommander";
    } else {
        level.var_bc01f047 = "zmtaacom";
        level.var_7ee6af9f = "zmcommander";
    }
    callback::on_connect(&on_player_connect);
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x2 linked
// Checksum 0x67ac4428, Offset: 0x1f8
// Size: 0xe4
function on_player_connect() {
    if (isdefined(level.var_462ca9bb)) {
        self.pers[level.var_bc01f047] = level.var_462ca9bb;
    } else {
        self.pers[level.var_bc01f047] = level.var_bc01f047 === "srtaacom" ? #"blops_taacom" : "zm_taacom";
    }
    if (isdefined(level.var_e2f95698)) {
        self.pers[level.var_7ee6af9f] = level.var_e2f95698;
        return;
    }
    self.pers[level.var_7ee6af9f] = level.var_7ee6af9f === "srcommander" ? "sr_commander" : "zm_commander";
}


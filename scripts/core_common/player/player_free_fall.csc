// Atian COD Tools GSC CW decompiler test
#using script_7ca3324ffa5389e4;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\audio_shared.csc;
#using scripts\core_common\animation_shared.csc;

#namespace player_free_fall;

// Namespace player_free_fall/player_free_fall
// Params 0, eflags: 0x5
// Checksum 0x71b93cb4, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"player_free_fall", &preinit, undefined, undefined, undefined);
}

// Namespace player_free_fall/player_free_fall
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x100
// Size: 0x4
function private preinit() {
    
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x4
// Checksum 0x976b2aec, Offset: 0x110
// Size: 0x56
function private function_c9a18304(*eventstruct) {
    if (!(isplayer(self) || self isplayercorpse())) {
        return;
    }
    if (self function_21c0fa55()) {
    }
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x4
// Checksum 0x732eb14a, Offset: 0x170
// Size: 0x56
function private function_26d46af3(*eventstruct) {
    if (!(isplayer(self) || self isplayercorpse())) {
        return;
    }
    if (self function_21c0fa55()) {
    }
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x4
// Checksum 0xaaf5ebb4, Offset: 0x1d0
// Size: 0x3e
function private function_f99c2453(*eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    if (self function_21c0fa55()) {
    }
}


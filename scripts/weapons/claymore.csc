// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace claymore;

// Namespace claymore/claymore
// Params 0, eflags: 0x5
// Checksum 0x2f9a9279, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"claymore", &preinit, undefined, undefined, undefined);
}

// Namespace claymore/claymore
// Params 0, eflags: 0x4
// Checksum 0xe92a9da4, Offset: 0xe0
// Size: 0x34
function private preinit() {
    callback::add_weapon_type(#"claymore", &claymore_spawned);
}

// Namespace claymore/claymore
// Params 1, eflags: 0x0
// Checksum 0x5443b12c, Offset: 0x120
// Size: 0x90
function claymore_spawned(localclientnum) {
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    while (true) {
        if (isdefined(self.stunned) && self.stunned) {
            wait(0.1);
            continue;
        }
        self waittill(#"stunned");
        stopfx(localclientnum, self.claymorelaserfxid);
    }
}


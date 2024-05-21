// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace destructible;

// Namespace destructible/destructible
// Params 0, eflags: 0x5
// Checksum 0x8c96576, Offset: 0xd8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"destructible", &preinit, undefined, undefined, undefined);
}

// Namespace destructible/destructible
// Params 0, eflags: 0x6 linked
// Checksum 0x5fe614b5, Offset: 0x120
// Size: 0x4c
function private preinit() {
    clientfield::register("scriptmover", "start_destructible_explosion", 1, 10, "int", &doexplosion, 0, 0);
}

// Namespace destructible/destructible
// Params 7, eflags: 0x2 linked
// Checksum 0x8d52ab6a, Offset: 0x178
// Size: 0x94
function playgrenaderumble(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    playrumbleonposition(bwastimejump, "grenade_rumble", self.origin);
    earthquake(bwastimejump, 0.5, 0.5, self.origin, 800);
}

// Namespace destructible/destructible
// Params 7, eflags: 0x2 linked
// Checksum 0x5a725fcd, Offset: 0x218
// Size: 0x104
function doexplosion(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 0) {
        return;
    }
    physics_explosion = 0;
    if (bwastimejump & 1 << 9) {
        physics_explosion = 1;
        bwastimejump -= 1 << 9;
    }
    physics_force = 0.3;
    if (physics_explosion && bwastimejump > 0) {
        physicsexplosionsphere(fieldname, self.origin, bwastimejump, bwastimejump - 1, physics_force, 25, 400);
    }
    playgrenaderumble(fieldname, self.origin);
}


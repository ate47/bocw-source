// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace archetype_nosferatu;

// Namespace archetype_nosferatu/archetype_nosferatu
// Params 0, eflags: 0x5
// Checksum 0x3f43c7af, Offset: 0xe0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"nosferatu", &preinit, undefined, undefined, undefined);
}

// Namespace archetype_nosferatu/archetype_nosferatu
// Params 0, eflags: 0x1
// Checksum 0x80f724d1, Offset: 0x128
// Size: 0x4
function autoexec precache() {
    
}

// Namespace archetype_nosferatu/archetype_nosferatu
// Params 0, eflags: 0x6 linked
// Checksum 0x814a8cd3, Offset: 0x138
// Size: 0x4c
function private preinit() {
    clientfield::register("actor", "nfrtu_leap_melee_rumb", 8000, 1, "counter", &function_5b1f1713, 0, 0);
}

// Namespace archetype_nosferatu/archetype_nosferatu
// Params 7, eflags: 0x2 linked
// Checksum 0x3799e38a, Offset: 0x190
// Size: 0x15c
function function_5b1f1713(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    e_player = function_5c10bd79(bwasdemojump);
    n_dist = distancesquared(self.origin, e_player.origin);
    var_56cb57e3 = sqr(200);
    n_scale = (var_56cb57e3 - n_dist) / var_56cb57e3;
    n_scale *= 0.75;
    if (n_scale > 0.01) {
        earthquake(bwasdemojump, n_scale, 0.1, self.origin, n_dist);
        if (n_scale >= 0.5) {
            function_36e4ebd4(bwasdemojump, "damage_heavy");
            return;
        }
        function_36e4ebd4(bwasdemojump, "damage_light");
    }
}


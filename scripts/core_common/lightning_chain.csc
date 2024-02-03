// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace lightning_chain;

// Namespace lightning_chain/lightning_chain
// Params 0, eflags: 0x5
// Checksum 0x9bef5798, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"lightning_chain", &init, undefined, undefined, undefined);
}

// Namespace lightning_chain/lightning_chain
// Params 0, eflags: 0x2 linked
// Checksum 0x28c6ab97, Offset: 0x118
// Size: 0x124
function init() {
    clientfield::register("actor", "lc_fx", 1, 2, "int", &lc_shock_fx, 0, 1);
    clientfield::register("vehicle", "lc_fx", 1, 2, "int", &lc_shock_fx, 0, 0);
    clientfield::register("actor", "lc_death_fx", 1, 2, "int", &lc_play_death_fx, 0, 0);
    clientfield::register("vehicle", "lc_death_fx", 1, 2, "int", &lc_play_death_fx, 0, 0);
}

// Namespace lightning_chain/lightning_chain
// Params 7, eflags: 0x2 linked
// Checksum 0xb4230d8e, Offset: 0x248
// Size: 0x3c
function lc_shock_fx(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    
}

// Namespace lightning_chain/lightning_chain
// Params 7, eflags: 0x2 linked
// Checksum 0x5d224480, Offset: 0x290
// Size: 0x3c
function lc_play_death_fx(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    
}


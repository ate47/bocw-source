// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\archetype_brutus.csc;
#using scripts\core_common\footsteps_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_df4fbf0;

// Namespace namespace_df4fbf0/namespace_df4fbf0
// Params 0, eflags: 0x2 linked
// Checksum 0x10badb92, Offset: 0x168
// Size: 0xdc
function init() {
    function_cae618b4("spawner_zombietron_brutus");
    clientfield::register("toplayer", "brutus_shock_attack_player", 1, 1, "counter", &brutus_shock_attack_player, 0, 0);
    clientfield::register("actor", "brutus_shock_attack", 1, 1, "counter", &brutus_shock_attack_fx, 0, 0);
    footsteps::registeraitypefootstepcb(#"brutus", &function_6e2a738c);
}

// Namespace namespace_df4fbf0/namespace_df4fbf0
// Params 5, eflags: 0x2 linked
// Checksum 0x853c20e3, Offset: 0x250
// Size: 0x2c
function function_6e2a738c(*localclientnum, *pos, *surface, *notetrack, *bone) {
    
}

// Namespace namespace_df4fbf0/namespace_df4fbf0
// Params 7, eflags: 0x2 linked
// Checksum 0x38a5627f, Offset: 0x288
// Size: 0x5c
function brutus_shock_attack_player(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    function_36e4ebd4(bwasdemojump, "damage_heavy");
}

// Namespace namespace_df4fbf0/namespace_df4fbf0
// Params 7, eflags: 0x2 linked
// Checksum 0xd43c6c9a, Offset: 0x2f0
// Size: 0xc4
function brutus_shock_attack_fx(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    self util::waittill_dobj(bwasdemojump);
    if (!isdefined(self)) {
        return;
    }
    playfx(bwasdemojump, "maps/zm_escape/fx8_alcatraz_brut_shock", self.origin, anglestoup(self.angles));
    earthquake(bwasdemojump, 1, 1, self.origin, 512);
}


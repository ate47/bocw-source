// Atian COD Tools GSC CW decompiler test
#using script_1d96ce237e3b4068;
#using scripts\core_common\util_shared.csc;
#using script_18b9d0e77614c97;
#using scripts\core_common\clientfield_shared.csc;

#namespace planemortar;

// Namespace planemortar/planemortar_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xc7bb9693, Offset: 0x110
// Size: 0xb4
function init_shared() {
    if (!isdefined(level.var_6ea2bb2e)) {
        level.var_6ea2bb2e = {};
        clientfield::register("scriptmover", "planemortar_contrail", 1, 1, "int", &planemortar_contrail, 0, 0);
        clientfield::register_clientuimodel("hudItems.planeMortarShotsRemaining", #"hash_6f4b11a0bee9b73d", #"hash_569b707ceee60e2b", 1, 2, "int", undefined, 0, 0);
    }
}

// Namespace planemortar/planemortar_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x52bbbcc0, Offset: 0x1d0
// Size: 0xf2
function planemortar_contrail(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    params = getscriptbundle("killstreak_planemortar");
    util::waittill_dobj(fieldname);
    if (bwastimejump) {
        self.fx = util::playfxontag(fieldname, params.var_dcbb40c5, self, params.var_d678978c);
        self.fx = util::playfxontag(fieldname, params.var_2375a152, self, params.var_e5082065);
    }
}

// Namespace planemortar/entity_spawned
// Params 1, eflags: 0x20
// Checksum 0x58ab33ca, Offset: 0x2d0
// Size: 0x32
function event_handler[entity_spawned] codecallback_entityspawned(*eventstruct) {
    if (self.weapon.name !== #"planemortar") {
        return;
    }
}

// Namespace planemortar/planemortar_shared
// Params 0, eflags: 0x4
// Checksum 0xdafceff0, Offset: 0x310
// Size: 0x24
function private function_719342ff() {
    function_3385d776(#"hash_332122cbf3beacdf");
}

// Namespace planemortar/planemortar_shared
// Params 0, eflags: 0x4
// Checksum 0x308a6305, Offset: 0x340
// Size: 0x24
function private function_611ebaf8() {
    function_c22a1ca2(#"hash_332122cbf3beacdf");
}


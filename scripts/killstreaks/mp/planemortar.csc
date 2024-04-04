// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\killstreaks\planemortar_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace planemortar;

// Namespace planemortar/planemortar
// Params 0, eflags: 0x5
// Checksum 0x30ffec58, Offset: 0xe8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"planemortar", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x6 linked
// Checksum 0x98f1c0f8, Offset: 0x138
// Size: 0x5c
function private preinit() {
    init_shared();
    clientfield::register("scriptmover", "planemortar_contrail", 1, 1, "int", &planemortar_contrail, 0, 0);
}

// Namespace planemortar/planemortar
// Params 7, eflags: 0x2 linked
// Checksum 0x81a6b620, Offset: 0x1a0
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


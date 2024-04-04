// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\fx_character.csc;
#using scripts\abilities\gadgets\gadget_jammer_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace archetype_avogadro;

// Namespace archetype_avogadro/archetype_avogadro
// Params 0, eflags: 0x5
// Checksum 0x21e2ed1e, Offset: 0x258
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"archetype_avogadro", &preinit, &postinit, undefined, undefined);
}

// Namespace archetype_avogadro/archetype_avogadro
// Params 0, eflags: 0x6 linked
// Checksum 0x3096fd76, Offset: 0x2b0
// Size: 0x1ec
function private preinit() {
    clientfield::register("missile", "" + #"hash_699d5bb1a9339a93", 1, 2, "int", &function_9452b8f1, 0, 0);
    clientfield::register("actor", "" + #"hash_4466de6137f54b59", 1, 1, "int", &function_1d2d070c, 0, 0);
    clientfield::register("actor", "" + #"hash_2eec8fc21495a18c", 1, 2, "int", &function_ae4cd3d4, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_183ef3538fd62563", 1, 1, "int", &function_9beb815c, 0, 0);
    clientfield::register("scriptmover", "avogadro_phase_beam", 1, getminbitcountfornum(3), "int", &function_6ddf79a2, 0, 0);
    ai::add_archetype_spawn_function(#"avogadro", &initavogadro);
}

// Namespace archetype_avogadro/archetype_avogadro
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x4a8
// Size: 0x4
function private postinit() {
    
}

// Namespace archetype_avogadro/archetype_avogadro
// Params 1, eflags: 0x2 linked
// Checksum 0xbb3d09ca, Offset: 0x4b8
// Size: 0x64
function initavogadro(localclientnum) {
    util::waittill_dobj(localclientnum);
    fxclientutils::playfxbundle(localclientnum, self, "fxd9_zm_char_avogadro_elec_unaware");
    self callback::on_shutdown(&on_entity_shutdown);
}

// Namespace archetype_avogadro/archetype_avogadro
// Params 1, eflags: 0x2 linked
// Checksum 0xa7af30fd, Offset: 0x528
// Size: 0x64
function on_entity_shutdown(*localclientnum) {
    if (isdefined(self) && isdefined(self.jammer_interface)) {
        self.jammer_interface delete();
    }
    if (isdefined(self)) {
        self stoprenderoverridebundle(#"hash_4a28179035ece31c");
    }
}

// Namespace archetype_avogadro/archetype_avogadro
// Params 1, eflags: 0x0
// Checksum 0x3aaed55d, Offset: 0x598
// Size: 0x80
function function_8dede8a3(localclientnum) {
    self endon(#"shutdown", #"death");
    while (isdefined(self)) {
        self playsound(localclientnum, #"hash_6f92148122930a");
        wait(randomintrange(3, 10));
    }
}

// Namespace archetype_avogadro/archetype_avogadro
// Params 7, eflags: 0x2 linked
// Checksum 0xa5b5e103, Offset: 0x620
// Size: 0x146
function function_9452b8f1(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump === 1) {
        self.boltfx = function_239993de(fieldname, "zm_ai/fx8_avo_elec_projectile", self, "tag_origin_animate");
        if (!isdefined(self.var_cb169d5f)) {
            self.var_cb169d5f = self playloopsound(#"hash_64fad034010aebaa");
        }
        return;
    }
    if (isdefined(self.boltfx)) {
        stopfx(fieldname, self.boltfx);
        self.boltfx = undefined;
    }
    if (isdefined(self.var_cb169d5f)) {
        self stoploopsound(self.var_cb169d5f);
        self.var_cb169d5f = undefined;
    }
}

// Namespace archetype_avogadro/archetype_avogadro
// Params 7, eflags: 0x2 linked
// Checksum 0xf9e0b4b2, Offset: 0x770
// Size: 0xac
function function_9beb815c(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::waittill_dobj(bwastimejump);
    if (!isdefined(self)) {
        return;
    }
    function_239993de(bwastimejump, "zm_ai/fx9_avo_elec_projectile_dest", self, "tag_origin_animate");
    playsound(bwastimejump, #"hash_3f6164143de4427e", self.origin);
}

// Namespace archetype_avogadro/archetype_avogadro
// Params 7, eflags: 0x2 linked
// Checksum 0xbc643c2e, Offset: 0x828
// Size: 0xce
function function_1d2d070c(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump) {
        self.phase_fx = function_239993de(fieldname, "zm_ai/fx8_cata_elec_aura", self, "j_spine4");
        return;
    }
    if (isdefined(self.phase_fx)) {
        stopfx(fieldname, self.phase_fx);
        self.phase_fx = undefined;
    }
}

// Namespace archetype_avogadro/archetype_avogadro
// Params 7, eflags: 0x6 linked
// Checksum 0x12b8c678, Offset: 0x900
// Size: 0x192
function private function_ae4cd3d4(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump == 1 && self.health_state !== 1) {
        self function_df8ae699(fieldname);
        fxclientutils::playfxbundle(fieldname, self, "fxd9_zm_char_avogadro_elec_health_low");
        self.health_state = 1;
        return;
    }
    if (bwastimejump == 2 && self.health_state !== 2) {
        self function_df8ae699(fieldname);
        fxclientutils::playfxbundle(fieldname, self, "fxd9_zm_char_avogadro_elec_health_med");
        self.health_state = 2;
        return;
    }
    if (bwastimejump == 3 && self.health_state !== 3) {
        self function_df8ae699(fieldname);
        fxclientutils::playfxbundle(fieldname, self, "fxd9_zm_char_avogadro_elec_health_high");
        self.health_state = 3;
    }
}

// Namespace archetype_avogadro/archetype_avogadro
// Params 7, eflags: 0x6 linked
// Checksum 0xd0ac5a6f, Offset: 0xaa0
// Size: 0x26a
function private function_6ddf79a2(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::waittill_dobj(binitialsnap);
    if (!isdefined(self)) {
        return;
    }
    timestamp = gettime();
    id = bwastimejump;
    if (bwastimejump == 0) {
        id = fieldname;
    }
    if (!isdefined(level.var_c42e1dca)) {
        level.var_c42e1dca = [];
    }
    if (!isdefined(level.var_c42e1dca[id])) {
        level.var_c42e1dca[id] = spawnstruct();
    }
    if (bwastimejump == 0) {
        assert(isdefined(level.var_c42e1dca[id].beam_id));
        beamkill(binitialsnap, level.var_c42e1dca[id].beam_id);
        return;
    }
    if (level.var_c42e1dca[id].time !== timestamp) {
        level.var_c42e1dca[id].time = timestamp;
        level.var_c42e1dca[id].model = self;
        return;
    }
    var_905cc9f0 = level.var_c42e1dca[id].model;
    var_ecde63d5 = self;
    playsound(binitialsnap, #"hash_45cd897c902f8c6d", var_ecde63d5.origin);
    playsound(binitialsnap, #"hash_1e6ec35a55d2046b", var_905cc9f0.origin);
    level.var_c42e1dca[id].beam_id = beamlaunch(binitialsnap, var_ecde63d5, "tag_origin", var_905cc9f0, "tag_origin", "beam9_zm_avogadro_elec_teleport");
}

// Namespace archetype_avogadro/archetype_avogadro
// Params 1, eflags: 0x2 linked
// Checksum 0xfc040aac, Offset: 0xd18
// Size: 0x8c
function function_df8ae699(localclientnum) {
    fxclientutils::stopfxbundle(localclientnum, self, "fxd9_zm_char_avogadro_elec_health_low");
    fxclientutils::stopfxbundle(localclientnum, self, "fxd9_zm_char_avogadro_elec_health_med");
    fxclientutils::stopfxbundle(localclientnum, self, "fxd9_zm_char_avogadro_elec_health_high");
    fxclientutils::stopfxbundle(localclientnum, self, "fxd9_zm_char_avogadro_elec_unaware");
}


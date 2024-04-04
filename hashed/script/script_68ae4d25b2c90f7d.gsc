// Atian COD Tools GSC CW decompiler test
#using script_d67878983e3d7c;
#using script_4e53735256f112ac;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\beam_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_32e85820;

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x5
// Checksum 0x7ced9899, Offset: 0x290
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_36a2cb0be45d9374", &preinit, undefined, undefined, #"hash_13a43d760497b54d");
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x6 linked
// Checksum 0x34242d50, Offset: 0x2e0
// Size: 0xdc
function private preinit() {
    clientfield::register("scriptmover", "fx_heal_aoe_pillar_clientfield", 1, 1, "counter", &function_76b749e1, 1, 0);
    clientfield::register("toplayer", "fx_heal_aoe_player_clientfield", 1, 1, "counter", &function_813dcaec, 1, 0);
    clientfield::register("scriptmover", "fx_heal_aoe_bubble_clientfield", 1, 1, "int", &function_4d38c566, 1, 0);
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 7, eflags: 0x2 linked
// Checksum 0xaee1bf54, Offset: 0x3c8
// Size: 0xcc
function function_4d38c566(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self endon(#"death");
        self util::waittill_dobj(fieldname);
        self.var_e648d182 = self playloopsound(#"hash_498aaf1c4d21c2c7");
        function_239993de(fieldname, "zm_weapons/fx9_fld_healing_aura_lvl5_3p", self, "tag_origin");
        self thread function_93b178ae();
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 7, eflags: 0x2 linked
// Checksum 0x74f01275, Offset: 0x4a0
// Size: 0x12c
function function_813dcaec(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(bwastimejump);
    if (isplayer(self) && isalive(self)) {
        function_239993de(bwastimejump, "zm_weapons/fx9_fld_healing_aura_pulse_tgt", self, "j_spine4");
        playviewmodelfx(bwastimejump, "zm_weapons/fx9_fld_healing_aura_pulse_arm_le_1p", "j_elbow_le");
        playviewmodelfx(bwastimejump, "zm_weapons/fx9_fld_healing_aura_pulse_arm_ri_1p", "j_elbow_ri");
        self postfx::playpostfxbundle(#"hash_1b37bf385d33fa57");
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 7, eflags: 0x2 linked
// Checksum 0xc18b368d, Offset: 0x5d8
// Size: 0xd4
function function_76b749e1(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(bwastimejump);
    if (isplayer(self) && isalive(self)) {
        function_239993de(bwastimejump, "zm_weapons/fx9_fld_healing_aura_lvl0_3p", self, "tag_origin");
        self thread function_a1ae5a24();
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x2 linked
// Checksum 0x72b6f9b1, Offset: 0x6b8
// Size: 0x4c
function function_a1ae5a24() {
    level endon(#"game_ended");
    self endon(#"death");
    wait(1);
    self delete();
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x2 linked
// Checksum 0x9157fe7b, Offset: 0x710
// Size: 0x4c
function function_93b178ae() {
    level endon(#"game_ended");
    self endon(#"death");
    wait(10);
    self delete();
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 1, eflags: 0x2 linked
// Checksum 0xcfe21054, Offset: 0x768
// Size: 0x2e
function function_a4b3da97(trace) {
    if (trace[#"fraction"] < 1) {
        return false;
    }
    return true;
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 1, eflags: 0x0
// Checksum 0x51a11f9e, Offset: 0x7a0
// Size: 0x1aa
function function_952f1795(localclientnum) {
    self endon(#"death");
    while (true) {
        foreach (player in getplayers(localclientnum)) {
            if (distance2d(self.origin, player.origin) < 64) {
                beamname = "beam9_zm_fld_healing_aura_pulse";
                pos = self.origin;
                otherpos = player.origin;
                trace = beamtrace(pos, otherpos, 1, self, 1);
                if (self function_a4b3da97(trace)) {
                    beam_id = self beam::launch(self, "tag_origin", player, "j_spine4", beamname);
                    level thread function_d7031739(localclientnum, beam_id);
                }
            }
        }
        wait(1);
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 2, eflags: 0x2 linked
// Checksum 0xd6e1108d, Offset: 0x958
// Size: 0x4c
function function_d7031739(localclientnum, beamid) {
    level endon(#"game_ended");
    wait(1);
    beam::function_47deed80(localclientnum, beamid);
}


// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_perks.csc;
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace zm_perk_slider;

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x5
// Checksum 0xf75b2cd9, Offset: 0x1b0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_perk_slider", &preinit, undefined, undefined, undefined);
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x6 linked
// Checksum 0x4c001ed0, Offset: 0x1f8
// Size: 0x4c
function private preinit() {
    if (!is_true(getgametypesetting(#"hash_4b8929fb898a9e80"))) {
        return;
    }
    enable_slider_perk_for_level();
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x2 linked
// Checksum 0x1f80976d, Offset: 0x250
// Size: 0x9c
function enable_slider_perk_for_level() {
    zm_perks::register_perk_clientfields(#"hash_3417450e1347185", &function_4bb29d61, &function_90b5e96c);
    zm_perks::register_perk_effects(#"hash_3417450e1347185", "slider_light");
    zm_perks::register_perk_init_thread(#"hash_3417450e1347185", &init_slider);
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x2f8
// Size: 0x4
function init_slider() {
    
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x2 linked
// Checksum 0xce502978, Offset: 0x308
// Size: 0xec
function function_4bb29d61() {
    clientfield::register("toplayer", "slide_fx", 17000, 1, "int", &slide_fx, 0, 0);
    if (zm_utility::is_classic()) {
        clientfield::register("scriptmover", "phd_slider_machine_rob_poweron", 17000, 1, "int", &phd_slider_machine_rob_poweron, 0, 0);
        clientfield::register("scriptmover", "phd_slider_machine_rob_purchase", 17000, 1, "counter", &phd_slider_machine_rob_purchase, 0, 0);
    }
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x400
// Size: 0x4
function function_90b5e96c() {
    
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 7, eflags: 0x2 linked
// Checksum 0xd5a8bae2, Offset: 0x410
// Size: 0x104
function slide_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (isplayer(self) && self hasdobj(fieldname)) {
        if (bwastimejump) {
            self.var_b4099c13 = function_239993de(fieldname, #"hash_129046e1c36bd447", self, "j_ankle_ri");
            return;
        }
        if (isdefined(self.var_b4099c13)) {
            stopfx(fieldname, self.var_b4099c13);
        }
    }
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 7, eflags: 0x2 linked
// Checksum 0x4d3a6317, Offset: 0x520
// Size: 0x154
function phd_slider_machine_rob_purchase(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level endon(#"end_game");
    self endon(#"death");
    self notify("3d4720573ae624b0");
    self endon("3d4720573ae624b0");
    if (bwastimejump) {
        self function_f6e99a8d("rob_phd_slide_side_lights");
        self function_f6e99a8d("rob_phd_slide_top_lights1");
        self function_f6e99a8d("rob_phd_slide_top_lights2");
        wait(1);
        self playrenderoverridebundle("rob_phd_slide_side_lights");
        self playrenderoverridebundle("rob_phd_slide_top_lights1");
        self playrenderoverridebundle("rob_phd_slide_top_lights2");
    }
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 7, eflags: 0x2 linked
// Checksum 0xa45df0b1, Offset: 0x680
// Size: 0xa4
function phd_slider_machine_rob_poweron(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self playrenderoverridebundle("rob_phd_slide_side_lights");
        self playrenderoverridebundle("rob_phd_slide_top_lights1");
        self playrenderoverridebundle("rob_phd_slide_top_lights2");
    }
}


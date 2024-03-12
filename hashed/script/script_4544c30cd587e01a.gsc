// Atian COD Tools GSC CW decompiler test
#using script_16d5152aa3230986;
#using scripts\core_common\clientfield_shared.csc;

#namespace coop;

// Namespace coop/coop
// Params 0, eflags: 0x1
// Checksum 0x180fc8e6, Offset: 0xd0
// Size: 0x9c
function autoexec init() {
    level.var_d43d228 = cp_killcam::register_clientside();
    registerclientfield("playercorpse", "hide_body", 1, 1, "int", &function_961f3093, 0);
    registerclientfield("toplayer", "killcam_menu", 1, 1, "int", &function_8b7a2341, 0);
}

// Namespace coop/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xfda2614c, Offset: 0x178
// Size: 0xc
function event_handler[gametype_init] main(*eventstruct) {
    
}

// Namespace coop/coop
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x190
// Size: 0x4
function onprecachegametype() {
    
}

// Namespace coop/coop
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x1a0
// Size: 0x4
function onstartgametype() {
    
}

// Namespace coop/coop
// Params 7, eflags: 0x2 linked
// Checksum 0xea461472, Offset: 0x1b0
// Size: 0xdc
function function_8b7a2341(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (function_1cbf351b(fieldname)) {
        return;
    }
    if (bwastimejump) {
        if (!level.var_d43d228 cp_killcam::is_open(fieldname)) {
            level.var_d43d228 cp_killcam::open(fieldname);
        }
        return;
    }
    if (level.var_d43d228 cp_killcam::is_open(fieldname)) {
        level.var_d43d228 cp_killcam::close(fieldname);
    }
}

// Namespace coop/coop
// Params 7, eflags: 0x2 linked
// Checksum 0xd4ebfec, Offset: 0x298
// Size: 0x8c
function function_961f3093(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump && !function_1cbf351b(fieldname)) {
        self hide();
        return;
    }
    self show();
}


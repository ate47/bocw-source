#using scripts\core_common\clientfield_shared;
#using scripts\core_common\easing;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace namespace_31aff1e6;

// Namespace namespace_31aff1e6/namespace_31aff1e6
// Params 0, eflags: 0x5
// Checksum 0x204b517, Offset: 0x160
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"ice_slide", &preload, &postload, undefined, undefined);
}

// Namespace namespace_31aff1e6/namespace_31aff1e6
// Params 0, eflags: 0x0
// Checksum 0x70fabd21, Offset: 0x1b8
// Size: 0x16c
function preload() {
    clientfield::register("toplayer", "ice_slide_postfx", 1, 1, "int", &ice_slide_postfx, 0, 0);
    clientfield::register("toplayer", "ice_slide_looping_fx", 1, 2, "int", &ice_slide_looping_fx, 0, 0);
    clientfield::register("toplayer", "ice_slide_dof", 1, 3, "int", &set_dof, 0, 0);
    clientfield::register("toplayer", "ice_slide_fov", 1, 1, "int", &set_fov, 0, 0);
    clientfield::register("toplayer", "ice_slide_landing_fx_dirt", 1, 1, "counter", &ice_slide_landing_fx_dirt, 0, 0);
}

// Namespace namespace_31aff1e6/namespace_31aff1e6
// Params 0, eflags: 0x0
// Checksum 0xd8d3dbb5, Offset: 0x330
// Size: 0x7c
function postload() {
    level._effect[#"hash_38deef315d53cb25"] = #"hash_6e1d732b61ae9026";
    level._effect[#"hash_10164f9d7f646dfc"] = #"hash_3428f097d0ad7f33";
    level._effect[#"hash_66333bf9362fbf33"] = #"hash_779fdcf65019d708";
}

// Namespace namespace_31aff1e6/namespace_31aff1e6
// Params 7, eflags: 0x0
// Checksum 0x80270c85, Offset: 0x3b8
// Size: 0x1da
function set_dof(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 1:
        self function_9e574055(2);
        self function_1816c600(0.85, 1.5);
        self function_d7be9a9f(80, 1.5);
    case 2:
        self function_9e574055(2);
        self function_1816c600(0.85, 0.5);
        self function_d7be9a9f(80, 0.5);
    case 3:
        self thread function_9305e819();
        break;
    case 4:
        self thread function_40acd6bd();
        break;
    default:
        self function_3c54e2b8(0);
        self function_9ea7b4eb(0);
        self function_9e574055(0);
        break;
    }
}

// Namespace namespace_31aff1e6/namespace_31aff1e6
// Params 0, eflags: 0x0
// Checksum 0x997fb353, Offset: 0x5a0
// Size: 0x6c
function function_9305e819() {
    self endon(#"death");
    wait 5;
    self function_3c54e2b8(2);
    self function_9ea7b4eb(2);
    wait 2;
    self function_9e574055(0);
}

// Namespace namespace_31aff1e6/namespace_31aff1e6
// Params 0, eflags: 0x0
// Checksum 0x91d09585, Offset: 0x618
// Size: 0x74
function function_40acd6bd() {
    self endon(#"death");
    self function_3c54e2b8(0.33);
    self function_9ea7b4eb(0.33);
    wait 0.33;
    self function_9e574055(0);
}

// Namespace namespace_31aff1e6/namespace_31aff1e6
// Params 7, eflags: 0x0
// Checksum 0x54d422e7, Offset: 0x698
// Size: 0x9c
function set_fov(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self easing::function_f95cb457(undefined, 10, 0.5, #"linear");
        return;
    }
    self function_9298adaf(0.33);
}

// Namespace namespace_31aff1e6/namespace_31aff1e6
// Params 7, eflags: 0x0
// Checksum 0x8a6a05a6, Offset: 0x740
// Size: 0xc4
function ice_slide_postfx(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (self postfx::function_556665f2("pstfx_ice_slide_motion_blur")) {
            self postfx::stoppostfxbundle("pstfx_ice_slide_motion_blur");
        }
        self postfx::playpostfxbundle("pstfx_ice_slide_motion_blur");
        return;
    }
    self postfx::exitpostfxbundle("pstfx_ice_slide_motion_blur");
}

// Namespace namespace_31aff1e6/namespace_31aff1e6
// Params 7, eflags: 0x4
// Checksum 0x2b1b25b9, Offset: 0x810
// Size: 0x102
function private ice_slide_looping_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump === 0) {
        stopfx(fieldname, self.var_8c5e3c54);
        return;
    }
    if (bwastimejump === 1) {
        self.var_8c5e3c54 = util::playfxontag(fieldname, level._effect[#"hash_38deef315d53cb25"], self, "tag_origin");
        return;
    }
    if (bwastimejump === 2) {
        self.var_8c5e3c54 = util::playfxontag(fieldname, level._effect[#"hash_66333bf9362fbf33"], self, "tag_origin");
    }
}

// Namespace namespace_31aff1e6/namespace_31aff1e6
// Params 7, eflags: 0x4
// Checksum 0xa6b51e6a, Offset: 0x920
// Size: 0x82
function private ice_slide_landing_fx_dirt(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_656a30d2 = util::playfxontag(fieldname, level._effect[#"hash_10164f9d7f646dfc"], self, "tag_origin");
    }
}


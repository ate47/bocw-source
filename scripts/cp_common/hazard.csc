// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;

#namespace hazard;

// Namespace hazard/hazard
// Params 0, eflags: 0x5
// Checksum 0x625ccb8e, Offset: 0x128
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hazard", &preinit, undefined, undefined, undefined);
}

// Namespace hazard/hazard
// Params 0, eflags: 0x6 linked
// Checksum 0xae5b6634, Offset: 0x170
// Size: 0xb4
function private preinit() {
    clientfield::register("toplayer", "hazard_gas", 1, 1, "int", &hazard_gas, 0, 0);
    clientfield::register("toplayer", "hazard_gas_with_mask", 1, 1, "int", &hazard_gas_with_mask, 0, 0);
    level._effect[#"hash_667f50f096a9a290"] = "fire/fx_fire_ai_human_head_loop";
}

// Namespace hazard/hazard
// Params 7, eflags: 0x2 linked
// Checksum 0xc9eeeaa1, Offset: 0x230
// Size: 0xbc
function hazard_gas(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        setblurbylocalclientnum(fieldname, 16, 1);
        return;
    }
    if (isdefined(self.var_bca8cc88)) {
        stopfx(fieldname, self.var_bca8cc88);
        self.var_bca8cc88 = undefined;
    }
    setblurbylocalclientnum(fieldname, 0, 3);
}

// Namespace hazard/hazard
// Params 7, eflags: 0x2 linked
// Checksum 0x4a8f5577, Offset: 0x2f8
// Size: 0xd4
function hazard_gas_with_mask(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump != fieldname) {
        if (bwastimejump) {
            setblurbylocalclientnum(binitialsnap, 2, 3);
            self thread function_f5b6d619();
            return;
        }
        setblurbylocalclientnum(binitialsnap, 0, 1);
        self notify(#"hash_452ba9cb2df33d3f");
        self postfx::exitpostfxbundle("pstfx_water_t_out");
    }
}

// Namespace hazard/hazard
// Params 0, eflags: 0x2 linked
// Checksum 0x896459a8, Offset: 0x3d8
// Size: 0x68
function function_f5b6d619() {
    self notify(#"hash_452ba9cb2df33d3f");
    self endon(#"death", #"hash_452ba9cb2df33d3f");
    while (true) {
        self postfx::playpostfxbundle("pstfx_water_t_out");
        wait(2.4);
    }
}


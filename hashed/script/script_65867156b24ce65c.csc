#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace land_mine_placed;

// Namespace land_mine_placed/land_mine_placed
// Params 0, eflags: 0x5
// Checksum 0xca374027, Offset: 0xe8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"land_mine_placed", &init_preload, undefined, undefined, undefined);
}

// Namespace land_mine_placed/land_mine_placed
// Params 0, eflags: 0x4
// Checksum 0x73130e2b, Offset: 0x130
// Size: 0x4c
function private init_preload() {
    clientfield::register("scriptmover", "show_blink_fx", 1, 1, "int", &show_blink_fx, 0, 0);
}

// Namespace land_mine_placed/land_mine_placed
// Params 7, eflags: 0x4
// Checksum 0xacbea78c, Offset: 0x188
// Size: 0x9a
function private show_blink_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(self.var_29af9712)) {
        stopfx(fieldname, self.var_29af9712);
    }
    if (bwastimejump > 0) {
        self.var_29af9712 = util::playfxontag(fieldname, "light/fx8_blink_red_sm", self, "tag_fx");
    }
}


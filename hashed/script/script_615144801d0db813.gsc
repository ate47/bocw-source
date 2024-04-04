// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_powerups.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\struct.csc;

#namespace namespace_f0a1fe5c;

// Namespace namespace_f0a1fe5c/namespace_f0a1fe5c
// Params 0, eflags: 0x5
// Checksum 0x3d771f33, Offset: 0x1a8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_520d565ef38560b8", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_f0a1fe5c/namespace_f0a1fe5c
// Params 0, eflags: 0x6 linked
// Checksum 0xeb99893f, Offset: 0x1f0
// Size: 0xf4
function private preinit() {
    if (is_true(getgametypesetting(#"hash_7e8e34cc69a77e0b")) || getdvarint(#"hash_40bd34b35079cf2e", 0) > 0) {
        zm_powerups::include_zombie_powerup("naughty_or_nice");
        if (zm_powerups::function_cc33adc8()) {
            clientfield::register("scriptmover", "powerup_pickup_sequence", 1, 4, "int", &function_feb491ef, 0, 0);
            zm_powerups::add_zombie_powerup("naughty_or_nice", "powerup_naughty_or_nice");
        }
    }
}

// Namespace namespace_f0a1fe5c/namespace_f0a1fe5c
// Params 7, eflags: 0x2 linked
// Checksum 0xd731d261, Offset: 0x2f0
// Size: 0x1c2
function function_feb491ef(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(self.var_4cf2e329)) {
        stopfx(fieldname, self.var_4cf2e329);
    }
    if (isdefined(bwastimejump)) {
        switch (bwastimejump) {
        case 1:
            self.var_4cf2e329 = playfx(fieldname, "maps/ltm/fx9_winter_powerup_nice", self.origin);
            break;
        case 2:
            self.var_4cf2e329 = playfx(fieldname, "maps/ltm/fx9_winter_powerup_naughty", self.origin);
            break;
        case 3:
            self.var_4cf2e329 = playfx(fieldname, "maps/ltm/fx9_winter_powerup_nice_final", self.origin);
            break;
        case 4:
            self.var_4cf2e329 = playfx(fieldname, "maps/ltm/fx9_winter_powerup_naughty_final", self.origin);
            break;
        default:
            if (isdefined(self.var_4cf2e329)) {
                stopfx(fieldname, self.var_4cf2e329);
            }
            break;
        }
    }
}


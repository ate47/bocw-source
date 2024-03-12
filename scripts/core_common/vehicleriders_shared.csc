// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\struct.csc;

#namespace vehicle;

// Namespace vehicle/vehicleriders_shared
// Params 0, eflags: 0x1
// Checksum 0xd8b90f6c, Offset: 0x1a0
// Size: 0x14
function autoexec init() {
    function_d64f1d30();
}

// Namespace vehicle/vehicleriders_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x381a958, Offset: 0x1c0
// Size: 0x388
function private function_d64f1d30() {
    a_registered_fields = [];
    foreach (bundle in getscriptbundles("vehicleriders")) {
        foreach (object in bundle.objects) {
            if (isdefined(object.vehicleenteranim)) {
                array::add(a_registered_fields, object.position + "_enter", 0);
            }
            if (isdefined(object.vehicleexitanim)) {
                array::add(a_registered_fields, object.position + "_exit", 0);
                array::add(a_registered_fields, object.position + "_exit_restore", 0);
            }
            if (isdefined(object.var_cbf50c1d)) {
                array::add(a_registered_fields, object.position + "_exit_combat", 0);
                array::add(a_registered_fields, object.position + "_exit_combat_restore", 0);
            }
            if (isdefined(object.vehiclecloseanim)) {
                array::add(a_registered_fields, object.position + "_close", 0);
            }
            if (isdefined(object.var_b7605392)) {
                array::add(a_registered_fields, object.position + "_close_combat", 0);
            }
            if (isdefined(object.vehicleriderdeathanim)) {
                array::add(a_registered_fields, object.position + "_death", 0);
            }
        }
    }
    foreach (str_clientfield in a_registered_fields) {
        clientfield::register("vehicle", str_clientfield, 1, 1, "counter", &play_vehicle_anim, 0, 0);
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x860145c9, Offset: 0x550
// Size: 0x58c
function play_vehicle_anim(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, fieldname, *bwastimejump) {
    s_bundle = getscriptbundle(self.vehicleridersbundle);
    str_pos = "";
    str_action = "";
    if (strendswith(bwastimejump, "_enter")) {
        str_pos = getsubstr(bwastimejump, 0, bwastimejump.size - 6);
        str_action = "enter";
    } else if (strendswith(bwastimejump, "_exit")) {
        str_pos = getsubstr(bwastimejump, 0, bwastimejump.size - 5);
        str_action = "exit";
    } else if (strendswith(bwastimejump, "_exit_combat")) {
        str_pos = getsubstr(bwastimejump, 0, bwastimejump.size - 12);
        str_action = "exit_combat";
    } else if (strendswith(bwastimejump, "_close")) {
        str_pos = getsubstr(bwastimejump, 0, bwastimejump.size - 6);
        str_action = "close";
    } else if (strendswith(bwastimejump, "_close_combat")) {
        str_pos = getsubstr(bwastimejump, 0, bwastimejump.size - 13);
        str_action = "close_combat";
    } else if (strendswith(bwastimejump, "_death")) {
        str_pos = getsubstr(bwastimejump, 0, bwastimejump.size - 6);
        str_action = "death";
    } else if (strendswith(bwastimejump, "_exit_restore")) {
        str_pos = getsubstr(bwastimejump, 0, bwastimejump.size - 13);
        str_action = "exit_restore";
    } else if (strendswith(bwastimejump, "_exit_combat_restore")) {
        str_pos = getsubstr(bwastimejump, 0, bwastimejump.size - 20);
        str_action = "exit_combat_restore";
    }
    str_vh_anim = undefined;
    foreach (s_rider in s_bundle.objects) {
        if (s_rider.position == str_pos) {
            switch (str_action) {
            case #"enter":
                str_vh_anim = s_rider.vehicleenteranim;
                break;
            case #"exit":
                str_vh_anim = s_rider.vehicleexitanim;
                break;
            case #"exit_combat":
                str_vh_anim = s_rider.var_cbf50c1d;
                break;
            case #"close":
                str_vh_anim = s_rider.vehiclecloseanim;
                break;
            case #"close_combat":
                str_vh_anim = s_rider.var_b7605392;
                break;
            case #"death":
                str_vh_anim = s_rider.vehicleriderdeathanim;
                break;
            case #"exit_restore":
                str_vh_anim = s_rider.vehicleexitanim;
                var_73ba4ab0 = 1;
                break;
            case #"exit_combat_restore":
                str_vh_anim = s_rider.var_cbf50c1d;
                var_73ba4ab0 = 1;
                break;
            }
            break;
        }
    }
    if (isdefined(str_vh_anim)) {
        if (is_true(var_73ba4ab0)) {
            self setanim(str_vh_anim, 1, 0, 1, undefined);
            self setanimtime(str_vh_anim, 1);
            return;
        }
        self setanimrestart(str_vh_anim);
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2ce1f048, Offset: 0xae8
// Size: 0x2a
function set_vehicleriders_bundle(str_bundlename) {
    self.vehicleriders = getscriptbundle(str_bundlename);
}


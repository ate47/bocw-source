// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace ac130;

// Namespace ac130/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xf2ec4457, Offset: 0x170
// Size: 0x144
function init_shared() {
    callback::on_localclient_connect(&on_localclient_connect);
    clientfield::register_clientuimodel("vehicle.selectedWeapon", #"vehicle_info", #"selectedweapon", 1, 2, "int", &function_db40057d, 0, 0);
    clientfield::register_clientuimodel("vehicle.flareCount", #"vehicle_info", #"flarecount", 1, 2, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("vehicle.inAC130", #"vehicle_info", #"inac130", 1, 1, "int", undefined, 0, 0);
    level.var_3e7d252b = getscriptbundle("killstreak_ac130");
}

// Namespace ac130/ac130_shared
// Params 3, eflags: 0x6 linked
// Checksum 0x40fb1968, Offset: 0x2c0
// Size: 0x8c
function private function_2c2bf9dc(localclientnum, uimodel, weapon_name) {
    weapon = getweapon(weapon_name);
    setuimodelvalue(createuimodel(function_1df4c3b0(localclientnum, #"hash_2bf958a355503d00"), uimodel), weapon.clipsize);
}

// Namespace ac130/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x663ac9b2, Offset: 0x358
// Size: 0x84
function on_localclient_connect(localclientnum) {
    function_2c2bf9dc(localclientnum, "maincannonClipSize", #"hash_17df39d53492b0bf");
    function_2c2bf9dc(localclientnum, "autocannonClipSize", #"hash_7b24d0d0d2823bca");
    function_2c2bf9dc(localclientnum, "chaingunClipSize", #"ac130_chaingun");
}

// Namespace ac130/ac130_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x7b63af7d, Offset: 0x3e8
// Size: 0x16a
function function_db40057d(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (fieldname == 0) {
        return;
    }
    switch (bwastimejump) {
    case 1:
        playsound(0, #"hash_731251c4b03b5b09", (0, 0, 0));
        self playrumbleonentity(binitialsnap, "ac130_weap_switch");
        break;
    case 2:
        playsound(0, #"hash_731251c4b03b5b09", (0, 0, 0));
        self playrumbleonentity(binitialsnap, "ac130_weap_switch");
        break;
    case 3:
        playsound(0, #"hash_731251c4b03b5b09", (0, 0, 0));
        self playrumbleonentity(binitialsnap, "ac130_weap_switch");
        break;
    }
}


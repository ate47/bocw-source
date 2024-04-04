// Atian COD Tools GSC CW decompiler test
#using script_34c3e29c2c0c97ef;
#using script_19f3d8b7a687a3f1;
#using script_136606144df0f9f1;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;

#namespace namespace_82b4c2d1;

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 0, eflags: 0x5
// Checksum 0xae293541, Offset: 0x108
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_79fe34c9f8a0e44c", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 0, eflags: 0x2 linked
// Checksum 0xd7e80565, Offset: 0x160
// Size: 0x74
function preinit() {
    level.var_5df76d0 = sr_perk_machine_choice::register();
    level clientfield::register("scriptmover", "perk_machine_rob", 1, 1, "int", &perk_machine_rob, 0, 0);
    namespace_52c8f34d::preinit();
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x1e0
// Size: 0x4
function postinit() {
    
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 7, eflags: 0x2 linked
// Checksum 0x35badb24, Offset: 0x1f0
// Size: 0xcc
function perk_machine_rob(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump && isdefined(self)) {
        self playrenderoverridebundle(#"hash_e8f3d55b3b05c7e");
        var_85bec78b = self.origin + (0, 0, 50);
        wait(1);
        playsound(fieldname, #"hash_1ac5c65e0bb6f52e", var_85bec78b);
        soundloopemitter("zmb_perkmachine_power_on_lp", var_85bec78b);
    }
}


// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;
#using script_44c87b4589ee1f93;
#using script_581877678e31274c;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace zm_ai_dog;

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x5
// Checksum 0x5b6c6de3, Offset: 0xd8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_ai_dog", &preinit, undefined, undefined, undefined);
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x6 linked
// Checksum 0x63163aba, Offset: 0x120
// Size: 0x7c
function private preinit() {
    clientfield::register("actor", "ZombieDogVocals", 1, 2, "int", &zombiedogvocals, 0, 0);
    ai::add_archetype_spawn_function(#"zombie_dog", &function_3b0e8b8b);
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x46b8707d, Offset: 0x1a8
// Size: 0x24
function function_3b0e8b8b(localclientnum) {
    util::waittill_dobj(localclientnum);
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 7, eflags: 0x2 linked
// Checksum 0xbb6a0d7a, Offset: 0x1d8
// Size: 0x172
function zombiedogvocals(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    self endon(#"death");
    if (isdefined(self.var_64e89a2f)) {
        self stoploopsound(self.var_64e89a2f);
    }
    if (wasdemojump) {
        switch (wasdemojump) {
        case 1:
            var_e5404960 = undefined;
            var_9c464736 = #"hash_50a34ea4add0897";
            break;
        case 2:
            var_e5404960 = #"hash_16838de4eb2b7f00";
            var_9c464736 = #"hash_219cfeed2cbf8adc";
            break;
        }
        if (isdefined(var_e5404960)) {
            self playsound(fieldname, var_e5404960, self.origin + (20, 0, 30));
        }
        self.var_35e2a4c0 = self playloopsound(var_9c464736, 1.5, (20, 0, 30));
    }
}


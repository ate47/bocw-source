// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\serverfield_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_2b049a09;

// Namespace namespace_2b049a09/namespace_2b049a09
// Params 0, eflags: 0x5
// Checksum 0x90118b00, Offset: 0x108
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_635ff968b6476f85", &preload, undefined, undefined, undefined);
}

// Namespace namespace_2b049a09/namespace_2b049a09
// Params 0, eflags: 0x6 linked
// Checksum 0x74ab46cb, Offset: 0x150
// Size: 0xac
function private preload() {
    clientfield::register("toplayer", "get_anagram_solution", 1, 1, "int", &function_6707eca3, 0, 0);
    serverfield::register("anagram_solution_index", 1, int(ceil(log2(60))), "int");
}

// Namespace namespace_2b049a09/namespace_2b049a09
// Params 7, eflags: 0x6 linked
// Checksum 0x9e5ae730, Offset: 0x208
// Size: 0x1a4
function private function_6707eca3(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        var_9487875 = getscriptbundle("operation_chaos_anagrams");
        var_a417e28e = [];
        foreach (idx, var_d0354c50 in var_9487875.var_a417e28e) {
            var_a417e28e[idx] = var_d0354c50.var_d0354c50;
        }
        var_e33f731b = function_e9a1119d(var_9487875.message, var_a417e28e);
        if (var_e33f731b.size > 0) {
            var_8a11569b = array::random(var_e33f731b);
            serverfield::set("anagram_solution_index", var_8a11569b + 1);
        } else {
            serverfield::set("anagram_solution_index", 61);
        }
        wait(0.5);
        serverfield::set("anagram_solution_index", 0);
    }
}


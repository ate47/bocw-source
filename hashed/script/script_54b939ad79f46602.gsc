// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using script_7c8886f468a029fb;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_a2a34bbc;

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 0, eflags: 0x5
// Checksum 0x786a6dea, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_1613437b4759eb4a", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 0, eflags: 0x2 linked
// Checksum 0xdc87d4f7, Offset: 0xe8
// Size: 0x94
function preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_759fe9a9853a9b36")) && !getdvarint(#"hash_730311c63805303a", 0)) {
        return;
    }
    level.var_3c3b40c7 = sr_orda_health_bar::register();
}


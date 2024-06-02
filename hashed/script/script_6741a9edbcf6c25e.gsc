// Atian COD Tools GSC CW decompiler test
#using script_6a72d858ff1942eb;
#using script_78825cbb1ab9f493;
#using script_713f934fea43e1fc;
#using script_2b1dbe0f618068f7;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_2938acdc;

// Namespace namespace_2938acdc/namespace_2938acdc
// Params 0, eflags: 0x2 linked
// Checksum 0x12c2586b, Offset: 0xd0
// Size: 0xa4
function init() {
    level.var_db91e97c = 1;
    namespace_17baa64d::init();
    if (is_true(getgametypesetting(#"hash_6eef7868c4f5ddbc"))) {
        clientfield::register_clientuimodel("squad_wipe_tokens.count", #"hash_8155b36904833e4", #"count", 1, 4, "int", undefined, 0, 0);
    }
}


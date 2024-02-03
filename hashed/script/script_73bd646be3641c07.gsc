// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_5b1144e;

// Namespace namespace_5b1144e/namespace_5b1144e
// Params 0, eflags: 0x5
// Checksum 0x31ef873d, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_1e8eafe505e52c51", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_5b1144e/namespace_5b1144e
// Params 0, eflags: 0x6 linked
// Checksum 0xb8bdedf3, Offset: 0x100
// Size: 0x9c
function private function_70a657d8() {
    clientfield::register("scriptmover", "" + #"hash_dfecc4e02f58398", 1, 3, "int");
    clientfield::register("zbarrier", "" + #"hash_dfecc4e02f58398", 1, 2, "int");
    level.var_142ecedc = &function_142ecedc;
}

// Namespace namespace_5b1144e/namespace_5b1144e
// Params 1, eflags: 0x2 linked
// Checksum 0x35db924e, Offset: 0x1a8
// Size: 0x8c
function function_9e0598bb(id) {
    /#
        /#
            assert(isentity(self), "<unknown string>");
        #/
    #/
    if (!isentity(self)) {
        return;
    }
    self clientfield::set("" + #"hash_dfecc4e02f58398", id);
}

// Namespace namespace_5b1144e/namespace_5b1144e
// Params 1, eflags: 0x2 linked
// Checksum 0xbe744457, Offset: 0x240
// Size: 0x54
function function_550247bd(id) {
    /#
        /#
            assert(id > 10, "<unknown string>");
        #/
    #/
    function_9e0598bb(id - 10);
}

// Namespace namespace_5b1144e/namespace_5b1144e
// Params 1, eflags: 0x6 linked
// Checksum 0x7861cd38, Offset: 0x2a0
// Size: 0xba
function private function_142ecedc(param) {
    duration = -1;
    ai = getentbynum(param);
    if (isactor(ai) && isalive(ai) && ai.var_6f84b820 === #"boss") {
        duration = 10;
    }
    if (isdefined(ai.var_fdd8e511)) {
        duration = ai.var_fdd8e511;
    }
    return duration;
}


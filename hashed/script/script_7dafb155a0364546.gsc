// Atian COD Tools GSC CW decompiler test
#using script_35ae72be7b4fec10;
#using script_13114d8a31c6152a;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_e3815316;

// Namespace namespace_e3815316/namespace_e3815316
// Params 0, eflags: 0x5
// Checksum 0xce7f31f8, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_5903f7e85045920f", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_e3815316/namespace_e3815316
// Params 0, eflags: 0x6 linked
// Checksum 0xfd8d35fd, Offset: 0xe0
// Size: 0x6c
function private preinit() {
    /#
        function_5ac4dc99("<unknown string>", "<unknown string>");
        function_cd140ee9("<unknown string>", &function_538c9c9b);
        adddebugcommand("<unknown string>");
    #/
}

/#

    // Namespace namespace_e3815316/namespace_e3815316
    // Params 1, eflags: 0x4
    // Checksum 0x9837cd00, Offset: 0x158
    // Size: 0x14c
    function private function_538c9c9b(params) {
        assert(params.name == "<unknown string>");
        if (params.value == "<unknown string>") {
            return;
        }
        setdvar(#"hash_1809fc0397c17b91", "<unknown string>");
        if (namespace_61e6d095::exists(#"hash_5903f7e85045920f")) {
            return;
        }
        paramarray = strtok(params.value, "<unknown string>");
        assert(paramarray.size == 2);
        notetype = paramarray[0];
        noteid = paramarray[1];
        player = getplayers()[0];
        player thread function_32402e29(notetype, noteid);
    }

#/

// Namespace namespace_e3815316/namespace_e3815316
// Params 2, eflags: 0x4
// Checksum 0x8d358aa7, Offset: 0x2b0
// Size: 0x14c
function private function_32402e29(*notetype, *noteid) {
    player = self;
    if (namespace_61e6d095::exists(#"hash_5903f7e85045920f")) {
        assertmsg("<unknown string>");
        return;
    }
    namespace_61e6d095::create(#"hash_5903f7e85045920f", #"hash_77979ca92bd3cc85");
    namespace_61e6d095::function_28027c42(#"hash_5903f7e85045920f", #"hash_5903f7e85045920f");
    namespace_c8e236da::function_ebf737f8(#"hash_1aefb4de625039be");
    level waittill(#"note_closed");
    namespace_c8e236da::removelist();
    namespace_61e6d095::remove(#"hash_5903f7e85045920f");
    namespace_61e6d095::function_4279fd02(#"hash_5903f7e85045920f");
}


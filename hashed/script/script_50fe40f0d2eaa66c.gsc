// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using script_c8d806d2487b617;
#using script_152c3f4ffef9e588;

#namespace namespace_81546b33;

/#

    // Namespace namespace_81546b33/namespace_81546b33
    // Params 0, eflags: 0x5
    // Checksum 0x8e809c1, Offset: 0x98
    // Size: 0x4c
    function private autoexec __init__system__() {
        system::register(#"hash_7b2d0df8fb9099a8", &preinit, undefined, undefined, #"radiation");
    }

    // Namespace namespace_81546b33/namespace_81546b33
    // Params 0, eflags: 0x4
    // Checksum 0x1cdfa5e, Offset: 0xf0
    // Size: 0x4c
    function private preinit() {
        if (!namespace_956bd4dd::function_ab99e60c()) {
            return;
        }
        level thread _setup_devgui();
        level thread function_aa32646f();
    }

    // Namespace namespace_81546b33/namespace_81546b33
    // Params 0, eflags: 0x4
    // Checksum 0xf3366ee5, Offset: 0x148
    // Size: 0x20c
    function private _setup_devgui() {
        while (!canadddebugcommand()) {
            waitframe(1);
        }
        path = "<unknown string>";
        cmd = "<unknown string>";
        adddebugcommand("<unknown string>" + path + "<unknown string>" + cmd + "<unknown string>");
        adddebugcommand("<unknown string>" + path + "<unknown string>" + cmd + "<unknown string>");
        adddebugcommand("<unknown string>" + path + "<unknown string>" + cmd + "<unknown string>");
        adddebugcommand("<unknown string>" + path + "<unknown string>" + cmd + "<unknown string>");
        adddebugcommand("<unknown string>" + path + "<unknown string>" + cmd + "<unknown string>");
        path = "<unknown string>";
        adddebugcommand("<unknown string>" + path + "<unknown string>");
        adddebugcommand("<unknown string>" + path + "<unknown string>");
        adddebugcommand("<unknown string>" + path + "<unknown string>");
        adddebugcommand("<unknown string>" + path + "<unknown string>");
    }

    // Namespace namespace_81546b33/namespace_81546b33
    // Params 0, eflags: 0x4
    // Checksum 0xcc6ac33b, Offset: 0x360
    // Size: 0x8
    function private function_aa32646f() {
        
    }

#/

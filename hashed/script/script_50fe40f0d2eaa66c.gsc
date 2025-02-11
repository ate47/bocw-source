#using script_152c3f4ffef9e588;
#using script_c8d806d2487b617;
#using scripts\core_common\system_shared;

#namespace radiation_debug;

/#

    // Namespace radiation_debug/radiation_debug
    // Params 0, eflags: 0x5
    // Checksum 0x8e809c1, Offset: 0x98
    // Size: 0x4c
    function private autoexec __init__system__() {
        system::register(#"radiation_debug", &preinit, undefined, undefined, #"radiation");
    }

    // Namespace radiation_debug/radiation_debug
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

    // Namespace radiation_debug/radiation_debug
    // Params 0, eflags: 0x4
    // Checksum 0xf3366ee5, Offset: 0x148
    // Size: 0x20c
    function private _setup_devgui() {
        while (!canadddebugcommand()) {
            waitframe(1);
        }
        path = "<dev string:x38>";
        cmd = "<dev string:x5b>";
        adddebugcommand("<dev string:x81>" + path + "<dev string:x8f>" + cmd + "<dev string:xa4>");
        adddebugcommand("<dev string:x81>" + path + "<dev string:xaa>" + cmd + "<dev string:xbf>");
        adddebugcommand("<dev string:x81>" + path + "<dev string:xc5>" + cmd + "<dev string:xdb>");
        adddebugcommand("<dev string:x81>" + path + "<dev string:xe2>" + cmd + "<dev string:xf8>");
        adddebugcommand("<dev string:x81>" + path + "<dev string:xff>" + cmd + "<dev string:x116>");
        path = "<dev string:x11e>";
        adddebugcommand("<dev string:x81>" + path + "<dev string:x143>");
        adddebugcommand("<dev string:x81>" + path + "<dev string:x191>");
        adddebugcommand("<dev string:x81>" + path + "<dev string:x1f1>");
        adddebugcommand("<dev string:x81>" + path + "<dev string:x243>");
    }

    // Namespace radiation_debug/radiation_debug
    // Params 0, eflags: 0x4
    // Checksum 0xcc6ac33b, Offset: 0x360
    // Size: 0x8
    function private function_aa32646f() {
        
    }

#/

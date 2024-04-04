// Atian COD Tools GSC CW decompiler test
#namespace delete;

// Namespace delete/delete
// Params 1, eflags: 0x24
// Checksum 0xfd2f2ac5, Offset: 0x80
// Size: 0x104
function private event_handler[delete] function_55217f7b(*eventstruct) {
    assert(isdefined(self));
    if (isdefined(self)) {
        /#
            if (isdefined(self.classname)) {
                if (self.classname == "<unknown string>" || self.classname == "<unknown string>" || self.classname == "<unknown string>") {
                    println("<unknown string>");
                    println("<unknown string>" + self getentitynumber() + "<unknown string>" + self.origin);
                    println("<unknown string>");
                }
            }
        #/
        self delete();
    }
}

// Namespace delete/event_9aed3d2d
// Params 1, eflags: 0x24
// Checksum 0x2a5a0dbd, Offset: 0x190
// Size: 0x10c
function private event_handler[event_9aed3d2d] function_f447a48e(*eventstruct) {
    assert(isdefined(self));
    waitframe(1);
    if (isdefined(self)) {
        /#
            if (isdefined(self.classname)) {
                if (self.classname == "<unknown string>" || self.classname == "<unknown string>" || self.classname == "<unknown string>") {
                    println("<unknown string>");
                    println("<unknown string>" + self getentitynumber() + "<unknown string>" + self.origin);
                    println("<unknown string>");
                }
            }
        #/
        self delete();
    }
}


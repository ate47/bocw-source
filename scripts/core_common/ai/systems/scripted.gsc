// Atian COD Tools GSC CW decompiler test
#namespace scripted;

// Namespace scripted/scripted
// Params 0, eflags: 0x2 linked
// Checksum 0x5dd0fc07, Offset: 0x98
// Size: 0x5a
function main() {
    self notify(#"killanimscript");
    self notify(#"clearsuppressionattack");
    self.codescripted[#"root"] = "body";
    self.a.script = "scripted";
}

// Namespace scripted/scripted
// Params 9, eflags: 0x0
// Checksum 0x5f60a820, Offset: 0x100
// Size: 0x4c
function init(*notifyname, *origin, *angles, *theanim, *animmode, *root, *rate, *goaltime, *lerptime) {
    
}

// Namespace scripted/scripted
// Params 0, eflags: 0x2 linked
// Checksum 0xf96e2c7d, Offset: 0x158
// Size: 0x20
function end_script() {
    if (isdefined(self.___archetypeonbehavecallback)) {
        [[ self.___archetypeonbehavecallback ]](self);
    }
}


// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_cc411409;

// Namespace namespace_cc411409/namespace_cc411409
// Params 0, eflags: 0x2 linked
// Checksum 0x2c83979d, Offset: 0xe0
// Size: 0x15c
function preinit() {
    if (!isdefined(level.var_38bf45dc)) {
        clientfield::register("scriptmover", "ragdoll_launcher_id", 1, getminbitcountfornum(7), "int", &function_5f224893, 0, 0);
        clientfield::register("scriptmover", "ragdoll_launcher_mag", 1, getminbitcountfornum(4), "int", &function_338ef91c, 0, 0);
        clientfield::register("actor", "ragdoll_launcher_id", 1, getminbitcountfornum(7), "int", &function_e83889f9, 0, 0);
        level.var_38bf45dc = [undefined, 64, 128, 250];
    }
}

// Namespace namespace_cc411409/namespace_cc411409
// Params 7, eflags: 0x2 linked
// Checksum 0xd02102cf, Offset: 0x248
// Size: 0xd2
function function_5f224893(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.var_30858358)) {
        level.var_30858358 = [];
    }
    if (!isdefined(level.var_30858358[fieldname])) {
        level.var_30858358[fieldname] = [];
    }
    level.var_30858358[fieldname][bwastimejump] = {#ent:self, #time:getservertime(fieldname)};
    self.var_2011737d = bwastimejump;
}

// Namespace namespace_cc411409/namespace_cc411409
// Params 7, eflags: 0x2 linked
// Checksum 0xc7d03868, Offset: 0x328
// Size: 0xd2
function function_338ef91c(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!(isdefined(self.var_2011737d) && isdefined(level.var_30858358[fieldname][self.var_2011737d])) || level.var_30858358[fieldname][self.var_2011737d].ent !== self) {
        println("<unknown string>");
        return;
    }
    level.var_30858358[fieldname][self.var_2011737d].var_3934e676 = bwastimejump;
}

// Namespace namespace_cc411409/namespace_cc411409
// Params 7, eflags: 0x2 linked
// Checksum 0xcb6c1859, Offset: 0x408
// Size: 0x17c
function function_e83889f9(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    waittillframeend();
    if (!(isdefined(self) && isdefined(level.var_30858358[fieldname][bwastimejump].ent)) || getservertime(fieldname) - level.var_30858358[fieldname][bwastimejump].time > 500) {
        return;
    }
    zombieorigin = (self.origin[0], self.origin[1], self.origin[2] + 64);
    var_3f57677f = zombieorigin - level.var_30858358[fieldname][bwastimejump].ent.origin;
    dist = length(var_3f57677f);
    var_3f57677f /= dist;
    var_3f57677f *= level.var_38bf45dc[level.var_30858358[fieldname][bwastimejump].var_3934e676];
    self launchragdoll(var_3f57677f);
}


// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace dogtags;

// Namespace dogtags/dogtags
// Params 0, eflags: 0x2 linked
// Checksum 0x2f887d91, Offset: 0xf8
// Size: 0xc8
function init() {
    clientfield::register("scriptmover", "dogtag_flag", 1, 2, "int", &function_319c73b1, 0, 0);
    clientfield::register("scriptmover", "dogtag_clientnum", 20000, 5, "int", &function_eb14e659, 0, 0);
    level.var_70e5d775 = getgametypesetting(#"hash_45b6991b1456a440");
    level.var_1305770 = [];
}

// Namespace dogtags/dogtags
// Params 0, eflags: 0x2 linked
// Checksum 0xcfb7ac88, Offset: 0x1c8
// Size: 0xc0
function function_3e0d8ba2() {
    if (isdefined(level.var_ba243d66)) {
        return level.var_ba243d66;
    }
    if (level.var_70e5d775 === 1) {
        var_c2ad857a = [#"hash_214a2287c621274a", #"hash_214a2187c6212597", #"hash_214a2087c62123e4", #"hash_214a1f87c6212231"];
        return var_c2ad857a[randomint(var_c2ad857a.size)];
    }
}

// Namespace dogtags/dogtags
// Params 7, eflags: 0x2 linked
// Checksum 0x4cfb84f2, Offset: 0x290
// Size: 0x43c
function function_319c73b1(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self notify(#"stopbounce");
    if (isdefined(self.var_47b256ef)) {
        self.var_47b256ef unlink();
        self.var_47b256ef.origin = self.origin;
    }
    if (bwastimejump == 0) {
        self function_81431153(fieldname);
        self delete_objective(fieldname);
        return;
    }
    if (!isdefined(self.objectiveid) && util::get_game_type() !== #"spy") {
        objectivename = isdefined(level.var_febab1ea) ? level.var_febab1ea : #"conf_dogtags";
        self.objectiveid = util::getnextobjid(fieldname);
        objective_add(fieldname, self.objectiveid, "active", objectivename, self.origin, self.team);
        objective_onentity(fieldname, self.objectiveid, self, 1, 1, 0);
        if (level.var_70e5d775 === 1) {
            objective_setgamemodeflags(fieldname, self.objectiveid, 1);
        }
    }
    if (!isdefined(self.var_47b256ef)) {
        self.var_47b256ef = spawn(fieldname, self.origin, "script_model");
        self.var_47b256ef.angles = (0, 0, 0);
        self.var_47b256ef setmodel(#"tag_origin");
        self thread function_bcb88fb7(fieldname);
    }
    if (!isdefined(self.var_c7d6b0c1) || !isfxplaying(fieldname, self.var_c7d6b0c1)) {
        fxtoplay = function_3e0d8ba2();
        if (!isdefined(fxtoplay)) {
            characterindex = isdefined(self function_ef9de5ae()) ? self function_ef9de5ae() : 0;
            fxtoplay = isdefined(getcharacterfields(characterindex, currentsessionmode()).var_c7d6b0c1) ? getcharacterfields(characterindex, currentsessionmode()).var_c7d6b0c1 : #"hash_30f231c126644dc2";
        }
        self.var_c7d6b0c1 = util::playfxontag(fieldname, fxtoplay, self.var_47b256ef, "tag_origin");
        setfxteam(fieldname, self.var_c7d6b0c1, self.team);
    }
    if (bwastimejump == 1) {
        self.var_47b256ef.origin = self.origin;
        self.var_47b256ef linkto(self);
        return;
    }
    if (bwastimejump == 2 || bwastimejump == 3) {
        self thread function_2eee13af();
    }
}

// Namespace dogtags/dogtags
// Params 1, eflags: 0x2 linked
// Checksum 0x69a5abf1, Offset: 0x6d8
// Size: 0x3e
function function_81431153(localclientnum) {
    if (isdefined(self.var_c7d6b0c1)) {
        killfx(localclientnum, self.var_c7d6b0c1);
        self.var_c7d6b0c1 = undefined;
    }
}

// Namespace dogtags/dogtags
// Params 1, eflags: 0x2 linked
// Checksum 0x494f2300, Offset: 0x720
// Size: 0x5e
function delete_objective(localclientnum) {
    if (isdefined(self.objectiveid)) {
        objective_delete(localclientnum, self.objectiveid);
        util::releaseobjid(localclientnum, self.objectiveid);
        self.objectiveid = undefined;
    }
}

// Namespace dogtags/dogtags
// Params 1, eflags: 0x2 linked
// Checksum 0x75907843, Offset: 0x788
// Size: 0x86
function function_bcb88fb7(localclientnum) {
    self waittill(#"death");
    self function_81431153(localclientnum);
    self delete_objective(localclientnum);
    if (isdefined(self.var_47b256ef)) {
        self.var_47b256ef delete();
        self.var_47b256ef = undefined;
    }
}

// Namespace dogtags/dogtags
// Params 0, eflags: 0x2 linked
// Checksum 0xed963176, Offset: 0x818
// Size: 0x174
function function_2eee13af() {
    self endon(#"stopbounce");
    self endon(#"death");
    while (true) {
        toppos = self.origin + (0, 0, 12);
        self.var_47b256ef moveto(toppos, 0.5, 0, 0);
        self.var_47b256ef waittill(#"movedone");
        if (isdefined(self.clientnum) && self.clientnum > -1) {
            level.var_1305770[self.clientnum] = self.var_47b256ef.origin;
        }
        bottompos = self.origin;
        self.var_47b256ef moveto(bottompos, 0.5, 0, 0);
        self.var_47b256ef waittill(#"movedone");
        if (isdefined(self.clientnum) && self.clientnum > -1) {
            level.var_1305770[self.clientnum] = self.var_47b256ef.origin;
        }
    }
}

// Namespace dogtags/dogtags
// Params 0, eflags: 0x6 linked
// Checksum 0xdaa24d83, Offset: 0x998
// Size: 0x1a
function private function_ef9de5ae() {
    return self function_9682ea07();
}

// Namespace dogtags/dogtags
// Params 7, eflags: 0x2 linked
// Checksum 0xa91963c2, Offset: 0x9c0
// Size: 0x82
function function_eb14e659(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    clientnum = bwastimejump - 1;
    if (clientnum > -1) {
        level.var_1305770[clientnum] = self.origin;
        self.clientnum = clientnum;
    }
}


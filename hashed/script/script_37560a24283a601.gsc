// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using script_d67878983e3d7c;
#using script_4e53735256f112ac;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_797fe2e7;

// Namespace namespace_797fe2e7/namespace_797fe2e7
// Params 0, eflags: 0x5
// Checksum 0x7ef18940, Offset: 0xd8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_607f0336b64df630", &preinit, undefined, undefined, #"hash_13a43d760497b54d");
}

// Namespace namespace_797fe2e7/namespace_797fe2e7
// Params 0, eflags: 0x6 linked
// Checksum 0xb46299a3, Offset: 0x128
// Size: 0xb4
function private preinit() {
    clientfield::register("missile", "" + #"hash_36112e7cad541b66", 1, 2, "int", &function_9cb928dc, 1, 0);
    clientfield::register("missile", "" + #"hash_2d55ead1309349bc", 1, 3, "int", &function_6bd975fa, 1, 0);
}

// Namespace namespace_797fe2e7/namespace_797fe2e7
// Params 7, eflags: 0x2 linked
// Checksum 0xb4f2d36c, Offset: 0x1e8
// Size: 0x256
function function_9cb928dc(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 1:
    case 2:
        var_8cce6a5c = #"hash_302e7c518042ef82";
        break;
    case 3:
        var_8cce6a5c = #"hash_57ddfc09a8a5cfee";
        break;
    }
    if (isdefined(var_8cce6a5c)) {
        self.var_b4afca05 = util::spawn_model(fieldname, "tag_origin", self.origin, (0, 0, 0));
        self.var_b4afca05 linkto(self);
        self.var_214a11f9 = util::playfxontag(fieldname, var_8cce6a5c, self.var_b4afca05, "tag_origin");
        self thread function_add31c08();
        if (!isdefined(self.var_d912eb65)) {
            playsound(fieldname, #"hash_3f0bee7329c6d063", self.origin + (0, 0, 25));
            self.var_d912eb65 = self playloopsound(#"hash_d9ada961eacdf0", undefined, (0, 0, 25));
        }
        return;
    }
    if (isdefined(self.var_214a11f9)) {
        stopfx(fieldname, self.var_214a11f9);
        self.var_214a11f9 = undefined;
    }
    if (isdefined(self.var_b4afca05)) {
        self.var_b4afca05 delete();
    }
    if (isdefined(self.var_d912eb65)) {
        self stoploopsound(self.var_d912eb65);
        self.var_d912eb65 = undefined;
    }
}

// Namespace namespace_797fe2e7/namespace_797fe2e7
// Params 0, eflags: 0x2 linked
// Checksum 0x57bbde08, Offset: 0x448
// Size: 0x44
function function_add31c08() {
    self waittill(#"death");
    if (isdefined(self.var_b4afca05)) {
        self.var_b4afca05 delete();
    }
}

// Namespace namespace_797fe2e7/namespace_797fe2e7
// Params 7, eflags: 0x2 linked
// Checksum 0x30eb9f35, Offset: 0x498
// Size: 0x186
function function_6bd975fa(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 1:
        var_90048701 = #"hash_1afd3356d5225a80";
        break;
    case 2:
        var_90048701 = #"hash_7a5d71decf1bdefb";
        break;
    case 3:
        var_90048701 = #"hash_29fd19d52a45b19e";
        break;
    case 4:
        var_90048701 = #"hash_d33a825314c9dac";
        break;
    }
    if (isdefined(var_90048701)) {
        self.var_90048701 = playfx(fieldname, var_90048701, self.origin, (1, 0, 0), (0, 0, 1));
        self playsound(fieldname, #"hash_6803d4ae1d74d42d");
        return;
    }
    if (isdefined(self.var_90048701)) {
        stopfx(fieldname, self.var_90048701);
        self.var_90048701 = undefined;
    }
}


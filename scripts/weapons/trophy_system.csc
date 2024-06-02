// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace trophy_system;

// Namespace trophy_system/trophy_system
// Params 0, eflags: 0x2 linked
// Checksum 0x18b582be, Offset: 0xc0
// Size: 0xb4
function init_shared() {
    clientfield::register("missile", "" + #"hash_644cb829d0133e99", 1, 1, "int", &function_a485f3cf, 0, 0);
    clientfield::register("missile", "" + #"hash_78a094001c919359", 1, 7, "float", &function_799a68b6, 0, 0);
}

// Namespace trophy_system/trophy_system
// Params 7, eflags: 0x2 linked
// Checksum 0x91bad479, Offset: 0x180
// Size: 0xa2
function function_a485f3cf(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 1:
        self thread function_82dd67c1(fieldname);
        break;
    case 0:
        self thread function_ce24311a(fieldname);
        break;
    }
}

// Namespace trophy_system/trophy_system
// Params 1, eflags: 0x2 linked
// Checksum 0xfac43d19, Offset: 0x230
// Size: 0x7c
function function_82dd67c1(localclientnum) {
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    self useanimtree("generic");
    self setanim(#"hash_70b2041b1f6ad89", 1, 0, 0);
}

// Namespace trophy_system/trophy_system
// Params 1, eflags: 0x2 linked
// Checksum 0x792d0bbf, Offset: 0x2b8
// Size: 0xfc
function function_ce24311a(localclientnum) {
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    self useanimtree("generic");
    self setanim(#"hash_70b2041b1f6ad89");
    wait(getanimlength(#"hash_70b2041b1f6ad89"));
    if (!self hasanimtree()) {
        return;
    }
    self clearanim(#"hash_70b2041b1f6ad89", 0);
    self setanim(#"hash_3c4ee18df7d43dc7", 1, 0, 2);
}

// Namespace trophy_system/trophy_system
// Params 7, eflags: 0x2 linked
// Checksum 0xee1473c9, Offset: 0x3c0
// Size: 0x3c
function function_799a68b6(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    
}


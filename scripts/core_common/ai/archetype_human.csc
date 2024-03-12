// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;

#namespace archetype_human;

// Namespace archetype_human/archetype_human
// Params 0, eflags: 0x1
// Checksum 0x80f724d1, Offset: 0xb8
// Size: 0x4
function autoexec precache() {
    
}

// Namespace archetype_human/archetype_human
// Params 0, eflags: 0x1
// Checksum 0x70ee2e6a, Offset: 0xc8
// Size: 0x84
function autoexec main() {
    clientfield::register("actor", "facial_dial", 1, 1, "int", &humanclientutils::facialdialoguehandler, 0, 1);
    clientfield::register("actor", "lipflap_anim", 1, 2, "int", undefined, 0, 1);
}

#namespace humanclientutils;

// Namespace humanclientutils/archetype_human
// Params 7, eflags: 0x2 linked
// Checksum 0x595fd9a2, Offset: 0x158
// Size: 0x94
function facialdialoguehandler(*localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump) {
        self.facialdialogueactive = 1;
        return;
    }
    if (is_true(self.facialdialogueactive)) {
        self clearanim(#"faces", 0);
    }
}


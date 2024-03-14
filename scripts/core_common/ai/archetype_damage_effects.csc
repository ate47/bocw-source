// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace archetype_damage_effects;

// Namespace archetype_damage_effects/archetype_damage_effects
// Params 0, eflags: 0x1
// Checksum 0x20b19007, Offset: 0xe8
// Size: 0x14
function autoexec main() {
    registerclientfields();
}

// Namespace archetype_damage_effects/archetype_damage_effects
// Params 0, eflags: 0x2 linked
// Checksum 0xa51fab38, Offset: 0x108
// Size: 0x4c
function registerclientfields() {
    clientfield::register("actor", "arch_actor_fire_fx", 1, 2, "int", &actor_fire_fx, 0, 0);
}

// Namespace archetype_damage_effects/archetype_damage_effects
// Params 7, eflags: 0x2 linked
// Checksum 0x15d52480, Offset: 0x160
// Size: 0x19a
function actor_fire_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    switch (bwastimejump) {
    case 0:
        if (isdefined(self.activefx)) {
            self stopallloopsounds(1);
            foreach (fx in self.activefx) {
                stopfx(fieldname, fx);
            }
            self.activefx = [];
        }
        break;
    case 1:
    case 2:
    case 3:
        self.activefx = playtagfxset(fieldname, "weapon_hero_molotov_fire_3p", self);
        break;
    }
}


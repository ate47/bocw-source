// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\aats\ammomods\ammomod_deadwire.csc;
#using script_312c65d6c946308;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\item_inventory.csc;
#using scripts\core_common\aat_shared.csc;

#namespace ammomod_electriccherry;

// Namespace ammomod_electriccherry/ammomod_electriccherry
// Params 0, eflags: 0x2 linked
// Checksum 0x211b4fdc, Offset: 0x168
// Size: 0x9c
function init_electriccherry() {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    aat::register("ammomod_electriccherry", #"hash_6c2c475aa887c056", "ui_icon_zombie_ammomod_deadwire_stacked");
    clientfield::register("allplayers", "ammomod_electric_cherry_explode", 1, 1, "counter", &electric_cherry_explode, 0, 0);
}

// Namespace ammomod_electriccherry/ammomod_electriccherry
// Params 7, eflags: 0x2 linked
// Checksum 0x47f782ca, Offset: 0x210
// Size: 0xa4
function electric_cherry_explode(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level endon(#"game_ended");
    electric_cherry_reload_fx = util::playfxontag(bwastimejump, "zombie/fx7_perk_electric_cherry_down", self, "tag_origin");
    wait(1);
    stopfx(bwastimejump, electric_cherry_reload_fx);
}


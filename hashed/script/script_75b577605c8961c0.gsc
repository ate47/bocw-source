// Atian COD Tools GSC CW decompiler test
#using script_3411bb48d41bd3b;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm\ai\zm_ai_avogadro.gsc;
#using scripts\weapons\weaponobjects.gsc;
#using scripts\core_common\ai\archetype_avogadro.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_b062407c;

// Namespace namespace_b062407c/namespace_b062407c
// Params 0, eflags: 0x5
// Checksum 0xbd7b4e36, Offset: 0xf0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_17c0cbaa27663c8a", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_b062407c/namespace_b062407c
// Params 0, eflags: 0x6 linked
// Checksum 0xa2fcc14b, Offset: 0x138
// Size: 0x7c
function private preinit() {
    clientfield::register("scriptmover", "" + #"hash_5f124a31eeb3904a", 24000, 1, "int");
    weaponobjects::function_e6400478(#"hash_2e725023a28bcc4e", &function_907f6acc, 1);
}

// Namespace namespace_b062407c/namespace_b062407c
// Params 1, eflags: 0x2 linked
// Checksum 0x4419f359, Offset: 0x1c0
// Size: 0x2e
function function_907f6acc(watcher) {
    watcher.onspawn = &function_7a20f9a3;
    watcher.deleteonplayerspawn = 0;
}

// Namespace namespace_b062407c/namespace_b062407c
// Params 2, eflags: 0x2 linked
// Checksum 0xdc32c961, Offset: 0x1f8
// Size: 0x3dc
function function_7a20f9a3(*watcher, *owner) {
    self endon(#"death");
    self waittill(#"stationary");
    spawn_locs = namespace_85745671::function_e4791424(self.origin, 8, 32, 512, 256);
    switch (getplayers().size) {
    case 1:
    default:
        var_a244d61b = 3;
        break;
    case 2:
        var_a244d61b = 3;
        break;
    case 3:
        var_a244d61b = 3;
        break;
    case 4:
        var_a244d61b = 3;
        break;
    }
    anim_model = util::spawn_model(self.model, self.origin, self.angles);
    anim_model thread scene::play(#"hash_7de44b33b939963a", anim_model);
    waitframe(1);
    self hide();
    wait(1);
    anim_model clientfield::set("" + #"hash_5f124a31eeb3904a", 1);
    zombie_count = 0;
    var_9af5cd8d = 0;
    var_6b0bc36d = 0;
    while (var_a244d61b > 0) {
        if (spawn_locs.size == 0) {
            if (!var_6b0bc36d) {
                spawn_locs = namespace_85745671::function_e4791424(self.origin, 8, 32, 256, 16);
                var_6b0bc36d = 1;
                continue;
            }
            break;
        }
        s_loc = spawn_locs[var_9af5cd8d];
        if (zm_utility::check_point_in_enabled_zone(s_loc.origin, 1)) {
            ai = zm_ai_avogadro::spawn_single(1, s_loc);
            if (isdefined(ai)) {
                archetype_avogadro::function_33237109(ai, self.origin, 600);
            }
            var_a244d61b--;
            var_9af5cd8d = (var_9af5cd8d + 1) % spawn_locs.size;
            level notify(#"hash_2386c39d37af74e3", {#ai:ai});
            wait(1);
            continue;
        }
        arrayremoveindex(spawn_locs, var_9af5cd8d);
        if (var_9af5cd8d >= spawn_locs.size) {
            var_9af5cd8d = 0;
        }
        wait(0.25);
    }
    /#
        if (var_a244d61b > 0) {
            iprintlnbold("<unknown string>");
        }
    #/
    wait(0.5);
    anim_model clientfield::set("" + #"hash_5f124a31eeb3904a", 0);
    waitframe(1);
    anim_model delete();
    self delete();
}


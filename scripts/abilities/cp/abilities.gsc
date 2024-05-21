// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\gametypes\loadout.gsc;
#using scripts\abilities\gadgets\gadget_health_regen.gsc;
#using scripts\abilities\ability_player.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace abilities;

// Namespace abilities/abilities
// Params 0, eflags: 0x5
// Checksum 0xb2bfe38b, Offset: 0xe0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_4652e389efb9751f", &preinit, undefined, undefined, undefined);
}

// Namespace abilities/abilities
// Params 0, eflags: 0x6 linked
// Checksum 0x1df3778a, Offset: 0x128
// Size: 0x64
function private preinit() {
    /#
        level.abilities_devgui_add_gadgets_custom = &abilities_devgui_add_gadgets_custom;
    #/
    callback::on_spawned(&function_f134291a);
    clientfield::register_clientuimodel("playerAbilities.inRange", 1, 1, "int");
}

// Namespace abilities/abilities
// Params 0, eflags: 0x2 linked
// Checksum 0xcf9b5447, Offset: 0x198
// Size: 0x52
function function_f134291a() {
    if (!isdefined(self.var_25fa785)) {
        self.var_25fa785 = spawnstruct();
    }
    if (!isdefined(self.var_25fa785.var_b10e8797)) {
        self.var_25fa785.var_b10e8797 = 0;
    }
}

// Namespace abilities/abilities
// Params 2, eflags: 0x0
// Checksum 0x1ad15468, Offset: 0x1f8
// Size: 0x18
function function_b797206c(*slot, *weapon) {
    return true;
}

/#

    // Namespace abilities/abilities
    // Params 1, eflags: 0x0
    // Checksum 0x7ccc55c1, Offset: 0x218
    // Size: 0xf6
    function function_5bcf55cb(var_28b5f8ed) {
        var_659e10d3 = [];
        foreach (ability in var_28b5f8ed) {
            weapon = getweapon(ability);
            if (weapon != getweapon(#"none")) {
                arrayinsert(var_659e10d3, weapon, 0);
            }
        }
        return var_659e10d3;
    }

    // Namespace abilities/abilities
    // Params 4, eflags: 0x0
    // Checksum 0xca55da3e, Offset: 0x318
    // Size: 0x5c2
    function abilities_devgui_add_gadgets_custom(root, pname, pid, menu_index) {
        add_cmd_with_root = "<unknown string>" + root + pname + "<unknown string>";
        level.var_fefd47f = [];
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        array::add(level.var_fefd47f, "<unknown string>", 0);
        a_grenades = function_5bcf55cb(level.var_fefd47f);
        ability_player::function_174037fe(add_cmd_with_root, pid, a_grenades, "<unknown string>", menu_index);
        level.var_29d4fb5b = [];
        array::add(level.var_29d4fb5b, "<unknown string>", 0);
        array::add(level.var_29d4fb5b, "<unknown string>", 0);
        array::add(level.var_29d4fb5b, "<unknown string>", 0);
        array::add(level.var_29d4fb5b, "<unknown string>", 0);
        array::add(level.var_29d4fb5b, "<unknown string>", 0);
        array::add(level.var_29d4fb5b, "<unknown string>", 0);
        array::add(level.var_29d4fb5b, "<unknown string>", 0);
        array::add(level.var_29d4fb5b, "<unknown string>", 0);
        array::add(level.var_29d4fb5b, "<unknown string>", 0);
        array::add(level.var_29d4fb5b, "<unknown string>", 0);
        array::add(level.var_29d4fb5b, "<unknown string>", 0);
        array::add(level.var_29d4fb5b, "<unknown string>", 0);
        array::add(level.var_29d4fb5b, "<unknown string>", 0);
        array::add(level.var_29d4fb5b, "<unknown string>", 0);
        a_abilities = function_5bcf55cb(level.var_29d4fb5b);
        ability_player::function_a40d04ca(add_cmd_with_root, pid, a_abilities, "<unknown string>", menu_index);
        menu_index++;
        menu_index = ability_player::abilities_devgui_add_power(add_cmd_with_root, pid, menu_index);
        wait(1);
        menu_index = ability_player::function_2e0162e9(add_cmd_with_root, pid, menu_index);
        level.var_86734d48 = &loadout::giveloadout;
        return menu_index;
    }

#/

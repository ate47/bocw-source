// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using script_c8d806d2487b617;
#using script_152c3f4ffef9e588;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_6615ea91;

// Namespace namespace_6615ea91/namespace_6615ea91
// Params 0, eflags: 0x5
// Checksum 0x985078e, Offset: 0x148
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_53f69893eea352cb", &preinit, undefined, undefined, #"radiation");
}

// Namespace namespace_6615ea91/namespace_6615ea91
// Params 0, eflags: 0x6 linked
// Checksum 0x33276423, Offset: 0x198
// Size: 0xe4
function private preinit() {
    if (!namespace_956bd4dd::function_ab99e60c()) {
        return;
    }
    callback::on_spawned(&_on_player_spawned);
    clientfield::register_clientuimodel("hudItems.incursion.radiationDamage", 1, 5, "float");
    clientfield::register_clientuimodel("hudItems.incursion.radiationProtection", 1, 5, "float");
    clientfield::register_clientuimodel("hudItems.incursion.radiationHealth", 1, 5, "float");
    clientfield::register("toplayer", "radiation", 1, 10, "int");
}

// Namespace namespace_6615ea91/namespace_6615ea91
// Params 0, eflags: 0x6 linked
// Checksum 0x321ab024, Offset: 0x288
// Size: 0x34
function private _on_player_spawned() {
    if (!namespace_956bd4dd::function_ab99e60c()) {
        return;
    }
    self function_137e7814(self, 0);
}

// Namespace namespace_6615ea91/namespace_6615ea91
// Params 2, eflags: 0x2 linked
// Checksum 0xa72398e2, Offset: 0x2c8
// Size: 0x13c
function function_59621e3c(player, sickness) {
    if (!namespace_956bd4dd::function_ab99e60c()) {
        return;
    }
    radiationlevel = radiation::function_c9c6dda1(player);
    if (!isdefined(radiationlevel)) {
        assert(0);
        return;
    }
    var_2ba8769e = namespace_956bd4dd::function_6b384c0f(radiationlevel, sickness);
    if (!isdefined(var_2ba8769e)) {
        assert(0);
        return;
    }
    var_d4393988 = player clientfield::get_to_player("radiation");
    var_4e56b794 = var_d4393988 >> 3;
    var_4e56b794 |= 1 << var_2ba8769e;
    var_66bba724 = radiationlevel;
    var_d4393988 = var_4e56b794 << 3 | var_66bba724;
    player clientfield::set_to_player("radiation", var_d4393988);
}

// Namespace namespace_6615ea91/namespace_6615ea91
// Params 2, eflags: 0x2 linked
// Checksum 0x7178261c, Offset: 0x410
// Size: 0x7c
function function_cca7424d(player, percentage) {
    if (!namespace_956bd4dd::function_ab99e60c()) {
        return;
    }
    percentage = max(min(5, percentage), 0);
    player clientfield::set_player_uimodel("hudItems.incursion.radiationProtection", percentage / 5);
}

// Namespace namespace_6615ea91/namespace_6615ea91
// Params 2, eflags: 0x2 linked
// Checksum 0x3c49c48, Offset: 0x498
// Size: 0x13c
function function_5cf1c0a(player, sickness) {
    if (!namespace_956bd4dd::function_ab99e60c()) {
        return;
    }
    radiationlevel = radiation::function_c9c6dda1(player);
    var_66bba724 = radiationlevel;
    if (!isdefined(radiationlevel)) {
        assert(0);
        return;
    }
    var_2ba8769e = namespace_956bd4dd::function_6b384c0f(radiationlevel, sickness);
    if (!isdefined(var_2ba8769e)) {
        assert(0);
        return;
    }
    var_d4393988 = player clientfield::get_to_player("radiation");
    var_4e56b794 = var_d4393988 >> 3;
    var_4e56b794 &= ~(1 << var_2ba8769e);
    var_d4393988 = var_4e56b794 << 3 | var_66bba724;
    player clientfield::set_to_player("radiation", var_d4393988);
}

// Namespace namespace_6615ea91/namespace_6615ea91
// Params 2, eflags: 0x2 linked
// Checksum 0xe05e38dd, Offset: 0x5e0
// Size: 0x44
function function_36a2c924(player, var_c49d0215) {
    if (!namespace_956bd4dd::function_ab99e60c()) {
        return;
    }
    player clientfield::set_player_uimodel("hudItems.incursion.radiationDamage", var_c49d0215);
}

// Namespace namespace_6615ea91/namespace_6615ea91
// Params 2, eflags: 0x2 linked
// Checksum 0xbd7c0ec6, Offset: 0x630
// Size: 0xec
function function_137e7814(player, radiationlevel) {
    if (!namespace_956bd4dd::function_ab99e60c()) {
        return;
    }
    var_d4393988 = player clientfield::get_to_player("radiation");
    assert(radiationlevel >= 0);
    assert(radiationlevel < pow(2, 3));
    var_842e1a12 = var_d4393988 >> 3 << 3 | radiationlevel & 8 - 1;
    player clientfield::set_to_player("radiation", var_842e1a12);
}

// Namespace namespace_6615ea91/namespace_6615ea91
// Params 2, eflags: 0x2 linked
// Checksum 0xe922421f, Offset: 0x728
// Size: 0x4c
function function_835a6746(player, var_ac3a86ea) {
    if (!namespace_956bd4dd::function_ab99e60c()) {
        return;
    }
    player clientfield::set_player_uimodel("hudItems.incursion.radiationHealth", 1 - var_ac3a86ea);
}


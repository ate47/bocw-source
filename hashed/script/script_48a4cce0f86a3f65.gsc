// Atian COD Tools GSC CW decompiler test
#using script_35ae72be7b4fec10;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\core_common\util_shared.gsc;

#namespace entname;

// Namespace entname/ent_name
// Params 2, eflags: 0x2 linked
// Checksum 0x512f45b, Offset: 0xb0
// Size: 0x134
function add(name, team = 1) {
    if (!isdefined(level.var_479cdca1)) {
        level.var_479cdca1 = [];
    }
    var_b40f1dcd = level.var_479cdca1.size == 0;
    if (ishash(team)) {
        if (team == #"axis" || team == #"enemy") {
            team = 2;
        } else {
            team = 1;
        }
    }
    level.var_479cdca1[self getentitynumber()] = {#name:name, #team:team};
    if (var_b40f1dcd) {
        thread function_7d76b3ac();
    }
    self thread function_ef33f38e();
}

// Namespace entname/ent_name
// Params 0, eflags: 0x2 linked
// Checksum 0xe8863206, Offset: 0x1f0
// Size: 0x72
function remove() {
    if (isdefined(level.var_479cdca1[self getentitynumber()])) {
        level.var_479cdca1[self getentitynumber()] = undefined;
        self notify(#"hash_3e2d8e6c2f824c2e");
        if (level.var_479cdca1.size == 0) {
            level.var_479cdca1 = undefined;
        }
    }
}

// Namespace entname/ent_name
// Params 0, eflags: 0x2 linked
// Checksum 0xbd8cfd5c, Offset: 0x270
// Size: 0x20
function remove_all() {
    level.var_479cdca1 = undefined;
    level notify(#"hash_5c4bc066a7176a66");
}

// Namespace entname/ent_name
// Params 0, eflags: 0x6 linked
// Checksum 0xdfe1a5f7, Offset: 0x298
// Size: 0x54
function private function_ef33f38e() {
    level endon(#"hash_5c4bc066a7176a66");
    self endon(#"hash_3e2d8e6c2f824c2e");
    self waittill(#"death");
    self thread remove();
}

// Namespace entname/ent_name
// Params 1, eflags: 0x6 linked
// Checksum 0x5ef7a039, Offset: 0x2f8
// Size: 0x3c
function private _cleanup(*eventstruct) {
    level.var_435c3a22 = undefined;
    function_7a4ff65b("cg_maxActorNameDist", &function_e65ba67);
}

// Namespace entname/ent_name
// Params 0, eflags: 0x6 linked
// Checksum 0xa2924b39, Offset: 0x340
// Size: 0x2ec
function private function_7d76b3ac() {
    level endoncallback(&_cleanup, #"level_restarting");
    for (player = getplayers()[0]; !isdefined(player); player = getplayers()[0]) {
        waitframe(1);
    }
    player endoncallback(&_cleanup, #"death");
    level.var_435c3a22 = [];
    util::init_dvar("cg_maxActorNameDist", 500, &function_e65ba67);
    namespace_61e6d095::create(#"entname", #"hash_1624d8814bab0c71");
    name = #"";
    team = 0;
    namespace_61e6d095::set_text(#"entname", name);
    namespace_61e6d095::set_state(#"entname", team);
    while (isdefined(level.var_479cdca1)) {
        new_name = #"";
        new_team = 0;
        if (isdefined(player.lookatent) && distancesquared(player.origin, player.lookatent.origin) <= level.var_435c3a22[#"hash_71b8f2363319bff4"]) {
            ent_num = player.lookatent getentitynumber();
            ent_name = level.var_479cdca1[ent_num];
            if (isdefined(ent_name)) {
                new_name = ent_name.name;
                new_team = ent_name.team;
            }
        }
        if (name != new_name) {
            name = new_name;
            team = new_team;
            namespace_61e6d095::set_text(#"entname", name);
            namespace_61e6d095::set_state(#"entname", team);
        }
        waitframe(1);
    }
    namespace_61e6d095::remove(#"entname");
    _cleanup();
}

// Namespace entname/ent_name
// Params 1, eflags: 0x6 linked
// Checksum 0xd3be33b0, Offset: 0x638
// Size: 0x60
function private function_e65ba67(dvar) {
    if (dvar.name == #"hash_71b8f2363319bff4") {
        dvar.value *= dvar.value;
    }
    level.var_435c3a22[dvar.name] = dvar.value;
}


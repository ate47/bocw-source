// Atian COD Tools GSC CW decompiler test
#using script_3d703ef87a841fe4;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\player\player_stats.gsc;

#namespace player_role;

// Namespace player_role/player_role
// Params 0, eflags: 0x5
// Checksum 0x1ee28a89, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"player_role", &preinit, undefined, undefined, undefined);
}

// Namespace player_role/player_role
// Params 0, eflags: 0x6 linked
// Checksum 0x234514e1, Offset: 0x100
// Size: 0x20
function private preinit() {
    if (!isdefined(world.playerroles)) {
        world.playerroles = [];
    }
}

// Namespace player_role/player_role
// Params 1, eflags: 0x2 linked
// Checksum 0x8cac3c90, Offset: 0x128
// Size: 0xaa
function get_category_for_index(characterindex) {
    categoryname = getplayerrolecategory(characterindex, currentsessionmode());
    if (isdefined(categoryname)) {
        categoryinfo = getplayerrolecategoryinfo(categoryname);
        assert(isdefined(categoryinfo));
        if (is_true(categoryinfo.enabled)) {
            return categoryname;
        }
    }
    return "default";
}

// Namespace player_role/player_role
// Params 0, eflags: 0x0
// Checksum 0x9f55415e, Offset: 0x1e0
// Size: 0xa2
function get_category() {
    player = self;
    assert(isplayer(player));
    characterindex = player get();
    assert(is_valid(characterindex));
    return get_category_for_index(characterindex);
}

// Namespace player_role/player_role
// Params 0, eflags: 0x0
// Checksum 0x32b9a664, Offset: 0x290
// Size: 0x24
function function_c1f61ea2() {
    return world.playerroles[self getentitynumber()];
}

// Namespace player_role/player_role
// Params 2, eflags: 0x2 linked
// Checksum 0x45f3e628, Offset: 0x2c0
// Size: 0x12e
function function_965ea244(var_6c93328a = 0, var_f99420aa = 0) {
    var_ba015ed = getplayerroletemplatecount(currentsessionmode());
    var_13711f02 = [];
    for (i = 0; i < var_ba015ed; i++) {
        var_d5557bda = var_6c93328a === 1 || function_f4bf7e3f(i);
        var_e6df8df4 = var_f99420aa === 1 || function_63d13ea3(i);
        if (var_d5557bda && var_e6df8df4) {
            var_13711f02[var_13711f02.size] = i;
        }
    }
    roleindex = var_13711f02[randomint(var_13711f02.size)];
    return roleindex;
}

// Namespace player_role/player_role
// Params 1, eflags: 0x2 linked
// Checksum 0xaf97a3ff, Offset: 0x3f8
// Size: 0x16a
function function_63d13ea3(characterindex) {
    maxuniqueroles = getgametypesetting(#"maxuniquerolesperteam", characterindex);
    if (maxuniqueroles == 0) {
        return false;
    }
    rolecount = 0;
    foreach (player in level.players) {
        if (player == self) {
            continue;
        }
        playercharacterindex = player get();
        if (isdefined(player.pers[#"team"]) && player.pers[#"team"] == self.pers[#"team"] && playercharacterindex == characterindex) {
            rolecount++;
            if (rolecount >= maxuniqueroles) {
                return false;
            }
        }
    }
    return true;
}

// Namespace player_role/player_role
// Params 1, eflags: 0x2 linked
// Checksum 0x5bf565bf, Offset: 0x570
// Size: 0x10e
function is_valid(index) {
    if (!isdefined(index)) {
        return false;
    }
    if (currentsessionmode() == 2) {
        return (index >= 0 && index < getplayerroletemplatecount(currentsessionmode()));
    }
    /#
        if (getdvarint(#"allowdebugcharacter", 0) == 1) {
            return (index >= 0 && index < getplayerroletemplatecount(currentsessionmode()));
        }
    #/
    return index > 0 && index < getplayerroletemplatecount(currentsessionmode());
}

// Namespace player_role/player_role
// Params 0, eflags: 0x2 linked
// Checksum 0x718625be, Offset: 0x688
// Size: 0x4a
function get() {
    assert(isplayer(self));
    return self getspecialistindex();
}

// Namespace player_role/player_role
// Params 0, eflags: 0x2 linked
// Checksum 0x3ed79fd, Offset: 0x6e0
// Size: 0x22
function update_fields() {
    self.playerrole = self getrolefields();
}

// Namespace player_role/player_role
// Params 2, eflags: 0x2 linked
// Checksum 0x1e743334, Offset: 0x710
// Size: 0x238
function set(index, force) {
    player = self;
    assert(isplayer(player));
    assert(is_valid(index));
    player.pers[#"characterindex"] = index;
    player setspecialistindex(index);
    if (isbot(self) && getdvarint(#"hash_542c037530526acb", 0) && !is_true(force)) {
        self botsetrandomcharactercustomization();
    }
    player update_fields();
    world.playerroles[self getentitynumber()] = index;
    if (getdvarint(#"hash_1f80dbba75375e3d", 0)) {
        if (currentsessionmode() == 2) {
            customloadoutindex = self stats::get_stat(#"selectedcustomclass");
        } else if (currentsessionmode() == 3 && !loadout::function_87bcb1b()) {
            customloadoutindex = 0;
        } else {
            customloadoutindex = self.pers[#"loadoutindex"];
        }
        if (isdefined(customloadoutindex)) {
            self [[ level.curclass ]]("custom" + customloadoutindex);
        }
    }
}

// Namespace player_role/player_role
// Params 0, eflags: 0x2 linked
// Checksum 0x6cb4afda, Offset: 0x950
// Size: 0x76
function clear() {
    player = self;
    assert(isplayer(player));
    player setspecialistindex(0);
    player.pers[#"characterindex"] = undefined;
    player.playerrole = undefined;
}

// Namespace player_role/player_role
// Params 1, eflags: 0x0
// Checksum 0xd916d002, Offset: 0x9d0
// Size: 0x22
function get_custom_loadout_index(characterindex) {
    return getcharacterclassindex(characterindex);
}

// Namespace player_role/player_role
// Params 1, eflags: 0x0
// Checksum 0x1e4cf026, Offset: 0xa00
// Size: 0x98
function function_97d19493(name) {
    sessionmode = currentsessionmode();
    playerroletemplatecount = getplayerroletemplatecount(sessionmode);
    for (i = 0; i < playerroletemplatecount; i++) {
        var_3c6fd4f7 = function_b14806c6(i, sessionmode);
        if (var_3c6fd4f7 == name) {
            return i;
        }
    }
    return undefined;
}

// Namespace player_role/player_role
// Params 0, eflags: 0x2 linked
// Checksum 0x9e4a2500, Offset: 0xaa0
// Size: 0x92
function function_2a911680() {
    if (level.var_d1455682.var_67bfde2a === 1) {
        faction = teams::function_20cfd8b5(self.pers[#"team"]);
        var_cdee2d01 = faction.superfaction;
    }
    character_index = self function_d882da68(var_cdee2d01);
    return character_index;
}


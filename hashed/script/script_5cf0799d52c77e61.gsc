// Atian COD Tools GSC CW decompiler test
#using script_47851dbeea22fe66;
#using script_774302f762d76254;
#using script_1ee011cd0961afd7;
#using script_634ae70c663d1cc9;
#using script_17dcb1172e441bf6;
#using script_2a5bf5b4a00cee0d;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_98036e8c;

// Namespace namespace_98036e8c/namespace_a98303de
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x150
// Size: 0x4
function init() {
    
}

// Namespace namespace_98036e8c/namespace_a98303de
// Params 0, eflags: 0x2 linked
// Checksum 0x55af9d2e, Offset: 0x160
// Size: 0x16
function main() {
    level.doa.var_584a046 = [];
}

// Namespace namespace_98036e8c/namespace_a98303de
// Params 0, eflags: 0x2 linked
// Checksum 0x3c1672cc, Offset: 0x180
// Size: 0xcc
function function_f5114543() {
    self notify("4e7c7f84f1757943");
    self endon("4e7c7f84f1757943");
    self thread namespace_268747c0::function_978c05b5();
    result = self waittill(#"hash_3e251384a5400dce");
    arrayremovevalue(level.doa.var_584a046, self);
    if (isdefined(self.script_model)) {
        self.script_model delete();
        self.script_model = undefined;
    }
    self setmovingplatformenabled(0);
}

// Namespace namespace_98036e8c/namespace_a98303de
// Params 1, eflags: 0x2 linked
// Checksum 0x550db41d, Offset: 0x258
// Size: 0x2a0
function function_2c3d65c4(platform) {
    assert(isdefined(platform.target), "<unknown string>");
    if (!isdefined(platform.original_origin)) {
        platform.original_origin = platform.origin;
        toks = strtok(platform.script_parameters, ";");
        assert(toks.size >= 2, "<unknown string>");
        assert(toks[0] == "<unknown string>" || toks[0] == "<unknown string>", "<unknown string>");
        platform.type = toks[0] == "mover" ? 1 : 0;
        platform.duration = int(toks[1]);
        target = struct::get(platform.target, "targetname");
        if (platform.type == 0) {
            diffz = target.origin[2] - platform.origin[2];
            platform.destination = platform.origin + (0, 0, diffz);
        } else if (platform.type == 1) {
            var_ffc8189f = target.origin[0] - platform.origin[0];
            var_289dea4a = target.origin[1] - platform.origin[1];
            if (var_ffc8189f > var_289dea4a) {
                platform.destination = platform.origin + (var_ffc8189f, 0, 0);
            } else {
                platform.destination = platform.origin + (0, var_289dea4a, 0);
            }
        }
    }
    platform.origin = platform.original_origin;
    platform setmovingplatformenabled(1);
    platform thread function_27b409b9();
    return platform;
}

// Namespace namespace_98036e8c/namespace_a98303de
// Params 0, eflags: 0x2 linked
// Checksum 0xfae48954, Offset: 0x500
// Size: 0xf0
function function_1ba8281d() {
    if (isdefined(level.doa.var_a77e6349)) {
        platforms = [[ level.doa.var_a77e6349 ]]->function_87f950c1("platform");
    } else {
        platforms = [[ level.doa.var_39e3fa99 ]]->function_242886d5("platform");
    }
    foreach (platform in platforms) {
        function_2c3d65c4(platform);
    }
}

// Namespace namespace_98036e8c/namespace_a98303de
// Params 0, eflags: 0x2 linked
// Checksum 0x39884c9e, Offset: 0x5f8
// Size: 0xec
function function_27b409b9() {
    self notify("177f39a01555cd50");
    self endon("177f39a01555cd50");
    level endon(#"game_over");
    self endon(#"hash_3e251384a5400dce");
    self thread function_f5114543();
    while (true) {
        self moveto(self.destination, self.duration);
        self waittill(#"movedone");
        wait(1);
        self moveto(self.original_origin, self.duration);
        self waittill(#"movedone");
        wait(1);
    }
}


// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_b77e8eb1;

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 2, eflags: 0x0
// Checksum 0x4230409a, Offset: 0x110
// Size: 0x410
function init(var_551ace8a, var_94aa053c) {
    level.var_2c9f7c6b = isdefined(getgametypesetting(#"hash_1cf5e61c49992dc3")) ? getgametypesetting(#"hash_1cf5e61c49992dc3") : 0;
    level.var_cd139dc0 = (isdefined(getgametypesetting(#"hash_7f837b709840950")) ? getgametypesetting(#"hash_7f837b709840950") : 1) * 100;
    level.var_67432513 = (isdefined(getgametypesetting(#"hash_6cd4374035db175e")) ? getgametypesetting(#"hash_6cd4374035db175e") : 0) * 100;
    level.var_d18d7655 = (isdefined(getgametypesetting(#"hash_786ee581eedabff0")) ? getgametypesetting(#"hash_786ee581eedabff0") : 0) * 100;
    level.var_7108bd31 = isdefined(getgametypesetting(#"hash_eff3a2f99071600")) ? getgametypesetting(#"hash_eff3a2f99071600") : 0;
    level.var_c0839e43 = isdefined(getgametypesetting(#"hash_162ebc3912b68841")) ? getgametypesetting(#"hash_162ebc3912b68841") : 0;
    level.var_de7aa071 = isdefined(getgametypesetting(#"hash_570912155889089e")) ? getgametypesetting(#"hash_570912155889089e") : 0;
    level.var_aa6b51f5 = isdefined(getgametypesetting(#"hash_5d04a19b625d7300")) ? getgametypesetting(#"hash_5d04a19b625d7300") : 0;
    level.var_35b75d82 = isdefined(getgametypesetting(#"hash_371e83f096bf0548")) ? getgametypesetting(#"hash_371e83f096bf0548") : 0;
    level.var_380f7d22 = 200;
    clientfield::register("scriptmover", "ftdb_zoneCircle", 1, 3, "int");
    clientfield::register("scriptmover", "zoneNearOOB", 1, 1, "int");
    clientfield::register("scriptmover", "disable_compass_arrow", 1, 1, "int");
    level.var_551ace8a = var_551ace8a;
    level.var_94aa053c = var_94aa053c;
    level.var_ac7be286 = [];
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x0
// Checksum 0x9e4bb2d7, Offset: 0x528
// Size: 0x44
function onstartgametype() {
    /#
        if (getdvarint(#"hash_26399e7b3c887ffb", 0)) {
            level thread function_64d94faa();
        }
    #/
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x2 linked
// Checksum 0xd3d5f8c4, Offset: 0x578
// Size: 0x19c
function function_8e4e3bb2() {
    foreach (var_9bbce2cd in level.var_ac7be286) {
        var_8e392e0f = var_9bbce2cd.var_8e392e0f;
        if (distance2dsquared(self.origin, var_9bbce2cd.origin) < var_8e392e0f * var_8e392e0f) {
            return 1;
        }
        var_537b12bd = var_9bbce2cd.var_261dd536 * 800 + level.var_cd139dc0;
        if (distance2dsquared(self.origin, var_9bbce2cd.origin) < var_537b12bd * var_537b12bd) {
            var_b04baebd = 0;
            for (i = var_9bbce2cd.var_e17ae8be.size - 1; i >= 0; i--) {
                if (var_9bbce2cd.var_e17ae8be[i].size > 0) {
                    var_b04baebd++;
                    if (self function_c7c0cee2(var_9bbce2cd, i)) {
                        return 1;
                    }
                }
                if (var_b04baebd >= 2) {
                    break;
                }
            }
        }
    }
    return 0;
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 2, eflags: 0x6 linked
// Checksum 0x587bfddc, Offset: 0x720
// Size: 0xe8
function private function_c7c0cee2(var_9bbce2cd, var_d9612d9) {
    /#
        assert(isplayer(self));
    #/
    for (i = 0; i < var_9bbce2cd.var_e17ae8be[var_d9612d9].size; i++) {
        var_ac287808 = var_9bbce2cd.var_e17ae8be[var_d9612d9][i];
        if (!isdefined(var_ac287808.model.var_301e0bf7)) {
            continue;
        }
        if (distance2dsquared(self.origin, var_ac287808.origin) < var_ac287808.model.var_301e0bf7 * var_ac287808.model.var_301e0bf7) {
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x0
// Checksum 0x5b6c6414, Offset: 0x810
// Size: 0x24
function function_1cb7e339() {
    self clientfield::set("ftdb_zoneCircle", 3);
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x0
// Checksum 0x577e24cd, Offset: 0x840
// Size: 0x8c
function function_a5caaee0() {
    level.var_ac7be286[level.var_ac7be286.size] = self;
    self function_6a583613();
    /#
        if (getdvarint(#"hash_1216cbfbf11758ce", 0)) {
            self thread function_3d8141ab();
        }
    #/
    self thread function_57172b7();
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x6 linked
// Checksum 0xb4e3a8cb, Offset: 0x8d8
// Size: 0x2d8
function private function_57172b7() {
    level endon(#"game_ended");
    if (isdefined(level.var_551ace8a)) {
        [[ level.var_551ace8a ]](self.origin);
    }
    self.var_261dd536++;
    while (self.var_261dd536 < self.var_bf5103a8) {
        self function_87a78a13();
        self.var_261dd536++;
    }
    if (isdefined(self.script_radius)) {
        var_85eee64 = self.var_261dd536 - 2;
        for (i = 0; i < self.var_fa06c0e[var_85eee64].size; i++) {
            origin = self.var_fa06c0e[var_85eee64][i];
            var_5162de87 = self function_2be7a212(var_85eee64, origin);
            var_5162de87 thread function_60c3117b(0.1, 1, 5, 0);
            util::wait_network_frame(1);
        }
        for (i = 0; i < self.var_e17ae8be[var_85eee64].size; i++) {
            self.var_e17ae8be[var_85eee64][i].model clientfield::set("ftdb_zoneCircle", 0);
        }
        return;
    }
    wait(level.var_c0839e43);
    if (isdefined(level.var_94aa053c)) {
        [[ level.var_94aa053c ]](self.origin);
    }
    self.var_261dd536--;
    while (self.var_261dd536 >= 0) {
        self function_5c839f44();
        self.var_261dd536--;
    }
    var_a8c6fd3b = level.var_de7aa071 / (self.var_bf5103a8 + 1);
    wait(var_a8c6fd3b);
    self function_ea7ab3a9();
    for (i = 0; i < level.var_ac7be286.size; i++) {
        if (self == level.var_ac7be286[i]) {
            level.var_ac7be286[i] = level.var_ac7be286[level.var_ac7be286.size - 1];
            level.var_ac7be286[level.var_ac7be286.size - 1] = undefined;
        }
    }
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x6 linked
// Checksum 0x47955f22, Offset: 0xbb8
// Size: 0x4c
function private function_6a583613() {
    self.var_8e392e0f = level.var_cd139dc0;
    self.var_261dd536 = 0;
    self function_218080fb();
    self function_cd602d73();
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x6 linked
// Checksum 0xcbf843b, Offset: 0xc10
// Size: 0x3f6
function private function_218080fb() {
    self.var_fa06c0e = [];
    self.var_e17ae8be = [];
    self.var_3401d807 = [];
    initialradius = level.var_cd139dc0;
    self.var_a96d0116 = 0;
    if (isdefined(self.script_radius)) {
        maxradius = self.script_radius;
        if (!isdefined(level.var_e1206a08)) {
            maxradius = maxradius - 1600;
        }
        self.var_a96d0116 = 4;
    } else {
        maxradius = randomintrange(level.var_d18d7655, level.var_67432513);
    }
    self.var_bf5103a8 = int((maxradius - initialradius) / 800 + 0.5) + self.var_a96d0116;
    var_92d713c7 = level.var_aa6b51f5;
    var_4c3b9a16 = maxradius - initialradius;
    if (isdefined(self.script_radius) && !isdefined(level.var_e1206a08)) {
        var_4c3b9a16 = var_4c3b9a16 + 1600;
    }
    self.var_91017512 = var_4c3b9a16 / (self.var_bf5103a8 - 1 - self.var_a96d0116);
    self.circleradius = 800;
    for (i = 0; i < self.var_bf5103a8; i++) {
        self.var_fa06c0e[i] = [];
        self.var_e17ae8be[i] = [];
        self.var_3401d807[i] = [];
        var_4fc3d1c0 = initialradius + self.var_91017512 * i;
        var_f79106a4 = int(var_4fc3d1c0 * 2 * 3.14159 / self.circleradius / 1 / (1 + var_92d713c7) + 0.5);
        var_5845cb8a = 360 / var_f79106a4;
        for (j = 0; j < var_f79106a4; j++) {
            angle = var_5845cb8a * j;
            vector = (cos(angle), sin(angle), 0);
            origin = self.origin + vectorscale(vector, var_4fc3d1c0);
            if (level.var_380f7d22 > 0) {
                offsetangle = randomint(360);
                var_c31c90fd = (cos(offsetangle), sin(offsetangle), 0);
                var_3413960f = randomint(level.var_380f7d22);
                origin = origin + vectorscale(var_c31c90fd, var_3413960f);
            }
            self.var_fa06c0e[i][j] = origin;
        }
    }
    if (isdefined(level.var_36cba6d6)) {
        for (i = 1; self.var_bf5103a8 - i > 3; i++) {
            self function_7a12a868(self.var_bf5103a8 - i, level.var_36cba6d6);
        }
    }
    self.var_bf5103a8 = self.var_bf5103a8 - self.var_a96d0116;
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 2, eflags: 0x6 linked
// Checksum 0x550ff22, Offset: 0x1010
// Size: 0x1be
function private function_7a12a868(var_4838ddab, origin) {
    var_27ad1fd0 = self.var_fa06c0e[var_4838ddab].size * 0.75;
    var_5669bf82 = 0;
    for (i = 0; i < self.var_fa06c0e[var_4838ddab].size; i++) {
        var_180a7ec0 = 0;
        if (var_5669bf82 >= var_27ad1fd0) {
            var_180a7ec0 = 1;
        } else {
            var_1d8f74ad = distancesquared(self.var_fa06c0e[var_4838ddab][i], origin);
            var_7047a386 = distancesquared(self.origin, origin);
            if (var_1d8f74ad > var_7047a386 * (2 - 0.6)) {
                var_180a7ec0 = 1;
            } else if (var_1d8f74ad > var_7047a386 * 0.6) {
                if (randomfloat(1) > 0.4) {
                    var_180a7ec0 = 1;
                }
            }
        }
        if (var_180a7ec0) {
            self.var_fa06c0e[var_4838ddab][i] = self.var_fa06c0e[var_4838ddab][self.var_fa06c0e[var_4838ddab].size - 1];
            self.var_fa06c0e[var_4838ddab][self.var_fa06c0e[var_4838ddab].size - 1] = undefined;
            i--;
        } else {
            var_5669bf82++;
        }
    }
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x6 linked
// Checksum 0x49e63004, Offset: 0x11d8
// Size: 0x174
function private function_cd602d73() {
    self.var_b06ed2fa = spawn("script_model", self.origin);
    self.var_b06ed2fa.team = #"neutral";
    self.var_b06ed2fa setmodel("tag_origin");
    self.var_b06ed2fa clientfield::set("ftdb_zoneCircle", 2);
    self.var_b06ed2fa.var_bf5103a8 = self.var_bf5103a8;
    self.var_b06ed2fa.var_2c8491dd = self;
    self.var_b06ed2fa setforcenocull();
    self.var_b06ed2fa setscale(0.1);
    if (self function_2020d6b0()) {
        self.var_b06ed2fa clientfield::set("zoneNearOOB", 1);
    }
    if (level.gametype == "spy") {
        self.var_b06ed2fa clientfield::set("disable_compass_arrow", 1);
    }
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x6 linked
// Checksum 0x487f6715, Offset: 0x1358
// Size: 0x1aa
function private function_2020d6b0() {
    if (!isdefined(self)) {
        /#
            assert(0);
        #/
        return 0;
    }
    checkdistance = level.var_67432513;
    checks = [3:(checkdistance * -1, 0, self.origin[2]), 2:(checkdistance, 0, self.origin[2]), 1:(0, checkdistance * -1, self.origin[2]), 0:(0, checkdistance, self.origin[2])];
    foreach (check in checks) {
        var_3a1904d3 = function_9cc082d2(self.origin + check, 10000);
        if (!isdefined(var_3a1904d3)) {
            return 1;
        }
        if (oob::chr_party(var_3a1904d3[#"point"])) {
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x6 linked
// Checksum 0xe58fa219, Offset: 0x1510
// Size: 0x334
function private function_87a78a13() {
    var_b75abae3 = isdefined(self.var_a2d52f9d) ? self.var_a2d52f9d / self.var_bf5103a8 : level.var_7108bd31 / self.var_bf5103a8;
    if (self.var_261dd536 >= 2) {
        var_95db50bf = self.var_8e392e0f + self.var_91017512;
        var_9ef53eb3 = self.var_8e392e0f / level.var_cd139dc0;
        var_ac2ef1c2 = var_95db50bf / level.var_cd139dc0;
        self thread function_6941b393(var_9ef53eb3, var_ac2ef1c2, var_b75abae3);
    }
    maxindex = 0;
    for (i = 0; i < self.var_261dd536; i++) {
        maxindex = maxindex + self.var_fa06c0e[i].size;
    }
    var_806fff0a = int(maxindex * level.var_35b75d82);
    var_1082b7c4 = var_b75abae3 / var_806fff0a;
    for (i = 0; i < var_806fff0a; i++) {
        wait(var_1082b7c4);
        index = randomint(maxindex);
        maxindex--;
        for (j = 0; j < self.var_261dd536; j++) {
            if (index < self.var_fa06c0e[j].size) {
                origin = self.var_fa06c0e[j][index];
                self.var_fa06c0e[j][index] = self.var_fa06c0e[j][self.var_fa06c0e[j].size - 1];
                self.var_fa06c0e[j][self.var_fa06c0e[j].size - 1] = undefined;
                var_5162de87 = self function_2be7a212(j, origin);
                var_5162de87 thread function_60c3117b(0.1, 1, 5, 0);
                break;
            } else {
                index = index - self.var_fa06c0e[j].size;
            }
        }
        if (is_true(self.var_3dde41e2) && isdefined(var_5162de87)) {
            util::wait_network_frame(1);
            if (isdefined(var_5162de87)) {
                var_5162de87 clientfield::set("ftdb_zoneCircle", 0);
            }
        }
    }
    if (self.var_261dd536 >= 2) {
        self thread function_f8afee63(self.var_261dd536 - 2);
    }
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x6 linked
// Checksum 0xe9fc05d2, Offset: 0x1850
// Size: 0x204
function private function_5c839f44() {
    var_b75abae3 = level.var_de7aa071 / (self.var_bf5103a8 + 1);
    if (self.var_261dd536 + 1 < self.var_bf5103a8) {
        var_95db50bf = self.var_8e392e0f - self.var_91017512;
        var_9ef53eb3 = self.var_8e392e0f / level.var_cd139dc0;
        var_ac2ef1c2 = var_95db50bf / level.var_cd139dc0;
        if (self.var_261dd536 > 0) {
            self thread function_6941b393(var_9ef53eb3, var_ac2ef1c2, var_b75abae3);
        } else {
            self thread function_6941b393(var_9ef53eb3, var_ac2ef1c2, var_b75abae3 * 2);
        }
    }
    maxindex = self.var_e17ae8be[self.var_261dd536].size;
    var_7a62ca2 = self.var_261dd536 - 1;
    if (var_7a62ca2 >= 0) {
        for (i = 0; i < self.var_3401d807[var_7a62ca2].size; i++) {
            var_5162de87 = self function_2be7a212(var_7a62ca2, self.var_3401d807[var_7a62ca2][i]);
        }
    }
    if (maxindex == 0) {
        wait(var_b75abae3);
    } else {
        var_7158f69 = maxindex - 1;
        var_1082b7c4 = var_b75abae3 / maxindex;
        for (i = var_7158f69; i >= 0; i--) {
            wait(var_1082b7c4);
            self thread function_40c81ea4(self.var_261dd536, i);
        }
    }
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 1, eflags: 0x6 linked
// Checksum 0x9a222ca7, Offset: 0x1a60
// Size: 0x16e
function private function_f8afee63(var_d9612d9) {
    self endon(#"death");
    level endon(#"game_ended");
    for (i = self.var_fa06c0e[var_d9612d9].size - 1; i >= 0; i--) {
        self.var_fa06c0e[var_d9612d9][i] = undefined;
    }
    for (i = self.var_e17ae8be[var_d9612d9].size - 1; i >= 0; i--) {
        self.var_e17ae8be[var_d9612d9][i].model clientfield::set("ftdb_zoneCircle", 4);
        self.var_3401d807[var_d9612d9][self.var_3401d807[var_d9612d9].size] = self.var_e17ae8be[var_d9612d9][i].model.origin;
        util::wait_network_frame(1);
        self.var_e17ae8be[var_d9612d9][i].model delete();
        self.var_e17ae8be[var_d9612d9][i] = undefined;
    }
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 2, eflags: 0x6 linked
// Checksum 0x4bb61237, Offset: 0x1bd8
// Size: 0x1b2
function private function_2be7a212(var_d9612d9, origin) {
    origin = function_b4c74561(origin + vectorscale((0, 0, 1), 16));
    var_70a055ba = self.var_e17ae8be[var_d9612d9].size;
    self.var_e17ae8be[var_d9612d9][var_70a055ba] = {};
    self.var_e17ae8be[var_d9612d9][var_70a055ba].origin = origin;
    self.var_e17ae8be[var_d9612d9][var_70a055ba].model = spawn("script_model", origin);
    self.var_e17ae8be[var_d9612d9][var_70a055ba].model.team = #"neutral";
    self.var_e17ae8be[var_d9612d9][var_70a055ba].model setmodel("tag_origin");
    self.var_e17ae8be[var_d9612d9][var_70a055ba].model clientfield::set("ftdb_zoneCircle", 1);
    self.var_e17ae8be[var_d9612d9][var_70a055ba].model.var_2c8491dd = self;
    self.var_e17ae8be[var_d9612d9][var_70a055ba].model setforcenocull();
    return self.var_e17ae8be[var_d9612d9][var_70a055ba].model;
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 1, eflags: 0x6 linked
// Checksum 0xefb36e70, Offset: 0x1d98
// Size: 0x196
function private function_b4c74561(origin) {
    var_9912c765 = vectorscale((0, 0, 1), 200);
    attempts = 1;
    var_a468ec72 = bullettrace(origin + var_9912c765, origin, 0, self);
    var_68011b79 = bullettrace(origin, origin - var_9912c765, 0, self);
    while (var_68011b79[#"fraction"] == 1 && var_a468ec72[#"fraction"] == 1 && attempts < 10) {
        var_a468ec72 = bullettrace(origin + var_9912c765 * (attempts + 1), origin + var_9912c765 * attempts, 0, self);
        var_68011b79 = bullettrace(origin - var_9912c765 * attempts, origin - var_9912c765 * (attempts + 1), 0, self);
        attempts++;
    }
    if (var_68011b79[#"fraction"] <= var_a468ec72[#"fraction"]) {
        origin = var_68011b79[#"position"];
    } else {
        origin = var_a468ec72[#"position"];
    }
    return origin;
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 4, eflags: 0x6 linked
// Checksum 0xb6de32a3, Offset: 0x1f38
// Size: 0x1f4
function private function_60c3117b(var_70cc0d15, var_5ad0dc76, duration, var_8253fe22) {
    self endon(#"death");
    level endon(#"game_ended");
    starttime = gettime();
    if (var_70cc0d15 < 0.1) {
        var_70cc0d15 = 0.1;
    }
    self setscale(var_8253fe22 ? var_70cc0d15 / 10 : var_70cc0d15);
    waitframe(1);
    while (gettime() < starttime + int(duration * 1000)) {
        var_1007824a = (gettime() - starttime) / int(duration * 1000);
        scale = var_70cc0d15 + var_1007824a * (var_5ad0dc76 - var_70cc0d15);
        if (scale < 0.1) {
            self setscale(0.1);
            return;
        }
        self setscale(var_8253fe22 ? scale / 10 : scale);
        if (var_8253fe22) {
            self.var_2c8491dd.var_8e392e0f = level.var_cd139dc0 * scale;
        } else {
            self.var_301e0bf7 = scale * self.var_2c8491dd.circleradius;
        }
        waitframe(1);
    }
    self setscale(var_8253fe22 ? var_5ad0dc76 / 10 : var_5ad0dc76);
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 3, eflags: 0x6 linked
// Checksum 0xb983d76d, Offset: 0x2138
// Size: 0xc4
function private function_6941b393(var_70cc0d15, var_4dad59c0, duration) {
    self endon(#"death");
    level endon(#"game_ended");
    if (is_true(self.var_3dde41e2)) {
        self.var_b06ed2fa function_60c3117b(var_70cc0d15, var_4dad59c0, duration, 1);
        return;
    }
    var_65bcb0ae = duration / 2;
    wait(var_65bcb0ae);
    self.var_b06ed2fa function_60c3117b(var_70cc0d15, var_4dad59c0, var_65bcb0ae, 1);
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 2, eflags: 0x6 linked
// Checksum 0x205d196d, Offset: 0x2208
// Size: 0xac
function private function_40c81ea4(var_d9612d9, circleindex) {
    self endon(#"death");
    level endon(#"game_ended");
    var_867cdc1a = self.var_e17ae8be[var_d9612d9][circleindex];
    if (!isdefined(var_867cdc1a.model)) {
        return;
    }
    var_867cdc1a.model function_60c3117b(1, 0.1, 5, 0);
    self function_7886d66d(var_d9612d9, var_867cdc1a);
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 2, eflags: 0x6 linked
// Checksum 0xb98b9b31, Offset: 0x22c0
// Size: 0x92
function private function_7886d66d(var_d9612d9, var_867cdc1a) {
    var_867cdc1a.model clientfield::set("ftdb_zoneCircle", 4);
    util::wait_network_frame(1);
    var_867cdc1a.model delete();
    self.var_e17ae8be[var_d9612d9][self.var_e17ae8be[var_d9612d9].size - 1] = undefined;
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x6 linked
// Checksum 0x3032840e, Offset: 0x2360
// Size: 0x6e
function private function_ea7ab3a9() {
    if (isdefined(self.var_b06ed2fa)) {
        self.var_b06ed2fa clientfield::set("ftdb_zoneCircle", 4);
        util::wait_network_frame(1);
        self.var_b06ed2fa delete();
        self.var_b06ed2fa = undefined;
    }
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x0
// Checksum 0xe0af0fcc, Offset: 0x23d8
// Size: 0x140
function function_904efdb8() {
    for (i = 0; i < 4; i++) {
        foreach (var_9bbce2cd in level.var_ac7be286) {
            if (i == 0) {
                var_9bbce2cd thread function_f8afee63(var_9bbce2cd.var_261dd536 - 1);
                var_9bbce2cd thread function_f8afee63(var_9bbce2cd.var_261dd536 - 2);
            }
            var_9bbce2cd.var_261dd536++;
            var_9bbce2cd.var_a2d52f9d.var_9bbce2cd = 20 * var_9bbce2cd.var_bf5103a8;
            var_9bbce2cd.var_3dde41e2.var_9bbce2cd = 1;
            var_9bbce2cd thread function_87a78a13();
        }
        wait(20.1);
    }
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x4
// Checksum 0x6db29cd5, Offset: 0x2520
// Size: 0x4d4
function private function_64d94faa() {
    /#
        level endon(#"game_ended");
        level.var_8c48fd1 = 0;
        level.var_a0cb7a38 = [];
        while (1) {
            waitframe(1);
            level.var_2c9f7c6b = isdefined(getgametypesetting(#"hash_1cf5e61c49992dc3")) ? getgametypesetting(#"hash_1cf5e61c49992dc3") : 0;
            level.var_cd139dc0 = (isdefined(getgametypesetting(#"hash_7f837b709840950")) ? getgametypesetting(#"hash_7f837b709840950") : 0) * 100;
            level.var_67432513 = (isdefined(getgametypesetting(#"hash_6cd4374035db175e")) ? getgametypesetting(#"hash_6cd4374035db175e") : 0) * 100;
            level.var_d18d7655 = (isdefined(getgametypesetting(#"hash_786ee581eedabff0")) ? getgametypesetting(#"hash_786ee581eedabff0") : 0) * 100;
            level.var_7108bd31 = isdefined(getgametypesetting(#"hash_eff3a2f99071600")) ? getgametypesetting(#"hash_eff3a2f99071600") : 0;
            level.var_c0839e43 = isdefined(getgametypesetting(#"hash_162ebc3912b68841")) ? getgametypesetting(#"hash_162ebc3912b68841") : 0;
            level.var_de7aa071 = isdefined(getgametypesetting(#"hash_570912155889089e")) ? getgametypesetting(#"hash_570912155889089e") : 0;
            level.var_aa6b51f5 = isdefined(getgametypesetting(#"hash_5d04a19b625d7300")) ? getgametypesetting(#"hash_5d04a19b625d7300") : 0;
            level.var_35b75d82 = isdefined(getgametypesetting(#"hash_371e83f096bf0548")) ? getgametypesetting(#"hash_371e83f096bf0548") : 0;
            level.var_380f7d22 = getdvarint(#"hash_59bc959721744fcb", 200);
            players = getplayers();
            foreach (player in players) {
                if (player usebuttonpressed() && !is_true(level.var_a0cb7a38[level.var_8c48fd1])) {
                    level.var_2f418a15[level.var_8c48fd1] thread function_33e28605(level.var_8c48fd1);
                    level.var_8c48fd1++;
                    level.var_8c48fd1 = level.var_8c48fd1 % 3;
                    wait(0.5);
                }
            }
        }
    #/
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 1, eflags: 0x4
// Checksum 0xe53b8d79, Offset: 0x2a00
// Size: 0xb4
function private function_33e28605(var_f07efec7) {
    /#
        level.var_a0cb7a38[var_f07efec7] = 1;
        level.var_ac7be286[level.var_ac7be286.size] = self;
        self function_6a583613();
        if (getdvarint(#"hash_1216cbfbf11758ce", 0)) {
            self thread function_3d8141ab();
        }
        self function_57172b7();
        level.var_a0cb7a38[var_f07efec7] = 0;
    #/
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x4
// Checksum 0x67b80d75, Offset: 0x2ac0
// Size: 0x206
function private function_3d8141ab() {
    /#
        level endon(#"game_ended");
        while (!isdefined(self.var_b06ed2fa)) {
            waitframe(1);
        }
        while (isdefined(self.var_b06ed2fa)) {
            var_1b8f1752 = self.var_b06ed2fa getscale();
            sphere(self.var_b06ed2fa.origin, level.var_cd139dc0 * var_1b8f1752 * 10, (0, 1, 0), 0.5, 1, 100, 1);
            foreach (ring in self.var_e17ae8be) {
                foreach (circle in ring) {
                    var_a13932b6 = circle.model getscale();
                    sphere(circle.model.origin, self.circleradius * var_a13932b6, (0, 1, 0), 0.5, 1, 100, 1);
                }
            }
            waitframe(1);
        }
    #/
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 1, eflags: 0x0
// Checksum 0xfe53af06, Offset: 0x2cd0
// Size: 0x160
function function_c6ce0ef0(structs) {
    /#
        foreach (struct in structs) {
            level.var_ac7be286[level.var_ac7be286.size] = struct;
            struct.var_8e392e0f.struct = struct.script_radius - 1200;
            struct.var_261dd536.struct = 0;
            struct function_cd602d73();
            var_b4ab8086 = struct.var_8e392e0f / level.var_cd139dc0 / 10;
            if (var_b4ab8086 > 10) {
                var_b4ab8086 = 10;
                level.players[0] iprintlnbold("<unknown string>");
            }
            struct.var_b06ed2fa setscale(var_b4ab8086);
        }
    #/
}

// Namespace namespace_b77e8eb1/namespace_b77e8eb1
// Params 0, eflags: 0x0
// Checksum 0x57c66495, Offset: 0x2e38
// Size: 0x9c
function function_366d6aba() {
    /#
        foreach (var_5aeec5ab in level.var_ac7be286) {
            var_5aeec5ab function_ea7ab3a9();
        }
        level.var_ac7be286 = [];
    #/
}


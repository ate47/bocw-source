// Atian COD Tools GSC CW decompiler test
#namespace gameobjects;

// Namespace gameobjects/namespace_87a60c47
// Params 0, eflags: 0x2 linked
// Checksum 0x775985e3, Offset: 0x80
// Size: 0xa2
function function_e553e480() {
    if (!isdefined(self.users)) {
        self.users = [];
    }
    self.var_a0ff5eb8 = 0;
    self.curprogress = 0;
    self.userate = 0;
    self.claimplayer = undefined;
    self.lastclaimtime = 0;
    self.claimgraceperiod = 0;
    self.mustmaintainclaim = 0;
    self.cancontestclaim = 0;
    self function_58901d83();
    self.var_5f35f19a = #"none";
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x2 linked
// Checksum 0x266e0eeb, Offset: 0x130
// Size: 0x92
function function_818d69ee(user) {
    if (!isdefined(self.users[user])) {
        self.users[user] = {};
    }
    if (!isdefined(self.users[user].touching)) {
        self.users[user].touching = {#num:0, #rate:0, #players:[]};
    }
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x2 linked
// Checksum 0x7d969afd, Offset: 0x1d0
// Size: 0x62
function function_136c2270(user) {
    if (!isdefined(self.users[user])) {
        self.users[user] = {};
    }
    if (!isdefined(self.users[user].contributors)) {
        self.users[user].contributors = [];
    }
}

// Namespace gameobjects/namespace_87a60c47
// Params 3, eflags: 0x2 linked
// Checksum 0xa014e257, Offset: 0x240
// Size: 0x134
function function_a1839d6b(user, player, key) {
    assert(isdefined(self.users[user]));
    assert(isdefined(self.users[user].contributors));
    if (!isdefined(self.users[user].contributors[key])) {
        contribution = {#player:player, #contribution:0};
        self.users[user].contributors[key] = contribution;
    } else {
        contribution = self.users[user].contributors[key];
    }
    if (!isdefined(contribution.player)) {
        contribution.player = player;
    }
    contribution.starttime = gettime();
    contribution.var_e22ea52b = 1;
    return self.users[user].contributors[key];
}

// Namespace gameobjects/namespace_87a60c47
// Params 0, eflags: 0x2 linked
// Checksum 0xc0104ace, Offset: 0x380
// Size: 0x7e
function function_98aae7cf() {
    foreach (user in self.users) {
        user.contributors = undefined;
    }
}

// Namespace gameobjects/namespace_87a60c47
// Params 0, eflags: 0x0
// Checksum 0x7b46c0d5, Offset: 0x408
// Size: 0x14c
function function_bd47b0c7() {
    function_98aae7cf();
    foreach (user_name, user in self.users) {
        if (user.touching.num > 0) {
            function_136c2270(user_name);
            foreach (var_5717fa0c, player in user.touching.players) {
                function_a1839d6b(user_name, player.player, var_5717fa0c);
            }
        }
    }
}

// Namespace gameobjects/namespace_87a60c47
// Params 2, eflags: 0x2 linked
// Checksum 0xe4c8d7ab, Offset: 0x560
// Size: 0x5c
function function_f30290b(user, key) {
    if (isdefined(self.users[user]) && isdefined(self.users[user].contributors)) {
        self.users[user].contributors[key] = undefined;
    }
}

// Namespace gameobjects/namespace_87a60c47
// Params 0, eflags: 0x0
// Checksum 0x4027fe1d, Offset: 0x5c8
// Size: 0xa0
function function_339d0e91() {
    total = 0;
    foreach (var_b2dad138 in self.users) {
        total += var_b2dad138.touching.num;
    }
    return total;
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x2 linked
// Checksum 0xb4b60280, Offset: 0x670
// Size: 0xb4
function function_3a7a2963(var_77efb18) {
    total = 0;
    foreach (user_name, var_b2dad138 in self.users) {
        if (user_name == var_77efb18) {
            continue;
        }
        total += var_b2dad138.touching.num;
    }
    return total;
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x2 linked
// Checksum 0x767beebf, Offset: 0x730
// Size: 0xa8
function function_3a29539b(var_77efb18) {
    foreach (user_name, var_b2dad138 in self.users) {
        if (user_name == var_77efb18) {
            continue;
        }
        if (var_b2dad138.touching.num > 0) {
            return true;
        }
    }
    return false;
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x2 linked
// Checksum 0xe16d1337, Offset: 0x7e0
// Size: 0x3e
function get_num_touching(user) {
    if (!isdefined(self.users[user])) {
        return 0;
    }
    return self.users[user].touching.num;
}

// Namespace gameobjects/namespace_87a60c47
// Params 0, eflags: 0x0
// Checksum 0xaeb037d6, Offset: 0x828
// Size: 0xea
function function_e4cad37() {
    var_95e19dc6 = [];
    foreach (user, var_c4f3dc93 in self.users) {
        if (var_c4f3dc93.touching.num > 0) {
            if (!isdefined(var_95e19dc6)) {
                var_95e19dc6 = [];
            } else if (!isarray(var_95e19dc6)) {
                var_95e19dc6 = array(var_95e19dc6);
            }
            var_95e19dc6[var_95e19dc6.size] = user;
        }
    }
    return var_95e19dc6;
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x2 linked
// Checksum 0x97141c4a, Offset: 0x920
// Size: 0x10
function function_4e3386a8(team) {
    return team;
}

// Namespace gameobjects/namespace_87a60c47
// Params 0, eflags: 0x2 linked
// Checksum 0x109a9235, Offset: 0x938
// Size: 0xa
function function_167d3a40() {
    return self.ownerteam;
}

// Namespace gameobjects/namespace_87a60c47
// Params 0, eflags: 0x2 linked
// Checksum 0x1083e4d2, Offset: 0x950
// Size: 0x5a
function function_b64fb43d() {
    user = self function_167d3a40();
    if (!isdefined(self.users[user])) {
        return 0;
    }
    return self.users[user].touching.num;
}

// Namespace gameobjects/namespace_87a60c47
// Params 2, eflags: 0x2 linked
// Checksum 0x79f2a0bf, Offset: 0x9b8
// Size: 0xa6
function function_22c9de38(user, count = 1) {
    assert(isdefined(self.users[user]));
    assert(isdefined(self.users[user].touching));
    self.users[user].touching.num = self.users[user].touching.num + count;
}

// Namespace gameobjects/namespace_87a60c47
// Params 2, eflags: 0x2 linked
// Checksum 0x1b362604, Offset: 0xa68
// Size: 0xe6
function function_26237f3c(user, count = 1) {
    assert(isdefined(self.users[user]));
    assert(isdefined(self.users[user].touching));
    self.users[user].touching.num = self.users[user].touching.num - count;
    if (self.users[user].touching.num < 1) {
        self.users[user].touching.num = 0;
    }
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x0
// Checksum 0x70ff2cf0, Offset: 0xb58
// Size: 0x1a
function function_5ea37c7c(func) {
    self.var_270e1029 = func;
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x0
// Checksum 0xfab40c4b, Offset: 0xb80
// Size: 0x4a
function function_83eda4c0(user) {
    var_5b1365c0 = self.users[user].touching.num;
    return self function_ce47d61c(var_5b1365c0);
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x2 linked
// Checksum 0x83bfe579, Offset: 0xbd8
// Size: 0xf4
function function_ce47d61c(var_5b1365c0 = 0) {
    assert(self.var_9288c4c0 <= self.usetime);
    if (self.maxusers > 0) {
        var_5b1365c0 = min(var_5b1365c0, self.maxusers);
    }
    if (var_5b1365c0 > 1) {
        var_b13b89f5 = (var_5b1365c0 - 1) / (self.maxusers - 1);
        var_e2f3a95a = 1 / self.var_9288c4c0 / self.usetime - 1;
        rate = 1 + var_b13b89f5 * var_e2f3a95a;
        return rate;
    }
    return var_5b1365c0;
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x2 linked
// Checksum 0xa6276cc2, Offset: 0xcd8
// Size: 0x152
function function_9f894584(user) {
    if (!isdefined(self.users[user])) {
        return 0;
    }
    if (isdefined(self.var_270e1029)) {
        return self [[ self.var_270e1029 ]](user);
    }
    if (self.var_a0ff5eb8) {
        userate = 0;
        if (self.users[user].touching.players.size > 0) {
            foreach (var_142bcc32 in self.users[user].touching.players) {
                if (isdefined(var_142bcc32.rate) && var_142bcc32.rate > userate) {
                    userate = var_142bcc32.rate;
                }
            }
        }
        return userate;
    }
    return self.users[user].touching.rate;
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x2 linked
// Checksum 0x1b970065, Offset: 0xe38
// Size: 0xb8
function function_a7dbb00b(var_77efb18) {
    rate = 0;
    foreach (user_name, _ in self.users) {
        if (user_name == var_77efb18) {
            continue;
        }
        rate += function_9f894584(user_name);
    }
    return rate;
}

// Namespace gameobjects/namespace_87a60c47
// Params 2, eflags: 0x2 linked
// Checksum 0x8752e786, Offset: 0xef8
// Size: 0x92
function function_21db7d02(numclaimants = 0, numother = 0) {
    if (numclaimants == numother || numclaimants < 0 || numother < 0) {
        return 0;
    }
    advantage = abs(numclaimants - numother);
    return self function_ce47d61c(advantage);
}

// Namespace gameobjects/namespace_87a60c47
// Params 2, eflags: 0x2 linked
// Checksum 0xf8131b6b, Offset: 0xf98
// Size: 0x96
function function_f1342bb2(user, rate) {
    assert(isdefined(self.users[user]));
    assert(isdefined(self.users[user].touching));
    self.users[user].touching.rate = self.users[user].touching.rate + rate;
}

// Namespace gameobjects/namespace_87a60c47
// Params 2, eflags: 0x2 linked
// Checksum 0xdd3de055, Offset: 0x1038
// Size: 0xd6
function function_27b84c22(user, rate) {
    assert(isdefined(self.users[user]));
    assert(isdefined(self.users[user].touching));
    self.users[user].touching.rate = self.users[user].touching.rate - rate;
    if (self.users[user].touching.num < 1) {
        self.users[user].touching.rate = 0;
    }
}

// Namespace gameobjects/namespace_87a60c47
// Params 4, eflags: 0x2 linked
// Checksum 0xbe7f0706, Offset: 0x1118
// Size: 0xb8
function function_fdf87288(user, player, var_8a3ae0a0, var_5717fa0c) {
    assert(isdefined(self.users[user]));
    assert(isdefined(self.users[user].touching));
    self.users[user].touching.players[var_5717fa0c] = {#player:player, #rate:var_8a3ae0a0, #starttime:gettime()};
}

// Namespace gameobjects/namespace_87a60c47
// Params 2, eflags: 0x2 linked
// Checksum 0xcd978244, Offset: 0x11d8
// Size: 0x78
function function_472b3c15(user, var_5717fa0c) {
    assert(isdefined(self.users[user]));
    assert(isdefined(self.users[user].touching));
    self.users[user].touching.players[var_5717fa0c] = undefined;
}

// Namespace gameobjects/namespace_87a60c47
// Params 2, eflags: 0x6 linked
// Checksum 0x9aeb8aca, Offset: 0x1258
// Size: 0x9c
function private is_player_touching(var_9b6a15e9, player) {
    foreach (var_233ec7cb in var_9b6a15e9) {
        if (var_233ec7cb.player == player) {
            return true;
        }
    }
    return false;
}

// Namespace gameobjects/namespace_87a60c47
// Params 2, eflags: 0x0
// Checksum 0xd98d6cfb, Offset: 0x1300
// Size: 0xb6
function function_73944efe(var_9b6a15e9, touch) {
    if (!isdefined(touch.player)) {
        return undefined;
    }
    if (!isplayer(touch.player)) {
        owner = touch.player.owner;
        if (isdefined(owner) && isplayer(owner)) {
            if (!is_player_touching(var_9b6a15e9, owner)) {
                return owner;
            }
        }
    } else {
        return touch.player;
    }
    return undefined;
}

// Namespace gameobjects/namespace_87a60c47
// Params 2, eflags: 0x2 linked
// Checksum 0x199dabce, Offset: 0x13c0
// Size: 0x2c
function function_ebffa9f6(obj_id, team) {
    objective_setteam(obj_id, team);
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x2 linked
// Checksum 0x92c1d16e, Offset: 0x13f8
// Size: 0x24
function function_33420053(obj_id) {
    function_6da98133(obj_id);
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x2 linked
// Checksum 0xebeccaa8, Offset: 0x1428
// Size: 0x24
function function_311b7785(obj_id) {
    function_4339912c(obj_id);
}

// Namespace gameobjects/namespace_87a60c47
// Params 2, eflags: 0x2 linked
// Checksum 0x67b755aa, Offset: 0x1458
// Size: 0x2c
function function_e3cc1e96(obj_id, team) {
    function_29ef32ee(obj_id, team);
}

// Namespace gameobjects/namespace_87a60c47
// Params 2, eflags: 0x2 linked
// Checksum 0x55f6366d, Offset: 0x1490
// Size: 0x2c
function function_6c27e90c(obj_id, team) {
    function_c939fac4(obj_id, team);
}

// Namespace gameobjects/namespace_87a60c47
// Params 0, eflags: 0x2 linked
// Checksum 0xbbd70f2e, Offset: 0x14c8
// Size: 0x2a
function function_58901d83() {
    self.var_5f35f19a = self.var_a4926509;
    self.var_a4926509 = #"none";
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x2 linked
// Checksum 0x6faf22df, Offset: 0x1500
// Size: 0x28
function function_7db44d1b(user) {
    if (user != #"none") {
        return true;
    }
    return false;
}

// Namespace gameobjects/namespace_87a60c47
// Params 0, eflags: 0x2 linked
// Checksum 0x4f2fc225, Offset: 0x1530
// Size: 0x1a
function function_350d0352() {
    return function_7db44d1b(self.var_a4926509);
}

// Namespace gameobjects/namespace_87a60c47
// Params 0, eflags: 0x2 linked
// Checksum 0xae75ca85, Offset: 0x1558
// Size: 0x1a
function function_3e092344() {
    return function_7db44d1b(self.var_5f35f19a);
}

// Namespace gameobjects/namespace_87a60c47
// Params 0, eflags: 0x2 linked
// Checksum 0x17c3af44, Offset: 0x1580
// Size: 0xa
function function_14fccbd9() {
    return self.var_a4926509;
}

// Namespace gameobjects/namespace_87a60c47
// Params 1, eflags: 0x2 linked
// Checksum 0xe3aad2ac, Offset: 0x1598
// Size: 0x34
function function_4b64b7fd(team) {
    if (!isdefined(self.var_a4926509)) {
        return false;
    }
    if (team == self.var_a4926509) {
        return true;
    }
    return false;
}

// Namespace gameobjects/namespace_87a60c47
// Params 0, eflags: 0x2 linked
// Checksum 0x2f8511f5, Offset: 0x15d8
// Size: 0x30
function function_abe3458c() {
    if (!isdefined(self.var_a4926509)) {
        return false;
    }
    if (self.ownerteam == self.var_a4926509) {
        return true;
    }
    return false;
}

// Namespace gameobjects/namespace_87a60c47
// Params 0, eflags: 0x2 linked
// Checksum 0xf4d168e1, Offset: 0x1610
// Size: 0x42
function function_abb86400() {
    if (self.ownerteam != #"neutral" && self.ownerteam != #"none") {
        return true;
    }
    return false;
}


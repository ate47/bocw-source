// Atian COD Tools GSC CW decompiler test
#using script_113dd7f0ea2a1d4f;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_2a9f256a;

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 0, eflags: 0x0
// Checksum 0xe2967e82, Offset: 0xd8
// Size: 0x5c
function init() {
    callback::on_connect(&on_player_connect);
    callback::on_item_pickup(&on_item_pickup);
    /#
        level thread add_devgui();
    #/
}

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 0, eflags: 0x0
// Checksum 0x7dc362ed, Offset: 0x140
// Size: 0x1a
function on_player_connect() {
    self.var_595a11bc = 0;
    self.var_72d64cfd = 0;
}

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 1, eflags: 0x0
// Checksum 0x2eedfb67, Offset: 0x168
// Size: 0x1ec
function on_item_pickup(s_params) {
    var_a6762160 = s_params.item.var_a6762160;
    if (var_a6762160.itemtype === #"hash_3a094c949a87214d") {
        if (isplayer(self)) {
            e_player = self;
        } else {
            e_player = s_params.player;
        }
        rarity = var_a6762160.rarity;
        if (var_a6762160.name === #"hash_595bb7a30746b8f2") {
            var_595a11bc = 25 * var_a6762160.amount;
            e_player function_a6d4221f(var_595a11bc);
        } else if (var_a6762160.name === #"hash_1824627ee79fed84") {
            var_595a11bc = 300 * var_a6762160.amount;
            e_player function_afab250a(var_595a11bc);
        } else if (rarity === #"rare") {
            var_595a11bc = 10 * var_a6762160.amount;
            e_player function_a6d4221f(var_595a11bc);
        } else if (var_a6762160.name === #"hash_4a604970e6ceeee") {
            e_player function_afab250a(200);
        } else {
            var_595a11bc = 50 * var_a6762160.amount;
            e_player function_afab250a(var_595a11bc);
        }
    }
}

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 0, eflags: 0x0
// Checksum 0xcde335e0, Offset: 0x360
// Size: 0xa
function function_efd1d093() {
    return self.var_72d64cfd;
}

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 0, eflags: 0x0
// Checksum 0xe28a209a, Offset: 0x378
// Size: 0xa
function function_6f3fd157() {
    return self.var_595a11bc;
}

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 2, eflags: 0x0
// Checksum 0x4072dc1f, Offset: 0x390
// Size: 0x74
function function_afab250a(var_595a11bc, var_60460256 = 0) {
    if (isdefined(self.var_595a11bc)) {
        self.var_595a11bc = int(self.var_595a11bc + var_595a11bc);
        self function_b802c7fc(0, 0, var_60460256);
    }
}

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 2, eflags: 0x0
// Checksum 0x858b836e, Offset: 0x410
// Size: 0x74
function function_a6d4221f(var_72d64cfd, var_60460256 = 0) {
    if (isdefined(self.var_72d64cfd)) {
        self.var_72d64cfd = int(self.var_72d64cfd + var_72d64cfd);
        self function_b802c7fc(1, 0, var_60460256);
    }
}

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 1, eflags: 0x0
// Checksum 0x3b5bcbc8, Offset: 0x490
// Size: 0x6c
function function_3610299b(var_595a11bc) {
    var_595a11bc = self.var_595a11bc - var_595a11bc;
    var_595a11bc = max(var_595a11bc, 0);
    self.var_595a11bc = int(var_595a11bc);
    self function_b802c7fc(0, 1);
}

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 1, eflags: 0x0
// Checksum 0x481f6800, Offset: 0x508
// Size: 0x6c
function function_8bfa3267(var_72d64cfd) {
    var_72d64cfd = self.var_72d64cfd - var_72d64cfd;
    var_72d64cfd = max(var_72d64cfd, 0);
    self.var_72d64cfd = int(var_72d64cfd);
    self function_b802c7fc(1, 1);
}

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 1, eflags: 0x0
// Checksum 0xe896de5f, Offset: 0x580
// Size: 0x146
function function_30398155(var_595a11bc) {
    var_f791b58e = int(var_595a11bc);
    switch (var_f791b58e) {
    case 10:
        id = 1;
        break;
    case 20:
        id = 2;
        break;
    case 50:
        id = 3;
        break;
    case 100:
        id = 4;
        break;
    case 250:
        id = 5;
        break;
    case 500:
        id = 6;
        break;
    case 1000:
        id = 7;
        break;
    case 5000:
        id = 8;
        break;
    case #"hash_defdefdefdefdef0":
        id = 0;
        break;
    }
    return id;
}

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 1, eflags: 0x0
// Checksum 0xf5533885, Offset: 0x6d0
// Size: 0x54
function function_c29a8aa1(cost) {
    var_88daa75e = self function_6f3fd157();
    var_ee2422c5 = var_88daa75e - cost;
    if (var_ee2422c5 >= 0) {
        return 1;
    }
    return 0;
}

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 1, eflags: 0x0
// Checksum 0x7c34329c, Offset: 0x730
// Size: 0x54
function function_415b1e(cost) {
    var_88daa75e = self function_efd1d093();
    var_ee2422c5 = var_88daa75e - cost;
    if (var_ee2422c5 >= 0) {
        return 1;
    }
    return 0;
}

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 3, eflags: 0x0
// Checksum 0xcb29c133, Offset: 0x790
// Size: 0x134
function function_b802c7fc(var_af05f9a2 = 0, take = 0, var_60460256 = 0) {
    if (!isalive(self)) {
        return;
    }
    self clientfield::set_player_uimodel("hudItems.scrap", isdefined(self.var_595a11bc) ? self.var_595a11bc : 0);
    self clientfield::set_player_uimodel("hudItems.rareScrap", isdefined(self.var_72d64cfd) ? self.var_72d64cfd : 0);
    self.killsconfirmed = self.var_595a11bc;
    self.killsdenied = self.var_72d64cfd;
    if (!take && !var_60460256) {
        if (var_af05f9a2) {
            self hud::function_32de5fc7();
        } else {
            self hud::function_8577b83e();
        }
    }
}

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 0, eflags: 0x0
// Checksum 0xf6e22ed3, Offset: 0x8d0
// Size: 0x5c
function add_devgui() {
    /#
        waittill_can_add_debug_command();
        level thread function_27fca01f();
        cmd = "<unknown string>";
        adddebugcommand(cmd);
    #/
}

// Namespace namespace_2a9f256a/namespace_2a9f256a
// Params 0, eflags: 0x0
// Checksum 0x8b7bbb47, Offset: 0x938
// Size: 0xe0
function function_27fca01f() {
    /#
        while (1) {
            if (getdvarint(#"hash_5499eefe1f37aa95", 0)) {
                setdvar(#"hash_5499eefe1f37aa95", 0);
                thread_all(function_a1ef346b(), &function_afab250a, 5000);
                thread_all(function_a1ef346b(), &function_a6d4221f, 5000);
            }
            wait(0.1);
        }
    #/
}


// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\bb.gsc;
#using scripts\cp_common\util.gsc;
#using script_35ae72be7b4fec10;
#using script_4ccd0c3512b52a10;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using script_37f9ff47f340fbe8;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace prompts;

// Namespace prompts/prompts
// Params 0, eflags: 0x5
// Checksum 0xffe5422c, Offset: 0x3b8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"prompts", &preload, undefined, undefined, undefined);
}

// Namespace prompts/prompts
// Params 0, eflags: 0x6 linked
// Checksum 0xd9fee6e0, Offset: 0x400
// Size: 0xcdc
function private preload() {
    level.prompts[#"use"] = {#button_text:#"hash_5797cba717dc64d5", #var_92bb1cb1:&function_99bb5bbe, #var_9a98e590:&function_ab46a161, #notify_string:"trigger"};
    level.prompts[#"hash_794885d9482cb75e"] = {#button_action:#"hash_100ec99123fe5092", #button_text:#"hash_5797cba717dc64d5", #var_92bb1cb1:&function_99bb5bbe, #var_9a98e590:&function_ab46a161, #notify_string:"trigger"};
    level.prompts[#"melee"] = {#button_text:#"hash_18d0a7d5aff08dd8", #var_92bb1cb1:&function_99bb5bbe, #var_9a98e590:&function_ab46a161, #notify_string:"damage"};
    level.prompts[#"hash_3c5c65155dfb1731"] = {#button_action:#"hash_2d1efe88663d0c48", #button_text:#"hash_18d0a7d5aff08dd8", #var_92bb1cb1:&function_99bb5bbe, #var_9a98e590:&function_ab46a161, #notify_string:"grab"};
    level.prompts[#"attack"] = {#button_text:#"hash_3c124085ee45de36", #var_92bb1cb1:&function_99bb5bbe, #var_9a98e590:&function_ab46a161, #notify_string:"attack"};
    level.prompts[#"reload"] = {#button_text:#"hash_27324f18b09b7a6d", #var_92bb1cb1:&function_99bb5bbe, #var_9a98e590:&function_ab46a161, #notify_string:"reload"};
    level.prompts[#"frag"] = {#button_text:#"hash_c7de853806860ce", #var_92bb1cb1:&function_99bb5bbe, #var_9a98e590:&function_ab46a161, #notify_string:"frag"};
    level.prompts[#"stance"] = {#button_text:#"hash_34ccc944003048fe", #var_92bb1cb1:&function_99bb5bbe, #var_9a98e590:&function_ab46a161, #notify_string:"stance", #var_b753c5a5:"BUTTON_BIT_ANY_DOWN"};
    level.prompts[#"weapnext"] = {#button_text:#"hash_4b3f0bed118eaaf1", #var_92bb1cb1:&function_99bb5bbe, #var_9a98e590:&function_ab46a161, #notify_string:"weapnext"};
    level.prompts[#"ads"] = {#button_text:#"hash_41f7ff5095b74d02", #var_92bb1cb1:&function_99bb5bbe, #var_9a98e590:&function_ab46a161, #notify_string:"aim"};
    level.prompts[#"hash_400c7c122bc26dec"] = {#button_text:#"hash_6a2aef10bb120a0d", #var_92bb1cb1:&function_99bb5bbe, #var_9a98e590:&function_ab46a161, #notify_string:"attack"};
    level.prompts[#"confirm"] = {#button_text:#"hash_686cc531969c8555", #var_92bb1cb1:&function_eee54dd8, #var_9a98e590:&function_ab46a161, #notify_string:"select", #var_e4c7b05f:#"hash_7179662091387b23"};
    level.prompts[#"cancel"] = {#button_text:#"hash_2ac0a4c8c1d0c8d", #var_92bb1cb1:&function_eee54dd8, #var_9a98e590:&function_ab46a161, #notify_string:"cancel", #var_e4c7b05f:#"hash_2eb2f3b39714ea5f"};
    level.prompts[#"alt1"] = {#button_text:#"hash_1fb4a5c9d34c7339", #var_92bb1cb1:&function_eee54dd8, #var_9a98e590:&function_ab46a161, #notify_string:"alt1", #var_e4c7b05f:#"hash_7179672091387cd6", #var_a4594058:7, #var_b35ba5c:"MOUSE2"};
    level.prompts[#"alt2"] = {#button_text:#"hash_7b5f7a069d7cd3a", #var_92bb1cb1:&function_eee54dd8, #var_9a98e590:&function_ab46a161, #notify_string:"alt2", #var_e4c7b05f:#"hash_7179682091387e89", #var_a4594058:8, #var_b35ba5c:"MOUSE3"};
    level.var_a8ea96e8 = [];
    level.var_6a7fb742 = &function_c97a48c7;
    level.var_a29d8d23 = &function_a4cf2cde;
    level.var_3626dfc = &remove;
    level.var_503dffcb = [];
    callback::on_spawned(&on_player_spawned);
    util::init_dvar("cg_cpMaxHoldDurationIgnore", 0, &function_5baa8d71);
    /#
        util::init_dvar("<unknown string>", 0, &function_db698ba5);
        util::init_dvar("<unknown string>", 0, &function_db698ba5);
        util::init_dvar("<unknown string>", 0, &function_db698ba5);
        util::init_dvar("<unknown string>", 0, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", 0, &function_db698ba5);
        util::init_dvar("<unknown string>", "<unknown string>", &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
    #/
}

// Namespace prompts/prompts
// Params 1, eflags: 0x6 linked
// Checksum 0xfb5e9ce8, Offset: 0x10e8
// Size: 0x28
function private function_5baa8d71(dvar) {
    level.var_503dffcb[dvar.name] = dvar.value;
}

/#

    // Namespace prompts/prompts
    // Params 1, eflags: 0x4
    // Checksum 0x75add66b, Offset: 0x1118
    // Size: 0x2c
    function private function_db698ba5(dvar) {
        level.var_a48f9f79[dvar.name] = dvar.value;
    }

#/

// Namespace prompts/prompts
// Params 0, eflags: 0x2 linked
// Checksum 0xc66db3de, Offset: 0x1150
// Size: 0xca
function on_player_spawned() {
    self endon(#"death");
    if (!isdefined(self.var_b3c804a4)) {
        self.var_b3c804a4 = [];
    }
    time_interval = 1;
    var_f08f2050 = pow(528 * time_interval, 2);
    while (true) {
        last_pos = self.origin;
        wait(time_interval);
        if (distancesquared(self.origin, last_pos) > var_f08f2050) {
            self notify(#"teleported");
        }
    }
}

// Namespace prompts/prompts
// Params 5, eflags: 0x0
// Checksum 0x1bd531a9, Offset: 0x1228
// Size: 0x84
function register(prompt, var_92bb1cb1, button_text, notify_string, var_9a98e590) {
    level.prompts[prompt] = {#button_text:button_text, #var_92bb1cb1:var_92bb1cb1, #var_9a98e590:var_9a98e590, #notify_string:notify_string};
}

// Namespace prompts/prompts
// Params 18, eflags: 0x2 linked
// Checksum 0x79a4dc14, Offset: 0x12b8
// Size: 0x1ec
function create(prompt = #"use", var_4d98c3ce, complete_callback, var_531201f1, notify_string, offset, tag, var_754bedbb, var_de6f0004, var_4ac77177, var_71b9f0c0, var_87c991f3, var_5e83875a, var_8ce60046, var_9a27c4ee, var_be77841a, flags, var_c9643122) {
    var_248cbbcf = {#var_4d98c3ce:var_4d98c3ce, #complete_callback:complete_callback, #var_531201f1:var_531201f1, #notify_string:notify_string, #offset:offset, #tag:tag, #var_754bedbb:var_754bedbb, #var_de6f0004:var_de6f0004, #var_4ac77177:var_4ac77177, #var_71b9f0c0:var_71b9f0c0, #var_87c991f3:var_87c991f3, #var_5e83875a:var_5e83875a, #var_8ce60046:var_8ce60046, #var_9a27c4ee:var_9a27c4ee, #var_be77841a:var_be77841a, #flags:flags, #var_c9643122:var_c9643122};
    self function_c97a48c7(prompt, var_248cbbcf);
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x9b79eb7a, Offset: 0x14b0
// Size: 0x644
function function_c97a48c7(prompt, var_248cbbcf) {
    assert(isdefined(prompt), "<unknown string>");
    assert(isdefined(level.prompts[prompt]), "<unknown string>");
    assert(isentity(self) || isstruct(self) && isdefined(self.origin) && isdefined(self.angles), "<unknown string>");
    self remove(prompt, 1);
    var_a23c5e1 = !isdefined(self.var_3e95b88f);
    if (!isdefined(self.var_3e95b88f)) {
        self.var_3e95b88f = {};
    }
    if (!isdefined(self.var_3e95b88f.prompts)) {
        self.var_3e95b88f.prompts = [];
    }
    if (!isdefined(self.var_3e95b88f.var_294a441e)) {
        self.var_3e95b88f.var_294a441e = [];
    }
    if (!isdefined(self.var_3e95b88f.hud)) {
        self.var_3e95b88f.hud = isplayer(self);
    }
    if (var_248cbbcf.var_de6f0004 === 0.25) {
        var_248cbbcf.var_de6f0004 = undefined;
    }
    if (var_248cbbcf.var_4ac77177 === 0.1) {
        var_248cbbcf.var_4ac77177 = undefined;
    }
    if (var_248cbbcf.var_71b9f0c0 === 240) {
        var_248cbbcf.var_71b9f0c0 = undefined;
    }
    if (var_248cbbcf.var_9c89c587 === 0) {
        var_248cbbcf.var_9c89c587 = undefined;
    }
    if (var_248cbbcf.var_f17a78a7 === 180) {
        var_248cbbcf.var_f17a78a7 = undefined;
    }
    if (var_248cbbcf.var_87c991f3 === 85) {
        var_248cbbcf.var_87c991f3 = undefined;
    }
    if (var_248cbbcf.var_5e83875a === 30) {
        var_248cbbcf.var_5e83875a = undefined;
    }
    if (var_248cbbcf.var_7faab93d === 1) {
        var_248cbbcf.var_7faab93d = undefined;
    }
    if (var_248cbbcf.var_8ce60046 === 1) {
        var_248cbbcf.var_8ce60046 = undefined;
    }
    if (var_248cbbcf.var_9a27c4ee === 1) {
        var_248cbbcf.var_9a27c4ee = undefined;
    }
    if (var_248cbbcf.var_be77841a === 1) {
        var_248cbbcf.var_be77841a = undefined;
    }
    if (var_248cbbcf.var_c9643122 === 0) {
        var_248cbbcf.var_c9643122 = undefined;
    }
    var_248cbbcf.state = 0;
    priority = isdefined(var_248cbbcf.priority) ? var_248cbbcf.priority : 1;
    if (!isdefined(self.var_3e95b88f.var_294a441e[prompt])) {
        for (priority = int(priority * 10); isinarray(self.var_3e95b88f.var_294a441e, priority); priority++) {
        }
        self.var_3e95b88f.var_294a441e[prompt] = priority;
    } else {
        priority = self.var_3e95b88f.var_294a441e[prompt];
    }
    if (isdefined(var_248cbbcf.groups) && !isarray(var_248cbbcf.groups)) {
        var_248cbbcf.groups = array(var_248cbbcf.groups);
    }
    self.var_3e95b88f.prompts[prompt] = structcopy(var_248cbbcf);
    self.var_3e95b88f.prompts[prompt].priority = priority;
    self.var_3e95b88f.prompts[prompt].flags = 0;
    if (isdefined(var_248cbbcf.flags)) {
        foreach (flag in var_248cbbcf.flags) {
            self.var_3e95b88f.prompts[prompt].flags = self.var_3e95b88f.prompts[prompt].flags | 1 << flag;
        }
    }
    if (isdefined(var_248cbbcf.image)) {
        self.var_3e95b88f.image = var_248cbbcf.image;
        self.var_3e95b88f.prompts[prompt].image = undefined;
    }
    self function_a4cf2cde({#offset:var_248cbbcf.offset, #tag:var_248cbbcf.tag, #var_754bedbb:var_248cbbcf.var_754bedbb, #var_51f93e19:var_248cbbcf.var_51f93e19});
    self notify("prompt_added_" + prompt);
    if (var_a23c5e1) {
        self thread function_7d76b3ac();
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x5f4c5232, Offset: 0x1b00
// Size: 0x132
function function_46df0bc7(prompt, priority) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    priority = int(priority * 10);
    arrayremoveindex(self.var_3e95b88f.var_294a441e, prompt, 1);
    while (isinarray(self.var_3e95b88f.var_294a441e, priority)) {
        priority++;
    }
    self.var_3e95b88f.var_294a441e[prompt] = priority;
    self.var_3e95b88f.prompts[prompt].priority = priority;
}

// Namespace prompts/prompts
// Params 1, eflags: 0x2 linked
// Checksum 0xad6fe64e, Offset: 0x1c40
// Size: 0x1ce
function function_a4cf2cde(var_50c32acd) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    var_68131ee = 0;
    offset = (0, 0, 0);
    if (!self function_5a11b8f6()) {
        self.var_3e95b88f.var_80778410 = 0;
    } else {
        self.var_3e95b88f.var_80778410 = 1;
    }
    if (isdefined(var_50c32acd.offset)) {
        offset += var_50c32acd.offset;
    } else if (isplayer(self)) {
        offset = (914.286, 675, 0);
    }
    if (offset != (0, 0, 0)) {
        self.var_3e95b88f.offset = offset;
        var_68131ee = 1;
    }
    if (isdefined(var_50c32acd.tag) && self haspart(var_50c32acd.tag)) {
        self.var_3e95b88f.tag = var_50c32acd.tag;
    } else if (isdefined(var_50c32acd.var_754bedbb)) {
        self.var_3e95b88f.var_754bedbb = var_50c32acd.var_754bedbb;
        var_68131ee = 1;
    }
    if (isdefined(var_50c32acd.var_51f93e19)) {
        self.var_3e95b88f.var_80778410 = var_50c32acd.var_51f93e19;
        var_68131ee = 1;
    }
    if (var_68131ee) {
        self notify(#"hash_17cbfac9e551855a");
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x15cd3d9d, Offset: 0x1e18
// Size: 0x8e
function function_92127496(var_80534db1, var_a5ce465f = 0) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    if (!isplayer(self)) {
        self.var_3e95b88f.hud = var_80534db1;
        self.var_3e95b88f.var_a5ce465f = var_a5ce465f;
    }
}

// Namespace prompts/prompts
// Params 1, eflags: 0x2 linked
// Checksum 0x1585639f, Offset: 0x1eb0
// Size: 0x7c
function set_text(text) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    self.var_3e95b88f.text = text;
    if (isdefined(self.var_3e95b88f.uid)) {
        namespace_61e6d095::set_text(self.var_3e95b88f.uid, text);
    }
}

// Namespace prompts/prompts
// Params 1, eflags: 0x2 linked
// Checksum 0xac0332e7, Offset: 0x1f38
// Size: 0x7c
function function_309bf7c2(image) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    self.var_3e95b88f.image = image;
    if (isdefined(self.var_3e95b88f.uid)) {
        namespace_61e6d095::function_309bf7c2(self.var_3e95b88f.uid, image);
    }
}

// Namespace prompts/prompts
// Params 1, eflags: 0x2 linked
// Checksum 0xd16d037a, Offset: 0x1fc0
// Size: 0x9c
function function_82cf95d9(image) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    self.var_3e95b88f.namespace_image = image;
    if (isdefined(self.var_3e95b88f.uid)) {
        namespace_61e6d095::function_9ade1d9b(self.var_3e95b88f.uid, "namespace_image", image);
        globallogic_ui::function_ec25f500(" ", 0);
    }
}

// Namespace prompts/prompts
// Params 1, eflags: 0x2 linked
// Checksum 0x9c959ac5, Offset: 0x2068
// Size: 0x94
function function_b1cfa4bc(progress) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    self.var_3e95b88f.var_fc01e65d = progress;
    if (isdefined(self.var_3e95b88f.uid)) {
        namespace_61e6d095::function_b1e6d7a8(self.var_3e95b88f.uid, progress);
        globallogic_ui::function_ec25f500(" ", 0);
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x0
// Checksum 0x8beca35a, Offset: 0x2108
// Size: 0xc4
function function_dade5b1a(name, team) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    self.var_3e95b88f.display_name = name;
    self.var_3e95b88f.team = util::getteamindex(isdefined(team) ? team : self getteam());
    if (isdefined(self.var_3e95b88f.uid)) {
        globallogic_ui::function_ec25f500(name, team);
    }
}

// Namespace prompts/prompts
// Params 1, eflags: 0x2 linked
// Checksum 0xd3b2ccd, Offset: 0x21d8
// Size: 0xf4
function set_objective(str_objective) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    if (!isdefined(self.var_3e95b88f)) {
        return;
    }
    self.var_3e95b88f.objective = str_objective;
    if (isdefined(str_objective)) {
        uid = self.var_3e95b88f.var_b003a020;
        if (!isdefined(uid)) {
            uid = self.var_3e95b88f.uid;
        }
        if (isdefined(uid)) {
            state = namespace_61e6d095::function_f7c4c669(uid, "state");
            namespace_96850e69::function_278c15e6(str_objective, self, isdefined(state) && state != 1);
        }
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x6bad0d14, Offset: 0x22d8
// Size: 0x22c
function function_263320e2(prompt, var_4d98c3ce) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    if (self.var_3e95b88f.prompts[prompt].var_4d98c3ce === var_4d98c3ce) {
        return;
    }
    self.var_3e95b88f.prompts[prompt].var_4d98c3ce = var_4d98c3ce;
    uid = self.var_3e95b88f.uid;
    if (isdefined(uid) && namespace_61e6d095::function_cd59371c(uid, self.var_3e95b88f.var_294a441e[prompt], self.var_3e95b88f.var_db58523e) && !is_true(self.var_3e95b88f.prompts[prompt].removing)) {
        if (isdefined(var_4d98c3ce)) {
            namespace_61e6d095::function_f2a9266(self.var_3e95b88f.uid, self.var_3e95b88f.var_294a441e[prompt], "text", var_4d98c3ce, self.var_3e95b88f.var_db58523e);
            return;
        }
        namespace_61e6d095::function_f2a9266(self.var_3e95b88f.uid, self.var_3e95b88f.var_294a441e[prompt], "text", #"", self.var_3e95b88f.var_db58523e);
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x6159ad1f, Offset: 0x2510
// Size: 0xb2
function function_75d5e526(prompt, complete_callback) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].complete_callback = complete_callback;
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x8a5c1b7a, Offset: 0x25d0
// Size: 0xb2
function function_a4a9acfc(prompt, var_531201f1) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].var_531201f1 = var_531201f1;
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0xbc4117b3, Offset: 0x2690
// Size: 0xb2
function function_cd2391cb(prompt, notify_string) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].notify_string = notify_string;
}

// Namespace prompts/prompts
// Params 4, eflags: 0x0
// Checksum 0xbbc9b577, Offset: 0x2750
// Size: 0x7c
function set_offset(offset, tag, var_754bedbb, var_51f93e19) {
    self function_a4cf2cde({#offset:offset, #tag:tag, #var_754bedbb:var_754bedbb, #var_51f93e19:var_51f93e19});
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x4b2a8134, Offset: 0x27d8
// Size: 0x62
function function_46f198(uid, var_db58523e) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    self.var_3e95b88f.uid = uid;
    self.var_3e95b88f.var_db58523e = var_db58523e;
}

// Namespace prompts/prompts
// Params 2, eflags: 0x0
// Checksum 0xade3edf8, Offset: 0x2848
// Size: 0x32
function function_816ddada(prompt, var_1df3804c) {
    self.var_3e95b88f.prompts[prompt].var_1df3804c = var_1df3804c;
}

// Namespace prompts/prompts
// Params 3, eflags: 0x2 linked
// Checksum 0xfe240955, Offset: 0x2888
// Size: 0x24c
function function_44d7831a(prompt, flags, var_cca4e0db = 0) {
    if (var_cca4e0db) {
        self.var_3e95b88f.prompts[prompt].flags = self.var_3e95b88f.prompts[prompt].flags | flags;
    } else {
        if (!isdefined(flags)) {
            flags = [];
        } else if (!isarray(flags)) {
            flags = array(flags);
        }
        foreach (flag in flags) {
            self.var_3e95b88f.prompts[prompt].flags = self.var_3e95b88f.prompts[prompt].flags | 1 << flag;
        }
    }
    uid = self.var_3e95b88f.uid;
    if (isdefined(uid) && namespace_61e6d095::function_cd59371c(uid, self.var_3e95b88f.var_294a441e[prompt], self.var_3e95b88f.var_db58523e) && !is_true(self.var_3e95b88f.prompts[prompt].removing)) {
        namespace_61e6d095::function_9bc1d2f1(uid, self.var_3e95b88f.var_294a441e[prompt], self.var_3e95b88f.prompts[prompt].flags, 1);
    }
}

// Namespace prompts/prompts
// Params 3, eflags: 0x0
// Checksum 0x8419e124, Offset: 0x2ae0
// Size: 0x234
function function_4b556f63(prompt, flags, var_cca4e0db = 0) {
    if (var_cca4e0db) {
        self.var_3e95b88f.prompts[prompt].flags = self.var_3e95b88f.prompts[prompt].flags & ~flags;
    } else {
        if (!isdefined(flags)) {
            flags = [];
        } else if (!isarray(flags)) {
            flags = array(flags);
        }
        foreach (flag in flags) {
            self.var_3e95b88f.prompts[prompt].flags = self.var_3e95b88f.prompts[prompt].flags & ~flag;
        }
    }
    uid = self.var_3e95b88f.uid;
    if (isdefined(uid) && namespace_61e6d095::function_cd59371c(uid, self.var_3e95b88f.var_294a441e[prompt], self.var_3e95b88f.var_db58523e) && !is_true(self.var_3e95b88f.prompts[prompt].removing)) {
        namespace_61e6d095::function_e8c19a33(uid, self.var_3e95b88f.var_294a441e[prompt], flags, 1);
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x972d9ffd, Offset: 0x2d20
// Size: 0xfa
function function_d03d79d6(prompt, var_de6f0004) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].var_de6f0004 = var_de6f0004;
    if (self.var_3e95b88f.prompts[prompt].var_de6f0004 === 0.25) {
        self.var_3e95b88f.prompts[prompt].var_de6f0004 = undefined;
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0xb8379bbd, Offset: 0x2e28
// Size: 0xfa
function function_8f5eb0a6(prompt, var_4ac77177) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].var_4ac77177 = var_4ac77177;
    if (self.var_3e95b88f.prompts[prompt].var_4ac77177 === 0.1) {
        self.var_3e95b88f.prompts[prompt].var_4ac77177 = undefined;
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0xe790d4bc, Offset: 0x2f30
// Size: 0xf6
function function_5fe46a16(prompt, var_71b9f0c0) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].var_71b9f0c0 = var_71b9f0c0;
    if (self.var_3e95b88f.prompts[prompt].var_71b9f0c0 === 240) {
        self.var_3e95b88f.prompts[prompt].var_71b9f0c0 = undefined;
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x0
// Checksum 0xec9fca28, Offset: 0x3030
// Size: 0xf6
function function_cf884581(prompt, var_79a4cbfc) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].var_9c89c587 = var_79a4cbfc;
    if (self.var_3e95b88f.prompts[prompt].var_9c89c587 === 0) {
        self.var_3e95b88f.prompts[prompt].var_9c89c587 = undefined;
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x0
// Checksum 0xc934c777, Offset: 0x3130
// Size: 0xf6
function function_5698d1c9(prompt, var_5f57572a) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].var_f17a78a7 = var_5f57572a;
    if (self.var_3e95b88f.prompts[prompt].var_f17a78a7 === 180) {
        self.var_3e95b88f.prompts[prompt].var_f17a78a7 = undefined;
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x379374d, Offset: 0x3230
// Size: 0xfa
function function_68782902(prompt, var_87c991f3) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].var_87c991f3 = var_87c991f3;
    if (self.var_3e95b88f.prompts[prompt].var_87c991f3 === 85) {
        self.var_3e95b88f.prompts[prompt].var_87c991f3 = undefined;
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x1a42d5c1, Offset: 0x3338
// Size: 0xfa
function function_2557566(prompt, var_7faab93d) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].var_7faab93d = var_7faab93d;
    if (self.var_3e95b88f.prompts[prompt].var_7faab93d === 1) {
        self.var_3e95b88f.prompts[prompt].var_7faab93d = undefined;
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x65baa031, Offset: 0x3440
// Size: 0xfa
function function_b95d71cd(prompt, var_5e83875a) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].var_5e83875a = var_5e83875a;
    if (self.var_3e95b88f.prompts[prompt].var_5e83875a === 30) {
        self.var_3e95b88f.prompts[prompt].var_5e83875a = undefined;
    }
}

// Namespace prompts/prompts
// Params 3, eflags: 0x2 linked
// Checksum 0xe82eae4, Offset: 0x3548
// Size: 0xda
function function_1a5e1da6(prompt, var_3c8a8153, var_c8a53909) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].var_3c8a8153 = var_3c8a8153;
    self.var_3e95b88f.prompts[prompt].var_88ceabd = var_c8a53909;
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x61e16508, Offset: 0x3630
// Size: 0xf6
function function_4cb5d3a1(prompt, var_8ce60046) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].var_8ce60046 = var_8ce60046;
    if (self.var_3e95b88f.prompts[prompt].var_8ce60046 === 1) {
        self.var_3e95b88f.prompts[prompt].var_8ce60046 = undefined;
    }
}

// Namespace prompts/prompts
// Params 3, eflags: 0x2 linked
// Checksum 0x78fff92, Offset: 0x3730
// Size: 0x11e
function function_dcf99fad(prompt, var_9a27c4ee, ignore_ent) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].var_9a27c4ee = var_9a27c4ee;
    self.var_3e95b88f.prompts[prompt].var_1e4cbecf = ignore_ent;
    if (self.var_3e95b88f.prompts[prompt].var_9a27c4ee === 1) {
        self.var_3e95b88f.prompts[prompt].var_9a27c4ee = undefined;
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x4cb8e8f3, Offset: 0x3858
// Size: 0xf6
function function_2bd2431a(prompt, var_be77841a) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].var_be77841a = var_be77841a;
    if (self.var_3e95b88f.prompts[prompt].var_be77841a === 1) {
        self.var_3e95b88f.prompts[prompt].var_be77841a = undefined;
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x96964fcf, Offset: 0x3958
// Size: 0xf6
function function_3171730f(prompt, groups) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    if (!isdefined(groups)) {
        groups = [];
    } else if (!isarray(groups)) {
        groups = array(groups);
    }
    self.var_3e95b88f.prompts[prompt].groups = groups;
}

// Namespace prompts/prompts
// Params 1, eflags: 0x2 linked
// Checksum 0x74677f46, Offset: 0x3a58
// Size: 0x5c
function function_e79f51ec(groups) {
    if (!isdefined(groups)) {
        groups = [];
    } else if (!isarray(groups)) {
        groups = array(groups);
    }
    level.var_a8ea96e8 = groups;
}

// Namespace prompts/prompts
// Params 0, eflags: 0x2 linked
// Checksum 0xdeceb44a, Offset: 0x3ac0
// Size: 0x10
function function_398ab9eb() {
    level.var_a8ea96e8 = [];
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x2222985d, Offset: 0x3ad8
// Size: 0xb2
function function_2e6d74f5(prompt, pause) {
    assert(isdefined(self.var_3e95b88f), "<unknown string>");
    assert(isdefined(self.var_3e95b88f.prompts[prompt]), "<unknown string>" + function_9e72a96(prompt) + "<unknown string>");
    self.var_3e95b88f.prompts[prompt].var_f14d06ca = pause;
}

// Namespace prompts/prompts
// Params 2, eflags: 0x2 linked
// Checksum 0x5cf98d7, Offset: 0x3b98
// Size: 0x17c
function remove(prompt, immediate) {
    if (isdefined(self.var_3e95b88f) && isdefined(self.var_3e95b88f.prompts[prompt]) && !is_true(self.var_3e95b88f.prompts[prompt].removing)) {
        self notify(#"hash_6c3a780a574076a8", {#prompt:prompt});
        self notify("prompt_removed_" + prompt);
        if (isdefined(self.var_3e95b88f.uid) && isdefined(self.var_3e95b88f.var_294a441e[prompt])) {
            function_17578ab7(prompt, self.var_3e95b88f);
            namespace_61e6d095::function_7239e030(self.var_3e95b88f.uid, self.var_3e95b88f.var_294a441e[prompt], self.var_3e95b88f.var_db58523e);
        }
        self.var_3e95b88f.prompts[prompt].removing = 1;
        self thread function_660c618b(prompt, immediate);
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x6 linked
// Checksum 0x7f745513, Offset: 0x3d20
// Size: 0x256
function private function_660c618b(prompt, immediate) {
    self endon(#"all_prompts_removed", "prompt_added_" + prompt, #"death");
    if (!is_true(immediate)) {
        waittillframeend();
    }
    if (isdefined(self.var_3e95b88f) && isdefined(self.var_3e95b88f.prompts[prompt])) {
        arrayremoveindex(self.var_3e95b88f.prompts, prompt, 1);
        arrayremoveindex(self.var_3e95b88f.var_294a441e, prompt, 1);
        player = getplayers()[0];
        if (player.var_b3c804a4[prompt] === self) {
            player.var_b3c804a4[prompt] = undefined;
        }
        if (self.var_3e95b88f.prompts.size == 0) {
            if (isdefined(self.var_3e95b88f.uid)) {
                if (!isdefined(self.var_3e95b88f.var_db58523e)) {
                    self function_8de9a77a();
                } else if (isdefined(self.var_3e95b88f.var_294a441e)) {
                    foreach (index in self.var_3e95b88f.var_294a441e) {
                        namespace_61e6d095::function_7239e030(self.var_3e95b88f.uid, index, self.var_3e95b88f.var_db58523e);
                    }
                }
            }
            self.var_3e95b88f = undefined;
            self notify(#"all_prompts_removed");
        }
    }
}

// Namespace prompts/prompts
// Params 1, eflags: 0x2 linked
// Checksum 0x91ab8781, Offset: 0x3f80
// Size: 0x160
function function_ee7adae5(group) {
    if (isdefined(self.var_3e95b88f.prompts)) {
        var_c94d18f6 = [];
        foreach (prompt, var_248cbbcf in self.var_3e95b88f.prompts) {
            if (isdefined(var_248cbbcf.groups) && isinarray(var_248cbbcf.groups, group)) {
                var_c94d18f6[var_c94d18f6.size] = prompt;
            }
        }
        foreach (prompt in var_c94d18f6) {
            self thread remove(prompt, 1);
        }
    }
}

// Namespace prompts/prompts
// Params 0, eflags: 0x2 linked
// Checksum 0x61a14e4b, Offset: 0x40e8
// Size: 0x1b4
function function_334e020() {
    if (isdefined(self.var_3e95b88f)) {
        var_393b6e18 = self.origin;
        if (isentity(self)) {
            if (isdefined(self.var_3e95b88f.tag)) {
                var_393b6e18 = self gettagorigin(self.var_3e95b88f.tag);
            } else if (iscorpse(self)) {
                var_393b6e18 = self getcorpsephysicsorigin() + (0, 0, 6);
            } else if (is_true(self.var_3e95b88f.var_754bedbb)) {
                var_393b6e18 += rotatepoint(self getboundsmidpoint(), self.angles);
            }
        }
        if (isdefined(self.var_3e95b88f.offset) && self.var_3e95b88f.offset != (0, 0, 0)) {
            if (is_true(self.var_3e95b88f.var_80778410)) {
                var_393b6e18 += rotatepoint(self.var_3e95b88f.offset, self.angles);
            } else {
                var_393b6e18 += self.var_3e95b88f.offset;
            }
        }
        return var_393b6e18;
    }
    return undefined;
}

// Namespace prompts/prompts
// Params 0, eflags: 0x2 linked
// Checksum 0x2586a82f, Offset: 0x42a8
// Size: 0x24
function function_86eedc() {
    self flag::set("prompts_disabled");
}

// Namespace prompts/prompts
// Params 0, eflags: 0x2 linked
// Checksum 0xd7008cc, Offset: 0x42d8
// Size: 0x24
function function_d675f5a4() {
    self flag::clear("prompts_disabled");
}

// Namespace prompts/prompts
// Params 3, eflags: 0x6 linked
// Checksum 0x5e733900, Offset: 0x4308
// Size: 0x33a
function private function_d626d354(prompt, player, dist) {
    var_62bce5b6 = self.var_3e95b88f.prompts[prompt];
    if (self flag::get("prompts_disabled") || level flag::get("prompts_disabled")) {
        return false;
    }
    if (level.var_a8ea96e8.size > 0) {
        if (!isdefined(var_62bce5b6.groups)) {
            return false;
        }
        var_a4d18ab4 = 0;
        foreach (var_405c2a4c in level.var_a8ea96e8) {
            if (isinarray(var_62bce5b6.groups, var_405c2a4c)) {
                var_a4d18ab4 = 1;
                break;
            }
        }
        if (!var_a4d18ab4) {
            return false;
        }
    }
    if (self != player) {
        var_71b9f0c0 = isdefined(var_62bce5b6.var_71b9f0c0) ? var_62bce5b6.var_71b9f0c0 : 240;
        /#
            if (level.var_a48f9f79[#"hash_648d8b504449ecd3"] > 0) {
                var_71b9f0c0 = level.var_a48f9f79[#"hash_648d8b504449ecd3"];
            }
        #/
        if (dist > var_71b9f0c0) {
            return false;
        }
        self.var_3e95b88f.var_98fa5077 = 1;
        require_los = isdefined(var_62bce5b6.var_8ce60046) ? var_62bce5b6.var_8ce60046 : 1;
        /#
            if (level.var_a48f9f79[#"hash_3cdd945161669bf5"] >= 0) {
                require_los = level.var_a48f9f79[#"hash_3cdd945161669bf5"] > 0;
            }
        #/
        if (require_los) {
            var_393b6e18 = self function_334e020();
            var_27a7ecaa = isdefined(var_62bce5b6.var_27a7ecaa) ? var_62bce5b6.var_27a7ecaa : player;
            if (!sighttracepassed(player getplayercamerapos(), var_393b6e18, 1, self, var_27a7ecaa)) {
                return false;
            }
        }
    }
    if (isdefined(var_62bce5b6.var_531201f1) && !self [[ var_62bce5b6.var_531201f1 ]]({#prompt:prompt, #player:player})) {
        return false;
    }
    return true;
}

// Namespace prompts/prompts
// Params 6, eflags: 0x6 linked
// Checksum 0x215c463d, Offset: 0x4650
// Size: 0x612
function private function_12186571(prompt, var_62bce5b6, player, dist, var_393b6e18, var_693a4fcf) {
    if (self != player) {
        if (isdefined(player.var_b3c804a4[prompt]) && player.var_b3c804a4[prompt] != self) {
            return false;
        }
        hud = self.var_3e95b88f.hud;
        var_343e3ef2 = 0;
        /#
            if (level.var_a48f9f79[#"hash_464a6e9e035a826e"] > 0) {
                hud = 1;
                var_343e3ef2 = 1;
            } else if (level.var_a48f9f79[#"hash_464a6e9e035a826e"] < 0) {
                hud = 0;
            }
        #/
        if (hud) {
            foreach (var_3388fe0e in player.var_b3c804a4) {
                if (isdefined(var_3388fe0e) && var_3388fe0e != self && (var_3388fe0e == player || var_343e3ef2 || var_3388fe0e.var_3e95b88f.hud)) {
                    return false;
                }
            }
        }
        var_87c991f3 = isdefined(var_62bce5b6.var_87c991f3) ? var_62bce5b6.var_87c991f3 : 85;
        /#
            if (level.var_a48f9f79[#"hash_5188f09d68ab049b"] > 0) {
                var_87c991f3 = level.var_a48f9f79[#"hash_5188f09d68ab049b"];
            }
        #/
        if (dist > var_87c991f3) {
            return false;
        }
        var_45913153 = is_true(var_62bce5b6.var_3c8a8153) && level.var_7315ba31 === (isdefined(var_62bce5b6.var_88ceabd) ? var_62bce5b6.var_88ceabd : self);
        var_b0cb5e43 = undefined;
        if (!var_45913153 && var_693a4fcf < 180) {
            var_b0cb5e43 = vectornormalize(var_393b6e18 - player getplayercamerapos());
            angle_delta = acos(math::clamp(vectordot(anglestoforward(player getplayerangles()), var_b0cb5e43), -1, 1));
            /#
                if (level.var_a48f9f79[#"hash_4415d97cf206beca"] > 0) {
                    var_693a4fcf = level.var_a48f9f79[#"hash_4415d97cf206beca"];
                }
            #/
            if (angle_delta > var_693a4fcf) {
                return false;
            }
        }
        if (isdefined(self.angles)) {
            var_9c89c587 = isdefined(var_62bce5b6.var_9c89c587) ? var_62bce5b6.var_9c89c587 : 0;
            var_f17a78a7 = isdefined(var_62bce5b6.var_f17a78a7) ? var_62bce5b6.var_f17a78a7 : 180;
            /#
                if (level.var_a48f9f79[#"hash_2665c3284c087179"] >= 0) {
                    var_9c89c587 = level.var_a48f9f79[#"hash_2665c3284c087179"];
                }
                if (level.var_a48f9f79[#"hash_264ad5284bf1c857"] > 0) {
                    var_f17a78a7 = level.var_a48f9f79[#"hash_264ad5284bf1c857"];
                }
            #/
            if (var_9c89c587 > 0 || var_f17a78a7 < 180) {
                if (!isdefined(var_b0cb5e43)) {
                    var_b0cb5e43 = vectornormalize(var_393b6e18 - player getplayercamerapos());
                }
                angle_delta = acos(vectordot(anglestoforward(self.angles), var_b0cb5e43));
                if (angle_delta < var_9c89c587 || angle_delta > var_f17a78a7) {
                    return false;
                }
            }
        }
        var_9a27c4ee = (isdefined(var_62bce5b6.var_9a27c4ee) ? var_62bce5b6.var_9a27c4ee : 1) || var_45913153;
        /#
            if (level.var_a48f9f79[#"hash_d71edc1fface7ff"] >= 0) {
                var_9a27c4ee = level.var_a48f9f79[#"hash_d71edc1fface7ff"] > 0;
            }
        #/
        var_1e4cbecf = isdefined(var_62bce5b6.var_1e4cbecf) ? var_62bce5b6.var_1e4cbecf : player;
        if (!var_9a27c4ee && !bullettracepassed(player getplayercamerapos(), var_393b6e18, 1, self, var_1e4cbecf)) {
            return false;
        }
    }
    return true;
}

// Namespace prompts/prompts
// Params 1, eflags: 0x6 linked
// Checksum 0x848f7eb6, Offset: 0x4c70
// Size: 0x224
function private function_99bb5bbe(var_248cbbcf) {
    if (!var_248cbbcf.player gamepadusedlast() && isdefined(level.prompts[var_248cbbcf.prompt].var_b753c5a5)) {
        return var_248cbbcf.player buttonbitstate(level.prompts[var_248cbbcf.prompt].var_b753c5a5);
    }
    switch (var_248cbbcf.prompt) {
    case #"use":
    case #"hash_794885d9482cb75e":
        return var_248cbbcf.player usebuttonpressed();
    case #"hash_3c5c65155dfb1731":
    case #"melee":
        return var_248cbbcf.player meleebuttonpressed();
    case #"attack":
        return var_248cbbcf.player attackbuttonpressed();
    case #"reload":
        return var_248cbbcf.player reloadbuttonpressed();
    case #"frag":
        return var_248cbbcf.player fragbuttonpressed();
    case #"stance":
        return var_248cbbcf.player stancebuttonpressed();
    case #"weapnext":
        return var_248cbbcf.player weaponswitchbuttonpressed();
    case #"ads":
        return var_248cbbcf.player adsbuttonpressed();
    case #"hash_400c7c122bc26dec":
        return var_248cbbcf.player vehicleattackbuttonpressed();
    }
    return 0;
}

// Namespace prompts/prompts
// Params 1, eflags: 0x6 linked
// Checksum 0xcdc6b368, Offset: 0x4ea0
// Size: 0x374
function private function_eee54dd8(var_248cbbcf) {
    switch (var_248cbbcf.prompt) {
    case #"confirm":
        return var_248cbbcf.player namespace_61e6d095::function_affb1af1();
    case #"cancel":
        return var_248cbbcf.player namespace_61e6d095::function_57fbd346();
    case #"alt1":
        return var_248cbbcf.player namespace_61e6d095::function_e4d62f9a();
    case #"alt2":
        return var_248cbbcf.player namespace_61e6d095::function_728aec47();
    default:
        model = undefined;
        if (var_248cbbcf.player gamepadusedlast()) {
            assert(isdefined(level.prompts[var_248cbbcf.prompt].var_a4594058), "<unknown string>" + function_9e72a96(var_248cbbcf.prompt));
            var_d75b2384 = function_90d058e8(#"buttons");
            model = getuimodel(var_d75b2384, string(level.prompts[var_248cbbcf.prompt].var_a4594058));
            assert(isdefined(model), "<unknown string>" + level.prompts[var_248cbbcf.prompt].var_a4594058 + "<unknown string>" + function_9e72a96(var_248cbbcf.prompt));
        } else {
            assert(isdefined(level.prompts[var_248cbbcf.prompt].var_b35ba5c), "<unknown string>" + function_9e72a96(var_248cbbcf.prompt));
            var_31a34837 = function_90d058e8(#"hash_48b37823078b5999");
            model = getuimodel(var_31a34837, level.prompts[var_248cbbcf.prompt].var_b35ba5c);
            assert(isdefined(model), "<unknown string>" + level.prompts[var_248cbbcf.prompt].var_b35ba5c + "<unknown string>" + function_9e72a96(var_248cbbcf.prompt));
        }
        return (getuimodelvalue(model) > 0);
    }
    return 0;
}

// Namespace prompts/prompts
// Params 1, eflags: 0x6 linked
// Checksum 0x34b11b4e, Offset: 0x5220
// Size: 0xb4
function private function_cd5cbae1(player) {
    player endon(#"death");
    self endon(#"all_prompts_removed");
    level endon(#"level_restarting");
    self waittill(#"death");
    if (isdefined(self.var_3e95b88f.uid)) {
        function_17578ab7(undefined, self.var_3e95b88f);
    }
    arrayremovevalue(player.var_b3c804a4, self, 1);
}

// Namespace prompts/prompts
// Params 0, eflags: 0x6 linked
// Checksum 0xd229d811, Offset: 0x52e0
// Size: 0x398
function private function_7d76b3ac() {
    self endon(#"death", #"all_prompts_removed");
    level endon(#"level_restarting");
    for (player = getplayers()[0]; !isdefined(player); player = getplayers()[0]) {
        waitframe(1);
    }
    if (self != player) {
        player endon(#"death");
        self thread function_cd5cbae1(player);
    }
    waittillframeend();
    while (isdefined(self.var_3e95b88f)) {
        dist = 0;
        if (self != player) {
            dist = distance(player getplayercamerapos(), isdefined(self function_334e020()) ? self function_334e020() : self.origin);
        }
        var_3808d0ab = 0;
        foreach (prompt, var_62bce5b6 in self.var_3e95b88f.prompts) {
            if (self function_d626d354(prompt, player, dist)) {
                var_3808d0ab = 1;
                break;
            }
        }
        if (var_3808d0ab) {
            self function_e8006b47();
            if (isdefined(player.var_b3c804a4)) {
                arrayremovevalue(player.var_b3c804a4, self, 1);
            }
            if (isdefined(self.var_3e95b88f.uid)) {
                if (!isdefined(self.var_3e95b88f.var_db58523e)) {
                    self function_8de9a77a();
                } else {
                    foreach (index in self.var_3e95b88f.var_294a441e) {
                        namespace_61e6d095::function_7239e030(self.var_3e95b88f.uid, index, self.var_3e95b88f.var_db58523e);
                    }
                }
            }
            continue;
        }
        player waittilltimeout(max(float(function_60d95f53()) / 1000, dist / 528), #"teleported");
    }
}

// Namespace prompts/prompts
// Params 0, eflags: 0x6 linked
// Checksum 0x52eb4ba5, Offset: 0x5680
// Size: 0xbc6
function private function_e8006b47() {
    self endon(#"death", #"all_prompts_removed", #"hash_17cbfac9e551855a");
    level endon(#"level_restarting");
    player = getplayers()[0];
    if (self != player) {
        player endon(#"death");
    }
    if (!isdefined(self.var_3e95b88f.var_db58523e)) {
        self function_a6104953();
    }
    waitframe(1);
    uid = self.var_3e95b88f.uid;
    state = 0;
    var_c6668915 = undefined;
    var_6dbb4310 = 0;
    self.var_3e95b88f.var_98fa5077 = 1;
    while (self.var_3e95b88f.var_98fa5077) {
        var_bc26f34b = 0;
        var_e24c19de = 0;
        old_state = state;
        dist = 0;
        var_b48ce78 = 0;
        var_3714e9ea = 0;
        var_4921a894 = 0;
        var_b6a8b668 = 0;
        if (self != player) {
            var_393b6e18 = self function_334e020();
            var_7f3f225e = player getplayercamerapos();
            dist = distance(var_7f3f225e, var_393b6e18);
            self.var_3e95b88f.var_98fa5077 = 0;
            /#
                if (level.var_a48f9f79[#"hash_a1f059a85f5bed3"] != 0) {
                    print3d(var_393b6e18, "<unknown string>", (0, 0, 1), undefined, undefined, undefined, 1);
                }
            #/
        }
        foreach (prompt, var_62bce5b6 in self.var_3e95b88f.prompts) {
            self function_263b3850(uid, prompt, player);
            var_b48ce78 = max(var_b48ce78, (isdefined(var_62bce5b6.var_71b9f0c0) ? var_62bce5b6.var_71b9f0c0 : 240) + 12);
            var_3714e9ea = max(var_3714e9ea, isdefined(var_62bce5b6.var_87c991f3) ? var_62bce5b6.var_87c991f3 : 85);
            var_62bce5b6.old_state = var_62bce5b6.state;
            reset_interaction = 1;
            if (self function_d626d354(prompt, player, dist - 12)) {
                var_bc26f34b = 1;
                if (var_62bce5b6.state == 3) {
                    var_e24c19de = 1;
                    continue;
                }
                var_5e83875a = isdefined(var_62bce5b6.var_5e83875a) ? var_62bce5b6.var_5e83875a : 30;
                if (var_62bce5b6.state != 0 && var_62bce5b6.state != 4) {
                    var_5e83875a += isdefined(var_62bce5b6.var_7faab93d) ? var_62bce5b6.var_7faab93d : 1;
                }
                if (function_12186571(prompt, var_62bce5b6, player, dist, var_393b6e18, var_5e83875a)) {
                    var_e24c19de = 1;
                    var_a33acc5d = self function_6b2492cb(prompt, var_62bce5b6, player);
                    reset_interaction = !var_a33acc5d.var_9ad09916;
                    var_4921a894 = var_4921a894 || var_a33acc5d.var_4921a894;
                    var_b6a8b668 = var_b6a8b668 || var_a33acc5d.var_b6a8b668;
                } else if (var_62bce5b6.state != 3) {
                    if (var_62bce5b6.flags & 2) {
                        var_62bce5b6.state = 4;
                    } else {
                        var_62bce5b6.state = 0;
                    }
                }
            } else if (var_62bce5b6.state != 3) {
                if (var_62bce5b6.state == 0 || var_62bce5b6.state == 4) {
                    reset_interaction = 0;
                }
                var_62bce5b6.state = 0;
            }
            if ((var_62bce5b6.state == 0 || var_62bce5b6.state == 4) && player.var_b3c804a4[prompt] === self) {
                player.var_b3c804a4[prompt] = undefined;
            }
            if (reset_interaction) {
                self function_9309081b(uid, prompt);
            }
            if (var_62bce5b6.old_state != var_62bce5b6.state) {
                self function_f4bf235a(uid, prompt, self.var_3e95b88f.prompts[prompt].state);
            }
        }
        if (var_e24c19de) {
            state = 3;
        } else if (var_bc26f34b) {
            state = 2;
        } else if (self.var_3e95b88f.var_98fa5077) {
            state = 1;
        } else {
            break;
        }
        ease_type = #"hash_2de1684e2167ada4";
        ease_in = 1;
        ease_out = 1;
        var_249ae409 = 10;
        var_81f357d7 = 0;
        max_alpha = 1;
        /#
            if (level.var_a48f9f79[#"hash_6958ea0555e58a17"] != "<unknown string>" && isdefined(level.ease_funcs[level.var_a48f9f79[#"hash_6958ea0555e58a17"]])) {
                ease_type = level.var_a48f9f79[#"hash_6958ea0555e58a17"];
            }
            if (level.var_a48f9f79[#"hash_428f189debeb7b94"] != -1) {
                ease_in = level.var_a48f9f79[#"hash_428f189debeb7b94"] != 0;
            }
            if (level.var_a48f9f79[#"hash_51a8d457c48c4901"] != -1) {
                ease_out = level.var_a48f9f79[#"hash_51a8d457c48c4901"] != 0;
            }
            if (level.var_a48f9f79[#"hash_2fae9ec41625639c"] != -1) {
                var_249ae409 = level.var_a48f9f79[#"hash_2fae9ec41625639c"];
            }
            if (level.var_a48f9f79[#"hash_72b9e1d573cf513c"] != -1) {
                var_81f357d7 = level.var_a48f9f79[#"hash_72b9e1d573cf513c"];
            }
            if (level.var_a48f9f79[#"hash_729ecfd573b86aee"] != -1) {
                max_alpha = level.var_a48f9f79[#"hash_729ecfd573b86aee"];
            }
        #/
        alpha = 1;
        if (var_b48ce78 > var_3714e9ea) {
            var_203de47b = math::clamp((var_b48ce78 - dist) / (var_b48ce78 - var_3714e9ea), 0, 1);
            if (ease_type == #"power" || ease_type == #"exponential" || ease_type == #"hash_2de1684e2167ada4") {
                alpha = [[ level.ease_funcs[ease_type] ]](var_81f357d7, max_alpha, var_203de47b, ease_in, ease_out, var_249ae409);
            } else {
                alpha = [[ level.ease_funcs[ease_type] ]](var_81f357d7, max_alpha, var_203de47b, ease_in, ease_out);
            }
            alpha = ceil(alpha * 1000) / 1000;
        }
        if (var_c6668915 !== alpha) {
            namespace_61e6d095::set_alpha(isdefined(self.var_3e95b88f.var_b003a020) ? self.var_3e95b88f.var_b003a020 : uid, alpha);
            var_c6668915 = alpha;
        }
        if (old_state != state) {
            namespace_61e6d095::set_state(uid, state);
            if (isdefined(self.var_3e95b88f.var_b003a020)) {
                namespace_61e6d095::set_state(self.var_3e95b88f.var_b003a020, state);
            }
            if (isdefined(self.var_3e95b88f.objective)) {
                namespace_96850e69::function_278c15e6(self.var_3e95b88f.objective, self, state != 1);
            }
        }
        if (var_6dbb4310 != var_4921a894) {
            var_6dbb4310 = var_4921a894;
            self notify(#"hash_5ede0284920c4c56", {#interactable:var_4921a894});
        }
        if (self flag::get(#"hash_305ce4d5b74a637a") != var_b6a8b668) {
            if (var_b6a8b668) {
                player val::set(#"hash_599ec0eee77657ef", "disable_usability", 1);
                player flag::set(#"hash_599ec0eee77657ef");
                self flag::set(#"hash_305ce4d5b74a637a");
            } else {
                player val::reset_all(#"hash_599ec0eee77657ef");
                player flag::clear(#"hash_599ec0eee77657ef");
                self flag::clear(#"hash_305ce4d5b74a637a");
            }
        }
        waitframe(1);
    }
}

// Namespace prompts/prompts
// Params 3, eflags: 0x6 linked
// Checksum 0x1a3ad53e, Offset: 0x6250
// Size: 0x204
function private function_6b2492cb(prompt, var_62bce5b6, player) {
    player.var_b3c804a4[prompt] = self;
    var_62bce5b6.state = 1;
    lower = 0;
    hud = self.var_3e95b88f.hud;
    /#
        if (level.var_a48f9f79[#"hash_464a6e9e035a826e"] > 0) {
            hud = 1;
        } else if (level.var_a48f9f79[#"hash_464a6e9e035a826e"] < 0) {
            hud = 0;
        }
    #/
    if (hud) {
        lower = var_62bce5b6.flags & 1;
        /#
            if (level.var_a48f9f79[#"hash_464a6e9e035a826e"] == 2) {
                lower = 0;
            } else if (level.var_a48f9f79[#"hash_464a6e9e035a826e"] == 3) {
                lower = 1;
            }
        #/
    }
    var_9ad09916 = 0;
    if (self [[ level.prompts[prompt].var_92bb1cb1 ]]({#prompt:prompt, #var_62bce5b6:var_62bce5b6, #player:player}) && !is_true(var_62bce5b6.var_5a8a10f2)) {
        self function_fcef5f5b(prompt, var_62bce5b6, player);
        var_9ad09916 = 1;
    }
    return {#var_9ad09916:var_9ad09916, #var_b6a8b668:lower, #var_4921a894:hud && !lower};
}

// Namespace prompts/prompts
// Params 3, eflags: 0x6 linked
// Checksum 0xa83c26c8, Offset: 0x6460
// Size: 0x2d4
function private function_fcef5f5b(prompt, var_62bce5b6, player) {
    if (is_true(var_62bce5b6.var_f14d06ca)) {
        if (isdefined(var_62bce5b6.var_c570a6f9)) {
            var_62bce5b6.var_c570a6f9 += float(function_60d95f53()) / 1000;
        }
        return;
    }
    var_62bce5b6.var_5a8a10f2 = undefined;
    if (!isdefined(var_62bce5b6.var_c570a6f9)) {
        var_62bce5b6.var_c570a6f9 = gettime();
    }
    var_de6f0004 = int((isdefined(var_62bce5b6.var_de6f0004) ? var_62bce5b6.var_de6f0004 : 0.25) * 1000);
    var_4ac77177 = int((isdefined(var_62bce5b6.var_4ac77177) ? var_62bce5b6.var_4ac77177 : 0.1) * 1000);
    if (function_2af9819b(prompt, var_62bce5b6, player)) {
        var_62bce5b6.state = 2;
        self function_efb98d80(prompt, var_62bce5b6, player);
        return;
    }
    if (gettime() - var_62bce5b6.var_c570a6f9 >= var_4ac77177) {
        var_62bce5b6.state = 2;
        pct = var_de6f0004 < 0 ? -1 : 0;
        if (pct < 1 && pct >= 0) {
            pct = math::clamp((gettime() - var_62bce5b6.var_c570a6f9 - var_4ac77177) / var_de6f0004, 0, 1);
        }
        namespace_61e6d095::function_f2a9266(self.var_3e95b88f.uid, self.var_3e95b88f.var_294a441e[prompt], "fraction", pct, self.var_3e95b88f.var_db58523e);
        if (pct >= 1 || pct == -1) {
            self function_efb98d80(prompt, var_62bce5b6, player);
        }
    }
}

// Namespace prompts/prompts
// Params 3, eflags: 0x6 linked
// Checksum 0xca5d960, Offset: 0x6740
// Size: 0x132
function private function_2af9819b(prompt, var_62bce5b6, player) {
    var_de6f0004 = int((isdefined(var_62bce5b6.var_de6f0004) ? var_62bce5b6.var_de6f0004 : 0.25) * 1000);
    var_c9643122 = isdefined(var_62bce5b6.var_c9643122) ? var_62bce5b6.var_c9643122 : 0;
    var_ab23834f = prompt == #"use" || prompt == #"hash_794885d9482cb75e";
    return !player gamepadusedlast() && !player function_5c0f244() && !var_c9643122 && var_de6f0004 <= level.var_503dffcb[#"cg_cpmaxholddurationignore"] && var_ab23834f;
}

// Namespace prompts/prompts
// Params 3, eflags: 0x6 linked
// Checksum 0x633b4fe2, Offset: 0x6880
// Size: 0x34c
function private function_efb98d80(prompt, var_62bce5b6, player) {
    var_1df3804c = isdefined(var_62bce5b6.var_1df3804c) ? var_62bce5b6.var_1df3804c : self;
    var_1df3804c notify("interactive_prompt_" + prompt);
    var_1df3804c notify(#"interact", {#prompt:prompt, #player:player});
    bb::function_a0d15803(var_62bce5b6.var_4d98c3ce, self function_334e020(), player);
    if (prompt == #"use" || prompt == #"hash_794885d9482cb75e") {
        player function_58b29f4f();
    }
    if (isdefined(level.prompts[prompt].notify_string)) {
        var_1df3804c notify(level.prompts[prompt].notify_string, {#activator:player, #prompt:prompt});
    }
    if (isdefined(var_62bce5b6.notify_string)) {
        var_1df3804c notify(var_62bce5b6.notify_string);
    }
    if (isdefined(var_62bce5b6.complete_callback)) {
        var_1df3804c thread [[ var_62bce5b6.complete_callback ]]({#prompt:prompt, #player:player});
    }
    if (!is_true(var_62bce5b6.removing)) {
        var_62bce5b6.state = 3;
        endons = ["all_prompts_removed", "death"];
        if (isdefined(var_62bce5b6.var_be77841a) ? var_62bce5b6.var_be77841a : 1) {
            self thread util::delay(0.35, endons, &remove, prompt);
            return;
        }
        var_62bce5b6.var_5a8a10f2 = 1;
        endons[endons.size] = "prompt_removed_" + prompt;
        if (var_62bce5b6.flags & 4) {
            self thread util::delay(0.2, endons, &function_f4bf235a, self.var_3e95b88f.uid, prompt, 1);
            return;
        }
        self thread util::delay(0.35, endons, &function_f4bf235a, self.var_3e95b88f.uid, prompt, 0);
    }
}

// Namespace prompts/prompts
// Params 3, eflags: 0x6 linked
// Checksum 0x4ccf184b, Offset: 0x6bd8
// Size: 0x1a4
function private function_f4bf235a(uid, prompt, state) {
    if (is_true(self.var_3e95b88f.prompts[prompt].removing)) {
        return;
    }
    if (isdefined(self.var_3e95b88f.prompts[prompt])) {
        self.var_3e95b88f.prompts[prompt].state = state;
    }
    self notify(#"hash_4de92efaa3e2025e", {#prompt:prompt, #state:state});
    if (isdefined(self.var_3e95b88f.prompts[prompt].var_67eb3347)) {
        self thread [[ self.var_3e95b88f.prompts[prompt].var_67eb3347 ]]({#prompt:prompt, #state:state});
    }
    if (isdefined(self.var_3e95b88f.var_294a441e[prompt]) && isdefined(self.var_3e95b88f.uid)) {
        namespace_61e6d095::function_f2a9266(uid, self.var_3e95b88f.var_294a441e[prompt], "state", state, self.var_3e95b88f.var_db58523e);
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x6 linked
// Checksum 0xa8e94848, Offset: 0x6d88
// Size: 0x13c
function private function_9309081b(uid, prompt) {
    if (isdefined(self.var_3e95b88f.prompts[prompt].var_c570a6f9)) {
        self.var_3e95b88f.prompts[prompt].var_5a8a10f2 = undefined;
        self.var_3e95b88f.prompts[prompt].var_c570a6f9 = undefined;
        var_de6f0004 = isdefined(self.var_3e95b88f.prompts[prompt].var_de6f0004) ? self.var_3e95b88f.prompts[prompt].var_de6f0004 : 0.25;
        var_e8249df2 = var_de6f0004 < 0 ? -1 : 0;
        namespace_61e6d095::function_f2a9266(uid, self.var_3e95b88f.var_294a441e[prompt], "fraction", var_e8249df2, self.var_3e95b88f.var_db58523e);
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x6 linked
// Checksum 0x1ef00032, Offset: 0x6ed0
// Size: 0x364
function private function_ab46a161(prompt, var_62bce5b6) {
    self endon(#"death", "prompt_removed_" + prompt);
    player = getplayers()[0];
    player endon(#"death");
    gamepad = player gamepadusedlast();
    var_1ea21098 = undefined;
    var_34fc0bda = undefined;
    uid = var_62bce5b6.uid;
    while (isdefined(var_62bce5b6.uid)) {
        is_disabled = isdefined(var_62bce5b6.prompts[prompt].state) && (var_62bce5b6.prompts[prompt].state == 0 || var_62bce5b6.prompts[prompt].state == 4);
        if (self [[ level.prompts[prompt].var_92bb1cb1 ]]({#prompt:prompt, #var_62bce5b6:var_62bce5b6, #player:player}) && (is_true(var_62bce5b6.prompts[prompt].var_f14d06ca) || is_disabled)) {
            self function_2e6d74f5(prompt, 1);
        } else {
            self function_2e6d74f5(prompt, 0);
        }
        var_57f18593 = gamepad != player gamepadusedlast();
        if (var_57f18593) {
            gamepad = !gamepad;
            player val::reset_all(uid);
        }
        var_dc231c8e = 1;
        var_7a529262 = var_62bce5b6.prompts[prompt].var_8cff8c16;
        if (isdefined(var_7a529262)) {
            var_dc231c8e = self [[ var_7a529262 ]]({#prompt:prompt, #var_62bce5b6:var_62bce5b6, #player:player});
        }
        if (var_1ea21098 !== is_disabled || var_34fc0bda !== var_dc231c8e || var_57f18593) {
            if (var_dc231c8e && !is_disabled) {
                function_f619081c(prompt, var_62bce5b6);
            } else {
                function_17578ab7(prompt, var_62bce5b6);
            }
            var_34fc0bda = var_dc231c8e;
            var_1ea21098 = is_disabled;
        }
        waitframe(1);
    }
    if (isdefined(uid) && !is_true(var_1ea21098)) {
        function_17578ab7(prompt, var_62bce5b6, uid);
    }
}

// Namespace prompts/prompts
// Params 3, eflags: 0x6 linked
// Checksum 0x14e8eaa2, Offset: 0x7240
// Size: 0x138
function private function_6d9e6b7d(player, prompt, uid) {
    player endon(#"death");
    self endon(#"hash_1316225507a4f1bb", "reset_button_inputs_" + prompt);
    while (true) {
        player waittill(#"weapon_fired");
        weapon = player getcurrentweapon();
        if (is_true(weapon.isboltaction) || player getweaponammoclip(weapon) == 0 && player getweaponammostock(weapon) > 0) {
            player val::reset(uid, "disable_weapon_reload");
            wait(0.5);
            player val::set(uid, "disable_weapon_reload", 1);
        }
    }
}

// Namespace prompts/prompts
// Params 2, eflags: 0x6 linked
// Checksum 0x140d8dea, Offset: 0x7380
// Size: 0x4fa
function private function_f619081c(prompt, var_62bce5b6) {
    player = getplayers()[0];
    switch (prompt) {
    case #"use":
    case #"hash_794885d9482cb75e":
        player val::set(var_62bce5b6.uid, "disable_usability", 1);
        player val::set(var_62bce5b6.uid, "disable_weapon_pickup", 1);
        if (player gamepadusedlast()) {
            player val::set(var_62bce5b6.uid, "disable_weapon_reload", 1);
            self thread function_6d9e6b7d(player, prompt, var_62bce5b6.uid);
        }
        break;
    case #"hash_3c5c65155dfb1731":
    case #"melee":
        player val::set(var_62bce5b6.uid, "allow_melee", 0);
        break;
    case #"attack":
        player val::set(var_62bce5b6.uid, "disable_weapon_fire", 1);
        break;
    case #"reload":
        player val::set(var_62bce5b6.uid, "disable_weapon_reload", 1);
        self thread function_6d9e6b7d(player, prompt, var_62bce5b6.uid);
        if (player gamepadusedlast()) {
            player val::set(var_62bce5b6.uid, "disable_usability", 1);
            player val::set(var_62bce5b6.uid, "disable_weapon_pickup", 1);
        }
        break;
    case #"frag":
        player val::set(var_62bce5b6.uid, "disable_offhand_weapons", 1);
        break;
    case #"stance":
        stance = player getstance();
        if (stance == "stand") {
            player val::set(var_62bce5b6.uid, "allow_stand", 1);
            player val::set(var_62bce5b6.uid, "allow_crouch", 0);
            player val::set(var_62bce5b6.uid, "allow_prone", 0);
        } else if (stance == "crouch") {
            player val::set(var_62bce5b6.uid, "allow_stand", 0);
            player val::set(var_62bce5b6.uid, "allow_crouch", 1);
            player val::set(var_62bce5b6.uid, "allow_prone", 0);
        } else if (stance == "prone") {
            player val::set(var_62bce5b6.uid, "allow_stand", 0);
            player val::set(var_62bce5b6.uid, "allow_crouch", 0);
            player val::set(var_62bce5b6.uid, "allow_prone", 1);
        }
        break;
    case #"weapnext":
        player val::set(var_62bce5b6.uid, "disable_weapon_cycling", 1);
        break;
    case #"ads":
        player val::set(var_62bce5b6.uid, "allow_ads", 0);
        break;
    }
}

// Namespace prompts/prompts
// Params 3, eflags: 0x6 linked
// Checksum 0x1c5157b2, Offset: 0x7888
// Size: 0x464
function private function_17578ab7(prompt, var_62bce5b6, uid = var_62bce5b6.uid) {
    player = getplayers()[0];
    if (isdefined(uid) && isdefined(player)) {
        if (!isdefined(prompt)) {
            player val::reset_all(uid);
            self notify(#"hash_1316225507a4f1bb");
            return;
        }
        switch (prompt) {
        case #"use":
        case #"hash_794885d9482cb75e":
            player val::reset(uid, "disable_usability");
            player val::reset(uid, "disable_weapon_pickup");
            if (player gamepadusedlast()) {
                player val::reset(uid, "disable_weapon_reload");
            }
            break;
        case #"hash_3c5c65155dfb1731":
        case #"melee":
            player val::reset(uid, "allow_melee");
            break;
        case #"attack":
            player val::reset(uid, "disable_weapon_fire");
            break;
        case #"reload":
            player val::reset(uid, "disable_weapon_reload");
            if (player gamepadusedlast()) {
                player val::reset(uid, "disable_usability");
                player val::reset(uid, "disable_weapon_pickup");
            }
            break;
        case #"frag":
            player val::reset(uid, "disable_offhand_weapons");
            break;
        case #"stance":
            stance = player getstance();
            if (stance == "stand") {
                player val::reset(uid, "allow_stand");
                player val::reset(uid, "allow_crouch");
                player val::reset(uid, "allow_prone");
            } else if (stance == "crouch") {
                player val::reset(uid, "allow_stand");
                player val::reset(uid, "allow_crouch");
                player val::reset(uid, "allow_prone");
            } else if (stance == "prone") {
                player val::reset(uid, "allow_stand");
                player val::reset(uid, "allow_crouch");
                player val::reset(uid, "allow_prone");
            }
            break;
        case #"weapnext":
            player val::reset(uid, "disable_weapon_cycling");
            break;
        case #"ads":
            player val::reset(uid, "allow_ads");
            break;
        }
        self notify("reset_button_inputs_" + prompt);
    }
}

// Namespace prompts/prompts
// Params 0, eflags: 0x6 linked
// Checksum 0x3e6b2244, Offset: 0x7cf8
// Size: 0x596
function private function_a6104953() {
    if (!isdefined(level.var_f4f784c9)) {
        level.var_f4f784c9 = 0;
    }
    if (!isdefined(self.var_3e95b88f.var_9215353e)) {
        self.var_3e95b88f.var_9215353e = "prompt_" + level.var_f4f784c9;
        level.var_f4f784c9++;
    }
    self.var_3e95b88f.uid = self.var_3e95b88f.var_9215353e;
    uid = self.var_3e95b88f.uid;
    var_3a6b0af4 = undefined;
    clamp = 1;
    hud = self.var_3e95b88f.hud;
    /#
        if (level.var_a48f9f79[#"hash_464a6e9e035a826e"] > 0) {
            hud = 1;
        } else if (level.var_a48f9f79[#"hash_464a6e9e035a826e"] < 0) {
            hud = 0;
        }
    #/
    if (hud) {
        namespace_61e6d095::create(uid, #"hash_2a9f8d08dadef41e");
        self thread function_17533001(uid);
        if (isentity(self)) {
            self thread namespace_61e6d095::delete_on_death(uid);
        }
        if (!is_true(self.var_3e95b88f.var_a5ce465f) && !isplayer(self) && (!isactor(self) || isdefined(self.var_3e95b88f.prompts[#"use"]))) {
            self.var_3e95b88f.var_b003a020 = uid + "_circle";
            var_3a6b0af4 = self.var_3e95b88f.var_b003a020;
            clamp = 0;
            namespace_61e6d095::create(var_3a6b0af4, #"hash_115c63d4ac6a1d5f");
        }
    } else {
        var_3a6b0af4 = uid;
        namespace_61e6d095::create(uid, #"hash_57fd5ecbc8126b21");
    }
    if (isdefined(var_3a6b0af4)) {
        if (isdefined(self.var_3e95b88f.text)) {
            namespace_61e6d095::set_text(var_3a6b0af4, self.var_3e95b88f.text);
        }
        if (isdefined(self.var_3e95b88f.image)) {
            namespace_61e6d095::function_309bf7c2(var_3a6b0af4, self.var_3e95b88f.image);
        }
        namespace_61e6d095::set_alpha(var_3a6b0af4, 0);
        namespace_61e6d095::set_ent(var_3a6b0af4, self);
        offset = isdefined(self.var_3e95b88f.offset) ? self.var_3e95b88f.offset : (0, 0, 0);
        if (!self function_5a11b8f6()) {
            offset += self.origin;
            self.var_3e95b88f.var_80778410 = 0;
        }
        if (offset != (0, 0, 0)) {
            if (offset[0] != 0) {
                namespace_61e6d095::function_4d9fbc9d(var_3a6b0af4, offset[0]);
            }
            if (offset[1] != 0) {
                namespace_61e6d095::function_52dbc715(var_3a6b0af4, offset[1]);
            }
            if (offset[2] != 0) {
                namespace_61e6d095::function_60856268(var_3a6b0af4, offset[2]);
            }
        }
        if (isdefined(self.var_3e95b88f.tag)) {
            namespace_61e6d095::function_8aa0007(var_3a6b0af4, self.var_3e95b88f.tag);
        } else {
            namespace_61e6d095::function_e648abd8(var_3a6b0af4, is_true(self.var_3e95b88f.var_754bedbb));
        }
        namespace_61e6d095::function_9c3ced73(var_3a6b0af4, self.var_3e95b88f.var_80778410);
        namespace_61e6d095::function_eb16868b(var_3a6b0af4, 1);
        namespace_61e6d095::function_4ef79fca(var_3a6b0af4, clamp);
        namespace_61e6d095::set_state(var_3a6b0af4, 0);
    }
    namespace_61e6d095::function_b1e6d7a8(uid, 0);
    namespace_61e6d095::set_state(uid, 0);
    namespace_61e6d095::function_330981ed(uid);
    self notify(#"hash_6bf192c39a59f343");
}

// Namespace prompts/prompts
// Params 3, eflags: 0x6 linked
// Checksum 0xb97da6d3, Offset: 0x8298
// Size: 0x5bc
function private function_263b3850(uid, prompt, player) {
    if (!namespace_61e6d095::function_cd59371c(uid, self.var_3e95b88f.var_294a441e[prompt], self.var_3e95b88f.var_db58523e) && !is_true(self.var_3e95b88f.prompts[prompt].removing)) {
        var_7125b341 = 0;
        if (isdefined(self.var_3e95b88f.prompts[prompt].var_4d98c3ce)) {
            namespace_61e6d095::function_f2a9266(uid, self.var_3e95b88f.var_294a441e[prompt], "text", self.var_3e95b88f.prompts[prompt].var_4d98c3ce, self.var_3e95b88f.var_db58523e);
            var_7125b341 = 1;
        }
        if (isdefined(level.prompts[prompt].button_text)) {
            if (isdefined(level.prompts[prompt].var_e4c7b05f)) {
                self thread function_93551c9a(uid, prompt);
            } else {
                namespace_61e6d095::function_f2a9266(uid, self.var_3e95b88f.var_294a441e[prompt], "button_text", level.prompts[prompt].button_text, self.var_3e95b88f.var_db58523e);
            }
            var_7125b341 = 1;
        }
        if (isdefined(level.prompts[prompt].button_action)) {
            namespace_61e6d095::function_f2a9266(uid, self.var_3e95b88f.var_294a441e[prompt], "button_action", level.prompts[prompt].button_action, self.var_3e95b88f.var_db58523e);
            var_7125b341 = 1;
        }
        var_2625ed95 = int((isdefined(self.var_3e95b88f.prompts[prompt].var_de6f0004) ? self.var_3e95b88f.prompts[prompt].var_de6f0004 : 0.25) * 1000);
        if (var_2625ed95 <= 0 || function_2af9819b(prompt, self.var_3e95b88f.prompts[prompt], player)) {
            namespace_61e6d095::function_f2a9266(uid, self.var_3e95b88f.var_294a441e[prompt], "fraction", -1, self.var_3e95b88f.var_db58523e);
        } else {
            namespace_61e6d095::function_f2a9266(uid, self.var_3e95b88f.var_294a441e[prompt], "fraction", 0, self.var_3e95b88f.var_db58523e);
        }
        if (var_7125b341) {
            namespace_61e6d095::function_f2a9266(uid, self.var_3e95b88f.var_294a441e[prompt], "state", self.var_3e95b88f.prompts[prompt].state, self.var_3e95b88f.var_db58523e);
        }
        if (isdefined(self.var_3e95b88f.prompts[prompt].var_67eb3347)) {
            self thread [[ self.var_3e95b88f.prompts[prompt].var_67eb3347 ]]({#prompt:prompt, #state:self.var_3e95b88f.prompts[prompt].state});
        }
        flags = self.var_3e95b88f.prompts[prompt].flags;
        /#
            if (level.var_a48f9f79[#"hash_464a6e9e035a826e"] == 2) {
                flags &= ~1;
            } else if (level.var_a48f9f79[#"hash_464a6e9e035a826e"] == 3) {
                flags |= 1;
            }
        #/
        namespace_61e6d095::function_9bc1d2f1(uid, self.var_3e95b88f.var_294a441e[prompt], flags, 1, "flags", self.var_3e95b88f.var_db58523e);
        if (isdefined(level.prompts[prompt].var_9a98e590)) {
            self thread [[ level.prompts[prompt].var_9a98e590 ]](prompt, self.var_3e95b88f);
        }
    }
}

// Namespace prompts/prompts
// Params 0, eflags: 0x6 linked
// Checksum 0xd752073, Offset: 0x8860
// Size: 0x16e
function private function_8de9a77a() {
    namespace_61e6d095::remove(self.var_3e95b88f.uid);
    if (isdefined(self.var_3e95b88f.var_b003a020)) {
        namespace_61e6d095::remove(self.var_3e95b88f.var_b003a020);
        self.var_3e95b88f.var_b003a020 = undefined;
    }
    if (isdefined(self.var_3e95b88f.objective)) {
        namespace_96850e69::function_278c15e6(self.var_3e95b88f.objective, self, 0);
    }
    if (self flag::get(#"hash_305ce4d5b74a637a")) {
        self flag::clear(#"hash_305ce4d5b74a637a");
        player = getplayers()[0];
        player flag::clear(#"hash_599ec0eee77657ef");
        player val::reset_all(#"hash_599ec0eee77657ef");
    }
    self notify(#"hash_7d3af7cbbc793b23");
    self.var_3e95b88f.uid = undefined;
}

// Namespace prompts/prompts
// Params 2, eflags: 0x6 linked
// Checksum 0x541f68a3, Offset: 0x89d8
// Size: 0x1a0
function private function_93551c9a(uid, prompt) {
    self endon(#"death", "prompt_removed_" + prompt, #"hash_7d3af7cbbc793b23");
    player = getplayers()[0];
    player endon(#"death");
    gamepad = player gamepadusedlast();
    button_text[0] = level.prompts[prompt].var_e4c7b05f;
    button_text[1] = level.prompts[prompt].button_text;
    namespace_61e6d095::function_f2a9266(uid, self.var_3e95b88f.var_294a441e[prompt], "button_text", button_text[gamepad], self.var_3e95b88f.var_db58523e);
    while (true) {
        waitframe(1);
        if (gamepad != player gamepadusedlast()) {
            gamepad = !gamepad;
            namespace_61e6d095::function_f2a9266(uid, self.var_3e95b88f.var_294a441e[prompt], "button_text", button_text[gamepad], self.var_3e95b88f.var_db58523e);
        }
    }
}

// Namespace prompts/prompts
// Params 1, eflags: 0x6 linked
// Checksum 0x7a25f7c5, Offset: 0x8b80
// Size: 0x2d8
function private function_17533001(uid) {
    self endoncallback(&function_74f42405, #"death", #"all_prompts_removed", #"hash_7d3af7cbbc793b23");
    level endon(#"level_restarting");
    actor_name = isdefined(self.var_3e95b88f.display_name) ? self.var_3e95b88f.display_name : self function_7f0363e8();
    var_2d3f59fc = isdefined(self.var_3e95b88f.team) ? self.var_3e95b88f.team : util::getteamindex(self getteam());
    if (actor_name === "") {
        actor_name = undefined;
    }
    while (true) {
        ret = self waittill(#"hash_5ede0284920c4c56");
        if (ret.interactable || isdefined(self.var_3e95b88f.var_fc01e65d)) {
            if (isdefined(self.var_3e95b88f.namespace_image)) {
                namespace_61e6d095::function_9ade1d9b(uid, "namespace_image", self.var_3e95b88f.namespace_image);
                namespace_61e6d095::function_b1e6d7a8(uid, isdefined(self.var_3e95b88f.var_fc01e65d) ? self.var_3e95b88f.var_fc01e65d : 0);
                self globallogic_ui::function_ec25f500(" ", 0);
            } else if (isdefined(actor_name)) {
                self globallogic_ui::function_ec25f500(actor_name, var_2d3f59fc);
            }
            continue;
        }
        if (isdefined(self.var_3e95b88f.namespace_image)) {
            namespace_61e6d095::function_9ade1d9b(uid, "namespace_image", #"");
            namespace_61e6d095::function_b1e6d7a8(uid, 0);
            self globallogic_ui::function_109202c3();
            continue;
        }
        if (isdefined(actor_name)) {
            self globallogic_ui::function_109202c3();
        }
    }
}

// Namespace prompts/prompts
// Params 1, eflags: 0x6 linked
// Checksum 0x6b4401e, Offset: 0x8e60
// Size: 0x24
function private function_74f42405(*end_on) {
    self globallogic_ui::function_109202c3();
}

// Namespace prompts/prompts
// Params 0, eflags: 0x6 linked
// Checksum 0xa471f1c5, Offset: 0x8e90
// Size: 0x58
function private function_5a11b8f6() {
    if (isstruct(self) || self.classname === "script_origin" || isplayer(self)) {
        return false;
    }
    return true;
}


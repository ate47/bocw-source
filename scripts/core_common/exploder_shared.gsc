// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\sound_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace exploder;

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x5
// Checksum 0x6b9380c9, Offset: 0x1a0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"exploder", &preinit, &postinit, undefined, undefined);
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x77fa6fce, Offset: 0x1f8
// Size: 0x1c
function private preinit() {
    level._client_exploders = [];
    level._client_exploder_ids = [];
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xc98e27fa, Offset: 0x220
// Size: 0xd38
function private postinit() {
    level.exploders = [];
    ents = getentarray("script_brushmodel", "classname");
    smodels = getentarray("script_model", "classname");
    for (i = 0; i < smodels.size; i++) {
        ents[ents.size] = smodels[i];
    }
    for (i = 0; i < ents.size; i++) {
        if (isdefined(ents[i].script_prefab_exploder)) {
            ents[i].script_exploder = ents[i].script_prefab_exploder;
        }
        if (isdefined(ents[i].script_exploder)) {
            if (ents[i].script_exploder < 10000) {
                level.exploders[ents[i].script_exploder] = 1;
            }
            if (ents[i].model == "fx" && (!isdefined(ents[i].targetname) || ents[i].targetname != "exploderchunk")) {
                ents[i] hide();
                continue;
            }
            if (isdefined(ents[i].targetname) && ents[i].targetname == "exploder") {
                ents[i] hide();
                ents[i] notsolid();
                if (isdefined(ents[i].script_disconnectpaths)) {
                    ents[i] connectpaths();
                }
                continue;
            }
            if (isdefined(ents[i].targetname) && ents[i].targetname == "exploderchunk") {
                ents[i] hide();
                ents[i] notsolid();
                if (isdefined(ents[i].spawnflags) && (ents[i].spawnflags & 1) == 1) {
                    ents[i] connectpaths();
                }
            }
        }
    }
    script_exploders = [];
    potentialexploders = getentarray("script_brushmodel", "classname");
    for (i = 0; i < potentialexploders.size; i++) {
        if (isdefined(potentialexploders[i].script_prefab_exploder)) {
            potentialexploders[i].script_exploder = potentialexploders[i].script_prefab_exploder;
        }
        if (isdefined(potentialexploders[i].script_exploder)) {
            script_exploders[script_exploders.size] = potentialexploders[i];
        }
    }
    println("<unknown string>" + potentialexploders.size);
    potentialexploders = getentarray("script_model", "classname");
    for (i = 0; i < potentialexploders.size; i++) {
        if (isdefined(potentialexploders[i].script_prefab_exploder)) {
            potentialexploders[i].script_exploder = potentialexploders[i].script_prefab_exploder;
        }
        if (isdefined(potentialexploders[i].script_exploder)) {
            script_exploders[script_exploders.size] = potentialexploders[i];
        }
    }
    println("<unknown string>" + potentialexploders.size);
    potentialexploders = getentarray("item_health", "classname");
    for (i = 0; i < potentialexploders.size; i++) {
        if (isdefined(potentialexploders[i].script_prefab_exploder)) {
            potentialexploders[i].script_exploder = potentialexploders[i].script_prefab_exploder;
        }
        if (isdefined(potentialexploders[i].script_exploder)) {
            script_exploders[script_exploders.size] = potentialexploders[i];
        }
    }
    println("<unknown string>" + potentialexploders.size);
    if (!isdefined(level.createfxent)) {
        level.createfxent = [];
    }
    acceptabletargetnames = [];
    acceptabletargetnames[#"exploderchunk visible"] = 1;
    acceptabletargetnames[#"exploderchunk"] = 1;
    acceptabletargetnames[#"exploder"] = 1;
    for (i = 0; i < script_exploders.size; i++) {
        exploder = script_exploders[i];
        ent = createexploder(exploder.script_fxid);
        ent.v = [];
        ent.v[#"origin"] = exploder.origin;
        ent.v[#"angles"] = exploder.angles;
        ent.v[#"delay"] = exploder.script_delay;
        ent.v[#"firefx"] = exploder.script_firefx;
        ent.v[#"firefxdelay"] = exploder.script_firefxdelay;
        ent.v[#"firefxsound"] = exploder.script_firefxsound;
        ent.v[#"firefxtimeout"] = exploder.script_firefxtimeout;
        ent.v[#"earthquake"] = exploder.script_earthquake;
        ent.v[#"damage"] = exploder.script_damage;
        ent.v[#"damage_radius"] = exploder.script_radius;
        ent.v[#"soundalias"] = exploder.script_soundalias;
        ent.v[#"repeat"] = exploder.script_repeat;
        ent.v[#"delay_min"] = exploder.script_delay_min;
        ent.v[#"delay_max"] = exploder.script_delay_max;
        ent.v[#"target"] = exploder.target;
        ent.v[#"ender"] = exploder.script_ender;
        ent.v[#"type"] = "exploder";
        if (!isdefined(exploder.script_fxid)) {
            ent.v[#"fxid"] = "No FX";
        } else {
            ent.v[#"fxid"] = exploder.script_fxid;
        }
        ent.v[#"exploder"] = exploder.script_exploder;
        assert(isdefined(exploder.script_exploder), "<unknown string>" + exploder.origin + "<unknown string>");
        if (!isdefined(ent.v[#"delay"])) {
            ent.v[#"delay"] = 0;
        }
        if (isdefined(exploder.target)) {
            e_target = getent(ent.v[#"target"], "targetname");
            if (!isdefined(e_target)) {
                e_target = struct::get(ent.v[#"target"], "targetname");
            }
            org = e_target.origin;
            ent.v[#"angles"] = vectortoangles(org - ent.v[#"origin"]);
        }
        if (exploder.classname == "script_brushmodel" || isdefined(exploder.model)) {
            ent.model = exploder;
            ent.model.disconnect_paths = exploder.script_disconnectpaths;
        }
        if (isdefined(exploder.targetname) && isdefined(acceptabletargetnames[exploder.targetname])) {
            ent.v[#"exploder_type"] = exploder.targetname;
            continue;
        }
        ent.v[#"exploder_type"] = "normal";
    }
    level.createfxexploders = [];
    for (i = 0; i < level.createfxent.size; i++) {
        ent = level.createfxent[i];
        if (ent.v[#"type"] != "exploder") {
            continue;
        }
        ent.v[#"exploder_id"] = getexploderid(ent);
        if (!isdefined(level.createfxexploders[ent.v[#"exploder"]])) {
            level.createfxexploders[ent.v[#"exploder"]] = [];
        }
        level.createfxexploders[ent.v[#"exploder"]][level.createfxexploders[ent.v[#"exploder"]].size] = ent;
    }
    level.radiantexploders = [];
    reportexploderids();
    foreach (trig in trigger::get_all()) {
        if (isdefined(trig.script_prefab_exploder)) {
            trig.script_exploder = trig.script_prefab_exploder;
        }
        if (isdefined(trig.script_exploder)) {
            level thread exploder_trigger(trig, trig.script_exploder);
        }
        if (isdefined(trig.script_exploder_radiant)) {
            level thread exploder_trigger(trig, trig.script_exploder_radiant);
        }
        if (isdefined(trig.script_stop_exploder)) {
            level trigger::add_function(trig, undefined, &stop_exploder, trig.script_stop_exploder);
        }
        if (isdefined(trig.script_stop_exploder_radiant)) {
            level trigger::add_function(trig, undefined, &stop_exploder, trig.script_stop_exploder_radiant);
        }
    }
}

// Namespace exploder/exploder_shared
// Params 1, eflags: 0x0
// Checksum 0x2c6c6f9, Offset: 0xf60
// Size: 0x24
function exploder_before_load(num) {
    waittillframeend();
    waittillframeend();
    exploder(num);
}

// Namespace exploder/exploder_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe0b7759c, Offset: 0xf90
// Size: 0x54
function exploder(exploder_id) {
    if (isint(exploder_id)) {
        activate_exploder(exploder_id);
        return;
    }
    activate_radiant_exploder(exploder_id);
}

// Namespace exploder/exploder_shared
// Params 1, eflags: 0x0
// Checksum 0x7d05b48f, Offset: 0xff0
// Size: 0x64
function function_993369d6(exploder_string) {
    if (isstring(exploder_string)) {
        activate_radiant_exploder(exploder_string, 1);
        return;
    }
    assertmsg("<unknown string>");
}

// Namespace exploder/exploder_shared
// Params 1, eflags: 0x0
// Checksum 0x85157d2e, Offset: 0x1060
// Size: 0x24
function exploder_stop(num) {
    stop_exploder(num);
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x0
// Checksum 0x5b8f9d9f, Offset: 0x1090
// Size: 0x3c
function exploder_sound() {
    if (isdefined(self.script_delay)) {
        wait(self.script_delay);
    }
    self playsound(level.scr_sound[self.script_sound]);
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x4704bcea, Offset: 0x10d8
// Size: 0x1e4
function cannon_effect() {
    if (isdefined(self.v[#"repeat"])) {
        for (i = 0; i < self.v[#"repeat"]; i++) {
            playfx(level._effect[self.v[#"fxid"]], self.v[#"origin"], self.v[#"forward"], self.v[#"up"]);
            self exploder_delay();
        }
        return;
    }
    self exploder_delay();
    if (isdefined(self.looper)) {
        self.looper delete();
    }
    self.looper = spawnfx(fx::get(self.v[#"fxid"]), self.v[#"origin"], self.v[#"forward"], self.v[#"up"]);
    triggerfx(self.looper);
    exploder_playsound();
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xdfe564a6, Offset: 0x12c8
// Size: 0x1a4
function fire_effect() {
    forward = self.v[#"forward"];
    up = self.v[#"up"];
    firefxsound = self.v[#"firefxsound"];
    origin = self.v[#"origin"];
    firefx = self.v[#"firefx"];
    ender = self.v[#"ender"];
    if (!isdefined(ender)) {
        ender = "createfx_effectStopper";
    }
    firefxdelay = 0.5;
    if (isdefined(self.v[#"firefxdelay"])) {
        firefxdelay = self.v[#"firefxdelay"];
    }
    self exploder_delay();
    if (isdefined(firefxsound)) {
        level thread sound::loop_fx_sound(firefxsound, origin, ender);
    }
    playfx(level._effect[firefx], self.v[#"origin"], forward, up);
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb7e177ea, Offset: 0x1478
// Size: 0x1c
function sound_effect() {
    self effect_soundalias();
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xa47157a6, Offset: 0x14a0
// Size: 0x74
function effect_soundalias() {
    origin = self.v[#"origin"];
    alias = self.v[#"soundalias"];
    self exploder_delay();
    sound::play_in_space(alias, origin);
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x1c0e36d6, Offset: 0x1520
// Size: 0x304
function trail_effect() {
    self exploder_delay();
    if (!isdefined(self.v[#"trailfxtag"])) {
        self.v[#"trailfxtag"] = "tag_origin";
    }
    temp_ent = undefined;
    if (self.v[#"trailfxtag"] == "tag_origin") {
        playfxontag(level._effect[self.v[#"trailfx"]], self.model, self.v[#"trailfxtag"]);
    } else {
        temp_ent = spawn("script_model", self.model.origin);
        temp_ent.targetname = "exploder_fx";
        temp_ent setmodel(#"tag_origin");
        temp_ent linkto(self.model, self.v[#"trailfxtag"]);
        playfxontag(level._effect[self.v[#"trailfx"]], temp_ent, "tag_origin");
    }
    if (isdefined(self.v[#"trailfxsound"])) {
        if (!isdefined(temp_ent)) {
            self.model playloopsound(self.v[#"trailfxsound"]);
        } else {
            temp_ent playloopsound(self.v[#"trailfxsound"]);
        }
    }
    if (isdefined(self.v[#"ender"]) && isdefined(temp_ent)) {
        level thread trail_effect_ender(temp_ent, self.v[#"ender"]);
    }
    if (!isdefined(self.v[#"trailfxtimeout"])) {
        return;
    }
    wait(self.v[#"trailfxtimeout"]);
    if (isdefined(temp_ent)) {
        temp_ent delete();
    }
}

// Namespace exploder/exploder_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa532c018, Offset: 0x1830
// Size: 0x4c
function trail_effect_ender(ent, ender) {
    ent endon(#"death");
    self waittill(ender);
    ent delete();
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x8289e003, Offset: 0x1888
// Size: 0x11c
function exploder_delay() {
    if (!isdefined(self.v[#"delay"])) {
        self.v[#"delay"] = 0;
    }
    min_delay = self.v[#"delay"];
    max_delay = self.v[#"delay"] + 0.001;
    if (isdefined(self.v[#"delay_min"])) {
        min_delay = self.v[#"delay_min"];
    }
    if (isdefined(self.v[#"delay_max"])) {
        max_delay = self.v[#"delay_max"];
    }
    if (min_delay > 0) {
        wait(randomfloatrange(min_delay, max_delay));
    }
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x83009e99, Offset: 0x19b0
// Size: 0x8c
function exploder_playsound() {
    if (!isdefined(self.v[#"soundalias"]) || self.v[#"soundalias"] == "nil") {
        return;
    }
    sound::play_in_space(self.v[#"soundalias"], self.v[#"origin"]);
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x6153f13f, Offset: 0x1a48
// Size: 0x114
function brush_delete() {
    num = self.v[#"exploder"];
    if (isdefined(self.v[#"delay"])) {
        wait(self.v[#"delay"]);
    } else {
        wait(0.05);
    }
    if (!isdefined(self.model)) {
        return;
    }
    assert(isdefined(self.model));
    if (!isdefined(self.v[#"fxid"]) || self.v[#"fxid"] == "No FX") {
        self.v[#"exploder"] = undefined;
    }
    waittillframeend();
    self.model delete();
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x9f43a777, Offset: 0x1b68
// Size: 0x8c
function brush_show() {
    if (isdefined(self.v[#"delay"])) {
        wait(self.v[#"delay"]);
    }
    assert(isdefined(self.model));
    self.model show();
    self.model solid();
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe3813df6, Offset: 0x1c00
// Size: 0x21c
function brush_throw() {
    if (isdefined(self.v[#"delay"])) {
        wait(self.v[#"delay"]);
    }
    ent = undefined;
    if (isdefined(self.v[#"target"])) {
        ent = getent(self.v[#"target"], "targetname");
    }
    if (!isdefined(ent)) {
        self.model delete();
        return;
    }
    self.model show();
    startorg = self.v[#"origin"];
    startang = self.v[#"angles"];
    org = ent.origin;
    temp_vec = org - self.v[#"origin"];
    x = temp_vec[0];
    y = temp_vec[1];
    z = temp_vec[2];
    self.model rotatevelocity((x, y, z), 12);
    self.model movegravity((x, y, z), 12);
    self.v[#"exploder"] = undefined;
    wait(6);
    self.model delete();
}

// Namespace exploder/exploder_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xf4f216f4, Offset: 0x1e28
// Size: 0xfa
function exploder_trigger(trigger, script_value) {
    trigger endon(#"death");
    level endon("killexplodertridgers" + script_value);
    trigger trigger::wait_till();
    if (isdefined(trigger.script_chance) && randomfloat(1) > trigger.script_chance) {
        if (isdefined(trigger.script_delay)) {
            wait(trigger.script_delay);
        } else {
            wait(4);
        }
        level thread exploder_trigger(trigger, script_value);
        return;
    }
    exploder(script_value);
    level notify("killexplodertridgers" + script_value);
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe53feac5, Offset: 0x1f30
// Size: 0xc8
function reportexploderids() {
    /#
        if (!isdefined(level._exploder_ids)) {
            return;
        }
        println("<unknown string>");
        foreach (k, v in level._exploder_ids) {
            println(k + "<unknown string>" + v);
        }
    #/
}

// Namespace exploder/exploder_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xab79bffb, Offset: 0x2000
// Size: 0xb8
function getexploderid(ent) {
    if (!isdefined(level._exploder_ids)) {
        level._exploder_ids = [];
        level._exploder_id = 1;
    }
    if (!isdefined(level._exploder_ids[ent.v[#"exploder"]])) {
        level._exploder_ids[ent.v[#"exploder"]] = level._exploder_id;
        level._exploder_id++;
    }
    return level._exploder_ids[ent.v[#"exploder"]];
}

// Namespace exploder/exploder_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xa2129771, Offset: 0x20c0
// Size: 0x80
function createexploder(fxid) {
    ent = fx::create_effect("exploder", fxid);
    ent.v[#"delay"] = 0;
    ent.v[#"exploder"] = 1;
    ent.v[#"exploder_type"] = "normal";
    return ent;
}

// Namespace exploder/exploder_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x4fd546cf, Offset: 0x2148
// Size: 0x11c
function activate_exploder(num) {
    num = int(num);
    level notify("exploder" + num);
    client_send = 1;
    if (isdefined(level.createfxexploders[num])) {
        for (i = 0; i < level.createfxexploders[num].size; i++) {
            if (client_send && isdefined(level.createfxexploders[num][i].v[#"exploder_server"])) {
                client_send = 0;
            }
            level.createfxexploders[num][i] activate_individual_exploder(num);
        }
    }
    if (level.clientscripts) {
        if (client_send == 1) {
            activate_exploder_on_clients(num);
        }
    }
}

// Namespace exploder/exploder_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xcfbf7a85, Offset: 0x2270
// Size: 0x6c
function activate_radiant_exploder(string, immediate) {
    level notify("exploder" + string);
    if (is_true(immediate)) {
        function_2f822355(string);
        return;
    }
    activateclientradiantexploder(string);
}

// Namespace exploder/exploder_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x3b1f5ca, Offset: 0x22e8
// Size: 0x304
function activate_individual_exploder(*num) {
    level notify("exploder" + self.v[#"exploder"]);
    if (!level.clientscripts || !isdefined(level._exploder_ids[int(self.v[#"exploder"])]) || isdefined(self.v[#"exploder_server"])) {
        println("<unknown string>" + self.v[#"exploder"] + "<unknown string>");
        if (isdefined(self.v[#"firefx"])) {
            self thread fire_effect();
        }
        if (isdefined(self.v[#"fxid"]) && self.v[#"fxid"] != "No FX") {
            self thread cannon_effect();
        } else if (isdefined(self.v[#"soundalias"])) {
            self thread sound_effect();
        }
        if (isdefined(self.v[#"earthquake"])) {
            self thread earthquake();
        }
        if (isdefined(self.v[#"rumble"])) {
            self thread rumble();
        }
    }
    if (isdefined(self.v[#"trailfx"])) {
        self thread trail_effect();
    }
    if (isdefined(self.v[#"damage"])) {
        self thread exploder_damage();
    }
    if (self.v[#"exploder_type"] == "exploder") {
        self thread brush_show();
        return;
    }
    if (self.v[#"exploder_type"] == "exploderchunk" || self.v[#"exploder_type"] == "exploderchunk visible") {
        self thread brush_throw();
        return;
    }
    self thread brush_delete();
}

// Namespace exploder/exploder_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x30c6fc9d, Offset: 0x25f8
// Size: 0x94
function activate_exploder_on_clients(num) {
    if (!isdefined(level._exploder_ids[num])) {
        return;
    }
    if (!isdefined(level._client_exploders[num])) {
        level._client_exploders[num] = 1;
    }
    if (!isdefined(level._client_exploder_ids[num])) {
        level._client_exploder_ids[num] = 1;
    }
    activateclientexploder(level._exploder_ids[num]);
}

// Namespace exploder/exploder_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xcbbd483e, Offset: 0x2698
// Size: 0xbc
function stop_exploder(num) {
    if (level.clientscripts) {
        delete_exploder_on_clients(num);
    }
    if (isdefined(level.createfxexploders[num])) {
        for (i = 0; i < level.createfxexploders[num].size; i++) {
            if (!isdefined(level.createfxexploders[num][i].looper)) {
                continue;
            }
            level.createfxexploders[num][i].looper delete();
        }
    }
}

// Namespace exploder/exploder_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x53f1e33a, Offset: 0x2760
// Size: 0xac
function delete_exploder_on_clients(exploder_id) {
    if (isstring(exploder_id)) {
        deactivateclientradiantexploder(exploder_id);
        return;
    }
    if (!isdefined(level._exploder_ids[exploder_id])) {
        return;
    }
    if (!isdefined(level._client_exploders[exploder_id])) {
        return;
    }
    level._client_exploders[exploder_id] = undefined;
    level._client_exploder_ids[exploder_id] = undefined;
    deactivateclientexploder(level._exploder_ids[exploder_id]);
}

// Namespace exploder/exploder_shared
// Params 1, eflags: 0x0
// Checksum 0xf93f8170, Offset: 0x2818
// Size: 0x5c
function kill_exploder(exploder_string) {
    if (isstring(exploder_string)) {
        killclientradiantexploder(exploder_string);
        return;
    }
    assertmsg("<unknown string>");
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x7b784343, Offset: 0x2880
// Size: 0x114
function exploder_damage() {
    if (isdefined(self.v[#"delay"])) {
        delay = self.v[#"delay"];
    } else {
        delay = 0;
    }
    if (isdefined(self.v[#"damage_radius"])) {
        radius = self.v[#"damage_radius"];
    } else {
        radius = 128;
    }
    damage = self.v[#"damage"];
    origin = self.v[#"origin"];
    wait(delay);
    self.model radiusdamage(origin, radius, damage, damage / 3);
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x8f51bb, Offset: 0x29a0
// Size: 0x10c
function earthquake() {
    earthquake_name = self.v[#"earthquake"];
    assert(isdefined(level.earthquake) && isdefined(level.earthquake[earthquake_name]), "<unknown string>" + earthquake_name + "<unknown string>");
    self exploder_delay();
    eq = level.earthquake[earthquake_name];
    earthquake(eq[#"magnitude"], eq[#"duration"], self.v[#"origin"], eq[#"radius"]);
}

// Namespace exploder/exploder_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb98c4779, Offset: 0x2ab8
// Size: 0x17c
function rumble() {
    self exploder_delay();
    a_players = getplayers();
    if (isdefined(self.v[#"damage_radius"])) {
        n_rumble_threshold_squared = self.v[#"damage_radius"] * self.v[#"damage_radius"];
    } else {
        println("<unknown string>" + self.v[#"exploder"] + "<unknown string>");
        n_rumble_threshold_squared = 16384;
    }
    for (i = 0; i < a_players.size; i++) {
        n_player_dist_squared = distancesquared(a_players[i].origin, self.v[#"origin"]);
        if (n_player_dist_squared < n_rumble_threshold_squared) {
            a_players[i] playrumbleonentity(self.v[#"rumble"]);
        }
    }
}

// Namespace exploder/exploder_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xb0426449, Offset: 0x2c40
// Size: 0x2c
function stop_after_duration(name, duration) {
    wait(duration);
    stop_exploder(name);
}

// Namespace exploder/exploder_shared
// Params 2, eflags: 0x0
// Checksum 0xd06ddbca, Offset: 0x2c78
// Size: 0x64
function exploder_duration(name, duration) {
    if (!is_true(duration)) {
        return;
    }
    exploder(name);
    level thread stop_after_duration(name, duration);
}


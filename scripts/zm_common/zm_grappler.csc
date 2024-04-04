// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\beam_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_grappler;

// Namespace zm_grappler/zm_grappler
// Params 0, eflags: 0x5
// Checksum 0x3c67ec7, Offset: 0x138
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_grappler", &preinit, undefined, undefined, undefined);
}

// Namespace zm_grappler/zm_grappler
// Params 0, eflags: 0x4
// Checksum 0x80e017d5, Offset: 0x180
// Size: 0xd4
function private preinit() {
    clientfield::register("scriptmover", "grappler_beam_source", 1, getminbitcountfornum(5), "int", &grappler_source, 1, 0);
    clientfield::register("scriptmover", "grappler_beam_target", 1, getminbitcountfornum(5), "int", &grappler_beam, 1, 0);
    if (!isdefined(level.grappler_beam)) {
        level.grappler_beam = "zod_beast_grapple_beam";
    }
}

// Namespace zm_grappler/zm_grappler
// Params 7, eflags: 0x0
// Checksum 0x4c4d36e, Offset: 0x260
// Size: 0xaa
function grappler_source(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.grappler_sources)) {
        level.grappler_sources = [];
    }
    assert(!isdefined(level.grappler_sources[bwastimejump]));
    level.grappler_sources[bwastimejump] = self;
    level notify("grapple_id_" + bwastimejump);
}

// Namespace zm_grappler/zm_grappler
// Params 7, eflags: 0x0
// Checksum 0x6b667e58, Offset: 0x318
// Size: 0x136
function grappler_beam(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    if (!isdefined(level.grappler_sources)) {
        level.grappler_sources = [];
    }
    if (!isdefined(level.grappler_sources[bwastimejump])) {
        level waittilltimeout(1, "grapple_id_" + bwastimejump);
    }
    assert(isdefined(level.grappler_sources[bwastimejump]));
    pivot = level.grappler_sources[bwastimejump];
    if (!isdefined(pivot)) {
        return;
    }
    if (bwastimejump) {
        thread function_34e3f163(self, "tag_origin", pivot, 0.05);
        return;
    }
    self notify(#"grappler_done");
}

// Namespace zm_grappler/zm_grappler
// Params 4, eflags: 0x0
// Checksum 0xe3c894d5, Offset: 0x458
// Size: 0x84
function function_34e3f163(player, tag, pivot, delay) {
    player endon(#"grappler_done", #"death");
    pivot endon(#"death");
    wait(delay);
    thread grapple_beam(player, tag, pivot);
}

// Namespace zm_grappler/zm_grappler
// Params 1, eflags: 0x0
// Checksum 0x12d1f66d, Offset: 0x4e8
// Size: 0x4c
function function_f4b9c325(*notifyhash) {
    level beam::kill(self.player, self.tag, self.pivot, "tag_origin", level.grappler_beam);
}

// Namespace zm_grappler/zm_grappler
// Params 3, eflags: 0x0
// Checksum 0xf9af47c1, Offset: 0x540
// Size: 0xe4
function grapple_beam(player, tag, pivot) {
    self endoncallback(&function_f4b9c325, #"death");
    self.player = player;
    self.tag = tag;
    self.pivot = pivot;
    level beam::launch(player, tag, pivot, "tag_origin", level.grappler_beam, 1);
    player waittill(#"grappler_done");
    level beam::kill(player, tag, pivot, "tag_origin", level.grappler_beam);
}


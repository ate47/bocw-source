// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\water_surface.csc;
#using scripts\core_common\trigger_shared.csc;
#using scripts\core_common\postfx_shared.csc;

#namespace waterfall;

// Namespace waterfall/waterfall
// Params 1, eflags: 0x0
// Checksum 0xb68eec9d, Offset: 0x110
// Size: 0xc0
function waterfalloverlay(localclientnum) {
    triggers = getentarray(localclientnum, "waterfall", "targetname");
    foreach (trigger in triggers) {
        trigger thread setupwaterfall(localclientnum);
    }
}

// Namespace waterfall/waterfall
// Params 1, eflags: 0x0
// Checksum 0xa3100985, Offset: 0x1d8
// Size: 0xc0
function waterfallmistoverlay(localclientnum) {
    triggers = getentarray(localclientnum, "waterfall_mist", "targetname");
    foreach (trigger in triggers) {
        trigger thread setupwaterfallmist(localclientnum);
    }
}

// Namespace waterfall/waterfall
// Params 1, eflags: 0x0
// Checksum 0xa4d55f2c, Offset: 0x2a0
// Size: 0x3e
function waterfallmistoverlayreset(localclientnum) {
    localplayer = function_5c10bd79(localclientnum);
    localplayer.rainopacity = 0;
}

// Namespace waterfall/waterfall
// Params 1, eflags: 0x0
// Checksum 0xc3db292d, Offset: 0x2e8
// Size: 0x118
function setupwaterfallmist(localclientnum) {
    level notify("setupWaterfallmist_waterfall_csc" + localclientnum);
    level endon("setupWaterfallmist_waterfall_csc" + localclientnum);
    trigger = self;
    for (;;) {
        waitresult = trigger waittill(#"trigger");
        trigplayer = waitresult.activator;
        if (!trigplayer function_21c0fa55()) {
            continue;
        }
        localclientnum = trigplayer getlocalclientnumber();
        if (isdefined(localclientnum)) {
            localplayer = function_5c10bd79(localclientnum);
        } else {
            localplayer = trigplayer;
        }
        trigger thread trigger::function_thread(localplayer, &trig_enter_waterfall_mist, &trig_leave_waterfall_mist);
    }
}

// Namespace waterfall/waterfall
// Params 2, eflags: 0x0
// Checksum 0x2ed1e15f, Offset: 0x408
// Size: 0x140
function setupwaterfall(localclientnum, *localowner) {
    level notify(#"setupwaterfall_waterfall_csc" + string(localowner));
    level endon(#"setupwaterfall_waterfall_csc" + string(localowner));
    trigger = self;
    for (;;) {
        waitresult = trigger waittill(#"trigger");
        trigplayer = waitresult.activator;
        if (!trigplayer function_21c0fa55()) {
            continue;
        }
        localowner = trigplayer getlocalclientnumber();
        if (isdefined(localowner)) {
            localplayer = function_5c10bd79(localowner);
        } else {
            localplayer = trigplayer;
        }
        trigger thread trigger::function_thread(localplayer, &trig_enter_waterfall, &trig_leave_waterfall);
    }
}

// Namespace waterfall/waterfall
// Params 1, eflags: 0x0
// Checksum 0x665374f0, Offset: 0x550
// Size: 0xb8
function trig_enter_waterfall(localplayer) {
    trigger = self;
    localclientnum = localplayer.localclientnum;
    localplayer thread postfx::playpostfxbundle(#"pstfx_waterfall");
    playsound(0, #"amb_waterfall_hit", (0, 0, 0));
    while (trigger istouching(localplayer)) {
        localplayer playrumbleonentity(localclientnum, "waterfall_rumble");
        wait(0.1);
    }
}

// Namespace waterfall/waterfall
// Params 1, eflags: 0x0
// Checksum 0xe5c1be98, Offset: 0x610
// Size: 0x7c
function trig_leave_waterfall(localplayer) {
    trigger = self;
    localclientnum = localplayer.localclientnum;
    localplayer postfx::stoppostfxbundle("pstfx_waterfall");
    if (isunderwater(localclientnum) == 0) {
        localplayer thread water_surface::startwatersheeting();
    }
}

// Namespace waterfall/waterfall
// Params 1, eflags: 0x0
// Checksum 0xb95bb637, Offset: 0x698
// Size: 0xf4
function trig_enter_waterfall_mist(localplayer) {
    localplayer endon(#"death");
    trigger = self;
    if (!isdefined(localplayer.rainopacity)) {
        localplayer.rainopacity = 0;
    }
    while (trigger istouching(localplayer)) {
        localclientnum = trigger.localclientnum;
        if (!isdefined(localclientnum)) {
            localclientnum = localplayer getlocalclientnumber();
        }
        if (isunderwater(localclientnum)) {
            break;
        }
        localplayer.rainopacity += 0.003;
        if (localplayer.rainopacity > 1) {
            localplayer.rainopacity = 1;
        }
        waitframe(1);
    }
}

// Namespace waterfall/waterfall
// Params 1, eflags: 0x0
// Checksum 0xc9f7c8ed, Offset: 0x798
// Size: 0xda
function trig_leave_waterfall_mist(localplayer) {
    localplayer endon(#"death");
    trigger = self;
    if (isdefined(localplayer.rainopacity)) {
        while (!trigger istouching(localplayer) && localplayer.rainopacity > 0) {
            localclientnum = trigger.localclientnum;
            if (isunderwater(localclientnum)) {
                break;
            }
            localplayer.rainopacity -= 0.005;
            waitframe(1);
        }
    }
    localplayer.rainopacity = 0;
}


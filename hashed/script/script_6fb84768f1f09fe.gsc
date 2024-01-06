// Atian COD Tools GSC CW decompiler test
#namespace snipercam;

// Namespace snipercam/namespace_7db676d5
// Params 5, eflags: 0x2 linked
// Checksum 0xf76920a5, Offset: 0xa0
// Size: 0x366
function function_83d35e98(attacker, var_4fa5c66a, var_83634238, victim, mode = 1) {
    parms = spawnstruct();
    var_83ca76ef = 200;
    var_3d5fa3d5 = 30;
    target_tag = "j_head";
    if (mode == 2) {
        target_tag = "tag_weapon_chest";
    }
    parms.attacker = attacker;
    parms.var_4fa5c66a = var_4fa5c66a;
    parms.var_83634238 = var_83634238;
    parms.victim = victim;
    parms.startpos = var_4fa5c66a;
    parms.startpos.parms = parms.startpos + anglestoforward(var_83634238) * var_83ca76ef;
    parms.targetpos.parms = victim gettagorigin(target_tag);
    parms.targetpos.parms = parms.targetpos + vectornormalize(parms.startpos - parms.targetpos) * var_3d5fa3d5;
    parms.var_b21e26bd.parms = victim gettagorigin("j_head");
    parms.var_e93a7f0f.parms = victim.origin;
    parms.angles.parms = vectortoangles(parms.targetpos - parms.startpos);
    parms.forward.parms = anglestoforward(parms.angles);
    parms.startpos.parms = parms.startpos + parms.forward;
    parms.distance.parms = distance(parms.targetpos, parms.startpos);
    parms.endpos.parms = parms.startpos + parms.forward * parms.distance;
    parms.timescale.parms = 0.5;
    parms.time.parms = parms.distance / 1500 * parms.timescale;
    var_9066ce9a = 0.1;
    if (mode == 3 || mode == 4) {
        var_9066ce9a = 0.02;
    } else if (mode == 2) {
        var_9066ce9a = 0.02;
    }
    parms.var_684cf08c.parms = parms.time - var_9066ce9a;
    if (parms.var_684cf08c <= 0) {
        parms.var_684cf08c.parms = parms.time;
    }
    parms.var_6051349d.parms = 1;
    if (mode == 3 || mode == 2 || mode == 4) {
        parms.var_6051349d.parms = 0.7;
    }
    return parms;
}


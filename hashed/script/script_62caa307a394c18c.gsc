// Atian COD Tools GSC CW decompiler test
#using script_5f261a5d57de5f7c;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\aats\zm_aat.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\aat_shared.gsc;

#namespace namespace_42457a0;

// Namespace namespace_42457a0/namespace_42457a0
// Params 6, eflags: 0x0
// Checksum 0x70d3bc53, Offset: 0xd0
// Size: 0x386
function function_d6863a3(inflictor, attacker, meansofdeath, weapon, aat, item) {
    element = self.var_8126f3c8;
    player = attacker;
    if (!isplayer(player) && isplayer(inflictor)) {
        player = inflictor;
    }
    if (isdefined(aat) && isdefined(weapon) && !isdefined(element) && isplayer(player) && (meansofdeath !== "MOD_MELEE" || weapon.type === "melee")) {
        if (isstruct(aat)) {
            element = aat.element;
        } else if (isstring(aat) || ishash(aat)) {
            element = zm_aat::function_70c0e823(aat);
        }
    }
    if (!isdefined(element)) {
        element = zm_weapons::function_f066796f(weapon);
    }
    if (!isdefined(element) && isdefined(item)) {
        if (isplayer(player) && isdefined(weapon) && !item_inventory::function_4d426f94(weapon)) {
            if (!isdefined(item)) {
                item = player item_inventory::function_230ceec4(weapon);
            }
            if (isdefined(item.var_e91aba42)) {
                var_c3317960 = gibserverutils::function_de4d9d(weapon, item.var_e91aba42);
                if (isdefined(var_c3317960)) {
                    switch (var_c3317960) {
                    case 1:
                        element = #"hash_bd108911963a54f";
                        break;
                    case 4:
                    case 14:
                    case 15:
                        element = #"electrical";
                        break;
                    case 3:
                    case 10:
                    case 12:
                        element = #"fire";
                        break;
                    case 7:
                    case 9:
                        element = #"explosive";
                        break;
                    case 6:
                    case 8:
                    case 16:
                        element = #"hash_16b5c37d8feae38c";
                        break;
                    }
                }
            }
        }
    }
    return element;
}

// Namespace namespace_42457a0/namespace_42457a0
// Params 1, eflags: 0x0
// Checksum 0x8bb4eb24, Offset: 0x460
// Size: 0xc4
function function_1b3815a7(element) {
    if (isdefined(element) && isdefined(self.var_19f5037) && is_true(self.var_19f5037[element])) {
        switch (element) {
        case #"fire":
            return 1;
        case #"explosive":
            return 2;
        case #"hash_16b5c37d8feae38c":
            return 3;
        case #"electrical":
            return 4;
        case #"hash_bd108911963a54f":
            return 5;
            break;
        }
    }
    return 0;
}

// Namespace namespace_42457a0/namespace_42457a0
// Params 1, eflags: 0x0
// Checksum 0xc19d5d0f, Offset: 0x530
// Size: 0xdc
function function_9caeb2f3(var_a4a310f7) {
    var_2bce48e0 = [];
    if (!isdefined(var_a4a310f7)) {
        return var_2bce48e0;
    }
    foreach (entry in var_a4a310f7) {
        if (isdefined(entry.type) && is_true(entry.var_4d90aaec)) {
            var_2bce48e0[entry.type] = 1;
        }
    }
    return var_2bce48e0;
}

// Namespace namespace_42457a0/namespace_42457a0
// Params 13, eflags: 0x0
// Checksum 0x1f3465a9, Offset: 0x618
// Size: 0x210
function function_9fbcd067(element, inflictor, attacker, damage, *flags, *meansofdeath, *weapon, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex, *surfacetype) {
    if (!isdefined(shitloc)) {
        return;
    }
    var_68ceb6c4 = surfacetype;
    if (isdefined(self.var_19f5037) && is_true(self.var_19f5037[shitloc])) {
        var_68ceb6c4 = surfacetype * 1.5;
        if (isplayer(boneindex) && boneindex namespace_e86ffa8::function_cd6787b(4)) {
            var_68ceb6c4 = var_68ceb6c4 + (var_68ceb6c4 - surfacetype) * 0.5;
        }
        level.var_d921ba10 = 1;
        /#
            if (is_true(level.var_a12b24d0)) {
                function_8666eb93(surfacetype, var_68ceb6c4, shitloc, isplayer(psoffsettime) ? psoffsettime : boneindex, self);
            }
        #/
    } else {
        /#
            if (is_true(level.var_a12b24d0) && !is_true(level.var_98e71360)) {
                function_8666eb93(surfacetype, var_68ceb6c4, shitloc, isplayer(psoffsettime) ? psoffsettime : boneindex, self);
            }
        #/
    }
    return var_68ceb6c4;
}

// Namespace namespace_42457a0/namespace_42457a0
// Params 11, eflags: 0x0
// Checksum 0x96d00a51, Offset: 0x830
// Size: 0xde
function function_601fabe9(element, amount, pos, attacker, inflictor, hitloc, mod, dflags, weapon, var_65c05877, var_9473a4eb) {
    self.var_8126f3c8 = element;
    var_68ceb6c4 = amount;
    self dodamage(var_68ceb6c4, pos, attacker, inflictor, hitloc, mod, dflags, weapon, var_65c05877, is_true(var_9473a4eb));
    if (isalive(self)) {
        self.var_8126f3c8 = undefined;
    }
}

// Namespace namespace_42457a0/namespace_42457a0
// Params 0, eflags: 0x0
// Checksum 0xb4b87c19, Offset: 0x918
// Size: 0x11c
function function_5dbd7c2a() {
    /#
        level.var_bb60d9c = 1;
        waittill_can_add_debug_command();
        function_5ac4dc99("<unknown string>", "<unknown string>");
        function_cd140ee9("<unknown string>", &function_977b852e);
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
    #/
}

// Namespace namespace_42457a0/namespace_42457a0
// Params 1, eflags: 0x0
// Checksum 0xf7d46128, Offset: 0xa40
// Size: 0x17c
function function_977b852e(dvar) {
    /#
        if (dvar.value === "<unknown string>") {
            return;
        }
        tokens = strtok(dvar.value, "<unknown string>");
        switch (tokens[0]) {
        case #"toggle_debug":
            level.var_a12b24d0 = !is_true(level.var_a12b24d0);
            if (!is_true(level.var_a12b24d0)) {
                level notify(#"hash_7417360c17579602");
            } else {
                level thread function_793d38f();
            }
            break;
        case #"hash_8c3f5aa0d2959b8":
            level.var_98e71360 = !is_true(level.var_98e71360);
            break;
        case #"hash_2ba0f54a8ae24152":
            function_11c1d3c(tokens[1]);
            break;
        }
        setdvar(dvar.name, "<unknown string>");
    #/
}

// Namespace namespace_42457a0/namespace_42457a0
// Params 0, eflags: 0x0
// Checksum 0xa9338ea, Offset: 0xbc8
// Size: 0x36e
function function_793d38f() {
    /#
        level endon(#"game_ended", #"hash_7417360c17579602");
        level.var_cc43c151 = [];
        level.var_536f1a3 = 0;
        var_92abc4e4 = [#"hash_bd108911963a54f":"<unknown string>", #"electrical":"<unknown string>", #"hash_16b5c37d8feae38c":"<unknown string>", #"explosive":"<unknown string>", #"fire":"<unknown string>"];
        while (1) {
            waitframe(1);
            offset = 75 + 22 * 11;
            if (is_true(level.var_98e71360)) {
                debug2dtext((105, offset * 0.85, 0), "<unknown string>" + "<unknown string>", (1, 1, 1), undefined, vectorscale((1, 1, 1), 0.1), 0.9, 0.85);
                offset = offset - 22;
            } else {
                offset = offset - 22;
            }
            for (i = 0; i < level.var_cc43c151.size; i++) {
                index = (level.var_536f1a3 - i + level.var_cc43c151.size - 1) % level.var_cc43c151.size;
                var_2a31c87f = level.var_cc43c151[index];
                string = var_2a31c87f.timestamp + "<unknown string>" + "<unknown string>" + var_2a31c87f.attacker + "<unknown string>" + "<unknown string>" + "<unknown string>" + var_2a31c87f.damage + "<unknown string>" + var_2a31c87f.var_d036befe + "<unknown string>" + "<unknown string>" + var_92abc4e4[var_2a31c87f.element] + function_9e72a96(var_2a31c87f.element) + "<unknown string>" + "<unknown string>" + "<unknown string>" + var_2a31c87f.entity;
                debug2dtext((105, offset * 0.85, 0), string, (1, 1, 1), undefined, i == 0 ? vectorscale((1, 1, 1), 0.2) : vectorscale((1, 1, 1), 0.1), 0.9, 0.85);
                offset = offset - 22;
            }
        }
    #/
}

// Namespace namespace_42457a0/namespace_42457a0
// Params 5, eflags: 0x0
// Checksum 0x63a6f993, Offset: 0xf40
// Size: 0x228
function function_8666eb93(damage, var_d036befe, element, attacker, entity) {
    /#
        level.var_cc43c151[level.var_536f1a3] = {#timestamp:gettime(), #entity:isdefined(entity) ? isplayer(entity) ? "<unknown string>" + entity getentitynumber() : isactor(entity) ? function_9e72a96(isdefined(entity.var_9fde8624) ? entity.var_9fde8624 : entity.archetype) : entity getentitynumber() : "<unknown string>", #attacker:isdefined(attacker) ? isplayer(attacker) ? "<unknown string>" + attacker getentitynumber() : isactor(attacker) ? function_9e72a96(isdefined(attacker.var_9fde8624) ? attacker.var_9fde8624 : attacker.archetype) : attacker getentitynumber() : "<unknown string>", #element:element, #var_d036befe:var_d036befe, #damage:damage};
        level.var_536f1a3 = (level.var_536f1a3 + 1) % 10;
    #/
}

// Namespace namespace_42457a0/namespace_42457a0
// Params 1, eflags: 0x0
// Checksum 0x5a42d70f, Offset: 0x1170
// Size: 0x108
function function_11c1d3c(type) {
    /#
        var_f8ca59a8 = getentitiesinradius(level.players[0].origin, 512, 15);
        foreach (ai in var_f8ca59a8) {
            ai function_601fabe9(type, 1, level.players[0].origin, level.players[0], level.players[0], "<unknown string>", "<unknown string>", 0);
        }
    #/
}

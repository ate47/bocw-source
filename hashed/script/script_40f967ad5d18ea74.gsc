// Atian COD Tools GSC CW decompiler test
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_1ce46999727f2f2b;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using script_68cdf0ca5df5e;
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

#namespace namespace_c85a46fe;

// Namespace namespace_c85a46fe
// Method(s) 11 Total 11
class class_6fd989ce {

    // Namespace class_6fd989ce/namespace_c85a46fe
    // Params 0, eflags: 0xa linked
    // Checksum 0x7255cd5, Offset: 0x330
    // Size: 0x6a
    __constructor() {
        self.m_name = "";
        self.var_5466886f = "";
        self.var_2d1aa65b = 512;
        self.var_1ac7d2e7 = 256;
        self.var_da2586f5 = 15;
        self.var_85613d6b = [];
        self.m_health = 12000;
        self.var_6b6ff268 = 1;
    }

    // Namespace namespace_6fd989ce/namespace_c85a46fe
    // Params 0, eflags: 0x82 linked class_linked
    // Checksum 0x80f724d1, Offset: 0x3a8
    // Size: 0x4
    function __destructor() {
        
    }

    // Namespace namespace_6fd989ce/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x88f9e901, Offset: 0x690
    // Size: 0xa
    function function_1296c737() {
        return self.var_da2586f5;
    }

    // Namespace namespace_6fd989ce/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0xb9d667c7, Offset: 0x630
    // Size: 0xa
    function getname() {
        return self.m_name;
    }

    // Namespace namespace_6fd989ce/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0xbe9f7462, Offset: 0x6d8
    // Size: 0xa
    function function_6b86128a() {
        return self.var_6b6ff268;
    }

    // Namespace namespace_6fd989ce/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x509ab970, Offset: 0x678
    // Size: 0xa
    function getheight() {
        return self.var_1ac7d2e7;
    }

    // Namespace namespace_6fd989ce/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0xc51fdb7f, Offset: 0x6a8
    // Size: 0xa
    function function_910a1ed9() {
        return self.var_85613d6b;
    }

    // Namespace namespace_6fd989ce/namespace_c85a46fe
    // Params 1, eflags: 0x2 linked
    // Checksum 0x43cc41de, Offset: 0x3b8
    // Size: 0x26e
    function init(var_d7dae20a) {
        self.m_name = var_d7dae20a.script_noteworthy;
        /#
            assert(isdefined(self.m_name) && self.m_name != "<unknown string>", "<unknown string>");
        #/
        a_toks = strtok(var_d7dae20a.script_string, ",");
        /#
            assert(a_toks.size >= 3, "<unknown string>" + var_d7dae20a.script_string);
        #/
        self.var_5466886f = a_toks[0];
        self.var_2d1aa65b = int(a_toks[1]);
        self.var_1ac7d2e7 = int(a_toks[2]);
        if (a_toks.size >= 4) {
            self.var_da2586f5 = int(a_toks[3]);
        }
        if (a_toks.size >= 5) {
            self.m_health = int(a_toks[4]);
            if (!isdefined(self.m_health)) {
                self.m_health = 12000;
            }
        }
        if (a_toks.size >= 6) {
            self.var_6b6ff268 = int(a_toks[5]);
        }
        self.var_85613d6b = struct::get_array(var_d7dae20a.target, "targetname");
        foreach (node in self.var_85613d6b) {
            node.origin.node = node.origin - var_d7dae20a.origin;
        }
    }

    // Namespace namespace_6fd989ce/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa2dcbb4e, Offset: 0x660
    // Size: 0xa
    function getwidth() {
        return self.var_2d1aa65b;
    }

    // Namespace namespace_6fd989ce/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x66ed6748, Offset: 0x648
    // Size: 0xa
    function function_c1009efb() {
        return self.var_5466886f;
    }

    // Namespace namespace_6fd989ce/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa5ed55ba, Offset: 0x6c0
    // Size: 0xa
    function function_de9607de() {
        return self.m_health;
    }

}

// Namespace namespace_c85a46fe
// Method(s) 39 Total 39
class class_c4926dee {

    // Namespace class_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0xa linked
    // Checksum 0x4a777a2, Offset: 0x928
    // Size: 0x106
    __constructor() {
        self.var_de510cda = undefined;
        self.var_a3c3a5f4 = undefined;
        self.m_model = undefined;
        self.var_915ae41d = 15;
        self.var_71c23335 = [];
        self.var_1dd049a8 = 0;
        self.var_31d445dc = [];
        self.m_type = undefined;
        self.var_1d308eec = "generic_generator_active";
        self.var_87ef4b13 = "generic_generator_die";
        self.var_5eeaacc8 = #"zmb_aat_kilowatt_explode";
        self.var_520afec4 = #"zmb_aat_kilowatt_explode";
        self.var_c24010e8 = 0;
        self.var_83cb975 = undefined;
        self.var_cda957a8 = undefined;
        self.var_c35ec3b3 = undefined;
        self.var_24bb61f1 = undefined;
        self.var_60b96c85 = 1;
        self.var_71fccd1d = undefined;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x82 linked class_linked
    // Checksum 0x250ab5e1, Offset: 0xa38
    // Size: 0x24
    function __destructor() {
        self.var_31d445dc = [];
        namespace_1e25ad94::function_f5f0c0f8("Generator destructor being called.");
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 4, eflags: 0x2 linked
    // Checksum 0xd451df44, Offset: 0x13a0
    // Size: 0x66
    function function_331fc68(activefx, var_3ac6a87b, spawnfx, var_6d8746ef = 1) {
        self.var_1d308eec = activefx;
        self.var_87ef4b13 = var_3ac6a87b;
        self.var_cda957a8 = spawnfx;
        self.var_24bb61f1 = var_6d8746ef;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 13, eflags: 0x2 linked
    // Checksum 0xf03ca3b2, Offset: 0x1eb0
    // Size: 0x688
    function function_5576668(einflictor, eattacker, idamage, *idflags, smeansofdeath, *weapon, *var_fd90b0bb, vpoint, *vdir, *shitloc, *psoffsettime, *iboneindex, *imodelindex) {
        if ([[ self.generator ]]->function_ea4696bd(shitloc) == 0) {
            return 0;
        }
        if (iboneindex === #"mod_crush") {
            return 0;
        }
        if (isdefined(shitloc) && shitloc.team === self.team) {
            return 0;
        }
        if (is_true(level.var_8cff5775.var_318aa67a) && isdefined(shitloc)) {
            distsq = distancesquared(self.origin, shitloc.origin);
            if (distsq > function_a3f6cdac(1500)) {
                return 0;
            } else if (distsq < function_a3f6cdac(300)) {
                psoffsettime = psoffsettime;
            } else {
                lerp = 1 - distsq / function_a3f6cdac(1500);
                psoffsettime = int(lerpfloat(0, psoffsettime, lerp));
            }
        }
        psoffsettime = int(psoffsettime);
        var_799e18e5 = imodelindex;
        var_5f32808d = 1;
        if (psoffsettime >= 1000) {
            var_5f32808d = 2;
        }
        self namespace_ec06fe4a::function_2f4b0f9(self.health, shitloc, var_799e18e5, psoffsettime, var_5f32808d);
        if (psoffsettime >= self.health) {
            self.takedamage = 0;
            psoffsettime = self.health - 1;
            if (isdefined(vdir)) {
                owner = isvehicle(vdir) ? vdir getvehicleowner() : isdefined(vdir.owner) ? vdir.owner : undefined;
            }
            if (isdefined(owner) && isdefined(owner.owner)) {
                owner = owner.owner;
            }
            if (isdefined(owner)) {
                shitloc = owner;
            }
            if (isplayer(shitloc)) {
                shitloc namespace_eccff4fb::function_70d75028(undefined, 2500);
                xp = [[ self.generator ]]->isactive() ? getdvarint(#"hash_68999e371537612e", 350) : getdvarint(#"hash_1a9633163aac4fab", 100);
                namespace_7f5aeb59::function_f8645db3(xp);
                level.var_8cff5775.var_148272df++;
            }
            var_a49e1d80 = [[ self.generator ]]->function_3e35eb73();
            foreach (spawner in var_a49e1d80) {
                if (isdefined(spawner)) {
                    spawner notify(#"hash_38a47f8bbc000501");
                }
            }
            namespace_ff8b8430::function_f7086924(self);
            foreach (ai in [[ self.generator ]]->function_4d5eefc7()) {
                if (!isdefined(ai)) {
                    continue;
                }
                if (is_true(ai.var_1f2d0447) && gettime() - ai.var_8cff5775.birthtime < 1500) {
                    ai.annihilate.ai = 1;
                    ai thread namespace_ec06fe4a::function_570729f0(0.1);
                }
            }
            level thread namespace_c85a46fe::function_40ec656b(self, [[ self.generator ]]->function_68e475d0(), [[ self.generator ]]->function_8370e1a3());
        }
        if (isplayer(shitloc) && self.var_21a4af6a > 0) {
            self.var_21a4af6a = self.var_21a4af6a - psoffsettime;
            points = int(psoffsettime / 25) * 25;
            points = points >> 2;
            points = int(points / 25) * 25;
            shitloc namespace_eccff4fb::function_70d75028(undefined, points);
        }
        return psoffsettime;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0xd7c5bc32, Offset: 0x1478
    // Size: 0xa
    function function_bf5fc68() {
        return self.var_24bb61f1;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x60fbe9a0, Offset: 0x1250
    // Size: 0xe
    function function_fa5c9c4() {
        return self.var_60b96c85 == 0;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x2c35abb1, Offset: 0x1460
    // Size: 0xa
    function function_3038a5ee() {
        return self.var_cda957a8;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0xbd85dca5, Offset: 0x1220
    // Size: 0x10
    function function_30a0163e() {
        return self.var_60b96c85 == 2;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x2e8df954, Offset: 0x1298
    // Size: 0x12
    function getcenter() {
        return self.m_model.origin;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x836fa98c, Offset: 0x1308
    // Size: 0xa
    function function_3e35eb73() {
        return self.var_31d445dc;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6e533834, Offset: 0x16c0
    // Size: 0x4a0
    function function_41157a40() {
        level endon(#"game_over");
        self endon(#"destroy");
        if (function_30a0163e()) {
            while (level flag::get("dungeon_building")) {
                wait(1);
            }
        }
        while (1) {
            if (!isalive()) {
                return;
            }
            var_d4f1a9a3 = self.var_1dd049a8;
            self.var_1dd049a8 = 0;
            players = getplayers();
            if (function_30a0163e()) {
                room = function_7475529a();
                if (!isdefined(room)) {
                    return;
                }
                foreach (player in players) {
                    if (player.var_8cff5775.var_2fb8ffeb === room) {
                        self.var_1dd049a8 = 1;
                        break;
                    }
                    foreach (adjacent in room.neighbors) {
                        if (!isdefined(adjacent)) {
                            continue;
                        }
                        if (player.var_8cff5775.var_2fb8ffeb === adjacent) {
                            self.var_1dd049a8 = 1;
                            break;
                        }
                    }
                }
            } else {
                foreach (player in players) {
                    if (player istouching(self.var_a3c3a5f4)) {
                        self.var_1dd049a8 = 1;
                        break;
                    }
                }
            }
            self.var_1dd049a8 = self.var_1dd049a8 & function_d8b78bb3();
            if (var_d4f1a9a3 && !self.var_1dd049a8) {
                self.m_model namespace_83eb6304::turnofffx(function_45ee8bad());
                self.m_model clientfield::set("show_health_bar", 0);
                self.m_model namespace_c85a46fe::function_a5c8be46();
                namespace_ff8b8430::function_f7086924(self.m_model);
            } else if (!var_d4f1a9a3 && self.var_1dd049a8) {
                self.m_model namespace_83eb6304::function_3ecfde67(function_45ee8bad());
                self.m_model clientfield::set("show_health_bar", 1);
                self.m_model namespace_c85a46fe::function_9bede6b9();
                if (isdefined(self.var_5eeaacc8)) {
                    self.m_model namespace_e32bb68::function_3a59ec34(self.var_5eeaacc8);
                }
            }
            wait(randomfloatrange(0.25, 0.75));
            arrayremovevalue(self.var_71c23335, undefined, 0);
        }
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x753efeff, Offset: 0x14c0
    // Size: 0xa
    function function_44549c13() {
        return self.var_c35ec3b3;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0xd830623b, Offset: 0x1490
    // Size: 0xa
    function function_45ee8bad() {
        return self.var_1d308eec;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 1, eflags: 0x2 linked
    // Checksum 0x5a74781a, Offset: 0x1048
    // Size: 0x12
    function function_4d5eefc7(*ai) {
        return self.var_71c23335;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x4f0d15ce, Offset: 0x12f0
    // Size: 0xa
    function gettype() {
        return self.m_type;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x11ab533f, Offset: 0x11f0
    // Size: 0x24
    function isalive() {
        return isdefined(self.m_model) && self.m_model.health > 0;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0xc2ff19d8, Offset: 0x14a8
    // Size: 0xa
    function function_68e475d0() {
        return self.var_87ef4b13;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0xdbe7e50a, Offset: 0x1348
    // Size: 0xa
    function function_7475529a() {
        return self.var_71fccd1d;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 1, eflags: 0x2 linked
    // Checksum 0x63b7872e, Offset: 0x1320
    // Size: 0x1a
    function function_75df0623(room) {
        self.var_71fccd1d = room;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 3, eflags: 0x2 linked
    // Checksum 0x226dc556, Offset: 0x1b68
    // Size: 0x108
    function function_7dff7809(generator, *interval, var_f0fd371f = 300) {
        self endon(#"death");
        while (1) {
            wait(1);
            if ([[ interval ]]->isactive()) {
                continue;
            }
            if (self.health < self.maxhealth) {
                self.health = math::clamp(self.health + var_f0fd371f, 0, self.maxhealth);
                health = self.health / self.maxhealth * ((1 << 8) - 1);
                self clientfield::set("set_health_bar", int(health));
            }
        }
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x44f2499, Offset: 0x12d8
    // Size: 0xa
    function function_7fcca25d() {
        return self.var_83cb975;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x7c51e70a, Offset: 0x14f0
    // Size: 0xa
    function function_8370e1a3() {
        return self.var_520afec4;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 7, eflags: 0x2 linked
    // Checksum 0x12e10a9e, Offset: 0xa68
    // Size: 0x5a4
    function init(origin, angles, def, width, height, var_8a14a619, context) {
        self.var_de510cda = def;
        self.var_60b96c85 = context;
        if (!isdefined(width)) {
            width = [[ self.var_de510cda ]]->getwidth();
        }
        if (!isdefined(height)) {
            height = [[ self.var_de510cda ]]->getheight();
        }
        if (!isdefined(var_8a14a619)) {
            var_8a14a619 = [[ self.var_de510cda ]]->function_1296c737();
        }
        if (!function_30a0163e()) {
            self.var_a3c3a5f4 = namespace_ec06fe4a::function_b5731057("trigger_radius", origin + vectorscale((0, 0, -1), 72), 2 & 16, width, height);
            if (!isdefined(self.var_a3c3a5f4)) {
                return;
            }
        }
        self.m_model = namespace_ec06fe4a::function_e22ae9b3(origin, [[ self.var_de510cda ]]->function_c1009efb());
        if (!isdefined(self.m_model)) {
            self.var_a3c3a5f4 delete();
            return;
        }
        self.m_model.modelname = [[ self.var_de510cda ]]->function_c1009efb();
        self.m_model.angles = angles;
        self.m_model.health = [[ self.var_de510cda ]]->function_de9607de() * getplayers().size;
        if (!isdefined(self.m_model.health)) {
            self.m_model.health = 5000;
        }
        self.m_model.maxhealth = self.m_model.health;
        self.m_model.var_21a4af6a = self.m_model.maxhealth;
        self.m_model.radius = width;
        self.m_model.generator = self;
        self.m_model.trigger = self.var_a3c3a5f4;
        self.m_model.takedamage = 1;
        self.m_model setcandamage(1);
        self.m_model.var_86a21346 = &function_5576668;
        self.m_model setteam(#"axis");
        self.var_915ae41d = var_8a14a619;
        self.m_model thread function_7dff7809(self, 1);
        self.var_83cb975 = namespace_ec06fe4a::function_7fcca25d("Generator" + [[ self.var_de510cda ]]->function_c1009efb());
        var_d7f42bb7 = [[ self.var_de510cda ]]->function_910a1ed9();
        foreach (node in var_d7f42bb7) {
            spawner = spawnstruct();
            spawner.origin.spawner = self.m_model.origin + rotatepoint(node.origin, self.m_model.angles);
            spawner.ai_type.spawner = node.script_noteworthy;
            if ([[ self.var_de510cda ]]->function_6b86128a()) {
                spawner.origin.spawner = namespace_ec06fe4a::function_65ee50ba(spawner.origin);
            }
            spawner.angles.spawner = node.angles + self.m_model.angles;
            spawner.var_6d14cf9d.spawner = isdefined(node.script_int) ? int(node.script_int) : 3;
            if (!isdefined(self.m_type) && isdefined(spawner.ai_type)) {
                self.m_type = spawner.ai_type;
            }
            spawner thread function_a2bbc139(self);
            self.var_31d445dc[self.var_31d445dc.size] = spawner;
        }
        self.m_model enableaimassist();
        self.m_model thread namespace_c85a46fe::function_ec072c1a(gettype());
        self thread function_41157a40();
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 1, eflags: 0x2 linked
    // Checksum 0xa8862165, Offset: 0x1c78
    // Size: 0x230
    function function_a2bbc139(generator) {
        self endon(#"hash_38a47f8bbc000501");
        generator endon(#"destroy");
        level endon(#"game_over");
        model = undefined;
        var_49a15185 = namespace_ff8b8430::function_d7c5adee(self.ai_type);
        wait(randomfloat(2));
        while (isdefined(generator) && [[ generator ]]->isalive()) {
            if ([[ generator ]]->function_e3d90223()) {
                if (!isdefined(model)) {
                    model = [[ generator ]]->getmodel();
                    spawnfx = [[ generator ]]->function_3038a5ee();
                    var_36ca64f1 = [[ generator ]]->function_44549c13();
                }
                if (isdefined(model) && isdefined(spawnfx)) {
                    model namespace_83eb6304::function_3ecfde67(spawnfx);
                    if (isdefined(var_36ca64f1)) {
                        model namespace_e32bb68::function_3a59ec34(var_36ca64f1);
                    }
                    wait([[ generator ]]->function_bf5fc68());
                    if (isdefined(model)) {
                        model namespace_83eb6304::turnofffx(spawnfx);
                    }
                }
                namespace_ff8b8430::function_a6b807ea(var_49a15185, 1, self.origin, 0, generator);
                /#
                    if (getdvarint(#"hash_14f8549e0645635d", 0)) {
                        level thread function_1d1f2c26(self.origin, self.var_6d14cf9d, 12, (1, 0, 0));
                    }
                #/
                wait(self.var_6d14cf9d);
            } else {
                wait(randomfloatrange(0.5, 2));
            }
        }
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 1, eflags: 0x2 linked
    // Checksum 0xce61670d, Offset: 0x2540
    // Size: 0xe4
    function function_b3fcddb3(array) {
        removed = array;
        arrayremovevalue(removed, undefined, 1);
        foreach (obj in removed) {
            if (function_3132f113(obj)) {
                arrayremovevalue(removed, obj, 1);
            }
        }
        return removed;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa5c24af6, Offset: 0x1268
    // Size: 0x10
    function function_bbdb303e() {
        return self.var_60b96c85 == 3;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 1, eflags: 0x2 linked
    // Checksum 0xabddd036, Offset: 0x1018
    // Size: 0x24
    function function_bcd1aaf5(ai) {
        self.var_71c23335[self.var_71c23335.size] = ai;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 3, eflags: 0x2 linked
    // Checksum 0xcbe3da80, Offset: 0x1410
    // Size: 0x42
    function function_c08f72c2(var_3c6b5a32, var_3ffd02d8, var_acedff5b) {
        self.var_5eeaacc8 = var_3c6b5a32;
        self.var_520afec4 = var_3ffd02d8;
        self.var_c35ec3b3 = var_acedff5b;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 1, eflags: 0x2 linked
    // Checksum 0x7354674c, Offset: 0x1360
    // Size: 0x34
    function enable(flag) {
        if (isdefined(self.var_a3c3a5f4)) {
            self.var_a3c3a5f4 triggerenable(flag);
        }
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa3fc3fa5, Offset: 0x11d8
    // Size: 0xa
    function isactive() {
        return self.var_1dd049a8;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x2ba37c5f, Offset: 0x1568
    // Size: 0x14e
    function destroy() {
        profilestart();
        namespace_ff8b8430::function_f7086924(self.m_model);
        self.var_c24010e8 = 1;
        foreach (ai in self.var_71c23335) {
            if (!isdefined(ai)) {
                continue;
            }
            if (is_true(ai.var_1f2d0447) && gettime() - ai.var_8cff5775.birthtime < 1500) {
                ai.annihilate.ai = 1;
                ai thread namespace_ec06fe4a::function_570729f0(0.1);
            }
        }
        level notify(self.var_83cb975);
        self notify(#"destroy");
        namespace_c85a46fe::function_320a66f9(self.m_model);
        profilestop();
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x37e4b3a, Offset: 0x1068
    // Size: 0xd8
    function function_d8b78bb3() {
        if (isdefined(level.var_8cff5775.var_182fb75a)) {
            if (function_30a0163e()) {
                return 1;
            } else {
                return (isdefined(level.var_8cff5775.var_6f3d327) && function_bbdb303e());
            }
        }
        if (isdefined(level.var_8cff5775.var_6f3d327)) {
            if (function_bbdb303e()) {
                return 1;
            } else {
                return 0;
            }
        }
        if (isdefined(level.var_8cff5775.var_a77e6349)) {
            if (function_e55669e8()) {
                return 1;
            } else {
                return 0;
            }
        }
        return 1;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x8728a7a2, Offset: 0x1148
    // Size: 0xa
    function getmodel() {
        return self.m_model;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x8a544409, Offset: 0x1160
    // Size: 0x6c
    function function_e3d90223() {
        return isactive() && isalive() && self.var_71c23335.size < self.var_915ae41d && self.var_c24010e8 == 0 && namespace_250e9486::function_60f6a9e();
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x25eee513, Offset: 0x1238
    // Size: 0x10
    function function_e55669e8() {
        return self.var_60b96c85 == 1;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x78f46566, Offset: 0x12b8
    // Size: 0x12
    function function_e5ee7aea() {
        return self.m_model.radius;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0xb754ee06, Offset: 0x14d8
    // Size: 0xa
    function function_e96aef39() {
        return self.var_5eeaacc8;
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 1, eflags: 0x2 linked
    // Checksum 0x9142cd07, Offset: 0x1508
    // Size: 0x52
    function function_ea4696bd(attacker) {
        if (isdefined(attacker) && is_true(attacker.var_8cff5775.var_3e81d24c)) {
            return 1;
        }
        return isactive();
    }

    // Namespace namespace_c4926dee/namespace_c85a46fe
    // Params 0, eflags: 0x2 linked
    // Checksum 0x885a8bcd, Offset: 0x1280
    // Size: 0xa
    function function_f4238fe4() {
        return self.var_60b96c85;
    }

}

// Namespace namespace_c85a46fe/namespace_c85a46fe
// Params 1, eflags: 0x2 linked
// Checksum 0x8b444818, Offset: 0x2da8
// Size: 0xa2
function function_f1ba2302(name) {
    foreach (var_9c185dd1 in level.var_8cff5775.var_ea48c46c) {
        if (name === [[ var_9c185dd1 ]]->getname()) {
            return var_9c185dd1;
        }
    }
}

// Namespace namespace_c85a46fe/namespace_c85a46fe
// Params 0, eflags: 0x2 linked
// Checksum 0x447f6169, Offset: 0x2e58
// Size: 0x1c6
function init() {
    clientfield::register("scriptmover", "set_icon", 1, 4, "int");
    clientfield::register("toplayer", "generator_sonar", 1, 1, "int");
    level.var_8cff5775.var_ea48c46c = [];
    level.var_8cff5775.var_8acd67ef = [];
    level.var_8cff5775.var_148272df = 0;
    var_ea48c46c = struct::get_array("generatorDef", "targetname");
    foreach (item in var_ea48c46c) {
        if (isdefined(function_f1ba2302(item.script_noteworthy))) {
            continue;
        }
        var_b5b34739 = new class_6fd989ce();
        [[ var_b5b34739 ]]->init(item);
        level.var_8cff5775.var_ea48c46c[level.var_8cff5775.var_ea48c46c.size] = var_b5b34739;
    }
    level.var_8cff5775.var_c3219b45 = [];
}

// Namespace namespace_c85a46fe/namespace_c85a46fe
// Params 3, eflags: 0x2 linked
// Checksum 0x1a18e750, Offset: 0x3028
// Size: 0xbc
function function_40ec656b(model, var_3ac6a87b, var_c4a370ce) {
    model namespace_83eb6304::function_3ecfde67(var_3ac6a87b);
    if (namespace_ec06fe4a::function_a8975c67() && isdefined(var_c4a370ce) && function_3238d10d(model.origin)) {
        playsoundatposition(var_c4a370ce, model.origin);
    }
    util::wait_network_frame();
    if (isdefined(model)) {
        function_320a66f9(model);
    }
}

// Namespace namespace_c85a46fe/namespace_c85a46fe
// Params 1, eflags: 0x2 linked
// Checksum 0xd1b8ed55, Offset: 0x30f0
// Size: 0xc8
function function_320a66f9(model) {
    model clientfield::set("show_health_bar", 0);
    model function_a5c8be46();
    model namespace_ec06fe4a::function_8c808737();
    namespace_ff8b8430::function_f7086924(model);
    arrayremovevalue(level.var_8cff5775.var_8acd67ef, model.generator);
    level.var_8cff5775.var_c3219b45[level.var_8cff5775.var_c3219b45.size] = model;
}

// Namespace namespace_c85a46fe/namespace_c85a46fe
// Params 0, eflags: 0x2 linked
// Checksum 0x90348e4, Offset: 0x31c0
// Size: 0x134
function function_5db81c1c() {
    self notify("5065c960434bfd9d");
    self endon("5065c960434bfd9d");
    level endon(#"game_over");
    while (1) {
        util::wait_network_frame();
        while (level.var_8cff5775.var_c3219b45.size) {
            model = level.var_8cff5775.var_c3219b45[0];
            arrayremoveindex(level.var_8cff5775.var_c3219b45, 0);
            if (!isdefined(model)) {
                continue;
            }
            if (isdefined(model.trigger)) {
                model.trigger delete();
            }
            namespace_1e25ad94::function_f5f0c0f8("Generator model delete Ent:" + model getentitynumber());
            model delete();
        }
    }
}

// Namespace namespace_c85a46fe/namespace_c85a46fe
// Params 1, eflags: 0x2 linked
// Checksum 0xcffd20cd, Offset: 0x3300
// Size: 0x250
function function_782e605e(name) {
    generators = struct::get_array(name + "_doa_generator", "targetname");
    var_d613e783 = (getplayers().size - 1) * 10;
    foreach (item in generators) {
        var_9b3d6734 = 100;
        if (isdefined(item.script_parameters)) {
            a_toks = strtok(item.script_parameters, ",");
            radius = int(a_toks[0]);
            if (a_toks.size >= 2) {
                height = int(a_toks[1]);
            }
            if (a_toks.size >= 3) {
                var_8a14a619 = int(a_toks[2]);
            }
            if (a_toks.size >= 4) {
                var_9b3d6734 = int(a_toks[3]);
            }
        }
        var_9b3d6734 = var_9b3d6734 + var_d613e783;
        if (var_9b3d6734 < 100 && randomint(100) > var_9b3d6734) {
            continue;
        }
        function_4c16ce2c(item.script_noteworthy, item.origin, item.angles, radius, height, var_8a14a619);
    }
}

// Namespace namespace_c85a46fe/namespace_c85a46fe
// Params 1, eflags: 0x2 linked
// Checksum 0x5900aa3, Offset: 0x3558
// Size: 0x1c4
function function_edfcfa44(context = 0) {
    level thread function_5db81c1c();
    if (context == 0) {
        while (level.var_8cff5775.var_8acd67ef.size) {
            instance = level.var_8cff5775.var_8acd67ef[0];
            if (isdefined(instance)) {
                [[ instance ]]->destroy();
            }
        }
        level.var_8cff5775.var_8acd67ef = [];
    } else {
        var_29287f31 = [];
        foreach (generator in level.var_8cff5775.var_8acd67ef) {
            if (context == [[ generator ]]->function_f4238fe4()) {
                var_29287f31[var_29287f31.size] = generator;
            }
        }
        while (var_29287f31.size) {
            instance = var_29287f31[0];
            arrayremovevalue(var_29287f31, instance);
            if (isdefined(instance)) {
                [[ instance ]]->destroy();
            }
        }
    }
    while (level.var_8cff5775.var_c3219b45.size > 0) {
        wait(1);
    }
}

// Namespace namespace_c85a46fe/namespace_c85a46fe
// Params 7, eflags: 0x2 linked
// Checksum 0x6864e387, Offset: 0x3728
// Size: 0x1c6
function function_4c16ce2c(name, origin, angles, width, height, var_8a14a619, context = 1) {
    var_9c185dd1 = function_f1ba2302(name);
    if (isdefined(var_9c185dd1)) {
        generator = new class_c4926dee();
        [[ generator ]]->init(origin, angles, var_9c185dd1, width, height, var_8a14a619, context);
        if (name == "zombie") {
            [[ generator ]]->function_331fc68([[ generator ]]->function_45ee8bad(), "zombie_generator_die");
        } else if (name == "crawler") {
            [[ generator ]]->function_331fc68("crawler_generator_spawn", "zombie_generator_die", "crawler_generator_spawn");
        } else if (name == "skeleton") {
            [[ generator ]]->function_331fc68([[ generator ]]->function_45ee8bad(), "skeleton_generator_die");
        } else if (name == "demon") {
            [[ generator ]]->function_331fc68([[ generator ]]->function_45ee8bad(), "meat_explode");
        }
        level.var_8cff5775.var_8acd67ef[level.var_8cff5775.var_8acd67ef.size] = generator;
        return generator;
    }
}

// Namespace namespace_c85a46fe/namespace_c85a46fe
// Params 1, eflags: 0x2 linked
// Checksum 0xfca9c138, Offset: 0x38f8
// Size: 0x2e
function function_ec072c1a(type) {
    self endon(#"death");
    self.var_59de50a3 = type;
}

// Namespace namespace_c85a46fe/namespace_c85a46fe
// Params 0, eflags: 0x2 linked
// Checksum 0x4edc07cd, Offset: 0x3930
// Size: 0x124
function function_9bede6b9() {
    if (!isdefined(self)) {
        return;
    }
    var_2e439c38 = undefined;
    switch (self.var_59de50a3) {
    case #"hash_2599425d9879c6cc":
        var_2e439c38 = 2;
        break;
    case #"skeleton":
        var_2e439c38 = 7;
        break;
    case #"brutus":
        var_2e439c38 = 3;
        break;
    case #"bat":
        var_2e439c38 = 4;
        break;
    case #"hash_596e8875efea2e68":
        var_2e439c38 = 5;
        break;
    case #"hash_5b7693066c832a51":
        var_2e439c38 = 6;
        break;
    case #"hash_55be6a36891e9ada":
        var_2e439c38 = 8;
        break;
    }
    if (isdefined(var_2e439c38)) {
        self clientfield::set("set_icon", var_2e439c38);
    }
}

// Namespace namespace_c85a46fe/namespace_c85a46fe
// Params 0, eflags: 0x2 linked
// Checksum 0x9d6f82df, Offset: 0x3a60
// Size: 0x2c
function function_a5c8be46() {
    if (!isdefined(self)) {
        return;
    }
    self clientfield::set("set_icon", 0);
}

// Namespace namespace_c85a46fe/namespace_c85a46fe
// Params 1, eflags: 0x2 linked
// Checksum 0xaf9f44b5, Offset: 0x3a98
// Size: 0x64
function function_47c860ff(flag) {
    if (flag) {
        self function_9bede6b9();
    } else {
        self function_a5c8be46();
    }
    if (isdefined(self.generator)) {
        [[ self.generator ]]->enable(flag);
    }
}

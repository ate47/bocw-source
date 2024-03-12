// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\scene_shared.csc;
#using scripts\core_common\animation_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\array_shared.csc;
#using script_474309807eb94f34;
#using scripts\core_common\activecamo_shared.csc;

#namespace character_customization;

// Namespace character_customization
// Method(s) 96 Total 96
class class_7da27482 {

    // Namespace class_7da27482/character_customization
    // Params 0, eflags: 0xa linked
    // Checksum 0xf6e79b2b, Offset: 0x438
    // Size: 0x2b2
    __constructor() {
        self.var_f141235b = 0;
        self.var_81bd1932 = 0;
        self._xuid = undefined;
        self._target_name = undefined;
        self._i_mode = 1;
        self.var_1d73bad9 = 0;
        self.var_cf55444c = 0;
        self.var_cfe86a3e = 0;
        self.var_f5c0467b = [7:0, 6:0, 5:0, 4:0, 3:0, 2:0, 1:0, 0:0];
        /#
            /#
                assert(-1);
            #/
        #/
        self.var_228f64da = undefined;
        self.var_e09268b7 = undefined;
        self.var_43b94d19 = 1;
        self.var_c31e86ed = 0;
        self.var_b3113387 = 0;
        self.var_444a0d45 = 0;
        self._origin = (0, 0, 0);
        self._angles = (0, 0, 0);
        self.var_9a4a8ea = undefined;
        self.var_cbcee022 = undefined;
        self.var_54430cb6 = undefined;
        self.var_5d01abf7 = undefined;
        self.var_6ce65c01 = undefined;
        self.var_9bea772f = undefined;
        self.var_a287debe = undefined;
        self.var_8d2161e9 = 0;
        self.var_b6892e9d = 0;
        self.var_45210dc7 = [];
        self.var_bf273e28 = [];
        self.var_5633914d = [];
        self.var_eb95665 = undefined;
        self.var_b627749c = 1;
        self.var_27af8d38 = [];
        self.var_bf4feef5 = 1;
        self.var_609efd3e = 1;
        self.var_9896541c = 0;
        self.var_851003fe = 1;
        self.var_ef017bf9 = 0;
        self.var_d47cfe9d = 0;
        self.var_fa881a = 0;
        self.var_506d3c33 = [];
        self.var_ff2bed36 = undefined;
        self.var_8d79cdc7 = undefined;
        self.var_640fbaae = undefined;
        self.var_266b2ff0 = undefined;
        self.var_7245a8e1 = #"";
        self.var_d781e2e4 = undefined;
        self.var_180f1c7d = [];
        self.var_87449256 = undefined;
        self.var_1d18f5c7 = 0;
    }

    // Namespace class_7da27482/character_customization
    // Params 0, eflags: 0x92 linked class_linked
    // Checksum 0x80f724d1, Offset: 0x55e0
    // Size: 0x4
    __destructor() {
        
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x61ba0cf3, Offset: 0x13b0
    // Size: 0xba
    function function_878481() {
        if (isarray(self.var_37d425ec)) {
            foreach (n_fx_id in self.var_37d425ec) {
                if (isdefined(n_fx_id)) {
                    deletefx(self.var_f141235b, n_fx_id);
                }
            }
            self.var_37d425ec = undefined;
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x97132234, Offset: 0x4890
    // Size: 0x44
    function function_47ad026() {
        if (self.var_1d18f5c7 && isdefined(self.var_cbcee022)) {
            self.var_228f64da thread animation::play(self.var_cbcee022, self.var_228f64da);
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 3, eflags: 0x6 linked
    // Checksum 0xb29d9133, Offset: 0x1640
    // Size: 0xe2
    function private function_c358189(model_name, lod = -1, mip = -1) {
        index = array::find(self.var_506d3c33, {#mip:mip, #lod:lod, #model:model_name}, &function_1a57b132);
        /#
            /#
                assert(isdefined(index));
            #/
        #/
        if (!isdefined(index)) {
            return 1;
        }
        return character_customization::function_c358189(model_name, lod, mip);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x51c94b6e, Offset: 0x5358
    // Size: 0xf2
    function is_streamed() {
        if (isdefined(self.var_228f64da)) {
            if (!self.var_228f64da isstreamed()) {
                return 0;
            }
        }
        if (self.var_9896541c && function_d9aed86()) {
            return 0;
        }
        foreach (ent in self.var_5633914d) {
            if (isdefined(ent)) {
                if (!ent isstreamed()) {
                    return 0;
                }
            }
        }
        return 1;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0xab943a17, Offset: 0x5158
    // Size: 0x38
    function function_10b0cbea() {
        [[ self ]]->function_158505aa(function_76fbb09e(self.var_f141235b, self._i_mode, self.var_1d73bad9));
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0xbc111f2b, Offset: 0x1ae8
    // Size: 0x42
    function function_158505aa(outfit_index) {
        /#
            /#
                assert(self._i_mode != 4);
            #/
        #/
        self.var_cfe86a3e = outfit_index;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x7d2d7f29, Offset: 0x4ee8
    // Size: 0x144
    function function_15a8906a(var_23904c1d) {
        if (isdefined(var_23904c1d.xuid)) {
            [[ self ]]->set_xuid(var_23904c1d.xuid);
        }
        [[ self ]]->set_character_mode(var_23904c1d.charactermode);
        [[ self ]]->set_character_index(var_23904c1d.charactertype);
        [[ self ]]->set_character_outfit(var_23904c1d.outfit);
        [[ self ]]->function_158505aa(var_23904c1d.warpaintoutfit);
        /#
            /#
                assert(var_23904c1d.outfititems.size == 8);
            #/
        #/
        foreach (itemtype, itemindex in var_23904c1d.outfititems) {
            [[ self ]]->set_character_outfit_item(itemindex, itemtype);
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x17c5513, Offset: 0xa98
    // Size: 0x90
    function function_184a4d2e(callback_fn) {
        if (!isdefined(self.var_180f1c7d)) {
            self.var_180f1c7d = [];
        } else if (!isarray(self.var_180f1c7d)) {
            self.var_180f1c7d = array(self.var_180f1c7d);
        }
        if (!isinarray(self.var_180f1c7d, callback_fn)) {
            self.var_180f1c7d[self.var_180f1c7d.size] = callback_fn;
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x253f3473, Offset: 0x1ca8
    // Size: 0x62
    function function_1978bfeb() {
        if (self.var_c31e86ed) {
            return #"tag_origin";
        }
        return character_customization::function_6bca50af(&function_6b7000e, self.var_1d73bad9, self.var_cf55444c, self.var_f5c0467b[3], self._i_mode);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 2, eflags: 0x6 linked
    // Checksum 0xea7b3e2a, Offset: 0x1730
    // Size: 0x5a
    function private function_1a57b132(data_1, data_2) {
        return data_1.model === data_2.model && data_1.lod === data_2.lod && data_1.mip === data_2.mip;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x351f463e, Offset: 0xbd8
    // Size: 0xa
    function function_1d4afc32() {
        return self.var_d47cfe9d;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0xd71b78da, Offset: 0xb48
    // Size: 0x36
    function function_1ec9448d(var_6ef2ca20) {
        if (var_6ef2ca20 != self.var_c31e86ed) {
            self.var_c31e86ed = var_6ef2ca20;
            self.var_b627749c = 1;
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x61c327b1, Offset: 0xe50
    // Size: 0xa
    function function_1f70adfe() {
        return self.var_6ce65c01;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x6 linked
    // Checksum 0x6a541b47, Offset: 0xb30
    // Size: 0xa
    function private function_217b10ed() {
        return self.var_228f64da;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0xe29809a1, Offset: 0x4e58
    // Size: 0x44
    function function_22039feb() {
        set_character_outfit(0);
        function_158505aa(0);
        function_95779b72();
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0xb549791, Offset: 0x2378
    // Size: 0x24
    function update(params) {
        self thread update_internal(params);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x3b00ee88, Offset: 0x52f8
    // Size: 0x58
    function function_225b6e07() {
        var_65496229 = [[ self ]]->function_690c9509();
        character_index = getequippedheroindex(var_65496229, self._i_mode);
        [[ self ]]->set_character_index(character_index);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x19a71291, Offset: 0x19a0
    // Size: 0xa
    function get_character_mode() {
        return self._i_mode;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa8521dbb, Offset: 0xd40
    // Size: 0xa
    function function_25725c05() {
        return self._xuid;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 2, eflags: 0x2 linked
    // Checksum 0xce2455f8, Offset: 0x5530
    // Size: 0x5c
    function function_27945cb8(on_off, force = 0) {
        if (self.var_b3113387 != on_off || force) {
            self.var_b3113387 = on_off;
            function_2a5421e3();
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x6 linked
    // Checksum 0xe37faa5, Offset: 0x5458
    // Size: 0xcc
    function private function_2a5421e3() {
        if (self.var_b3113387 && !self.var_228f64da function_d2503806(#"hash_79892e1d5a8f9f33")) {
            self.var_228f64da playrenderoverridebundle(#"hash_79892e1d5a8f9f33");
            return;
        }
        if (!self.var_b3113387 && self.var_228f64da function_d2503806(#"hash_79892e1d5a8f9f33")) {
            self.var_228f64da stoprenderoverridebundle(#"hash_79892e1d5a8f9f33");
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x97762e13, Offset: 0xc30
    // Size: 0x1a
    function set_alt_render_mode(alt_render_mode) {
        self.var_bf4feef5 = alt_render_mode;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 2, eflags: 0x2 linked
    // Checksum 0x2dd88054, Offset: 0x4988
    // Size: 0xca
    function function_39a68bf2(stop_update = 1, var_93eea46f = 0) {
        self.var_1d18f5c7 = 0;
        if (stop_update) {
            self notify(#"hash_578cb70e92c24a5a");
            self.var_1d18f5c7 = 1;
        }
        if (isdefined(self.var_54430cb6)) {
            self.var_a287debe scene::cancel(self.var_54430cb6, 0);
            if (!var_93eea46f) {
                self.var_54430cb6 = undefined;
                self.var_5d01abf7 = undefined;
                self.var_6ce65c01 = undefined;
                self.var_a287debe = undefined;
            }
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2c825a7a, Offset: 0xd18
    // Size: 0x1a
    function set_xuid(xuid) {
        self._xuid = xuid;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 2, eflags: 0x2 linked
    // Checksum 0xb4e3c46c, Offset: 0xfc8
    // Size: 0x5a
    function function_4240a39a(var_1f64805f, angles) {
        self.var_ef017bf9 = var_1f64805f;
        if (isdefined(angles)) {
            self.var_228f64da.angles = angles;
            return;
        }
        self.var_228f64da.angles = self._angles;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0xff50e8d1, Offset: 0x12e0
    // Size: 0xc2
    function function_4508c737() {
        if (self.var_fa881a || self.var_d47cfe9d) {
            return;
        }
        self notify("41ed1cc7d43366cc");
        self endon("41ed1cc7d43366cc");
        waitframe(1);
        var_28ced8cb = function_6fdb79b8(self.var_1d73bad9, self.var_cf55444c, self._i_mode);
        if (isdefined(var_28ced8cb) && isdefined(self.var_228f64da)) {
            var_28ced8cb = var_28ced8cb + "_lobby";
            self.var_37d425ec = playtagfxset(self.var_f141235b, var_28ced8cb, self.var_228f64da);
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x626de051, Offset: 0xe68
    // Size: 0x1a
    function function_47cb6b19() {
        return self.var_228f64da getentitynumber();
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0xf7e8b1b6, Offset: 0x19b8
    // Size: 0x5e
    function set_character_outfit(outfit_index) {
        /#
            /#
                assert(self._i_mode != 4);
            #/
        #/
        if (self.var_cf55444c != outfit_index) {
            self.var_b627749c = 1;
            self.var_cf55444c = outfit_index;
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x28e90288, Offset: 0xb88
    // Size: 0x1a
    function function_4a209fe9(var_ced588d9) {
        self.var_d47cfe9d = var_ced588d9;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x35814d4a, Offset: 0x1030
    // Size: 0xa
    function function_4a271da1() {
        return self.var_ef017bf9;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 4, eflags: 0x6 linked
    // Checksum 0xc6091a7e, Offset: 0x4a60
    // Size: 0xc2
    function private function_4b2b3712(localclientnum, weaponmodel, camooptions, var_49daa2f6) {
        camoindex = getcamoindex(camooptions);
        var_f4eb4a50 = activecamo::function_13e12ab1(camoindex);
        if (!isdefined(var_f4eb4a50)) {
            return 0;
        }
        stage = getactivecamostage(camooptions);
        var_3594168e = var_f4eb4a50.stages[stage];
        return activecamo::function_6c9e0e1a(localclientnum, weaponmodel, var_3594168e, var_49daa2f6);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x84060307, Offset: 0x5198
    // Size: 0x38
    function function_59d1302f() {
        for (itemtype = 0; itemtype < 8; itemtype++) {
            [[ self ]]->function_ac9cc79d(itemtype);
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x62ed3441, Offset: 0xd58
    // Size: 0xa
    function function_5ccc06e3() {
        return self.var_7245a8e1;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 2, eflags: 0x6 linked
    // Checksum 0xd39b3492, Offset: 0x44d8
    // Size: 0xcc
    function private function_60b3658e(var_2ec36514, need_wait) {
        if (need_wait) {
            self endon(#"deleted", #"hash_578cb70e92c24a5a");
            self waittill(#"cancel_gesture", #"gesture_ended");
        }
        if (isdefined(var_2ec36514)) {
            self.var_228f64da thread animation::play(var_2ec36514, self.var_228f64da);
            return;
        }
        if (isdefined(self.var_54430cb6)) {
            if (self.var_8d2161e9) {
                self.var_a287debe thread scene::play(self.var_54430cb6, self.var_228f64da);
            }
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x543d8411, Offset: 0x1880
    // Size: 0x2c
    function function_617a9ce4(character_mode) {
        /#
            assert(character_mode === self._i_mode);
        #/
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x1f08031c, Offset: 0x1df8
    // Size: 0xb4
    function function_62dd99d6(model) {
        render_options = function_aa478513({#outfitoptions:self.var_f5c0467b, #warpaintoutfitindex:self.var_cfe86a3e, #outfitindex:self.var_cf55444c, #characterindex:self.var_1d73bad9, #mode:self._i_mode});
        model function_1fac41e4(render_options);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x6 linked
    // Checksum 0xeadb9a87, Offset: 0x1478
    // Size: 0x10a
    function private function_66de4847() {
        if (isdefined(self.var_ff2bed36)) {
            self.var_ff2bed36 delete();
            self.var_ff2bed36 = undefined;
        }
        if (isdefined(self.var_8d79cdc7)) {
            self.var_8d79cdc7 delete();
            self.var_8d79cdc7 = undefined;
        }
        foreach (model_data in self.var_506d3c33) {
            character_customization::function_247f6628(model_data.model, model_data.lod, model_data.mip);
        }
        self.var_506d3c33 = [];
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0xe8d6d672, Offset: 0xce8
    // Size: 0x22
    function function_690c9509() {
        return isdefined(self.var_81bd1932) ? self.var_81bd1932 : self.var_f141235b;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0xb07916fd, Offset: 0x4950
    // Size: 0x2e
    function function_69ac4009(gesture_index) {
        gesture = get_gesture(gesture_index);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x80c7bf1d, Offset: 0xbf0
    // Size: 0xa
    function function_6b9e9618() {
        return self.var_fa881a;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x336fbd0e, Offset: 0x5118
    // Size: 0x38
    function function_72be01b9() {
        [[ self ]]->set_character_outfit(function_9ec573f1(self.var_f141235b, self._i_mode, self.var_1d73bad9));
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x9a239c18, Offset: 0x1918
    // Size: 0x66
    function set_character_index(character_index) {
        /#
            /#
                assert(isdefined(character_index));
            #/
        #/
        if (self.var_1d73bad9 != character_index && character_index != -1000) {
            self.var_b627749c = 1;
            self.var_1d73bad9 = character_index;
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x7736f2e8, Offset: 0x4cf0
    // Size: 0x8c
    function function_7412658d(params) {
        if (self.var_640fbaae !== params.exploder_id) {
            if (isdefined(self.var_640fbaae)) {
                killradiantexploder(self.var_f141235b, self.var_640fbaae);
            }
            self.var_640fbaae = params.exploder_id;
            if (isdefined(self.var_640fbaae)) {
                playradiantexploder(self.var_f141235b, self.var_640fbaae);
            }
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0xf676d230, Offset: 0x5598
    // Size: 0x3c
    function function_7792df22(locked) {
        if (self.var_444a0d45 != locked) {
            self.var_444a0d45 = locked;
            function_2a5421e3();
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0xf89e6e9d, Offset: 0x50d8
    // Size: 0x34
    function function_77e3be08() {
        [[ self ]]->function_72be01b9();
        [[ self ]]->function_10b0cbea();
        [[ self ]]->function_59d1302f();
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x9ad0e802, Offset: 0xe20
    // Size: 0xa
    function function_782bdd96() {
        return self.var_54430cb6;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0xfde0d62c, Offset: 0xc58
    // Size: 0x1a
    function function_79f89fb6(var_925f39ce) {
        self.var_9896541c = var_925f39ce;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x76b120a5, Offset: 0x23a8
    // Size: 0x17d0
    function update_internal(params) {
        self notify("66242bbbf0fe2524");
        self endon("66242bbbf0fe2524");
        level endon(#"disconnect");
        self endon(#"deleted", #"hash_578cb70e92c24a5a");
        if (isdefined(self.var_9bea772f)) {
            function_66b6e720(self.var_9bea772f);
            self.var_9bea772f = undefined;
            if (self.var_43b94d19) {
                self.var_228f64da show();
                if (isdefined(self.var_e09268b7) && self.var_b6892e9d) {
                    self.var_e09268b7 show();
                }
            }
        }
        function_66de4847();
        function_878481();
        if (!isdefined(params)) {
            params = {};
        }
        self.var_1d18f5c7 = 0;
        if (!is_true(params.var_401d9a1)) {
            [[ self ]]->function_27945cb8(0);
        }
        if (is_true(params.var_90d2372c)) {
            base_model = #"hash_2b18a5af849da51b";
            attached_models = [#"outfit_torso":#"tag_origin", #"outfit_legs":#"tag_origin", #"outfit_headgear":#"tag_origin", #"outfit_head":#"tag_origin"];
        } else if ([[ self ]]->function_bf7bce05()) {
            base_model = [[ self ]]->function_d5e754c6();
            attached_models = [#"outfit_torso":#"tag_origin", #"outfit_legs":#"tag_origin", #"outfit_headgear":#"tag_origin", #"outfit_head":[[ self ]]->function_8c6b7af7(params)];
        } else {
            base_model = [[ self ]]->function_b06080fb();
            attached_models = [#"outfit_torso":[[ self ]]->function_d5e754c6(), #"outfit_legs":[[ self ]]->function_cdc02b18(), #"outfit_headgear":[[ self ]]->function_1978bfeb(), #"outfit_head":[[ self ]]->function_8c6b7af7(params)];
        }
        var_9e7c4fde = array(base_model);
        self.var_ff2bed36 = util::spawn_model(self.var_f141235b, base_model, self.var_228f64da.origin);
        self.var_ff2bed36 hide();
        if (is_true(params.var_6fe1d7c5)) {
            waitframe(1);
        }
        self.var_8d79cdc7 = util::spawn_model(self.var_f141235b, base_model, self.var_228f64da.origin);
        self.var_8d79cdc7 hide();
        self.var_8d79cdc7 function_2649d965(1);
        self.var_8d79cdc7 sethighdetail(self.var_851003fe);
        if (is_true(params.var_6fe1d7c5)) {
            waitframe(1);
        }
        function_9b661089(params);
        _models = [];
        foreach (slot, model in attached_models) {
            if (isdefined(model) && !isdefined(array::find(var_9e7c4fde, model))) {
                array::add(var_9e7c4fde, model);
                bone = isdefined(level.model_type_bones[slot]) ? level.model_type_bones[slot] : slot;
                self.var_ff2bed36 attach(model, bone);
                self.var_8d79cdc7 attach(model, bone);
            }
        }
        if (isdefined(params.activeweapon)) {
            self.var_ff2bed36 attachweapon(params.activeweapon, isdefined(params.var_b8f20727) ? params.var_b8f20727 : 0, isdefined(params.var_452aa9c0) ? params.var_452aa9c0 : 0);
            self.var_8d79cdc7 attachweapon(params.activeweapon, isdefined(params.var_b8f20727) ? params.var_b8f20727 : 0, isdefined(params.var_452aa9c0) ? params.var_452aa9c0 : 0);
        }
        foreach (model in var_9e7c4fde) {
            force_stream_model(model);
        }
        if (is_true(params.var_d8cb38a9) && isdefined(params.scene)) {
            self.var_9bea772f = params.scene;
            var_a942d0c7 = 1;
            while (!forcestreambundle(params.scene)) {
                if (var_a942d0c7) {
                    self.var_228f64da hide();
                    if (isdefined(self.var_e09268b7)) {
                        self.var_e09268b7 notify(#"hash_3397ccfc250ad36");
                        self.var_e09268b7 hide();
                    }
                    var_a942d0c7 = 0;
                }
                waitframe(1);
            }
            if (self.var_43b94d19) {
                self.var_228f64da show();
                if (isdefined(self.var_e09268b7) && self.var_b6892e9d) {
                    self.var_e09268b7 show();
                }
            }
        }
        var_56293673 = 1;
        foreach (model in var_9e7c4fde) {
            var_56293673 = var_56293673 & function_c358189(model);
        }
        if (is_true(params.var_90d2372c) && self.var_228f64da.model !== #"hash_2b18a5af849da51b" || !is_true(params.var_90d2372c) && self.var_228f64da.model === #"hash_2b18a5af849da51b") {
            self.var_b627749c = 1;
        }
        if (!is_true(params.var_90d2372c)) {
            [[ self ]]->function_62dd99d6(self.var_ff2bed36);
            [[ self ]]->function_62dd99d6(self.var_8d79cdc7);
        }
        if (is_true(params.var_c76f3e47) && !self.var_c31e86ed && !self.var_ff2bed36 function_e56f5549()) {
            if (is_true(params.var_401d9a1)) {
                if (isdefined(self.var_228f64da)) {
                    self.var_228f64da hide();
                }
                if (isdefined(self.var_e09268b7)) {
                    self.var_e09268b7 notify(#"hash_3397ccfc250ad36");
                    self.var_e09268b7 hide();
                }
                [[ self ]]->function_27945cb8(1, 1);
                outfit_index = function_9ec573f1(self.var_f141235b, self._i_mode, self.var_1d73bad9);
                var_d92aad5c = function_bd9a67ae(self.var_f141235b, self._i_mode, self.var_1d73bad9, outfit_index, 0);
                var_2f1dcdbb = function_bd9a67ae(self.var_f141235b, self._i_mode, self.var_1d73bad9, outfit_index, 2);
                var_cb9bcfe7 = function_bd9a67ae(self.var_f141235b, self._i_mode, self.var_1d73bad9, outfit_index, 3);
                var_173f7170 = function_bd9a67ae(self.var_f141235b, self._i_mode, self.var_1d73bad9, outfit_index, 4);
                var_1f170bc0 = function_bd9a67ae(self.var_f141235b, self._i_mode, self.var_1d73bad9, outfit_index, 6);
                if ([[ self ]]->function_bf7bce05()) {
                    var_867954ad = character_customization::function_6bca50af(&function_92ea4100, self.var_1d73bad9, outfit_index, 0, self._i_mode);
                    var_89610e9c = [#"outfit_torso":#"tag_origin", #"outfit_legs":#"tag_origin", #"outfit_headgear":#"tag_origin", #"outfit_head":character_customization::function_6bca50af(&function_44a7328f, self.var_1d73bad9, outfit_index, 0, self._i_mode)];
                } else {
                    var_867954ad = character_customization::function_6bca50af(&function_5d23af5b, self.var_1d73bad9, outfit_index, var_d92aad5c, self._i_mode);
                    var_89610e9c = [#"outfit_torso":character_customization::function_6bca50af(&function_92ea4100, self.var_1d73bad9, outfit_index, var_1f170bc0, self._i_mode), #"outfit_legs":character_customization::function_6bca50af(&function_cde23658, self.var_1d73bad9, outfit_index, var_173f7170, self._i_mode), #"outfit_headgear":character_customization::function_6bca50af(&function_6b7000e, self.var_1d73bad9, outfit_index, var_cb9bcfe7, self._i_mode), #"outfit_head":character_customization::function_6bca50af(&function_44a7328f, self.var_1d73bad9, outfit_index, var_2f1dcdbb, self._i_mode)];
                }
                var_cf2f5fb7 = array(var_867954ad);
                foreach (model in var_89610e9c) {
                    if (!isdefined(var_cf2f5fb7)) {
                        var_cf2f5fb7 = [];
                    } else if (!isarray(var_cf2f5fb7)) {
                        var_cf2f5fb7 = array(var_cf2f5fb7);
                    }
                    if (!isinarray(var_cf2f5fb7, model)) {
                        var_cf2f5fb7[var_cf2f5fb7.size] = model;
                    }
                }
                var_a9916921 = getdvarint(#"hash_388720e05d574ed2", 1);
                foreach (model in var_cf2f5fb7) {
                    force_stream_model(model, var_a9916921, 0);
                }
                n_timeout = 0;
                do {
                    waitframe(1);
                    var_e2e2ee90 = 1;
                    foreach (model in var_cf2f5fb7) {
                        var_e2e2ee90 = var_e2e2ee90 & function_c358189(model, var_a9916921, 0);
                    }
                    n_timeout = n_timeout + 0.016;
                } while (!var_e2e2ee90 && n_timeout < level.var_d323a7f5);
                function_91cd5499(util::spawn_model(self.var_f141235b, var_867954ad, self._origin, self._angles), 0, 0);
                self.var_b627749c = 1;
                [[ self ]]->function_27945cb8(1, 1);
                if (!self.var_43b94d19) {
                    self.var_228f64da hide();
                    if (isdefined(self.var_e09268b7)) {
                        self.var_e09268b7 notify(#"hash_3397ccfc250ad36");
                        self.var_e09268b7 hide();
                    }
                }
                var_cc204afb = [];
                foreach (slot, model in var_89610e9c) {
                    if (isdefined(model) && !isdefined(array::find(var_cc204afb, model))) {
                        array::add(var_cc204afb, model);
                        bone = isdefined(level.model_type_bones[slot]) ? level.model_type_bones[slot] : slot;
                        self.var_228f64da attach(model, bone);
                    }
                }
                [[ self ]]->function_ef064067(params, 1);
                var_61ef988d = 1;
                foreach (model in var_cf2f5fb7) {
                    function_b020b858(model, var_a9916921, 0);
                }
            }
            n_timeout = 0;
            do {
                waitframe(1);
                n_timeout = n_timeout + 0.016;
            } while (!self.var_ff2bed36 isstreamed(params.var_5bd51249, params.var_13fb1841) && n_timeout < level.var_d323a7f5);
        }
        var_ff704b7c = is_true(params.var_99a89f83);
        if (self.var_b627749c) {
            self.var_b627749c = 0;
            var_ff704b7c = 1;
            [[ self ]]->function_39a68bf2(0);
            if (is_true(var_61ef988d) && !isdefined(params.var_f5332569)) {
                params.var_f5332569 = [[ self ]]->function_98d70bef();
            }
            if (!isdefined(params.var_b1e821c5)) {
                params.var_b1e821c5 = spawnstruct();
            }
            params.var_b1e821c5.blend = 0;
            if (isdefined(base_model)) {
                function_91cd5499(util::spawn_model(self.var_f141235b, base_model, self._origin, self._angles));
                self.var_45210dc7 = [];
                self.var_bf273e28 = [];
                self.var_5633914d = [];
            }
            if (!self.var_43b94d19) {
                self.var_228f64da hide();
                if (isdefined(self.var_e09268b7)) {
                    self.var_e09268b7 notify(#"hash_3397ccfc250ad36");
                    self.var_e09268b7 hide();
                }
            } else {
                self.var_228f64da show();
                if (isdefined(self.var_e09268b7)) {
                    thread function_c23b6091(params);
                }
            }
        }
        foreach (slot, model in attached_models) {
            [[ self ]]->update_model_attachment(model, slot, undefined, undefined, 1);
        }
        if (!is_true(params.var_90d2372c)) {
            [[ self ]]->function_62dd99d6(self.var_228f64da);
        }
        function_66de4847();
        changed = [[ self ]]->function_ef064067(params, var_ff704b7c);
        [[ self ]]->function_dd872e2b(params, changed);
        [[ self ]]->function_7412658d(params);
        self.var_9bea772f = undefined;
        if (is_true(params.var_401d9a1)) {
            [[ self ]]->function_27945cb8(0);
        }
        if (is_true(params.var_8d3b5f69)) {
            fbc = getuimodel(function_5f72e972(#"hash_31e97ba41cad1834"), "fullscreenBlackCount");
            setuimodelvalue(fbc, 0);
        }
        function_4508c737();
        thread [[ self ]]->function_81d84c71();
        self.var_1d18f5c7 = 1;
        var_2d0192e5 = [[ self ]]->function_82e05d64();
        if (isdefined(var_2d0192e5)) {
            if (isdefined(var_2d0192e5.visible_model)) {
                setuimodelvalue(var_2d0192e5.visible_model, [[ self ]]->function_ea4ac9f8() && [[ self ]]->is_visible());
            }
        }
        gestureindex = character_customization::function_6aee5a4e(self);
        if (isdefined(gestureindex) && gestureindex > 0) {
            thread [[ self ]]->play_gesture(gestureindex, 0, 1, 0);
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 3, eflags: 0x2 linked
    // Checksum 0x26390407, Offset: 0x9c8
    // Size: 0xc4
    function function_7ed995de(local_client_num, character_model, alt_render_mode = 1) {
        /#
            /#
                assert(!isdefined(self.var_228f64da), "<unknown string>");
            #/
        #/
        self.var_f141235b = local_client_num;
        self.var_81bd1932 = local_client_num;
        self.var_bf4feef5 = alt_render_mode;
        self._target_name = character_model.targetname;
        self._origin = character_model.origin;
        self._angles = character_model.angles;
        function_91cd5499(character_model);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x790b909b, Offset: 0x48e0
    // Size: 0x64
    function function_8144231c() {
        if (!self.var_c31e86ed && #"female" === getherogender(self.var_1d73bad9, self._i_mode)) {
            return #"pb_fem_frontend_default";
        }
        return #"pb_male_frontend_default";
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x3d48c516, Offset: 0x4d88
    // Size: 0xc4
    function function_81d84c71() {
        self notify("7ebf15d8a46f93ae");
        self endon("7ebf15d8a46f93ae");
        if (self.var_9896541c) {
            while (function_d9aed86()) {
                waitframe(1);
            }
            if (isdefined(self.var_eb95665)) {
                self.var_228f64da function_5790ec6e(self.var_eb95665);
            } else {
                self.var_228f64da function_a72ef0c5(self.var_f141235b, self._i_mode);
            }
            return;
        }
        self.var_228f64da function_a7842493();
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x29e15fc5, Offset: 0x1198
    // Size: 0x22
    function function_82e05d64() {
        if (!isdefined(self.var_d781e2e4)) {
            self.var_d781e2e4 = {};
        }
        return self.var_d781e2e4;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x60d97e22, Offset: 0xda0
    // Size: 0xa
    function function_8567daf2() {
        return self.var_87449256;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 2, eflags: 0x2 linked
    // Checksum 0x24990e38, Offset: 0x1a20
    // Size: 0xbc
    function set_character_outfit_item(item_index, item_type) {
        /#
            /#
                assert(self._i_mode != 4);
            #/
        #/
        if (self.var_f5c0467b[item_type] != item_index) {
            self.var_b627749c = self.var_b627749c | (item_type == 0 || item_type == 2 || item_type == 3 || item_type == 4 || item_type == 6);
            self.var_f5c0467b[item_type] = item_index;
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x4175abc8, Offset: 0x1c10
    // Size: 0x8a
    function function_8c6b7af7(params) {
        if (self.var_c31e86ed) {
            return #"c_t8_mp_swatbuddy_head2";
        }
        if (![[ self ]]->function_ef6f931f(params)) {
            return #"tag_origin";
        }
        return character_customization::function_6bca50af(&function_44a7328f, self.var_1d73bad9, self.var_cf55444c, self.var_f5c0467b[2], self._i_mode);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x50f72c69, Offset: 0x1988
    // Size: 0xa
    function function_9004475c() {
        return self.var_1d73bad9;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 2, eflags: 0x2 linked
    // Checksum 0x16bba01c, Offset: 0x5258
    // Size: 0x94
    function function_9146bf81(itemindex, itemtype) {
        outfit_index = itemtype == 7 ? self.var_cfe86a3e : self.var_cf55444c;
        if (!isdefined(itemindex)) {
            itemindex = function_bd9a67ae(self.var_f141235b, self._i_mode, self.var_1d73bad9, outfit_index, itemtype);
        }
        [[ self ]]->set_character_outfit_item(itemindex, itemtype);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 3, eflags: 0x6 linked
    // Checksum 0x3446d422, Offset: 0x788
    // Size: 0x234
    function private function_91cd5499(character_model, var_87606b20, var_584905de) {
        if (isdefined(self.var_228f64da)) {
            self._origin = self.var_228f64da.origin;
            self._angles = self.var_228f64da.angles;
            [[ self ]]->function_39a68bf2(0);
            self.var_228f64da delete();
        }
        self.var_228f64da = character_model;
        self.var_228f64da.targetname = self._target_name;
        self.var_228f64da.origin = self._origin;
        self.var_228f64da.angles = self._angles;
        self.var_228f64da sethighdetail(isdefined(var_87606b20) ? var_87606b20 : self.var_851003fe, isdefined(var_584905de) ? var_584905de : self.var_bf4feef5);
        if (self.var_228f64da hasdobj(self.var_f141235b) && !self.var_228f64da hasanimtree()) {
            self.var_228f64da useanimtree("all_player");
        }
        self.var_228f64da.var_90ff9782 = self;
        self.var_228f64da.var_463f8196 = 1;
        function_2a5421e3();
        function_c39fbf91();
        /#
            if (getdvarint(#"hash_59cf96a0da4d7689", 0)) {
                function_bba23c40(#"cg_drawbonesentnum", self.var_228f64da getentitynumber());
            }
        #/
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x70f3c6bd, Offset: 0x4ea8
    // Size: 0x38
    function function_95779b72() {
        for (itemtype = 0; itemtype < 8; itemtype++) {
            [[ self ]]->set_character_outfit_item(0, itemtype);
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x7350c2b4, Offset: 0xdb8
    // Size: 0x5c
    function function_98d70bef() {
        if (isdefined(self.var_228f64da)) {
            animation = self.var_228f64da getcurrentanimscriptedname();
            if (isdefined(animation)) {
                return self.var_228f64da getanimtime(animation);
            }
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x256850cd, Offset: 0xe38
    // Size: 0xa
    function function_9afbd994() {
        return self.var_5d01abf7;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0xc23abee9, Offset: 0x1eb8
    // Size: 0x2ee
    function function_9b661089(params) {
        if (is_true(params.var_66125429) && isdefined(self._xuid)) {
            self.var_7245a8e1 = function_aa09bdbb(self._xuid);
            if (isdefined(self.var_7245a8e1) && self.var_7245a8e1 != #"") {
                var_521d2f55 = function_61067007(self.var_7245a8e1);
                var_7668a4b7 = var_521d2f55.var_fdd95115;
                var_d53d9189 = var_521d2f55.var_8c74e89e;
                var_d1e7f9fe = var_521d2f55.var_ec729ae9;
            }
            /#
                var_b8d88aa7 = getdvarstring(#"hash_54784bf3c8d31aeb", "<unknown string>");
                if (var_b8d88aa7 != "<unknown string>") {
                    var_7668a4b7 = var_b8d88aa7;
                }
                var_ba3f954 = getdvarstring(#"hash_1a45902f305b10a4", "<unknown string>");
                if (var_ba3f954 != "<unknown string>") {
                    var_d53d9189 = var_ba3f954;
                }
            #/
            if (isdefined(self.var_e09268b7)) {
                self.var_e09268b7 delete();
            }
            if (isdefined(var_7668a4b7)) {
                self.var_e09268b7 = util::spawn_anim_model(self.var_f141235b, var_7668a4b7, self._origin, self._angles);
                self.var_e09268b7.var_463f8196 = 1;
                self.var_e09268b7 hide();
                self.var_e09268b7 function_2649d965(1);
                self.var_e09268b7 sethighdetail(self.var_851003fe);
                self.var_e09268b7.animname = isdefined(var_d53d9189) ? var_d53d9189 : #"companion";
                self.var_b6892e9d = 1;
                force_stream_model(var_7668a4b7);
                thread function_c23b6091(params, var_d1e7f9fe);
            } else {
                self.var_b6892e9d = 0;
            }
            return;
        }
        if (isdefined(self.var_e09268b7)) {
            self.var_e09268b7 delete();
        }
        self.var_b6892e9d = 0;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0xadd543be, Offset: 0xea8
    // Size: 0x7c
    function show_model() {
        if (isdefined(self.var_228f64da)) {
            self.var_228f64da show();
        }
        if (isdefined(self.var_e09268b7) && self.var_b6892e9d) {
            self.var_e09268b7 show();
        }
        self.var_43b94d19 = 1;
        function_c39fbf91();
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x7c052be8, Offset: 0x1060
    // Size: 0xa
    function get_angles() {
        return self._angles;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x6564d28d, Offset: 0x51d8
    // Size: 0x78
    function function_ac9cc79d(itemtype) {
        outfit_index = itemtype == 7 ? self.var_cfe86a3e : self.var_cf55444c;
        [[ self ]]->set_character_outfit_item(function_bd9a67ae(self.var_f141235b, self._i_mode, self.var_1d73bad9, outfit_index, itemtype), itemtype);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x9302e9fa, Offset: 0x1078
    // Size: 0x114
    function delete_models() {
        self notify(#"deleted");
        foreach (ent in self.var_5633914d) {
            ent unlink();
            ent delete();
        }
        level.custom_characters[self.var_f141235b][self.var_228f64da.targetname] = undefined;
        self.var_5633914d = [];
        self.var_228f64da delete();
        self.var_228f64da = undefined;
        function_66de4847();
    }

    // Namespace namespace_7da27482/character_customization
    // Params 3, eflags: 0x6 linked
    // Checksum 0xe07d1078, Offset: 0x1798
    // Size: 0xdc
    function private function_b020b858(model_name, lod = -1, mip = -1) {
        index = array::find(self.var_506d3c33, {#mip:mip, #lod:lod, #model:model_name}, &function_1a57b132);
        if (isdefined(index)) {
            array::pop(self.var_506d3c33, index, 0);
            character_customization::function_247f6628(model_name, lod, mip);
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x480908a3, Offset: 0x1ba8
    // Size: 0x5a
    function function_b06080fb() {
        if (self.var_c31e86ed) {
            return #"tag_origin";
        }
        return character_customization::function_6bca50af(&function_5d23af5b, self.var_1d73bad9, self.var_cf55444c, self.var_f5c0467b[0], self._i_mode);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 4, eflags: 0x2 linked
    // Checksum 0x49ccd4cc, Offset: 0x45b0
    // Size: 0x2d4
    function play_gesture(gesture_index, wait_until_model_steam_ends, replay_if_already_playing = 1, ignore_if_already_playing = 0) {
        self endon(#"deleted");
        self endon(#"cancel_gesture");
        if (wait_until_model_steam_ends && isdefined(self.var_1d18f5c7)) {
            while (![[ self ]]->function_ea4ac9f8()) {
                wait(0.25);
            }
        }
        var_2ec36514 = self.var_cbcee022;
        [[ self ]]->function_39a68bf2(1, 1);
        gesture = get_gesture(gesture_index);
        if (isdefined(gesture) && isdefined(gesture.animation)) {
            self endon(#"hash_578cb70e92c24a5a", #"cancel_gesture");
            while (!isdefined(self.var_cbcee022) && !isdefined(self.var_54430cb6)) {
                wait(0.1);
            }
            var_a7e34ee1 = self.var_228f64da getcurrentanimscriptedname();
            var_99789677 = var_a7e34ee1 === gesture.animation || var_a7e34ee1 === gesture.intro || var_a7e34ee1 === gesture.outro;
            if (!ignore_if_already_playing || !var_99789677) {
                if (replay_if_already_playing || !var_99789677) {
                    self thread function_60b3658e(var_2ec36514, 1);
                    character_customization::function_bee62aa1(self);
                    if (isdefined(gesture.intro)) {
                        self.var_228f64da animation::play(gesture.intro, self.var_228f64da);
                    }
                    self.var_228f64da animation::play(gesture.animation, self.var_228f64da);
                    if (isdefined(gesture.outro)) {
                        self.var_228f64da animation::play(gesture.outro, self.var_228f64da);
                    }
                    self notify(#"gesture_ended");
                    return;
                }
                self thread function_60b3658e(var_2ec36514, 0);
            }
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x594d0b1f, Offset: 0xe90
    // Size: 0xa
    function is_visible() {
        return self.var_43b94d19;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x962782de, Offset: 0x4360
    // Size: 0x170
    function function_b94f710e() {
        if (isdefined(self.var_cbcee022)) {
            [[ self ]]->function_39a68bf2();
            self.var_228f64da thread character_customization::play_intro_and_animation(self._origin, self._angles, undefined, self.var_cbcee022, 0);
        } else if (isdefined(self.var_54430cb6)) {
            [[ self ]]->function_39a68bf2();
            if (self.var_8d2161e9) {
                self.var_a287debe thread scene::play(self.var_54430cb6, self.var_228f64da);
            } else {
                self.var_a287debe thread scene::play(self.var_54430cb6);
            }
        }
        foreach (slot, ent in self.var_5633914d) {
            ent thread character_customization::play_intro_and_animation(self._origin, self._angles, undefined, self.var_bf273e28[slot], 1);
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 3, eflags: 0x6 linked
    // Checksum 0x1661dbf4, Offset: 0x1590
    // Size: 0xa4
    function private force_stream_model(model_name, lod = -1, mip = -1) {
        array::add(self.var_506d3c33, {#mip:mip, #lod:lod, #model:model_name});
        character_customization::function_221a94ac(model_name, lod, mip);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0xc4926fbe, Offset: 0xf30
    // Size: 0x8c
    function hide_model() {
        self.var_228f64da hide();
        if (isdefined(self.var_e09268b7)) {
            self.var_e09268b7 notify(#"hash_3397ccfc250ad36");
            self.var_e09268b7 hide();
        }
        self notify(#"cancel_gesture");
        self.var_43b94d19 = 0;
        function_c39fbf91();
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x5cb254b7, Offset: 0x1b38
    // Size: 0x32
    function function_bf7bce05() {
        if (self.var_c31e86ed) {
            return 1;
        }
        return function_4611d0e6(self._i_mode, self.var_1d73bad9);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0xfd505f43, Offset: 0xc08
    // Size: 0x1a
    function function_c0ccd9ea(default_exploder) {
        self.var_266b2ff0 = default_exploder;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x60feb16a, Offset: 0x18b8
    // Size: 0x56
    function set_character_mode(character_mode) {
        /#
            /#
                assert(isdefined(character_mode));
            #/
        #/
        if (self._i_mode != character_mode) {
            self.var_b627749c = 1;
            self._i_mode = character_mode;
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 2, eflags: 0x2 linked
    // Checksum 0x9e904ceb, Offset: 0x21b0
    // Size: 0x1bc
    function function_c23b6091(params, var_d1e7f9fe) {
        self notify("55d3cc387c4236bd");
        self endon("55d3cc387c4236bd");
        self.var_e09268b7 endon(#"death", #"hash_3397ccfc250ad36");
        self.var_e09268b7 hide();
        if (is_true(params.var_c76f3e47)) {
            n_timeout = 0;
            do {
                waitframe(1);
                n_timeout = n_timeout + 0.016;
            } while ((!self.var_e09268b7 function_e56f5549() || !function_ea4ac9f8()) && n_timeout < level.var_d323a7f5);
        }
        if (self.var_b6892e9d) {
            self.var_e09268b7 hide();
            while (!function_ea4ac9f8()) {
                waitframe(1);
            }
            if (self.var_43b94d19) {
                self.var_e09268b7 show();
                if (isdefined(var_d1e7f9fe)) {
                    self.var_e09268b7 playrenderoverridebundle(var_d1e7f9fe);
                }
            }
            return;
        }
        self.var_e09268b7 hide();
        if (isdefined(var_d1e7f9fe)) {
            self.var_e09268b7 stoprenderoverridebundle(var_d1e7f9fe);
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x6 linked
    // Checksum 0x2a3302da, Offset: 0x6f8
    // Size: 0x88
    function private function_c39fbf91() {
        foreach (callback in self.var_180f1c7d) {
            [[ callback ]](self.var_f141235b, self);
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x4af6d497, Offset: 0xd70
    // Size: 0x26
    function function_c4baf89b(showcase_weapon) {
        self.var_87449256 = showcase_weapon;
        self.var_b627749c = 1;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x9d8a70ce, Offset: 0x1d18
    // Size: 0x62
    function function_cdc02b18() {
        if (self.var_c31e86ed) {
            return #"tag_origin";
        }
        return character_customization::function_6bca50af(&function_cde23658, self.var_1d73bad9, self.var_cf55444c, self.var_f5c0467b[4], self._i_mode);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x7104198e, Offset: 0xca8
    // Size: 0x38
    function set_show_helmets(show_helmets) {
        if (self.var_609efd3e != show_helmets) {
            self.var_609efd3e = show_helmets;
            [[ self ]]->function_c1aab607();
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x7d9d75c6, Offset: 0x1d88
    // Size: 0x62
    function function_d5e754c6() {
        if (self.var_c31e86ed) {
            return #"c_t8_mp_swatbuddy_body2";
        }
        return character_customization::function_6bca50af(&function_92ea4100, self.var_1d73bad9, self.var_cf55444c, self.var_f5c0467b[6], self._i_mode);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x767f61f7, Offset: 0xbb0
    // Size: 0x1a
    function function_d72d0c2d(var_ced588d9) {
        self.var_fa881a = var_ced588d9;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 2, eflags: 0x2 linked
    // Checksum 0x30ba5b09, Offset: 0x4b30
    // Size: 0x1b4
    function function_dd872e2b(params, force_updates) {
        if (isdefined(params.weapon_right) || isdefined(params.weapon_left)) {
            [[ self ]]->update_model_attachment(params.weapon_right, "tag_weapon_right", params.weapon_right_anim, params.weapon_right_anim_intro, force_updates);
            [[ self ]]->update_model_attachment(params.weapon_left, "tag_weapon_left", params.weapon_left_anim, params.weapon_left_anim_intro, force_updates);
            return;
        }
        if (isdefined(params.activeweapon)) {
            self.var_228f64da attachweapon(params.activeweapon, isdefined(params.var_b8f20727) ? params.var_b8f20727 : 0, isdefined(params.var_452aa9c0) ? params.var_452aa9c0 : 0, 1);
            if (isdefined(level.var_a9b637b1)) {
                self.var_228f64da thread [[ level.var_a9b637b1 ]](self.var_f141235b, params.activeweapon, isdefined(params.var_452aa9c0) ? params.var_452aa9c0 : 0, getdvarint(#"hash_41ef264ae8370dc7", 6));
            }
            self.var_228f64da useweaponhidetags(params.activeweapon);
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x3e1169ef, Offset: 0xc80
    // Size: 0x1a
    function function_e08bf4f2(var_db61785f) {
        self.var_81bd1932 = var_db61785f;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 5, eflags: 0x2 linked
    // Checksum 0x85a8d7a, Offset: 0x3b80
    // Size: 0x370
    function update_model_attachment(attached_model, slot, model_anim, model_intro_anim, force_update) {
        /#
            /#
                assert(isdefined(level.model_type_bones));
            #/
        #/
        if (force_update || attached_model !== self.var_45210dc7[slot] || model_anim !== self.var_bf273e28[slot]) {
            bone = isdefined(level.model_type_bones[slot]) ? level.model_type_bones[slot] : slot;
            /#
                assert(isdefined(bone));
            #/
            if (isdefined(self.var_45210dc7[slot])) {
                if (isdefined(self.var_5633914d[slot])) {
                    self.var_5633914d[slot] unlink();
                    self.var_5633914d[slot] delete();
                    self.var_5633914d[slot] = undefined;
                } else if (self.var_228f64da isattached(self.var_45210dc7[slot], bone)) {
                    self.var_228f64da detach(self.var_45210dc7[slot], bone);
                }
                self.var_45210dc7[slot] = undefined;
            }
            self.var_45210dc7[slot] = attached_model;
            if (isdefined(self.var_45210dc7[slot])) {
                if (isdefined(model_anim)) {
                    ent = spawn(self.var_f141235b, self.var_228f64da.origin, "script_model");
                    ent sethighdetail(self.var_851003fe, self.var_bf4feef5);
                    self.var_5633914d[slot] = ent;
                    ent setmodel(self.var_45210dc7[slot]);
                    if (!ent hasanimtree()) {
                        ent useanimtree("generic");
                    }
                    ent.origin = self._origin;
                    ent.angles = self._angles;
                    ent thread character_customization::play_intro_and_animation(self._origin, self._angles, model_intro_anim, model_anim, 1);
                } else if (!self.var_228f64da isattached(self.var_45210dc7[slot], bone)) {
                    self.var_228f64da attach(self.var_45210dc7[slot], bone);
                }
                self.var_bf273e28[slot] = model_anim;
            }
        }
        if (isdefined(self.var_5633914d[slot])) {
            [[ self ]]->function_62dd99d6(self.var_5633914d[slot]);
        }
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0x2405d945, Offset: 0x5038
    // Size: 0x94
    function function_e599283f() {
        return {#outfititems:self.var_f5c0467b, #warpaintoutfit:self.var_cfe86a3e, #outfit:self.var_cf55444c, #charactertype:self.var_1d73bad9, #charactermode:self._i_mode, #xuid:self._xuid};
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0xc6b40c13, Offset: 0x1048
    // Size: 0xa
    function get_origin() {
        return self._origin;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0xc66a3dca, Offset: 0x11c8
    // Size: 0x22
    function function_e8b0acef() {
        return getcharacterfields(self.var_1d73bad9, self._i_mode);
    }

    // Namespace namespace_7da27482/character_customization
    // Params 0, eflags: 0x2 linked
    // Checksum 0xeef73c4d, Offset: 0x12c8
    // Size: 0xa
    function function_ea4ac9f8() {
        return self.var_1d18f5c7;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 2, eflags: 0x2 linked
    // Checksum 0x222835fa, Offset: 0x3ef8
    // Size: 0x460
    function function_ef064067(params, force_update) {
        changed = 0;
        if (!isdefined(params)) {
            params = {};
        }
        if (!isdefined(params.exploder_id)) {
            params.exploder_id = self.var_266b2ff0;
        }
        align_changed = 0;
        if (isdefined(self.var_9a4a8ea)) {
            if (!isdefined(params.align_struct)) {
                params.align_struct = struct::get(self.var_9a4a8ea);
            }
        }
        if (isdefined(params.align_struct) && (params.align_struct.origin !== self._origin || params.align_struct.angles !== self._angles)) {
            self._origin = params.align_struct.origin;
            self._angles = params.align_struct.angles;
            if (!isdefined(params.anim_name)) {
                params.anim_name = self.var_cbcee022;
            }
            align_changed = 1;
        }
        if (isdefined(params.anim_name) && (params.anim_name !== self.var_cbcee022 || align_changed || force_update)) {
            changed = 1;
            [[ self ]]->function_39a68bf2(0);
            self.var_cbcee022 = params.anim_name;
            self.var_54430cb6 = undefined;
            self.var_5d01abf7 = undefined;
            self.var_6ce65c01 = undefined;
            self.var_a287debe = undefined;
            self.var_228f64da thread character_customization::play_intro_and_animation(self._origin, self._angles, params.anim_intro_name, self.var_cbcee022, 0);
        } else if (isdefined(params.scene) && (params.scene !== self.var_54430cb6 || params.scene_target !== self.var_a287debe || is_true(params.var_a34c858c) != self.var_8d2161e9 || force_update)) {
            changed = 1;
            [[ self ]]->function_39a68bf2(0);
            self.var_54430cb6 = params.scene;
            self.var_5d01abf7 = params.var_74741b75;
            self.var_6ce65c01 = params.var_a68ab9c2;
            self.var_a287debe = isdefined(params.scene_target) ? params.scene_target : level;
            self.var_8d2161e9 = is_true(params.var_a34c858c);
            self.var_cbcee022 = undefined;
            models = [];
            if (self.var_8d2161e9) {
                if (!isdefined(models)) {
                    models = [];
                } else if (!isarray(models)) {
                    models = array(models);
                }
                models[models.size] = self.var_228f64da;
            }
            if (self.var_b6892e9d && isdefined(self.var_e09268b7)) {
                if (!isdefined(models)) {
                    models = [];
                } else if (!isarray(models)) {
                    models = array(models);
                }
                models[models.size] = self.var_e09268b7;
            }
            thread character_customization::function_f7a5fba4(self.var_a287debe, self.var_54430cb6, models, self.var_5d01abf7, self.var_6ce65c01, params.var_f5332569, params.var_b1e821c5, params.var_bfbc1f4f);
        }
        return changed;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0xc06823d2, Offset: 0x1b90
    // Size: 0x10
    function function_ef6f931f(*params) {
        return 1;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x40b0c5df, Offset: 0x1b78
    // Size: 0x10
    function function_f941c5de(*params) {
        return 1;
    }

    // Namespace namespace_7da27482/character_customization
    // Params 1, eflags: 0x2 linked
    // Checksum 0x73e8d46a, Offset: 0x11f8
    // Size: 0xc2
    function get_gesture(gesture_index) {
        if (gesture_index == -1) {
            if (#"female" === getherogender(self.var_1d73bad9, self._i_mode)) {
                return {#animation:#"pb_rifle_fem_stand_spray_fb"};
            } else {
                return {#animation:#"pb_rifle_male_stand_spray_fb"};
            }
        }
        return function_2a6a2af(self.var_1d73bad9, self._i_mode, gesture_index);
    }

}

// Namespace character_customization/character_customization
// Params 0, eflags: 0x5
// Checksum 0x34f98f42, Offset: 0x1d0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"character_customization", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace character_customization/character_customization
// Params 5, eflags: 0x2 linked
// Checksum 0x4557fc5c, Offset: 0x218
// Size: 0xa2
function function_6bca50af(fn, character_index, outfit_index, var_e1daa8d9, mode) {
    model = [[ fn ]](character_index, outfit_index, var_e1daa8d9, mode);
    if (!isdefined(model)) {
        model = [[ fn ]](character_index, outfit_index, 0, mode);
        if (!isdefined(model)) {
            model = [[ fn ]](character_index, 0, 0, mode);
        }
    }
    return isdefined(model) ? model : #"tag_origin";
}

// Namespace character_customization/character_customization
// Params 1, eflags: 0x2 linked
// Checksum 0xa272c46f, Offset: 0x2c8
// Size: 0xac
function function_6aee5a4e(character) {
    if (isdefined(level.var_6963abdb)) {
        var_2d0192e5 = [[ character ]]->function_82e05d64();
        if (isdefined(var_2d0192e5) && isdefined(var_2d0192e5.xuid)) {
            xuid = xuidtostring(var_2d0192e5.xuid);
            return level.var_6963abdb[xuid];
        }
        if (isdefined(character._xuid)) {
            return level.var_6963abdb[character._xuid];
        }
    }
    return 0;
}

// Namespace character_customization/character_customization
// Params 1, eflags: 0x2 linked
// Checksum 0xdee9971e, Offset: 0x380
// Size: 0xac
function function_bee62aa1(character) {
    if (isdefined(level.var_6963abdb)) {
        var_2d0192e5 = [[ character ]]->function_82e05d64();
        if (isdefined(var_2d0192e5) && isdefined(var_2d0192e5.xuid)) {
            xuid = xuidtostring(var_2d0192e5.xuid);
            level.var_6963abdb[xuid] = 0;
        }
        if (isdefined(character._xuid)) {
            level.var_6963abdb[character._xuid] = 0;
        }
    }
}

// Namespace character_customization/character_customization
// Params 0, eflags: 0x6 linked
// Checksum 0xc22c86a3, Offset: 0x6818
// Size: 0xdc
function private function_70a657d8() {
    level.model_type_bones = [#"outfit_torso":"", #"outfit_legs":"", #"outfit_headgear":"", #"outfit_head":""];
    if (!isdefined(level.custom_characters)) {
        level.custom_characters = [];
    }
    level.charactercustomizationsetup = &localclientconnect;
    level.var_6e23b0fc = [];
    level.var_d323a7f5 = getdvarfloat(#"hash_5fba2278b1340b1c", 8);
}

// Namespace character_customization/character_customization
// Params 1, eflags: 0x2 linked
// Checksum 0x465b39d8, Offset: 0x6900
// Size: 0xc
function localclientconnect(*localclientnum) {
    
}

// Namespace character_customization/character_customization
// Params 3, eflags: 0x6 linked
// Checksum 0xfc46d231, Offset: 0x6918
// Size: 0xc0
function private function_cb64c6d0(model_name, lod, mip) {
    if (!isdefined(level.var_6e23b0fc[model_name])) {
        level.var_6e23b0fc[model_name] = array();
    }
    if (!isdefined(level.var_6e23b0fc[model_name][lod])) {
        level.var_6e23b0fc[model_name][lod] = array();
    }
    if (!isdefined(level.var_6e23b0fc[model_name][lod][mip])) {
        level.var_6e23b0fc[model_name][lod][mip] = 0;
    }
}

// Namespace character_customization/character_customization
// Params 3, eflags: 0x2 linked
// Checksum 0x657eefbc, Offset: 0x69e0
// Size: 0x8c
function function_221a94ac(model_name, lod, mip) {
    if (!isdefined(model_name)) {
        return;
    }
    function_cb64c6d0(model_name, lod, mip);
    level.var_6e23b0fc[model_name][lod][mip]++;
    if (level.var_6e23b0fc[model_name][lod][mip] == 1) {
        forcestreamxmodel(model_name, lod, mip);
    }
}

// Namespace character_customization/character_customization
// Params 3, eflags: 0x6 linked
// Checksum 0x6c73691, Offset: 0x6a78
// Size: 0x92
function private function_c358189(model_name, lod, mip) {
    if (!isdefined(model_name)) {
        return 1;
    }
    function_cb64c6d0(model_name, lod, mip);
    if (level.var_6e23b0fc[model_name][lod][mip] == 0) {
        function_221a94ac(model_name);
    }
    return forcestreamxmodel(model_name, lod, mip);
}

// Namespace character_customization/character_customization
// Params 3, eflags: 0x2 linked
// Checksum 0x7d54e4b4, Offset: 0x6b18
// Size: 0x12c
function function_247f6628(model_name, lod, mip) {
    if (!isdefined(model_name)) {
        return;
    }
    function_cb64c6d0(model_name, lod, mip);
    level.var_6e23b0fc[model_name][lod][mip]--;
    if (level.var_6e23b0fc[model_name][lod][mip] == 0) {
        stopforcestreamingxmodel(model_name);
        array::pop(level.var_6e23b0fc[model_name][lod], mip);
        if (level.var_6e23b0fc[model_name][lod].size == 0) {
            array::pop(level.var_6e23b0fc[model_name], lod);
            if (level.var_6e23b0fc[model_name].size == 0) {
                array::pop(level.var_6e23b0fc, model_name);
            }
        }
    }
}

// Namespace character_customization/character_customization
// Params 3, eflags: 0x2 linked
// Checksum 0xfbde0375, Offset: 0x6c50
// Size: 0xee
function function_dd295310(charactermodel, localclientnum, alt_render_mode = 1) {
    if (!isdefined(charactermodel)) {
        return undefined;
    }
    if (!isdefined(level.custom_characters[localclientnum])) {
        level.custom_characters[localclientnum] = [];
    }
    if (isdefined(level.custom_characters[localclientnum][charactermodel.targetname])) {
        return level.custom_characters[localclientnum][charactermodel.targetname];
    }
    var_c372a4ea = new class_7da27482();
    [[ var_c372a4ea ]]->function_7ed995de(localclientnum, charactermodel, alt_render_mode);
    level.custom_characters[localclientnum][charactermodel.targetname] = var_c372a4ea;
    return var_c372a4ea;
}

// Namespace character_customization/character_customization
// Params 3, eflags: 0x2 linked
// Checksum 0x8d87d923, Offset: 0x6d48
// Size: 0x11a
function function_aa5382ed(customization1, customization2, check_xuid = 1) {
    if (isdefined(customization1) != isdefined(customization2)) {
        return 1;
    } else if (!isdefined(customization1)) {
        return 0;
    }
    if (check_xuid && customization1.xuid !== customization2.xuid) {
        return 1;
    }
    if (customization1.charactertype != customization2.charactertype) {
        return 1;
    }
    if (customization1.outfit != customization2.outfit) {
        return 1;
    }
    if (customization1.var_cfe86a3e != customization2.var_cfe86a3e) {
        return 1;
    }
    for (i = 0; i < customization1.outfititems.size; i++) {
        if (customization1.outfititems[i] != customization2.outfititems[i]) {
            return 1;
        }
    }
    return 0;
}

// Namespace character_customization/character_customization
// Params 3, eflags: 0x2 linked
// Checksum 0x953f93c5, Offset: 0x6e70
// Size: 0x134
function function_7474681d(local_client_num, session_mode, character_index) {
    outfit_index = function_9ec573f1(local_client_num, session_mode, character_index);
    var_17b172ca = function_76fbb09e(local_client_num, session_mode, character_index);
    outfit_items = [];
    for (itemtype = 0; itemtype < 8; itemtype++) {
        var_9b90e15d = itemtype == 7 ? var_17b172ca : outfit_index;
        outfit_items[itemtype] = function_bd9a67ae(local_client_num, session_mode, character_index, var_9b90e15d, itemtype);
    }
    return {#outfititems:outfit_items, #warpaintoutfit:var_17b172ca, #outfit:outfit_index, #charactertype:character_index, #charactermode:session_mode};
}

// Namespace character_customization/character_customization
// Params 2, eflags: 0x2 linked
// Checksum 0x41c04ebc, Offset: 0x6fb0
// Size: 0xb4
function function_3f5625f1(mode, character_index = 1) {
    outfit_items = [];
    for (itemtype = 0; itemtype < 8; itemtype++) {
        outfit_items[itemtype] = 0;
    }
    return {#outfititems:outfit_items, #warpaintoutfit:0, #outfit:0, #charactertype:character_index, #charactermode:mode};
}

// Namespace character_customization/character_customization
// Params 5, eflags: 0x2 linked
// Checksum 0x39f343e1, Offset: 0x7070
// Size: 0xac
function play_intro_and_animation(origin, angles, intro_anim_name, anim_name, b_keep_link) {
    self notify("71cd95407c8ce9da");
    self endon("71cd95407c8ce9da");
    if (isdefined(intro_anim_name)) {
        self animation::play(intro_anim_name, origin, angles, 1, 0, 0, 0, b_keep_link);
    }
    if (isdefined(self)) {
        self animation::play(anim_name, origin, angles, 1, 0, 0, 0, b_keep_link);
    }
}

// Namespace character_customization/character_customization
// Params 8, eflags: 0x2 linked
// Checksum 0x79c96e6e, Offset: 0x7128
// Size: 0x334
function function_f7a5fba4(align_target, str_scene, model, var_f647c5b2, var_559c5c3e, var_b8f75d74, var_b1e821c5, var_bfbc1f4f = 0) {
    self notify("5cc62185f22ee6b");
    self endon("5cc62185f22ee6b");
    if (isdefined(var_b8f75d74) && var_b8f75d74 > 0 && var_b8f75d74 < 1) {
        if (isdefined(var_f647c5b2)) {
            align_target scene::play_from_time(str_scene, var_f647c5b2, model, var_b8f75d74, 1, 1, var_b1e821c5);
            if (isdefined(var_559c5c3e)) {
                str_scene = function_9faa5b77(str_scene);
                var_559c5c3e = function_7d2b4e1f(str_scene, var_559c5c3e);
                align_target = function_bdd0baed(var_bfbc1f4f, align_target);
                if (isdefined(var_b1e821c5.var_9e6d8a3d)) {
                    var_cf0b13c3 = {#var_dcfaf6c7:var_b1e821c5.var_dcfaf6c7, #blend:var_b1e821c5.var_9e6d8a3d};
                }
                align_target thread scene::play(str_scene, var_559c5c3e, model, undefined, undefined, undefined, isdefined(var_cf0b13c3) ? var_cf0b13c3 : var_b1e821c5);
            }
        } else {
            str_scene = function_9faa5b77(str_scene);
            var_559c5c3e = function_7d2b4e1f(str_scene, var_559c5c3e);
            align_target = function_bdd0baed(var_bfbc1f4f, align_target);
            align_target thread scene::play_from_time(str_scene, var_559c5c3e, model, var_b8f75d74, 1, 1, var_b1e821c5);
        }
        return;
    }
    if (isdefined(var_f647c5b2) || isdefined(var_559c5c3e)) {
        if (isdefined(var_f647c5b2)) {
            align_target scene::play(str_scene, var_f647c5b2, model, undefined, undefined, undefined, var_b1e821c5);
        }
        if (isdefined(var_559c5c3e)) {
            str_scene = function_9faa5b77(str_scene);
            var_559c5c3e = function_7d2b4e1f(str_scene, var_559c5c3e);
            align_target = function_bdd0baed(var_bfbc1f4f, align_target);
            if (isdefined(var_b1e821c5.var_9e6d8a3d)) {
                var_cf0b13c3 = {#var_dcfaf6c7:var_b1e821c5.var_dcfaf6c7, #blend:var_b1e821c5.var_9e6d8a3d};
            }
            align_target thread scene::play(str_scene, var_559c5c3e, model, undefined, undefined, undefined, isdefined(var_cf0b13c3) ? var_cf0b13c3 : var_b1e821c5);
        }
        return;
    }
    align_target thread scene::play(str_scene, model, undefined, undefined, undefined, undefined, var_b1e821c5);
}

// Namespace character_customization/character_customization
// Params 1, eflags: 0x2 linked
// Checksum 0x8efdce55, Offset: 0x7468
// Size: 0x2e
function function_9faa5b77(str_scene) {
    if (isdefined(self.var_72e4ebb3)) {
        str_scene = self.var_72e4ebb3;
        self.var_72e4ebb3 = undefined;
    }
    return str_scene;
}

// Namespace character_customization/character_customization
// Params 2, eflags: 0x2 linked
// Checksum 0xd6c95664, Offset: 0x74a0
// Size: 0x56
function function_7d2b4e1f(str_scene, var_559c5c3e) {
    if (isdefined(self.var_31ccd6da) && scene::function_9730988a(str_scene, self.var_31ccd6da)) {
        var_559c5c3e = self.var_31ccd6da;
        self.var_31ccd6da = undefined;
    }
    return var_559c5c3e;
}

// Namespace character_customization/character_customization
// Params 2, eflags: 0x2 linked
// Checksum 0xedd91526, Offset: 0x7500
// Size: 0x94
function function_bdd0baed(var_bfbc1f4f = 0, align_target) {
    if (var_bfbc1f4f && [[ self ]]->function_ea4ac9f8()) {
        model = [[ self ]]->function_217b10ed();
        align_target = {#angles:model.angles, #origin:model.origin};
    }
    return align_target;
}

// Namespace character_customization/character_customization
// Params 2, eflags: 0x0
// Checksum 0x63a53ced, Offset: 0x75a0
// Size: 0x74
function update_locked_shader(localclientnum, params) {
    if (isdefined(params.isitemunlocked) && params.isitemunlocked != 1) {
        enablefrontendlockedweaponoverlay(localclientnum, 1);
        return;
    }
    enablefrontendlockedweaponoverlay(localclientnum, 0);
}

// Namespace character_customization/character_customization
// Params 4, eflags: 0x2 linked
// Checksum 0xa39a2ef2, Offset: 0x7620
// Size: 0x3a
function function_bcc8bdf4(*localclientnum, var_d0b01271, *waitresult, params) {
    params.anim_name = [[ waitresult ]]->function_8144231c();
}

// Namespace character_customization/character_customization
// Params 4, eflags: 0x2 linked
// Checksum 0x546b2b8c, Offset: 0x7668
// Size: 0xed6
function updateeventthread(localclientnum, var_d0b01271, notifyname, var_1d7f1597 = &function_bcc8bdf4) {
    while (1) {
        waitresult = undefined;
        waitresult = level waittill(notifyname + localclientnum);
        switch (waitresult.event_name) {
        case #"update_lcn":
            [[ var_d0b01271 ]]->function_e08bf4f2(waitresult.local_client_num);
            break;
        case #"update_locked":
            [[ var_d0b01271 ]]->function_7792df22(waitresult.locked);
            break;
        case #"refresh":
            [[ var_d0b01271 ]]->function_e08bf4f2(waitresult.local_client_num);
            [[ var_d0b01271 ]]->set_character_mode(waitresult.mode);
            [[ var_d0b01271 ]]->function_225b6e07();
            [[ var_d0b01271 ]]->function_77e3be08();
            params = {};
            [[ var_1d7f1597 ]](localclientnum, var_d0b01271, waitresult, params);
            if (is_true(params.var_c76f3e47)) {
                [[ var_d0b01271 ]]->function_27945cb8(1);
            }
            [[ var_d0b01271 ]]->update(params);
            break;
        case #"refresh_anim":
            params = {};
            [[ var_1d7f1597 ]](localclientnum, var_d0b01271, waitresult, params);
            params.var_99a89f83 = 1;
            if (is_true(params.var_c76f3e47)) {
                [[ var_d0b01271 ]]->function_27945cb8(1);
            }
            [[ var_d0b01271 ]]->update(params);
            break;
        case #"changehero":
            [[ var_d0b01271 ]]->set_character_mode(waitresult.mode);
            [[ var_d0b01271 ]]->set_character_index(waitresult.character_index);
            [[ var_d0b01271 ]]->function_77e3be08();
            params = {};
            [[ var_1d7f1597 ]](localclientnum, var_d0b01271, waitresult, params);
            if (is_true(params.var_c76f3e47)) {
                [[ var_d0b01271 ]]->function_27945cb8(1);
            }
            [[ var_d0b01271 ]]->update(params);
            break;
        case #"resetcharacter":
            [[ var_d0b01271 ]]->function_77e3be08();
            params = {};
            [[ var_1d7f1597 ]](localclientnum, var_d0b01271, waitresult, params);
            [[ var_d0b01271 ]]->update(params);
            break;
        case #"changeoutfit":
            [[ var_d0b01271 ]]->set_character_outfit(waitresult.outfit_index);
            [[ var_d0b01271 ]]->function_10b0cbea();
            [[ var_d0b01271 ]]->function_59d1302f();
            params = {};
            [[ var_1d7f1597 ]](localclientnum, var_d0b01271, waitresult, params);
            if (is_true(params.var_c76f3e47)) {
                [[ var_d0b01271 ]]->function_27945cb8(1);
            }
            [[ var_d0b01271 ]]->update(params);
            break;
        case #"changewarpaintoutfit":
            [[ var_d0b01271 ]]->function_72be01b9();
            [[ var_d0b01271 ]]->function_158505aa(waitresult.outfit_index);
            [[ var_d0b01271 ]]->function_59d1302f();
            params = {};
            [[ var_1d7f1597 ]](localclientnum, var_d0b01271, waitresult, params);
            if (is_true(params.var_c76f3e47)) {
                [[ var_d0b01271 ]]->function_27945cb8(1);
            }
            [[ var_d0b01271 ]]->update(params);
            break;
        case #"changeoutfititem":
            if (isdefined(waitresult.outfit_index)) {
                if (waitresult.item_type == 7) {
                    [[ var_d0b01271 ]]->function_158505aa(waitresult.outfit_index);
                } else {
                    [[ var_d0b01271 ]]->set_character_outfit(waitresult.outfit_index);
                }
            }
            [[ var_d0b01271 ]]->set_character_outfit_item(waitresult.item_index, waitresult.item_type);
            params = {};
            [[ var_1d7f1597 ]](localclientnum, var_d0b01271, waitresult, params);
            if (is_true(params.var_c76f3e47)) {
                [[ var_d0b01271 ]]->function_27945cb8(1);
            }
            [[ var_d0b01271 ]]->update(params);
            break;
        case #"hash_220546ce38834f4c":
            [[ var_d0b01271 ]]->function_ac9cc79d(waitresult.item_type);
            params = {};
            [[ var_1d7f1597 ]](localclientnum, var_d0b01271, waitresult, params);
            if (is_true(params.var_c76f3e47)) {
                [[ var_d0b01271 ]]->function_27945cb8(1);
            }
            [[ var_d0b01271 ]]->update(params);
            break;
        case #"updateface":
            [[ var_d0b01271 ]]->function_617a9ce4(waitresult.mode);
            thread [[ var_d0b01271 ]]->function_81d84c71();
            break;
        case #"previewshop":
        case #"previewshopface":
            [[ var_d0b01271 ]]->set_character_mode(waitresult.mode);
            [[ var_d0b01271 ]]->set_character_index(waitresult.character_index);
            [[ var_d0b01271 ]]->set_character_outfit(waitresult.outfit_index);
            [[ var_d0b01271 ]]->function_158505aa(waitresult.outfit_index);
            outfititems = strtok(waitresult.outfititems, ";");
            foreach (type, item in outfititems) {
                [[ var_d0b01271 ]]->function_9146bf81(int(item), type);
            }
            params = {};
            [[ var_1d7f1597 ]](localclientnum, var_d0b01271, waitresult, params);
            if (waitresult.event_name == "previewShopFace") {
                params.align_struct = struct::get(#"tag_align_quartermaster_character_head");
            }
            if (is_true(params.var_c76f3e47)) {
                [[ var_d0b01271 ]]->function_27945cb8(1);
            }
            [[ var_d0b01271 ]]->update(params);
            break;
        case #"loadpreset":
            if (isdefined(waitresult.mode)) {
                [[ var_d0b01271 ]]->set_character_mode(waitresult.mode);
            }
            if (isdefined(waitresult.character_index)) {
                [[ var_d0b01271 ]]->set_character_index(waitresult.character_index);
            }
            if (isdefined(waitresult.outfit_index)) {
                [[ var_d0b01271 ]]->set_character_outfit(waitresult.outfit_index);
            }
            outfititems = strtok(waitresult.presets, ";");
            foreach (type, item in outfititems) {
                if (type != 7 && type != 1) {
                    [[ var_d0b01271 ]]->function_9146bf81(int(item), type);
                }
            }
            params = {};
            [[ var_1d7f1597 ]](localclientnum, var_d0b01271, waitresult, params);
            if (is_true(params.var_c76f3e47)) {
                [[ var_d0b01271 ]]->function_27945cb8(1);
            }
            [[ var_d0b01271 ]]->update(params);
            break;
        case #"previewshopgesture":
            [[ var_d0b01271 ]]->set_character_mode(waitresult.mode);
            [[ var_d0b01271 ]]->set_character_index(waitresult.character_index);
            [[ var_d0b01271 ]]->function_22039feb();
            params = {};
            [[ var_1d7f1597 ]](localclientnum, var_d0b01271, waitresult, params);
            if (is_true(params.var_c76f3e47)) {
                [[ var_d0b01271 ]]->function_27945cb8(1);
            }
            [[ var_d0b01271 ]]->update(params);
            break;
        case #"previewgesture":
            thread [[ var_d0b01271 ]]->play_gesture(waitresult.gesture_index, waitresult.wait_until_model_steam_ends, waitresult.replay_if_already_playing, waitresult.ignore_if_already_playing);
            break;
        case #"stopgesture":
            var_d0b01271 notify(#"cancel_gesture");
            break;
        case #"hide":
            [[ var_d0b01271 ]]->hide_model();
            break;
        case #"show":
            [[ var_d0b01271 ]]->show_model();
            break;
        case #"loadrandomcharacter":
            params = {};
            [[ var_1d7f1597 ]](localclientnum, var_d0b01271, waitresult, params);
            [[ var_d0b01271 ]]->update(params);
            break;
        case #"hash_284a9fed1b3cdedb":
            if (is_true(waitresult.var_71922dc8)) {
                level.var_71922dc8 = 1;
                weapon_options = strtok(waitresult.weapon_options, ",");
                var_3831d409 = strtok(waitresult.var_9c3e9d34, "+");
                var_7d85cc7b = strtok(waitresult.var_8cba1516, "+");
                var_52b68ea = int(isdefined(var_7d85cc7b[0]) ? var_7d85cc7b[0] : -1);
                var_2aebb46a = int(isdefined(var_7d85cc7b[1]) ? var_7d85cc7b[1] : -1);
                var_e19ea1d1 = int(isdefined(var_7d85cc7b[2]) ? var_7d85cc7b[2] : -1);
                var_f773cd7b = int(isdefined(var_7d85cc7b[3]) ? var_7d85cc7b[3] : -1);
                var_5deb1a68 = int(isdefined(var_7d85cc7b[4]) ? var_7d85cc7b[4] : -1);
                var_619921c4 = int(isdefined(var_7d85cc7b[5]) ? var_7d85cc7b[5] : -1);
                var_3a485323 = int(isdefined(var_7d85cc7b[6]) ? var_7d85cc7b[6] : -1);
                var_501b7ec9 = int(isdefined(var_7d85cc7b[7]) ? var_7d85cc7b[7] : -1);
                level.var_1b17418f = getweapon(waitresult.weapon_ref, var_3831d409);
                level.var_6cbc1adc = function_6eff28b5(localclientnum, int(weapon_options[0]), int(weapon_options[1]), int(weapon_options[2]));
                level.var_52dc8db9 = function_e601ff48(level.var_1b17418f, waitresult.var_21a477b9, var_52b68ea, var_2aebb46a, var_e19ea1d1, var_f773cd7b, var_5deb1a68, var_619921c4, var_3a485323, var_501b7ec9);
            } else {
                level.var_71922dc8 = 0;
                level.var_1b17418f = undefined;
                level.var_6cbc1adc = undefined;
                level.var_52dc8db9 = undefined;
            }
            params = {};
            [[ var_1d7f1597 ]](localclientnum, var_d0b01271, waitresult, params);
            [[ var_d0b01271 ]]->update(params);
            break;
        }
    }
}

// Namespace character_customization/character_customization
// Params 4, eflags: 0x2 linked
// Checksum 0xd9ce713d, Offset: 0x8548
// Size: 0x9e
function rotation_thread_spawner(localclientnum, var_d0b01271, endonevent, var_cd34be2e) {
    if (!isdefined(endonevent)) {
        return;
    }
    baseangles = [[ var_d0b01271 ]]->function_217b10ed().angles;
    level update_model_rotation_for_right_stick(localclientnum, var_d0b01271, endonevent, var_cd34be2e);
    var_d0b01271.var_c492e538 = undefined;
    if (![[ var_d0b01271 ]]->function_4a271da1()) {
        [[ var_d0b01271 ]]->function_217b10ed().angles = baseangles;
    }
}

// Namespace character_customization/character_customization
// Params 1, eflags: 0x6 linked
// Checksum 0xca5276cc, Offset: 0x85f0
// Size: 0x5c
function private function_3d131a(localclientnum) {
    forcenotifyuimodel(getuimodel(function_1df4c3b0(localclientnum, #"hash_48b37823078b5999"), #"hash_6e41eda2b1b41bd"));
}

// Namespace character_customization/character_customization
// Params 4, eflags: 0x6 linked
// Checksum 0x213f0a12, Offset: 0x8658
// Size: 0x4ec
function private update_model_rotation_for_right_stick(localclientnum, var_d0b01271, endonevent, var_cd34be2e) {
    level endon(endonevent);
    while (1) {
        data_lcn = [[ var_d0b01271 ]]->function_690c9509();
        if (localclientnum == data_lcn && localclientactive(data_lcn) && ![[ var_d0b01271 ]]->function_4a271da1()) {
            model = [[ var_d0b01271 ]]->function_217b10ed();
            if (isdefined(model)) {
                pos = getcontrollerposition(data_lcn);
                change = pos[#"rightstick"][0];
                if (!gamepadusedlast(localclientnum)) {
                    pos = getxcammousecontrol(data_lcn);
                    change = change - pos[#"yaw"];
                }
                s_align = {#angles:model.angles, #origin:model.origin};
                if (isdefined(var_cd34be2e.str_scene)) {
                    if (isdefined(var_cd34be2e.var_c76d5a0b) && isdefined(var_cd34be2e.var_e982dc6b) && change < -0.5) {
                        function_3d131a(localclientnum);
                        var_d0b01271.var_c492e538 = var_cd34be2e.var_c76d5a0b;
                        var_d0b01271.var_ae32b908 = model.origin;
                        var_d0b01271.var_aba63ea = model.angles;
                        if (isdefined(level.var_6365df1f)) {
                            params = [[ level.var_6365df1f ]](localclientnum, var_d0b01271);
                            params = function_923a14da(params, var_d0b01271);
                            [[ var_d0b01271 ]]->update(params);
                        } else {
                            var_d0b01271 thread function_f7a5fba4(s_align, var_cd34be2e.str_scene, model, var_cd34be2e.var_c76d5a0b, var_cd34be2e.var_e982dc6b);
                        }
                        var_41173053 = scene::function_8582657c(var_cd34be2e.str_scene, var_cd34be2e.var_c76d5a0b);
                        wait(var_41173053);
                        var_d0b01271.var_c492e538 = undefined;
                        var_d0b01271.var_ae32b908 = undefined;
                        var_d0b01271.var_aba63ea = undefined;
                        var_d0b01271 notify(#"hash_6b33c66d373ab370");
                    } else if (isdefined(var_cd34be2e.var_3480dd47) && isdefined(var_cd34be2e.var_1aa99c8b) && change > 0.5) {
                        function_3d131a(localclientnum);
                        var_d0b01271.var_c492e538 = var_cd34be2e.var_3480dd47;
                        var_d0b01271.var_ae32b908 = model.origin;
                        var_d0b01271.var_aba63ea = model.angles;
                        if (isdefined(level.var_6365df1f)) {
                            params = [[ level.var_6365df1f ]](localclientnum, var_d0b01271);
                            params = function_923a14da(params, var_d0b01271);
                            [[ var_d0b01271 ]]->update(params);
                        } else {
                            var_d0b01271 thread function_f7a5fba4(s_align, var_cd34be2e.str_scene, model, var_cd34be2e.var_3480dd47, var_cd34be2e.var_1aa99c8b);
                        }
                        var_41173053 = scene::function_8582657c(var_cd34be2e.str_scene, var_cd34be2e.var_3480dd47);
                        wait(var_41173053);
                        var_d0b01271.var_c492e538 = undefined;
                        var_d0b01271.var_ae32b908 = undefined;
                        var_d0b01271.var_aba63ea = undefined;
                        var_d0b01271 notify(#"hash_6b33c66d373ab370");
                    }
                } else if (abs(change) > 0.0001) {
                    function_3d131a(localclientnum);
                    model.angles = (model.angles[0], absangleclamp360(model.angles[1] + change * 3), model.angles[2]);
                }
            }
        }
        waitframe(1);
    }
}

// Namespace character_customization/character_customization
// Params 0, eflags: 0x2 linked
// Checksum 0xfd7a3cba, Offset: 0x8b50
// Size: 0xc
function function_f40eb809() {
    return isdefined(self.var_c492e538);
}

// Namespace character_customization/character_customization
// Params 2, eflags: 0x6 linked
// Checksum 0x3f609196, Offset: 0x8b68
// Size: 0xa6
function private function_923a14da(params = spawnstruct(), var_d0b01271) {
    if (!isdefined(params.var_b1e821c5)) {
        params.var_b1e821c5 = spawnstruct();
    }
    if ([[ var_d0b01271 ]]->function_ea4ac9f8() && [[ var_d0b01271 ]]->is_visible()) {
        params.var_b1e821c5.blend = 0.5;
    } else {
        params.var_b1e821c5.blend = 0;
    }
    return params;
}


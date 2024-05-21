// Atian COD Tools GSC CW decompiler test
#using script_18bc13f07baf161a;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_21dd166c;

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 1, eflags: 0x2 linked
// Checksum 0xd3b2ffab, Offset: 0x3b8
// Size: 0x50
function function_ee83bc59(&array) {
    if (array.size > 0) {
        keys = getarraykeys(array);
        return keys[function_d59c2d03(keys.size)];
    }
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 1, eflags: 0x2 linked
// Checksum 0xc080169d, Offset: 0x410
// Size: 0x54
function function_b5f93b3b(&array) {
    if (array.size > 0) {
        keys = getarraykeys(array);
        return array[keys[function_d59c2d03(keys.size)]];
    }
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 2, eflags: 0x2 linked
// Checksum 0xf4dced4e, Offset: 0x470
// Size: 0x16a
function function_72c2ebdd(array, weights) {
    assert(array.size == weights.size);
    if (array.size > 0) {
        var_766a145f = 0;
        keys = getarraykeys(array);
        foreach (key in keys) {
            var_766a145f += weights[key];
        }
        var_ca23d24f = function_7ae7bf61(0, var_766a145f);
        var_da00fb33 = keys[0];
        for (i = 0; i < keys.size && var_ca23d24f >= 0; i++) {
            var_da00fb33 = keys[i];
            var_ca23d24f -= weights[var_da00fb33];
        }
        return array[var_da00fb33];
    }
    return undefined;
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 4, eflags: 0x4
// Checksum 0xe05b80e1, Offset: 0x5e8
// Size: 0x282
function private function_53808d89(n, grid, mins, maxs) {
    var_f8c934d0 = [];
    foreach (row in grid) {
        foreach (var_7859e75f in row) {
            if (var_7859e75f.col >= mins.col && var_7859e75f.col <= maxs.col && var_7859e75f.col >= mins.row && var_7859e75f.row <= maxs.row) {
                if (!isdefined(var_f8c934d0)) {
                    var_f8c934d0 = [];
                } else if (!isarray(var_f8c934d0)) {
                    var_f8c934d0 = array(var_f8c934d0);
                }
                var_f8c934d0[var_f8c934d0.size] = var_7859e75f;
            }
        }
    }
    selectednodes = [];
    for (i = 0; i < n; i++) {
        if (var_f8c934d0.size > 0) {
            selected = function_ee83bc59(var_f8c934d0);
            if (!isdefined(selectednodes)) {
                selectednodes = [];
            } else if (!isarray(selectednodes)) {
                selectednodes = array(selectednodes);
            }
            selectednodes[selectednodes.size] = var_f8c934d0[selected];
            var_f8c934d0 = array::remove_index(var_f8c934d0, selected);
        }
    }
    return selectednodes;
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 1, eflags: 0x6 linked
// Checksum 0xa6d9de2e, Offset: 0x878
// Size: 0x9e
function private function_d5a0b1bc(&grid) {
    if (!isdefined(grid)) {
        return;
    }
    for (i = 0; i < 25; i++) {
        for (j = 0; j < 25; j++) {
            grid[i][j].mins = undefined;
            grid[i][j].maxs = undefined;
            grid[i][j] = undefined;
        }
        grid[i] = undefined;
    }
    grid = [];
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 0, eflags: 0x6 linked
// Checksum 0xb0cf70da, Offset: 0x920
// Size: 0xf6
function private function_2679112e() {
    var_ae856577 = (0, 0, 0);
    grid = [];
    for (i = 0; i < 25; i++) {
        grid[i] = [];
        for (j = 0; j < 25; j++) {
            grid[i][j] = spawnstruct();
            grid[i][j].origin = var_ae856577 + (1, 0, 0) * 1024 * j - (0, 1, 0) * 1024 * i;
            grid[i][j].row = i;
            grid[i][j].col = j;
        }
    }
    return grid;
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 0, eflags: 0x6 linked
// Checksum 0x12a1b288, Offset: 0xa20
// Size: 0x130
function private function_d5a0313a() {
    if (isdefined(level.var_84c76431)) {
        return [[ level.var_84c76431 ]]();
    }
    var_1b8ba6f5 = [];
    var_1b8ba6f5[0] = 1e-05;
    var_1b8ba6f5[1] = 0.001;
    var_1b8ba6f5[2] = 0.001;
    var_1b8ba6f5[3] = 1;
    var_1b8ba6f5[4] = 0.001;
    var_1b8ba6f5[5] = 1;
    var_1b8ba6f5[6] = 1;
    var_1b8ba6f5[7] = 0.5;
    var_1b8ba6f5[8] = 0.001;
    var_1b8ba6f5[9] = 1;
    var_1b8ba6f5[10] = 1;
    var_1b8ba6f5[11] = 0.5;
    var_1b8ba6f5[12] = 1;
    var_1b8ba6f5[13] = 0.5;
    var_1b8ba6f5[14] = 0.5;
    var_1b8ba6f5[15] = 0.25;
    return var_1b8ba6f5;
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 0, eflags: 0x2 linked
// Checksum 0xdc00d728, Offset: 0xb58
// Size: 0x34
function function_c083433f() {
    flag::set("rg_generating");
    level thread function_3846f71f();
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 1, eflags: 0x6 linked
// Checksum 0xcc6d40e3, Offset: 0xb98
// Size: 0x4c
function private function_f4ad1256(var_ac850bbc) {
    var_8363ebc0 = var_ac850bbc.var_8363ebc0;
    return var_8363ebc0 >= getdvarint(#"hash_4c2ff1f11662c879", 12);
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 0, eflags: 0x2 linked
// Checksum 0x230b5e08, Offset: 0xbf0
// Size: 0x380
function function_3846f71f() {
    self notify("2509726c959861cb");
    self endon("2509726c959861cb");
    level endon(#"hash_521118da55424987");
    if (!isdefined(level.var_5b193175)) {
        level.var_5b193175 = &function_f4ad1256;
    }
    for (loops = 0; true; loops++) {
        namespace_95fdc800::function_f4b7f348("generate_level_internal loop:" + loops);
        if (isdefined(level.var_1c96bbc)) {
            level.var_1c96bbc.center = undefined;
            level.var_1c96bbc.var_95a93b6 = [];
            for (i = 0; i < level.var_1c96bbc.var_4ca9cc3e.size; i++) {
                level.var_1c96bbc.var_4ca9cc3e[i] = undefined;
            }
            level.var_1c96bbc.var_4ca9cc3e = [];
            function_d5a0b1bc(level.var_1c96bbc.grid);
            level.var_1c96bbc.maxs = undefined;
            level.var_1c96bbc.mins = undefined;
            level.var_1c96bbc = undefined;
        }
        namespace_95fdc800::function_f4b7f348("generate_level_internal initialized");
        if (!getdvarint(#"hash_55c78475b1ebf3de", 1)) {
            waitframe(1);
        }
        grid = function_2679112e();
        namespace_95fdc800::function_f4b7f348("generate_level_internal generate_grid called and finished");
        var_ac850bbc = function_a1b9e7c0(grid);
        namespace_95fdc800::function_f4b7f348("generate_level_internal expand_generate called and finished");
        function_9b4fd56b(var_ac850bbc);
        namespace_95fdc800::function_f4b7f348("generate_level_internal remove symbols called and finished");
        if ([[ level.var_5b193175 ]](var_ac850bbc)) {
            namespace_95fdc800::function_f4b7f348("generate_level_internal rg_validate_generated_map called and passed");
            break;
        }
        namespace_95fdc800::function_f4b7f348("generate_level_internal rg_validate_generated_map called and FAILED");
    }
    level.var_1c96bbc = function_a91abf58(var_ac850bbc);
    namespace_95fdc800::function_f4b7f348("generate_level_internal generate_door_edges called and finished");
    function_d5a0b1bc(grid);
    namespace_95fdc800::function_f4b7f348("generate_level_internal free_grid called and finished");
    flag::clear("rg_generating");
    if (!getdvarint(#"hash_55c78475b1ebf3de", 1)) {
        waitframe(1);
        level notify(#"hash_47a9ddfa0138bc29");
        return;
    }
    return level.var_1c96bbc;
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 1, eflags: 0x6 linked
// Checksum 0x84bda81c, Offset: 0xf78
// Size: 0xa1a
function private function_f27dcbdb(var_ac850bbc) {
    grid = var_ac850bbc.grid;
    mins = var_ac850bbc.mins;
    maxs = var_ac850bbc.maxs;
    var_6337f20 = [];
    var_e7bee289 = [];
    var_9f5b832e = [];
    var_45f39b76 = undefined;
    var_dab090bb = undefined;
    for (var_155fb1e0 = mins.col; var_155fb1e0 + 3 - 1 <= maxs.col; var_155fb1e0++) {
        for (var_8d2452c7 = mins.row; var_8d2452c7 + 3 - 1 <= maxs.row; var_8d2452c7++) {
            var_dab090bb = 3;
            var_45f39b76 = grid[var_8d2452c7 + 1][var_155fb1e0 + 2];
            assert(isdefined(var_45f39b76));
            if (!isdefined(var_45f39b76.exits) || isdefined(var_45f39b76.var_4e8e65e4) && var_45f39b76.var_4e8e65e4 != 2) {
                continue;
            }
            if (var_45f39b76.exits != 3) {
                var_dab090bb &= ~2;
            }
            if (var_45f39b76.exits != 9) {
                var_dab090bb &= ~1;
            }
            var_45f39b76 = grid[var_8d2452c7 + 2][var_155fb1e0 + 1];
            if (var_dab090bb == 0 || !isdefined(var_45f39b76.exits) || isdefined(var_45f39b76.var_4e8e65e4) && var_45f39b76.var_4e8e65e4 != 2) {
                continue;
            }
            if (var_dab090bb & 2 && var_45f39b76.exits != 9) {
                var_dab090bb &= ~2;
            } else if (var_dab090bb & 1 && var_45f39b76.exits != 12) {
                var_dab090bb &= ~1;
            }
            var_45f39b76 = grid[var_8d2452c7 + 1][var_155fb1e0];
            if (var_dab090bb == 0 || !isdefined(var_45f39b76.exits) || isdefined(var_45f39b76.var_4e8e65e4) && var_45f39b76.var_4e8e65e4 != 2) {
                continue;
            }
            if (var_dab090bb & 2 && var_45f39b76.exits != 12) {
                var_dab090bb &= ~2;
            } else if (var_dab090bb & 1 && var_45f39b76.exits != 6) {
                var_dab090bb &= ~1;
            }
            var_45f39b76 = grid[var_8d2452c7][var_155fb1e0 + 1];
            if (var_dab090bb == 0 || !isdefined(var_45f39b76.exits) || isdefined(var_45f39b76.var_4e8e65e4) && var_45f39b76.var_4e8e65e4 != 2) {
                continue;
            }
            if (var_dab090bb & 2 && var_45f39b76.exits != 6) {
                var_dab090bb &= ~2;
            } else if (var_dab090bb & 1 && var_45f39b76.exits != 3) {
                var_dab090bb &= ~1;
            }
            if (var_dab090bb == 0) {
                continue;
            }
            if (!isdefined(var_6337f20)) {
                var_6337f20 = [];
            } else if (!isarray(var_6337f20)) {
                var_6337f20 = array(var_6337f20);
            }
            var_6337f20[var_6337f20.size] = var_8d2452c7;
            if (!isdefined(var_e7bee289)) {
                var_e7bee289 = [];
            } else if (!isarray(var_e7bee289)) {
                var_e7bee289 = array(var_e7bee289);
            }
            var_e7bee289[var_e7bee289.size] = var_155fb1e0;
            if (!isdefined(var_9f5b832e)) {
                var_9f5b832e = [];
            } else if (!isarray(var_9f5b832e)) {
                var_9f5b832e = array(var_9f5b832e);
            }
            var_9f5b832e[var_9f5b832e.size] = var_dab090bb;
        }
    }
    /#
        if (var_6337f20.size > 0) {
            println("<unknown string>" + var_6337f20.size + "<unknown string>");
            function_50a302e0(var_ac850bbc.grid, var_ac850bbc.mins, var_ac850bbc.maxs);
        }
    #/
    for (i = 0; i < var_6337f20.size; i++) {
        if (var_9f5b832e[i] == 2) {
            grid[var_6337f20[i] + 1][var_e7bee289[i]].exits = grid[var_6337f20[i] + 1][var_e7bee289[i]].exits | 2;
            if (isdefined(grid[var_6337f20[i] + 2][var_e7bee289[i]].exits)) {
                grid[var_6337f20[i] + 2][var_e7bee289[i]].exits = grid[var_6337f20[i] + 2][var_e7bee289[i]].exits | 8;
            } else {
                grid[var_6337f20[i] + 2][var_e7bee289[i]].exits = 8;
                grid[var_6337f20[i] + 2][var_e7bee289[i]].var_4e8e65e4 = 1;
                grid[var_6337f20[i] + 2][var_e7bee289[i]].height = grid[var_6337f20[i] + 1][var_e7bee289[i]].height + 1;
                if (!isdefined(var_ac850bbc.var_95a93b6)) {
                    var_ac850bbc.var_95a93b6 = [];
                } else if (!isarray(var_ac850bbc.var_95a93b6)) {
                    var_ac850bbc.var_95a93b6 = array(var_ac850bbc.var_95a93b6);
                }
                var_ac850bbc.var_95a93b6[var_ac850bbc.var_95a93b6.size] = grid[var_6337f20[i] + 2][var_e7bee289[i]];
                var_ac850bbc.var_8363ebc0++;
            }
            continue;
        }
        grid[var_6337f20[i] + 1][var_e7bee289[i]].exits = grid[var_6337f20[i] + 1][var_e7bee289[i]].exits | 8;
        if (isdefined(grid[var_6337f20[i]][var_e7bee289[i]].exits)) {
            grid[var_6337f20[i]][var_e7bee289[i]].exits = grid[var_6337f20[i]][var_e7bee289[i]].exits | 2;
            continue;
        }
        grid[var_6337f20[i]][var_e7bee289[i]].exits = 2;
        grid[var_6337f20[i]][var_e7bee289[i]].var_4e8e65e4 = 1;
        grid[var_6337f20[i]][var_e7bee289[i]].height = grid[var_6337f20[i] + 1][var_e7bee289[i]].height + 1;
        if (!isdefined(var_ac850bbc.var_95a93b6)) {
            var_ac850bbc.var_95a93b6 = [];
        } else if (!isarray(var_ac850bbc.var_95a93b6)) {
            var_ac850bbc.var_95a93b6 = array(var_ac850bbc.var_95a93b6);
        }
        var_ac850bbc.var_95a93b6[var_ac850bbc.var_95a93b6.size] = grid[var_6337f20[i]][var_e7bee289[i]];
        var_ac850bbc.var_8363ebc0++;
    }
    /#
        if (var_6337f20.size > 0) {
            println("<unknown string>" + var_6337f20.size + "<unknown string>");
            function_50a302e0(var_ac850bbc.grid, var_ac850bbc.mins, var_ac850bbc.maxs);
        }
    #/
    return var_6337f20.size;
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 1, eflags: 0x6 linked
// Checksum 0xb926b15b, Offset: 0x19a0
// Size: 0x2e
function private function_9b4fd56b(var_ac850bbc) {
    var_1fb83feb = function_f27dcbdb(var_ac850bbc);
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 1, eflags: 0x6 linked
// Checksum 0xb7d2eb93, Offset: 0x19d8
// Size: 0xf0c
function private function_a1b9e7c0(grid) {
    center = grid[int(12.5)][int(12.5)];
    center.var_4e8e65e4 = 0;
    center.exits = 8;
    center.height = 0;
    mins = spawnstruct();
    mins.col = center.col - int(getdvarint(#"hash_788fb3bfb03132f", 6) / 2);
    mins.row = center.row - int(getdvarint(#"hash_788fb3bfb03132f", 6) / 2);
    maxs = spawnstruct();
    maxs.col = center.col + int(getdvarint(#"hash_788fb3bfb03132f", 6) / 2);
    maxs.row = center.row + int(getdvarint(#"hash_788fb3bfb03132f", 6) / 2);
    var_deb37465 = function_d5a0313a();
    var_8363ebc0 = 1;
    var_95a93b6 = [];
    var_7634e14a = [];
    center.children = [];
    if (!isdefined(center.children)) {
        center.children = [];
    } else if (!isarray(center.children)) {
        center.children = array(center.children);
    }
    center.children[center.children.size] = grid[center.row - 1][center.col];
    grid[center.row - 1][center.col].height = 1;
    array::push_front(var_7634e14a, grid[center.row - 1][center.col]);
    namespace_95fdc800::function_f4b7f348("expand_generate initialized");
    while (var_7634e14a.size > 0) {
        namespace_95fdc800::function_f4b7f348("expand_generate openNodes.size = " + var_7634e14a.size);
        currentnode = array::pop(var_7634e14a);
        var_cb3c1fa = 0;
        var_f00d8c2a = 0;
        if (currentnode.col > mins.col) {
            if (isdefined(grid[currentnode.row][currentnode.col - 1].exits)) {
                var_cb3c1fa |= 1;
                if (grid[currentnode.row][currentnode.col - 1].exits & 4) {
                    var_f00d8c2a |= 1;
                }
            }
        } else {
            var_cb3c1fa |= 1;
        }
        if (currentnode.col < maxs.col) {
            if (isdefined(grid[currentnode.row][currentnode.col + 1].exits)) {
                var_cb3c1fa |= 4;
                if (grid[currentnode.row][currentnode.col + 1].exits & 1) {
                    var_f00d8c2a |= 4;
                }
            }
        } else {
            var_cb3c1fa |= 4;
        }
        if (currentnode.row > mins.row) {
            if (isdefined(grid[currentnode.row - 1][currentnode.col].exits)) {
                var_cb3c1fa |= 8;
                if (grid[currentnode.row - 1][currentnode.col].exits & 2) {
                    var_f00d8c2a |= 8;
                }
            }
        } else {
            var_cb3c1fa |= 8;
        }
        if (currentnode.row < maxs.row) {
            if (isdefined(grid[currentnode.row + 1][currentnode.col].exits)) {
                var_cb3c1fa |= 2;
                if (grid[currentnode.row + 1][currentnode.col].exits & 8) {
                    var_f00d8c2a |= 2;
                }
            }
        } else {
            var_cb3c1fa |= 2;
        }
        var_d4239799 = [];
        for (i = 0; i <= 15; i++) {
            bits = int(i);
            var_14358e62 = ~(var_f00d8c2a ^ bits);
            var_bc8525a3 = var_14358e62 | ~var_cb3c1fa;
            if (!~var_bc8525a3) {
                if (!isdefined(var_d4239799)) {
                    var_d4239799 = [];
                } else if (!isarray(var_d4239799)) {
                    var_d4239799 = array(var_d4239799);
                }
                var_d4239799[var_d4239799.size] = bits;
            }
        }
        var_b39b2f6 = [];
        foreach (key in getarraykeys(var_d4239799)) {
            var_b39b2f6[key] = var_deb37465[var_d4239799[key]];
        }
        currentnode.exits = function_72c2ebdd(var_d4239799, var_b39b2f6);
        var_8363ebc0++;
        currentnode.children = [];
        if (currentnode.exits & 2 && currentnode.row < maxs.row && !isdefined(grid[currentnode.row + 1][currentnode.col].height)) {
            if (!isdefined(currentnode.children)) {
                currentnode.children = [];
            } else if (!isarray(currentnode.children)) {
                currentnode.children = array(currentnode.children);
            }
            currentnode.children[currentnode.children.size] = grid[currentnode.row + 1][currentnode.col];
            grid[currentnode.row + 1][currentnode.col].height = currentnode.height + 1;
            array::push_front(var_7634e14a, grid[currentnode.row + 1][currentnode.col]);
        }
        if (currentnode.exits & 8 && currentnode.row > mins.row && !isdefined(grid[currentnode.row - 1][currentnode.col].height)) {
            if (!isdefined(currentnode.children)) {
                currentnode.children = [];
            } else if (!isarray(currentnode.children)) {
                currentnode.children = array(currentnode.children);
            }
            currentnode.children[currentnode.children.size] = grid[currentnode.row - 1][currentnode.col];
            grid[currentnode.row - 1][currentnode.col].height = currentnode.height + 1;
            array::push_front(var_7634e14a, grid[currentnode.row - 1][currentnode.col]);
        }
        if (currentnode.exits & 4 && currentnode.col < maxs.row && !isdefined(grid[currentnode.row][currentnode.col + 1].height)) {
            if (!isdefined(currentnode.children)) {
                currentnode.children = [];
            } else if (!isarray(currentnode.children)) {
                currentnode.children = array(currentnode.children);
            }
            currentnode.children[currentnode.children.size] = grid[currentnode.row][currentnode.col + 1];
            grid[currentnode.row][currentnode.col + 1].height = currentnode.height + 1;
            array::push_front(var_7634e14a, grid[currentnode.row][currentnode.col + 1]);
        }
        if (currentnode.exits & 1 && currentnode.col > mins.col && !isdefined(grid[currentnode.row][currentnode.col - 1].height)) {
            if (!isdefined(currentnode.children)) {
                currentnode.children = [];
            } else if (!isarray(currentnode.children)) {
                currentnode.children = array(currentnode.children);
            }
            currentnode.children[currentnode.children.size] = grid[currentnode.row][currentnode.col - 1];
            grid[currentnode.row][currentnode.col - 1].height = currentnode.height + 1;
            array::push_front(var_7634e14a, grid[currentnode.row][currentnode.col - 1]);
        }
        if (currentnode.exits == 1 || currentnode.exits == 2 || currentnode.exits == 4 || currentnode.exits == 8) {
            currentnode.var_4e8e65e4 = 1;
            if (!isdefined(var_95a93b6)) {
                var_95a93b6 = [];
            } else if (!isarray(var_95a93b6)) {
                var_95a93b6 = array(var_95a93b6);
            }
            var_95a93b6[var_95a93b6.size] = currentnode;
        } else if (function_d59c2d03(99) < 20) {
            currentnode.var_4e8e65e4 = 1;
            if (!isdefined(var_95a93b6)) {
                var_95a93b6 = [];
            } else if (!isarray(var_95a93b6)) {
                var_95a93b6 = array(var_95a93b6);
            }
            var_95a93b6[var_95a93b6.size] = currentnode;
        }
        if (!getdvarint(#"hash_55c78475b1ebf3de", 1)) {
            waitframe(1);
        }
    }
    namespace_95fdc800::function_f4b7f348("expand_generate openNodes processing done");
    return {#grid:grid, #mins:mins, #maxs:maxs, #center:center, #var_8363ebc0:var_8363ebc0, #var_95a93b6:var_95a93b6};
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 3, eflags: 0x2 linked
// Checksum 0x10cda904, Offset: 0x28f0
// Size: 0xa8
function function_7f9c08bb(row, col, dir) {
    if (dir == 8) {
        row -= 1;
    }
    if (dir == 1) {
        col -= 1;
    }
    var_820d981d = "v";
    if (dir == 1 || dir == 4) {
        var_820d981d = "h";
    }
    return row + "," + col + var_820d981d;
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 3, eflags: 0x6 linked
// Checksum 0xe2779758, Offset: 0x29a0
// Size: 0x96
function private function_1cbb1766(row, col, dir) {
    edge = spawnstruct();
    if (dir == 8) {
        row -= 1;
    }
    if (dir == 1) {
        col -= 1;
    }
    edge.col = col;
    edge.row = row;
    edge.dir = dir;
    return edge;
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 1, eflags: 0x6 linked
// Checksum 0x6ea9a365, Offset: 0x2a40
// Size: 0x8c
function private function_a91abf58(var_ac850bbc) {
    if (!getdvarint(#"hash_55c78475b1ebf3de", 1)) {
        level thread function_6673d10c(var_ac850bbc);
        level waittill(#"hash_40227511a548bc20");
        return level.var_1c96bbc;
    }
    return function_6673d10c(var_ac850bbc);
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 1, eflags: 0x6 linked
// Checksum 0xd286ceb5, Offset: 0x2ad8
// Size: 0x518
function private function_6673d10c(var_ac850bbc) {
    grid = var_ac850bbc.grid;
    center = var_ac850bbc.center;
    var_95a93b6 = var_ac850bbc.var_95a93b6;
    maxs = var_ac850bbc.maxs;
    mins = var_ac850bbc.mins;
    var_57873587 = [];
    namespace_95fdc800::function_f4b7f348("generate_door_edges_internal initialized;  dest_nodes.size = " + var_95a93b6.size);
    foreach (var_68ba8360 in var_95a93b6) {
        if (var_68ba8360.exits & 2 && var_68ba8360.row < maxs.row && isdefined(grid[var_68ba8360.row + 1][var_68ba8360.col].height)) {
            var_5dba4756 = function_7f9c08bb(var_68ba8360.row, var_68ba8360.col, 2);
            edge = var_57873587[var_5dba4756];
            if (!isdefined(edge)) {
                edge = function_1cbb1766(var_68ba8360.row, var_68ba8360.col, 2);
                var_57873587[var_5dba4756] = edge;
            }
            edge.var_47a3990 = 1;
        }
        if (var_68ba8360.exits & 8 && var_68ba8360.row > mins.row && isdefined(grid[var_68ba8360.row - 1][var_68ba8360.col].height)) {
            var_5dba4756 = function_7f9c08bb(var_68ba8360.row, var_68ba8360.col, 8);
            edge = var_57873587[var_5dba4756];
            if (!isdefined(edge)) {
                edge = function_1cbb1766(var_68ba8360.row, var_68ba8360.col, 8);
                var_57873587[var_5dba4756] = edge;
            }
            edge.var_47a3990 = 1;
        }
        if (var_68ba8360.exits & 4 && var_68ba8360.col < maxs.row && isdefined(grid[var_68ba8360.row][var_68ba8360.col + 1].height)) {
            var_5dba4756 = function_7f9c08bb(var_68ba8360.row, var_68ba8360.col, 4);
            edge = var_57873587[var_5dba4756];
            if (!isdefined(edge)) {
                edge = function_1cbb1766(var_68ba8360.row, var_68ba8360.col, 4);
                var_57873587[var_5dba4756] = edge;
            }
            edge.var_47a3990 = 1;
        }
        if (var_68ba8360.exits & 1 && var_68ba8360.col > mins.col && isdefined(grid[var_68ba8360.row][var_68ba8360.col - 1].height)) {
            var_5dba4756 = function_7f9c08bb(var_68ba8360.row, var_68ba8360.col, 1);
            edge = var_57873587[var_5dba4756];
            if (!isdefined(edge)) {
                edge = function_1cbb1766(var_68ba8360.row, var_68ba8360.col, 1);
                var_57873587[var_5dba4756] = edge;
            }
            edge.var_47a3990 = 1;
        }
        if (!getdvarint(#"hash_55c78475b1ebf3de", 1)) {
            waitframe(1);
        }
    }
    namespace_95fdc800::function_f4b7f348("generate_door_edges_internal processed");
    var_ac850bbc.var_4ca9cc3e = var_57873587;
    level.var_1c96bbc = var_ac850bbc;
    if (!getdvarint(#"hash_55c78475b1ebf3de", 1)) {
        waitframe(1);
        level notify(#"hash_40227511a548bc20");
        return;
    }
    return level.var_1c96bbc;
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 1, eflags: 0x4
// Checksum 0x237c04b0, Offset: 0x2ff8
// Size: 0x186
function private function_41cea16c(var_e5a03c2d) {
    centroid = (0, 0, 0);
    foreach (node in var_e5a03c2d) {
        centroid += node.origin;
    }
    centroid /= var_e5a03c2d.size;
    startnode = var_e5a03c2d[0];
    bestdist = distance2dsquared(centroid, startnode.origin);
    foreach (node in var_e5a03c2d) {
        dist = distance2dsquared(centroid, node.origin);
        if (dist < bestdist) {
            bestdist = dist;
            startnode = node;
        }
    }
    return startnode;
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 2, eflags: 0x2 linked
// Checksum 0x38b6248f, Offset: 0x3188
// Size: 0x28
function function_ad3c4c28(left, right) {
    return left.distsqr < right.distsqr;
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 2, eflags: 0x6 linked
// Checksum 0x15658cc4, Offset: 0x31b8
// Size: 0xd4
function private function_42d4c400(edge, var_b17324f2) {
    membership = spawnstruct();
    if (var_b17324f2.size == 0) {
        return membership;
    }
    for (i = 0; i < var_b17324f2.size; i++) {
        if (isdefined(var_b17324f2[i][edge.starti])) {
            membership.start = i;
        }
        if (isdefined(var_b17324f2[i][edge.aizm])) {
            membership.end = i;
        }
        if (isdefined(membership.start) && isdefined(membership.end)) {
            return membership;
        }
    }
    return membership;
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 3, eflags: 0x6 linked
// Checksum 0xf036b3a7, Offset: 0x3298
// Size: 0x1e6
function private function_d10d1a39(membership, edge, var_b17324f2) {
    if (isdefined(membership.start)) {
        if (isdefined(membership.end)) {
            keys = getarraykeys(var_b17324f2[membership.end]);
            foreach (key in keys) {
                var_b17324f2[membership.start][key] = 1;
            }
            var_b17324f2 = array::remove_index(var_b17324f2, membership.end);
        } else {
            var_b17324f2[membership.start][edge.aizm] = 1;
        }
    } else if (isdefined(membership.end)) {
        var_b17324f2[membership.end][edge.starti] = 1;
    } else {
        var_a8af105 = [];
        var_a8af105[edge.starti] = 1;
        var_a8af105[edge.aizm] = 1;
        if (!isdefined(var_b17324f2)) {
            var_b17324f2 = [];
        } else if (!isarray(var_b17324f2)) {
            var_b17324f2 = array(var_b17324f2);
        }
        var_b17324f2[var_b17324f2.size] = var_a8af105;
    }
    return var_b17324f2;
}

// Namespace namespace_21dd166c/namespace_21dd166c
// Params 1, eflags: 0x4
// Checksum 0xe6a01df2, Offset: 0x3488
// Size: 0x276
function private function_6544fed5(var_e5a03c2d) {
    edgelist = [];
    var_b17324f2 = [];
    for (i = 0; i < var_e5a03c2d.size; i++) {
        for (j = i + 1; j < var_e5a03c2d.size; j++) {
            edge = spawnstruct();
            edge.start = var_e5a03c2d[i];
            edge.end = var_e5a03c2d[j];
            edge.starti = i;
            edge.aizm = j;
            edge.distsqr = distance2dsquared(var_e5a03c2d[i].origin, var_e5a03c2d[j].origin);
            if (!isdefined(edgelist)) {
                edgelist = [];
            } else if (!isarray(edgelist)) {
                edgelist = array(edgelist);
            }
            edgelist[edgelist.size] = edge;
        }
    }
    var_b93b110a = array::quick_sort(edgelist, &function_ad3c4c28);
    var_d25551a8 = [];
    while (var_b93b110a.size > 0) {
        edge = array::pop_front(var_b93b110a);
        membership = function_42d4c400(edge, var_b17324f2);
        if (!isdefined(membership.start) || !isdefined(membership.end) || membership.start != membership.end) {
            if (!isdefined(var_d25551a8)) {
                var_d25551a8 = [];
            } else if (!isarray(var_d25551a8)) {
                var_d25551a8 = array(var_d25551a8);
            }
            var_d25551a8[var_d25551a8.size] = edge;
            var_b17324f2 = function_d10d1a39(membership, edge, var_b17324f2);
        }
    }
    return var_d25551a8;
}

/#

    // Namespace namespace_21dd166c/namespace_21dd166c
    // Params 1, eflags: 0x4
    // Checksum 0x14984e45, Offset: 0x3708
    // Size: 0x28e
    function private function_edc68cbd(grid) {
        boxcolor = (1, 1, 1);
        while (true) {
            if (!isdefined(grid)) {
                return;
            }
            for (i = 0; i < 25; i++) {
                line(grid[i][0].origin + (-512, 512, 0), grid[i][24].origin + (512, 512, 0), boxcolor);
            }
            line(grid[24][0].origin + (-512, -512, 0), grid[24][24].origin + (512, -512, 0), boxcolor);
            for (j = 0; j < 25; j++) {
                line(grid[0][j].origin + (-512, 512, 0), grid[24][j].origin + (-512, -512, 0), boxcolor);
            }
            line(grid[0][24].origin + (512, 512, 0), grid[24][24].origin + (512, -512, 0), boxcolor);
            for (i = 0; i < 25; i++) {
                for (j = 0; j < 25; j++) {
                    print3d(grid[i][j].origin + (0, 0, 12), "<unknown string>" + i + "<unknown string>" + j + "<unknown string>", boxcolor, 1, 5);
                }
            }
            waitframe(1);
        }
    }

    // Namespace namespace_21dd166c/namespace_21dd166c
    // Params 3, eflags: 0x4
    // Checksum 0xa9671763, Offset: 0x39a0
    // Size: 0x4fc
    function private function_50a302e0(grid, mins, maxs) {
        print("<unknown string>");
        for (j = mins.col; j <= maxs.col; j++) {
            print("<unknown string>");
        }
        println("<unknown string>");
        for (i = mins.row; i <= maxs.row; i++) {
            print("<unknown string>");
            for (j = mins.col; j <= maxs.col; j++) {
                if (isdefined(grid[i][j].exits)) {
                    if (grid[i][j].exits & 8) {
                        var_9b9b1d8c = grid[i][j].var_4e8e65e4 === 1 ? "<unknown string>" : "<unknown string>";
                        print("<unknown string>" + var_9b9b1d8c + "<unknown string>");
                    } else {
                        print("<unknown string>");
                    }
                    continue;
                }
                print("<unknown string>");
            }
            println("<unknown string>");
            print("<unknown string>");
            for (j = mins.col; j <= maxs.col; j++) {
                if (isdefined(grid[i][j].exits)) {
                    var_9b9b1d8c = grid[i][j].var_4e8e65e4 === 1 ? "<unknown string>" : "<unknown string>";
                    print(grid[i][j].exits & 1 ? var_9b9b1d8c : "<unknown string>");
                    print(var_9b9b1d8c);
                    print(grid[i][j].exits & 4 ? var_9b9b1d8c : "<unknown string>");
                    print("<unknown string>");
                    continue;
                }
                print("<unknown string>");
            }
            println("<unknown string>");
            print("<unknown string>");
            for (j = mins.col; j <= maxs.col; j++) {
                if (isdefined(grid[i][j].exits)) {
                    if (grid[i][j].exits & 2) {
                        var_9b9b1d8c = grid[i][j].var_4e8e65e4 === 1 ? "<unknown string>" : "<unknown string>";
                        print("<unknown string>" + var_9b9b1d8c + "<unknown string>");
                    } else {
                        print("<unknown string>");
                    }
                    continue;
                }
                print("<unknown string>");
            }
            println("<unknown string>");
            print("<unknown string>");
            for (j = mins.col; j <= maxs.col; j++) {
                print("<unknown string>");
            }
            println("<unknown string>");
        }
    }

    // Namespace namespace_21dd166c/namespace_21dd166c
    // Params 2, eflags: 0x4
    // Checksum 0xaeae7f3f, Offset: 0x3ea8
    // Size: 0x142
    function private function_94306783(var_e5a03c2d, height) {
        level endon(#"hash_186e943c1cd0db52", #"hash_521118da55424987");
        if (!isdefined(height)) {
            height = 0;
        }
        var_fcf998ca = (1, 0, 0);
        startcolor = (1, 1, 0);
        while (true) {
            foreach (node in var_e5a03c2d) {
                color = var_fcf998ca;
                if (node.var_4e8e65e4 === 0) {
                    color = startcolor;
                }
                circle(node.origin + (0, 0, 1) * height, 256, color, 0);
            }
            waitframe(1);
        }
    }

    // Namespace namespace_21dd166c/namespace_21dd166c
    // Params 2, eflags: 0x4
    // Checksum 0xeb98baf8, Offset: 0x3ff8
    // Size: 0x12a
    function private function_a38567b2(edges, height) {
        level endon(#"hash_186e943c1cd0db52", #"hash_521118da55424987");
        if (!isdefined(height)) {
            height = 0;
        }
        color = (0, 0, 1);
        while (true) {
            if (!isdefined(edges)) {
                return;
            }
            foreach (edge in edges) {
                line(edge.start.origin + (0, 0, 1) * height, edge.end.origin + (0, 0, 1) * height, color);
            }
            waitframe(1);
        }
    }

    // Namespace namespace_21dd166c/namespace_21dd166c
    // Params 4, eflags: 0x4
    // Checksum 0x7b5d6340, Offset: 0x4130
    // Size: 0x49e
    function private function_7c408b40(grid, mins, maxs, height) {
        level endon(#"hash_186e943c1cd0db52", #"hash_521118da55424987");
        if (!isdefined(height)) {
            height = 0;
        }
        color = (0, 1, 1);
        while (true) {
            for (i = mins.row - 1; i <= maxs.row; i++) {
                for (j = mins.col - 1; j <= maxs.col; j++) {
                    if (isdefined(grid[i][j].exits)) {
                        if (grid[i][j].exits & 1) {
                            line(grid[i][j].origin + (0, 0, 1) * ((isdefined(grid[i][j].height) ? grid[i][j].height : 0) * 0 + height), grid[i][j].origin + (0, 0, 1) * ((isdefined(grid[i][j].height) ? grid[i][j].height : 0) * 0 + height) - (1, 0, 0) * 1024 / 2, color);
                        }
                        if (grid[i][j].exits & 2) {
                            line(grid[i][j].origin + (0, 0, 1) * ((isdefined(grid[i][j].height) ? grid[i][j].height : 0) * 0 + height), grid[i][j].origin + (0, 0, 1) * ((isdefined(grid[i][j].height) ? grid[i][j].height : 0) * 0 + height) - (0, 1, 0) * 1024 / 2, color);
                        }
                        if (grid[i][j].exits & 4) {
                            line(grid[i][j].origin + (0, 0, 1) * ((isdefined(grid[i][j].height) ? grid[i][j].height : 0) * 0 + height), grid[i][j].origin + (0, 0, 1) * ((isdefined(grid[i][j].height) ? grid[i][j].height : 0) * 0 + height) + (1, 0, 0) * 1024 / 2, color);
                        }
                        if (grid[i][j].exits & 8) {
                            line(grid[i][j].origin + (0, 0, 1) * ((isdefined(grid[i][j].height) ? grid[i][j].height : 0) * 0 + height), grid[i][j].origin + (0, 0, 1) * ((isdefined(grid[i][j].height) ? grid[i][j].height : 0) * 0 + height) + (0, 1, 0) * 1024 / 2, color);
                        }
                    }
                }
            }
            waitframe(1);
        }
    }

    // Namespace namespace_21dd166c/namespace_21dd166c
    // Params 2, eflags: 0x4
    // Checksum 0xf7f6db42, Offset: 0x45d8
    // Size: 0x1ce
    function private function_9a7586fd(center, height) {
        level endon(#"hash_186e943c1cd0db52", #"hash_521118da55424987");
        if (!isdefined(height)) {
            height = 0;
        }
        color = (1, 0, 1);
        while (true) {
            var_65e05a9d = [];
            array::push_front(var_65e05a9d, center);
            while (var_65e05a9d.size > 0) {
                cur = array::pop(var_65e05a9d);
                foreach (child in cur.children) {
                    line(cur.origin + (0, 0, 1) * ((isdefined(cur.height) ? cur.height : 0) * 100 + height), child.origin + (0, 0, 1) * ((isdefined(child.height) ? child.height : 0) * 100 + height), color);
                    array::push_front(var_65e05a9d, child);
                }
            }
            waitframe(1);
        }
    }

#/

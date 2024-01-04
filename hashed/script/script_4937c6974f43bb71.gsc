// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;

#namespace namespace_82bfe441;

// Namespace namespace_82bfe441/namespace_82bfe441
// Params 3, eflags: 0x2 linked
// Checksum 0xf23dee38, Offset: 0x120
// Size: 0x84
function fade(var_564144a4, var_b8e08e16 = "FadeImmediate", var_ee0e1f8 = 0) {
    globallogic_ui::function_9ed5232e("hudItems.cpHudFadeControl.fadeSpeed", var_b8e08e16);
    globallogic_ui::function_9ed5232e("hudItems.cpHudFadeControl.customFadeSpeed", var_ee0e1f8);
    globallogic_ui::function_9ed5232e("hudItems.cpHudFadeControl.doFadeOut", var_564144a4);
}


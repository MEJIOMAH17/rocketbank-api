package com.mikepenz.materialdrawer.model.utils;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.StateSet;
import com.mikepenz.materialdrawer.holder.BadgeStyle;
import com.mikepenz.materialize.util.UIUtils;

public final class BadgeDrawableBuilder {
    private BadgeStyle mStyle;

    public BadgeDrawableBuilder(BadgeStyle badgeStyle) {
        this.mStyle = badgeStyle;
    }

    public final StateListDrawable build(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        GradientDrawable gradientDrawable = (GradientDrawable) UIUtils.getCompatDrawable(context, this.mStyle.getGradientDrawable());
        GradientDrawable gradientDrawable2 = (GradientDrawable) gradientDrawable.getConstantState().newDrawable().mutate();
        if (gradientDrawable != null) {
            gradientDrawable.setColor(0);
        }
        if (gradientDrawable2 != null) {
            gradientDrawable2.setColor(0);
        }
        stateListDrawable.addState(new int[]{16842919}, gradientDrawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, gradientDrawable);
        return stateListDrawable;
    }
}

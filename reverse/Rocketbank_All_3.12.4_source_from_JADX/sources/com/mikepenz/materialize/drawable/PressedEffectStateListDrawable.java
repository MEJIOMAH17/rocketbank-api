package com.mikepenz.materialize.drawable;

import android.annotation.SuppressLint;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;

@SuppressLint({"InlinedApi"})
public final class PressedEffectStateListDrawable extends StateListDrawable {
    private int color;
    private int selectionColor;

    public final boolean isStateful() {
        return true;
    }

    public PressedEffectStateListDrawable(Drawable drawable, int i, int i2) {
        drawable = drawable.mutate();
        addState(new int[]{16842913}, drawable);
        addState(new int[0], drawable);
        this.color = i;
        this.selectionColor = i2;
    }

    protected final boolean onStateChange(int[] iArr) {
        int i = 0;
        int length = iArr.length;
        int i2 = 0;
        while (i < length) {
            if (iArr[i] == 16842913) {
                i2 = 1;
            }
            i++;
        }
        if (i2 != 0) {
            super.setColorFilter(this.selectionColor, Mode.SRC_IN);
        } else {
            super.setColorFilter(this.color, Mode.SRC_IN);
        }
        return super.onStateChange(iArr);
    }
}

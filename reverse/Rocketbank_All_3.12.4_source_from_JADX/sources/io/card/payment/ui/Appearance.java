package io.card.payment.ui;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint.Style;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RectShape;

public final class Appearance {
    public static final Drawable ACTIONBAR_BACKGROUND = new ColorDrawable(Color.parseColor("#717074"));
    public static final int BUTTON_PRIMARY_DISABLED_COLOR = Color.parseColor("#c5ddeb");
    public static final int BUTTON_PRIMARY_FOCUS_COLOR = PAL_BLUE_COLOR_OPACITY_66;
    public static final int BUTTON_PRIMARY_NORMAL_COLOR = PAL_BLUE_COLOR;
    public static final int BUTTON_PRIMARY_PRESSED_COLOR = PAY_BLUE_COLOR;
    public static final int BUTTON_SECONDARY_DISABLED_COLOR = Color.parseColor("#f5f5f5");
    public static final int BUTTON_SECONDARY_FOCUS_COLOR = Color.parseColor("#aa717074");
    public static final int BUTTON_SECONDARY_NORMAL_COLOR = Color.parseColor("#717074");
    public static final int BUTTON_SECONDARY_PRESSED_COLOR = Color.parseColor("#5a5a5d");
    public static final int[] BUTTON_STATE_DISABLED = new int[]{-16842910};
    public static final int[] BUTTON_STATE_FOCUSED = new int[]{16842908};
    public static final int[] BUTTON_STATE_NORMAL = new int[]{16842910};
    public static final int[] BUTTON_STATE_PRESSED = new int[]{16842919, 16842910};
    public static final int DEFAULT_BACKGROUND_COLOR = Color.parseColor("#f5f5f5");
    public static final int PAL_BLUE_COLOR = Color.parseColor("#009CDE");
    public static final int PAL_BLUE_COLOR_OPACITY_66 = Color.parseColor("#aa009CDE");
    public static final int PAY_BLUE_COLOR = Color.parseColor("#003087");
    public static final int TEXT_COLOR_ERROR = Color.parseColor("#b32317");
    public static final int TEXT_COLOR_LABEL = TEXT_COLOR_LIGHT;
    public static final int TEXT_COLOR_LIGHT = Color.parseColor("#515151");
    public static final Typeface TYPEFACE_BUTTON = Typeface.create("sans-serif-light", 0);

    public static Drawable buttonBackgroundPrimary(Context context) {
        Drawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(BUTTON_STATE_PRESSED, new ColorDrawable(BUTTON_PRIMARY_PRESSED_COLOR));
        stateListDrawable.addState(BUTTON_STATE_DISABLED, new ColorDrawable(BUTTON_PRIMARY_DISABLED_COLOR));
        stateListDrawable.addState(BUTTON_STATE_FOCUSED, buttonFocused(BUTTON_PRIMARY_NORMAL_COLOR, BUTTON_PRIMARY_FOCUS_COLOR, (ViewUtil.typedDimensionValueToPixels("4dip", context) / 2.0f) * context.getResources().getDisplayMetrics().density));
        stateListDrawable.addState(BUTTON_STATE_NORMAL, buttonNormal(BUTTON_PRIMARY_NORMAL_COLOR, (ViewUtil.typedDimensionValueToPixels("4dip", context) / 1073741824) * context.getResources().getDisplayMetrics().density));
        return stateListDrawable;
    }

    public static Drawable buttonBackgroundSecondary(Context context) {
        Drawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(BUTTON_STATE_PRESSED, new ColorDrawable(BUTTON_SECONDARY_PRESSED_COLOR));
        stateListDrawable.addState(BUTTON_STATE_DISABLED, new ColorDrawable(BUTTON_SECONDARY_DISABLED_COLOR));
        stateListDrawable.addState(BUTTON_STATE_FOCUSED, buttonFocused(BUTTON_SECONDARY_NORMAL_COLOR, BUTTON_SECONDARY_FOCUS_COLOR, (ViewUtil.typedDimensionValueToPixels("4dip", context) / 2.0f) * context.getResources().getDisplayMetrics().density));
        stateListDrawable.addState(BUTTON_STATE_NORMAL, buttonNormal(BUTTON_SECONDARY_NORMAL_COLOR, (ViewUtil.typedDimensionValueToPixels("4dip", context) / 1073741824) * context.getResources().getDisplayMetrics().density));
        return stateListDrawable;
    }

    private static Drawable buttonNormal(int i, float f) {
        Drawable[] drawableArr = new Drawable[2];
        drawableArr[0] = new ColorDrawable(i);
        i = new ShapeDrawable(new RectShape());
        i.getPaint().setStrokeWidth(f * 2.0f);
        i.getPaint().setStyle(Style.STROKE);
        i.getPaint().setColor(DEFAULT_BACKGROUND_COLOR);
        drawableArr[1] = i;
        return new LayerDrawable(drawableArr);
    }

    private static Drawable buttonFocused(int i, int i2, float f) {
        Drawable[] drawableArr = new Drawable[3];
        drawableArr[0] = new ColorDrawable(i);
        i = new ShapeDrawable(new RectShape());
        i.getPaint().setStrokeWidth(2.0f * f);
        i.getPaint().setStyle(Style.STROKE);
        i.getPaint().setColor(DEFAULT_BACKGROUND_COLOR);
        drawableArr[1] = i;
        i = new ShapeDrawable(new RectShape());
        i.getPaint().setStrokeWidth(f);
        i.getPaint().setStyle(Style.STROKE);
        i.getPaint().setColor(i2);
        drawableArr[2] = i;
        return new LayerDrawable(drawableArr);
    }
}

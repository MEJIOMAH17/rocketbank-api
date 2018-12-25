package android.support.v4.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.View.MeasureSpec;

@Deprecated
public class Space extends View {
    @SuppressLint({"MissingSuperCall"})
    @Deprecated
    public void draw(Canvas canvas) {
    }

    @Deprecated
    private Space(Context context) {
        super(context, null, 0);
        if (getVisibility() == null) {
            setVisibility(4);
        }
    }

    @Deprecated
    private Space(Context context, byte b) {
        this(context);
    }

    @Deprecated
    public Space(Context context, char c) {
        this(context, (byte) '\u0000');
    }

    private static int getDefaultSize2(int i, int i2) {
        int mode = MeasureSpec.getMode(i2);
        i2 = MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(i, i2);
        }
        if (mode == 0) {
            return i;
        }
        if (mode != 1073741824) {
            return i;
        }
        return i2;
    }

    @Deprecated
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(getDefaultSize2(getSuggestedMinimumWidth(), i), getDefaultSize2(getSuggestedMinimumHeight(), i2));
    }
}

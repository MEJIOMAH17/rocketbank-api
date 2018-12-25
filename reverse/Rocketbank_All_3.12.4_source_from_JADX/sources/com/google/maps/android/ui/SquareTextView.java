package com.google.maps.android.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.TextView;

public class SquareTextView extends TextView {
    private int mOffsetLeft = 0;
    private int mOffsetTop = 0;

    public SquareTextView(Context context) {
        super(context);
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        i = getMeasuredWidth();
        i2 = getMeasuredHeight();
        int max = Math.max(i, i2);
        if (i > i2) {
            this.mOffsetTop = i - i2;
            this.mOffsetLeft = 0;
        } else {
            this.mOffsetTop = 0;
            this.mOffsetLeft = i2 - i;
        }
        setMeasuredDimension(max, max);
    }

    public void draw(Canvas canvas) {
        canvas.translate((float) (this.mOffsetLeft / 2), (float) (this.mOffsetTop / 2));
        super.draw(canvas);
    }
}

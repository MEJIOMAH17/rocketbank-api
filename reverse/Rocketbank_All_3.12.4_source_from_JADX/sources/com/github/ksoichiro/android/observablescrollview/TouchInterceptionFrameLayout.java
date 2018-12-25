package com.github.ksoichiro.android.observablescrollview;

import android.view.MotionEvent;
import android.widget.FrameLayout;

public class TouchInterceptionFrameLayout extends FrameLayout {
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }
}

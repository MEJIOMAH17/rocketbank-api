package ru.rocketbank.r2d2.shop.details;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

/* compiled from: ShopDetailsActivity.kt */
final class ShopDetailsActivity$showItem$imageViews$1$2 implements OnTouchListener {
    final /* synthetic */ RocketScaleGestureDetector $scaleDetector;

    ShopDetailsActivity$showItem$imageViews$1$2(RocketScaleGestureDetector rocketScaleGestureDetector) {
        this.$scaleDetector = rocketScaleGestureDetector;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.$scaleDetector.onTouchEvent(motionEvent);
    }
}

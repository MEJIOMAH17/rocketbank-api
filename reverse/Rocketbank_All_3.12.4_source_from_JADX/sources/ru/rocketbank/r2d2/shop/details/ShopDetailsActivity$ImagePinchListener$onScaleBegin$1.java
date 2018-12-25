package ru.rocketbank.r2d2.shop.details;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.shop.details.ShopDetailsActivity.ImagePinchListener;

/* compiled from: ShopDetailsActivity.kt */
final class ShopDetailsActivity$ImagePinchListener$onScaleBegin$1 extends Lambda implements Function1<RocketScaleGestureDetector, Boolean> {
    final /* synthetic */ ImagePinchListener this$0;

    ShopDetailsActivity$ImagePinchListener$onScaleBegin$1(ImagePinchListener imagePinchListener) {
        this.this$0 = imagePinchListener;
        super(1);
    }

    public final boolean invoke(RocketScaleGestureDetector rocketScaleGestureDetector) {
        Intrinsics.checkParameterIsNotNull(rocketScaleGestureDetector, "detector");
        float focusX = rocketScaleGestureDetector.getFocusX();
        float focusY = rocketScaleGestureDetector.getFocusY();
        float access$getLastFocusX$p = focusX - this.this$0.lastFocusX;
        float access$getLastFocusY$p = focusY - this.this$0.lastFocusY;
        float scaleX = this.this$0.getChild().getScaleX() * rocketScaleGestureDetector.getScaleFactor();
        rocketScaleGestureDetector = 1065353216;
        if (scaleX >= 1.0f) {
            rocketScaleGestureDetector = scaleX;
        }
        this.this$0.getChild().setScaleX(rocketScaleGestureDetector);
        this.this$0.getChild().setScaleY(rocketScaleGestureDetector);
        this.this$0.getChild().setX(this.this$0.getChild().getX() + access$getLastFocusX$p);
        this.this$0.getChild().setY(this.this$0.getChild().getY() + access$getLastFocusY$p);
        this.this$0.lastFocusX = focusX;
        this.this$0.lastFocusY = focusY;
        return true;
    }
}

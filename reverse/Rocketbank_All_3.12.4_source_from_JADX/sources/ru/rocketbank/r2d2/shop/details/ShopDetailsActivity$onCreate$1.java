package ru.rocketbank.r2d2.shop.details;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.shop.details.RocketScaleGestureDetector.OnScaleGestureListener;

/* compiled from: ShopDetailsActivity.kt */
public final class ShopDetailsActivity$onCreate$1 implements OnScaleGestureListener {
    final /* synthetic */ ShopDetailsActivity this$0;

    public final boolean onScaleBegin(RocketScaleGestureDetector rocketScaleGestureDetector) {
        Intrinsics.checkParameterIsNotNull(rocketScaleGestureDetector, "p0");
        return true;
    }

    ShopDetailsActivity$onCreate$1(ShopDetailsActivity shopDetailsActivity) {
        this.this$0 = shopDetailsActivity;
    }

    public final void onScaleEnd(RocketScaleGestureDetector rocketScaleGestureDetector) {
        Intrinsics.checkParameterIsNotNull(rocketScaleGestureDetector, "p0");
        Function1 onScaleEnd = this.this$0.getOnScaleEnd();
        if (onScaleEnd != null) {
            onScaleEnd.invoke(rocketScaleGestureDetector);
        }
    }

    public final boolean onScale(RocketScaleGestureDetector rocketScaleGestureDetector) {
        Intrinsics.checkParameterIsNotNull(rocketScaleGestureDetector, "detector");
        Function1 onScale = this.this$0.getOnScale();
        if (onScale != null) {
            Boolean bool = (Boolean) onScale.invoke(rocketScaleGestureDetector);
            if (bool != null) {
                return bool.booleanValue();
            }
        }
        return true;
    }
}

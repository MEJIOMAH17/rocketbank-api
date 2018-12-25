package ru.rocketbank.r2d2.fragments.delivery;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import rx.Subscriber;

/* compiled from: DeliveryMapPresenter.kt */
public final class DeliveryMapPresenter$checkAddress$2 extends Subscriber<Boolean> {
    final /* synthetic */ String $address;
    final /* synthetic */ DeliveryMapPresenter this$0;

    public final void onCompleted() {
    }

    DeliveryMapPresenter$checkAddress$2(DeliveryMapPresenter deliveryMapPresenter, String str) {
        this.this$0 = deliveryMapPresenter;
        this.$address = str;
    }

    public final void onNext(boolean z) {
        if (z) {
            this.this$0.address = this.$address;
            DeliveryMapView deliveryMapView = (DeliveryMapView) this.this$0.getView();
            if (deliveryMapView != null) {
                deliveryMapView.setCommentStatus();
            }
            z = this.this$0.getMap();
            if (z) {
                z.setOnCameraIdleListener(null);
                z.getUiSettings().setAllGesturesEnabled(false);
                if (this.this$0.needScaleAfterCheckAddress) {
                    this.this$0.showMe(DeliveryMapPresenter.access$getLastAddressCoordinates$p(this.this$0));
                }
                return;
            }
            return;
        }
        this.this$0.showAddressError();
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e("map", th.getMessage(), th);
    }
}

package ru.rocketbank.r2d2.fragments.delivery;

import android.location.Location;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import kotlin.jvm.internal.Intrinsics;
import rx.Subscriber;

/* compiled from: MapPresenter.kt */
public final class MapPresenter$initLocation$1 extends Subscriber<Location> {
    final /* synthetic */ MapPresenter this$0;

    public final void onCompleted() {
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
    }

    MapPresenter$initLocation$1(MapPresenter mapPresenter) {
        this.this$0 = mapPresenter;
    }

    public final void onNext(Location location) {
        Intrinsics.checkParameterIsNotNull(location, Param.LOCATION);
        this.this$0.setLastLocation(location);
        this.this$0.onLocationChanged(location);
    }
}

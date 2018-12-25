package ru.rocketbank.r2d2.service;

import android.location.Location;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: SendLocationIntentService.kt */
final class SendLocationIntentService$onHandleIntent$1 extends Lambda implements Function1<Location, Unit> {
    final /* synthetic */ long $id;
    final /* synthetic */ SendLocationIntentService this$0;

    SendLocationIntentService$onHandleIntent$1(SendLocationIntentService sendLocationIntentService, long j) {
        this.this$0 = sendLocationIntentService;
        this.$id = j;
        super(1);
    }

    public final void invoke(Location location) {
        Intrinsics.checkParameterIsNotNull(location, Param.LOCATION);
        this.this$0.onLocation(this.$id, location);
    }
}

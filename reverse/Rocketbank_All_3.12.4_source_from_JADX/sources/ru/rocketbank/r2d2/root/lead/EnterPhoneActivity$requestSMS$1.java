package ru.rocketbank.r2d2.root.lead;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import rx.functions.Func1;

/* compiled from: EnterPhoneActivity.kt */
final class EnterPhoneActivity$requestSMS$1<T, R> implements Func1<T, R> {
    final /* synthetic */ EnterPhoneActivity this$0;

    EnterPhoneActivity$requestSMS$1(EnterPhoneActivity enterPhoneActivity) {
        this.this$0 = enterPhoneActivity;
    }

    public final String call(Unit unit) {
        unit = AdvertisingIdClient.getAdvertisingIdInfo(this.this$0.getApplicationContext());
        Intrinsics.checkExpressionValueIsNotNull(unit, "AdvertisingIdClient.getA…(this.applicationContext)");
        return unit.getId();
    }
}

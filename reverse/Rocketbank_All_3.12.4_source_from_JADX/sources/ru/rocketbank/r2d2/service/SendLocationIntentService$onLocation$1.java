package ru.rocketbank.r2d2.service;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.ResponseData;
import rx.Subscriber;

/* compiled from: SendLocationIntentService.kt */
public final class SendLocationIntentService$onLocation$1 extends Subscriber<ResponseData> {
    public final void onCompleted() {
    }

    public final void onNext(ResponseData responseData) {
        Intrinsics.checkParameterIsNotNull(responseData, "responseData");
    }

    SendLocationIntentService$onLocation$1() {
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e("PushService", "Failed send coords.", th);
    }
}

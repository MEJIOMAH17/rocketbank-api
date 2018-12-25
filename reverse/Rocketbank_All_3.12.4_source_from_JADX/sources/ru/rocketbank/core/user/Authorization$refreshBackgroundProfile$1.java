package ru.rocketbank.core.user;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.UserResponse;
import rx.Subscriber;

/* compiled from: Authorization.kt */
public final class Authorization$refreshBackgroundProfile$1 extends Subscriber<UserResponse> {
    public final void onCompleted() {
    }

    Authorization$refreshBackgroundProfile$1() {
    }

    public final /* bridge */ /* synthetic */ void onNext(Object obj) {
        Intrinsics.checkParameterIsNotNull((UserResponse) obj, "userResponse");
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e("Error", "Refresh profile failed", th);
    }
}

package ru.rocketbank.r2d2.utils;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.api.RocketAPI;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.schedulers.Schedulers;

/* compiled from: GaToken.kt */
public final class GaToken {
    public static final GaToken INSTANCE = new GaToken();
    private static boolean sending;
    private static boolean sent;

    private GaToken() {
    }

    public final boolean getSending() {
        return sending;
    }

    public final void setSending(boolean z) {
        sending = z;
    }

    public final boolean getSent() {
        return sent;
    }

    public final void setSent(boolean z) {
        sent = z;
    }

    public final void sendGaToken(Context context, RocketAPI rocketAPI) {
        Intrinsics.checkParameterIsNotNull(context, "applicationContext");
        Intrinsics.checkParameterIsNotNull(rocketAPI, "rocketApi");
        if (!sending) {
            if (!sent) {
                sending = true;
                Observable.create((OnSubscribe) new GaToken$sendGaToken$1(context)).subscribeOn(Schedulers.io()).observeOn(Schedulers.io()).flatMap(new GaToken$sendGaToken$2(rocketAPI)).subscribe((Subscriber) new GaToken$sendGaToken$3());
            }
        }
    }
}

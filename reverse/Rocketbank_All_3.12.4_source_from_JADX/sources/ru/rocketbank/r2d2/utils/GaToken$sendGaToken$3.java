package ru.rocketbank.r2d2.utils;

import android.util.Log;
import ru.rocketbank.core.model.Empty;
import rx.Subscriber;

/* compiled from: GaToken.kt */
public final class GaToken$sendGaToken$3 extends Subscriber<Empty> {
    public final void onCompleted() {
    }

    GaToken$sendGaToken$3() {
    }

    public final void onNext(Empty empty) {
        Log.v("GA", "done");
        GaToken.INSTANCE.setSent(true);
    }

    public final void onError(Throwable th) {
        Log.e("GA", "Error: ", th);
        GaToken.INSTANCE.setSending(false);
    }
}

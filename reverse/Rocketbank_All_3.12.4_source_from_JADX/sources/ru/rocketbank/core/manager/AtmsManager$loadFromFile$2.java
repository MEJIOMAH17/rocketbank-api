package ru.rocketbank.core.manager;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AtmsManager.RecreateListener;
import rx.Subscriber;

/* compiled from: AtmsManager.kt */
public final class AtmsManager$loadFromFile$2 extends Subscriber<Long> {
    final /* synthetic */ RecreateListener $listener;
    final /* synthetic */ AtmsManager this$0;

    public final void onCompleted() {
    }

    AtmsManager$loadFromFile$2(AtmsManager atmsManager, RecreateListener recreateListener) {
        this.this$0 = atmsManager;
        this.$listener = recreateListener;
    }

    public final /* bridge */ /* synthetic */ void onNext(Object obj) {
        AtmsManager.access$getContext$p(this.this$0).getSharedPreferences(AtmsManager.ATMS_PREF, 0).edit().putLong(AtmsManager.ATMS_UPDATE_TIME, ((Number) obj).longValue()).commit();
        obj = this.$listener;
        if (obj != null) {
            obj.onRealmRecreated();
        }
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e(AtmsManager.TAG_ATMS, "Loading from file has failed", th);
        AnalyticsManager.logException(th);
    }
}

package ru.rocketbank.core.manager;

import android.content.SharedPreferences.Editor;
import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import rx.Subscriber;

/* compiled from: AtmsManager.kt */
public final class AtmsManager$requireUpdate$2 extends Subscriber<Long> {
    final /* synthetic */ AtmsManager this$0;

    public final void onCompleted() {
    }

    AtmsManager$requireUpdate$2(AtmsManager atmsManager) {
        this.this$0 = atmsManager;
    }

    public final /* bridge */ /* synthetic */ void onNext(Object obj) {
        Long l = (Long) obj;
        Editor edit = AtmsManager.access$getContext$p(this.this$0).getSharedPreferences(AtmsManager.ATMS_PREF, 0).edit();
        String access$getATMS_UPDATE_TIME$cp = AtmsManager.ATMS_UPDATE_TIME;
        if (l == null) {
            Intrinsics.throwNpe();
        }
        edit.putLong(access$getATMS_UPDATE_TIME$cp, l.longValue()).commit();
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e(AtmsManager.TAG_ATMS, "update failed", th);
        AnalyticsManager.logException(th);
    }
}

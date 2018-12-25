package ru.rocketbank.core.manager;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.FeedList;
import rx.Subscriber;

/* compiled from: FeedManager.kt */
public final class FeedManager$refresh$1 extends Subscriber<FeedList> {
    public final void onCompleted() {
    }

    FeedManager$refresh$1() {
    }

    public final /* bridge */ /* synthetic */ void onNext(Object obj) {
        Intrinsics.checkParameterIsNotNull((FeedList) obj, "feedList");
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.v(FeedManager.TAG, "Failed refresh", th);
    }
}

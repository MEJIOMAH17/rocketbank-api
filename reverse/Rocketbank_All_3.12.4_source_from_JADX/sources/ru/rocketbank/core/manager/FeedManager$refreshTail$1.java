package ru.rocketbank.core.manager;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.FeedList;
import rx.Subscriber;

/* compiled from: FeedManager.kt */
public final class FeedManager$refreshTail$1 extends Subscriber<FeedList> {
    final /* synthetic */ int $loadingPage;

    public final void onCompleted() {
    }

    FeedManager$refreshTail$1(int i) {
        this.$loadingPage = i;
    }

    public final /* bridge */ /* synthetic */ void onNext(Object obj) {
        Intrinsics.checkParameterIsNotNull((FeedList) obj, "feedList");
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        String access$getTAG$cp = FeedManager.TAG;
        StringBuilder stringBuilder = new StringBuilder("Failed refresh: ");
        stringBuilder.append(this.$loadingPage);
        Log.e(access$getTAG$cp, stringBuilder.toString(), th);
    }
}

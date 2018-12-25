package ru.rocketbank.r2d2.root.analytics;

import android.graphics.Bitmap;
import kotlin.jvm.functions.Function1;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: AnalyticsFragment.kt */
final class AnalyticsFragment$createDoubleAvatar$1<T> implements OnSubscribe<T> {
    final /* synthetic */ String $jointUserAvatar;
    final /* synthetic */ String $userAvatar;
    final /* synthetic */ AnalyticsFragment this$0;

    AnalyticsFragment$createDoubleAvatar$1(AnalyticsFragment analyticsFragment, String str, String str2) {
        this.this$0 = analyticsFragment;
        this.$userAvatar = str;
        this.$jointUserAvatar = str2;
    }

    public final void call(Subscriber<? super Bitmap[]> subscriber) {
        try {
            Function1 analyticsFragment$createDoubleAvatar$1$createAvatar$1 = new AnalyticsFragment$createDoubleAvatar$1$createAvatar$1(this);
            Bitmap bitmap = (Bitmap) analyticsFragment$createDoubleAvatar$1$createAvatar$1.invoke(this.$userAvatar);
            Bitmap bitmap2 = (Bitmap) analyticsFragment$createDoubleAvatar$1$createAvatar$1.invoke(this.$jointUserAvatar);
            subscriber.onNext(new Bitmap[]{bitmap, bitmap2});
            subscriber.onCompleted();
        } catch (Exception e) {
            subscriber.onError(e);
        }
    }
}

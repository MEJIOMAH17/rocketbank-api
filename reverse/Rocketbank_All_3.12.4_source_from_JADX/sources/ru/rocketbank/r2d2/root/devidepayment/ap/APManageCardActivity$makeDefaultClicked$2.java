package ru.rocketbank.r2d2.root.devidepayment.ap;

import android.util.Log;
import rx.functions.Action1;

/* compiled from: APManageCardActivity.kt */
final class APManageCardActivity$makeDefaultClicked$2<T> implements Action1<Throwable> {
    final /* synthetic */ APManageCardActivity this$0;

    APManageCardActivity$makeDefaultClicked$2(APManageCardActivity aPManageCardActivity) {
        this.this$0 = aPManageCardActivity;
    }

    public final void call(Throwable th) {
        this.this$0.makeDefaultSubscription.unsubscribe();
        Log.e("APManageCardActivity", th.getMessage(), th);
    }
}

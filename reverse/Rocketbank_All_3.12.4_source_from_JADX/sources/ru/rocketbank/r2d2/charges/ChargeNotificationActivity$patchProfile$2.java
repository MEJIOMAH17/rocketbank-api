package ru.rocketbank.r2d2.charges;

import android.widget.LinearLayout;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.functions.Action1;

/* compiled from: ChargeNotificationActivity.kt */
final class ChargeNotificationActivity$patchProfile$2<T> implements Action1<Throwable> {
    final /* synthetic */ ChargeNotificationActivity this$0;

    ChargeNotificationActivity$patchProfile$2(ChargeNotificationActivity chargeNotificationActivity) {
        this.this$0 = chargeNotificationActivity;
    }

    public final void call(Throwable th) {
        this.this$0.hideProgressDialog();
        UIHelper.showSnackWithError((LinearLayout) this.this$0._$_findCachedViewById(C0859R.id.content), th);
    }
}

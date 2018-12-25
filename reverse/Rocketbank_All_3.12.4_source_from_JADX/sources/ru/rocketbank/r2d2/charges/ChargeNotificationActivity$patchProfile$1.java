package ru.rocketbank.r2d2.charges;

import android.content.Context;
import android.widget.Toast;
import ru.rocketbank.core.network.model.PatchProfileAResponse;
import rx.functions.Action1;

/* compiled from: ChargeNotificationActivity.kt */
final class ChargeNotificationActivity$patchProfile$1<T> implements Action1<PatchProfileAResponse> {
    final /* synthetic */ ChargeNotificationActivity this$0;

    ChargeNotificationActivity$patchProfile$1(ChargeNotificationActivity chargeNotificationActivity) {
        this.this$0 = chargeNotificationActivity;
    }

    public final void call(PatchProfileAResponse patchProfileAResponse) {
        this.this$0.hideProgressDialog();
        this.this$0.finish();
        Context context = this.this$0;
        patchProfileAResponse = patchProfileAResponse.getResponse();
        Toast.makeText(context, (CharSequence) (patchProfileAResponse != null ? patchProfileAResponse.getDescription() : null), 0).show();
        this.this$0.authorization.reloadProfile();
        this.this$0.authorization.refreshBackgroundProfile();
    }
}

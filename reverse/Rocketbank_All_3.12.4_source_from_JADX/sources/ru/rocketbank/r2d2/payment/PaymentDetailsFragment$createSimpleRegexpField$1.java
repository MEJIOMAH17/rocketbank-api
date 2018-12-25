package ru.rocketbank.r2d2.payment;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentActivity;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.r2d2.Manifest.permission;
import ru.rocketbank.r2d2.payment.RocketPaymentEditText.OnPickContactListener;

/* compiled from: PaymentDetailsFragment.kt */
final class PaymentDetailsFragment$createSimpleRegexpField$1 implements OnPickContactListener {
    final /* synthetic */ ProviderField $field;
    final /* synthetic */ PaymentDetailsFragment this$0;

    PaymentDetailsFragment$createSimpleRegexpField$1(PaymentDetailsFragment paymentDetailsFragment, ProviderField providerField) {
        this.this$0 = paymentDetailsFragment;
        this.$field = providerField;
    }

    public final void onPickContactRequested() {
        if (VERSION.SDK_INT >= 23) {
            Context context = this.this$0.getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            if (ActivityCompat.checkSelfPermission(context, permission.READ_CONTACTS) != 0) {
                this.this$0.setPendingField(this.$field);
                FragmentActivity activity = this.this$0.getActivity();
                if (activity == null) {
                    Intrinsics.throwNpe();
                }
                ActivityCompat.requestPermissions(activity, new String[]{permission.READ_CONTACTS}, PaymentDetailsFragment.PERMISSIONS_READ_CONTACT);
                return;
            }
            this.this$0.pickContact(this.$field);
            return;
        }
        this.this$0.pickContact(this.$field);
    }
}

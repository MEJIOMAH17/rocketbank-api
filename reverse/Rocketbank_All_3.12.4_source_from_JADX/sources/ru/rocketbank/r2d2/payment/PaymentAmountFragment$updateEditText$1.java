package ru.rocketbank.r2d2.payment;

import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.model.response.CommissionStringResponse;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;

/* compiled from: PaymentAmountFragment.kt */
public final class PaymentAmountFragment$updateEditText$1 extends Subscriber<CommissionStringResponse> {
    final /* synthetic */ PaymentAmountFragment this$0;

    public final void onCompleted() {
    }

    PaymentAmountFragment$updateEditText$1(PaymentAmountFragment paymentAmountFragment) {
        this.this$0 = paymentAmountFragment;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        th = this.this$0.comission1TextView;
        if (th == null) {
            Intrinsics.throwNpe();
        }
        th.setText(C0859R.string.ta_commission_failed);
        th = this.this$0.viewSwitcher;
        if (th == null) {
            Intrinsics.throwNpe();
        }
        th.setDisplayedChild(0);
        this.this$0.hasCommission = true;
        th = this.this$0.buttonNext;
        if (th == null) {
            Intrinsics.throwNpe();
        }
        th.setEnabled(false);
    }

    public final void onNext(CommissionStringResponse commissionStringResponse) {
        Intrinsics.checkParameterIsNotNull(commissionStringResponse, "commissionStringResponse");
        TextView access$getComission1TextView$p = this.this$0.comission1TextView;
        if (access$getComission1TextView$p == null) {
            Intrinsics.throwNpe();
        }
        String text = commissionStringResponse.getText();
        if (text != null) {
            text = StringsKt.replace$default(text, "ђ", "₽", false, 4, null);
            if (text != null) {
                access$getComission1TextView$p.setText(text);
                this.this$0.hasCommission = commissionStringResponse.getText() == null ? 1 : null;
                commissionStringResponse = this.this$0.viewSwitcher;
                if (commissionStringResponse == null) {
                    Intrinsics.throwNpe();
                }
                commissionStringResponse.setDisplayedChild(0);
                commissionStringResponse = this.this$0.buttonNext;
                if (commissionStringResponse == null) {
                    Intrinsics.throwNpe();
                }
                commissionStringResponse.setEnabled(true);
            }
        }
        text = "";
        access$getComission1TextView$p.setText(text);
        if (commissionStringResponse.getText() == null) {
        }
        this.this$0.hasCommission = commissionStringResponse.getText() == null ? 1 : null;
        commissionStringResponse = this.this$0.viewSwitcher;
        if (commissionStringResponse == null) {
            Intrinsics.throwNpe();
        }
        commissionStringResponse.setDisplayedChild(0);
        commissionStringResponse = this.this$0.buttonNext;
        if (commissionStringResponse == null) {
            Intrinsics.throwNpe();
        }
        commissionStringResponse.setEnabled(true);
    }
}

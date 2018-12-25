package ru.rocketbank.r2d2.payment;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: PaymentAmountFragment.kt */
final class PaymentAmountFragment$onCreateView$4 implements OnClickListener {
    final /* synthetic */ View $rootView;
    final /* synthetic */ PaymentAmountFragment this$0;

    PaymentAmountFragment$onCreateView$4(PaymentAmountFragment paymentAmountFragment, View view) {
        this.this$0 = paymentAmountFragment;
        this.$rootView = view;
    }

    public final void onClick(View view) {
        view = this.this$0;
        View view2 = this.$rootView;
        Intrinsics.checkExpressionValueIsNotNull(view2, "rootView");
        ImageView imageView = (ImageView) view2.findViewById(C0859R.id.actions);
        Intrinsics.checkExpressionValueIsNotNull(imageView, "rootView.actions");
        view.showPopup(imageView);
    }
}

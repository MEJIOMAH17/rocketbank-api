package ru.rocketbank.r2d2.payment;

import android.view.View;
import android.view.View.OnClickListener;
import ru.rocketbank.core.model.transfers.Template;
import ru.rocketbank.r2d2.payment.PaymentFragment.TemplateViewHolder;

/* compiled from: PaymentFragment.kt */
final class PaymentFragment$TemplateViewHolder$bindTemplate$1 implements OnClickListener {
    final /* synthetic */ Template $template;
    final /* synthetic */ TemplateViewHolder this$0;

    PaymentFragment$TemplateViewHolder$bindTemplate$1(TemplateViewHolder templateViewHolder, Template template) {
        this.this$0 = templateViewHolder;
        this.$template = template;
    }

    public final void onClick(View view) {
        this.this$0.this$0.showPopup(this.this$0.getActions(), this.$template);
    }
}

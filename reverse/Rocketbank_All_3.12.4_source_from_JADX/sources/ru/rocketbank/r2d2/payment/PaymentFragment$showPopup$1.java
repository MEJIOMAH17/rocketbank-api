package ru.rocketbank.r2d2.payment;

import android.support.v7.widget.PopupMenu.OnMenuItemClickListener;
import android.view.MenuItem;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.transfers.Template;
import ru.rocketbank.r2d2.widgets.dialog.RenameDialogFragment.RecentPaymentRenameDialogFragment;
import rx.functions.Action1;

/* compiled from: PaymentFragment.kt */
final class PaymentFragment$showPopup$1 implements OnMenuItemClickListener {
    final /* synthetic */ Template $template;
    final /* synthetic */ PaymentFragment this$0;

    PaymentFragment$showPopup$1(PaymentFragment paymentFragment, Template template) {
        this.this$0 = paymentFragment;
        this.$template = template;
    }

    public final boolean onMenuItemClick(MenuItem menuItem) {
        Intrinsics.checkExpressionValueIsNotNull(menuItem, "item");
        switch (menuItem.getItemId()) {
            case null:
                menuItem = RecentPaymentRenameDialogFragment.getInstance(this.$template);
                menuItem.onRenameTemplate(new Action1<Template>() {
                    public final void call(Template template) {
                        this.this$0.loadTemplates();
                    }
                });
                menuItem.show(this.this$0.getSupportFragmentManager(), null);
                return true;
            case 1:
                this.this$0.deleteTemplate(this.$template);
                return true;
            default:
                return null;
        }
    }
}

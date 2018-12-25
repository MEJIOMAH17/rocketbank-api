package ru.rocketbank.r2d2.root.feed;

import java.util.Calendar;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: FeedFragment.kt */
final class FeedFragment$refreshLimits$1 implements Runnable {
    final /* synthetic */ FeedFragment this$0;

    FeedFragment$refreshLimits$1(FeedFragment feedFragment) {
        this.this$0 = feedFragment;
    }

    public final void run() {
        String str = "";
        UserModel access$getUserModel$p = this.this$0.userModel;
        if (access$getUserModel$p != null) {
            AccountModel currentAccount = access$getUserModel$p.getCurrentAccount();
            if (!(currentAccount == null || currentAccount.getLimitByName("Бесплатных снятий") == null)) {
                Object obj = this.this$0.getResources().getStringArray(C0859R.array.in_month_array)[Calendar.getInstance().get(2)];
                if (currentAccount.getFreeCashOutLimit() > 0) {
                    str = this.this$0.getString(C0859R.string.left_atms_free_get, new Object[]{r2.getValue(), Integer.valueOf(currentAccount.getFreeCashOutLimit()), obj});
                    Intrinsics.checkExpressionValueIsNotNull(str, "getString(R.string.left_…eCashOutLimit, monthName)");
                }
            }
        }
        RocketAutofitTextView rocketAutofitTextView = FeedFragment.access$getBinding$p(this.this$0).atmFreeLeftView;
        Intrinsics.checkExpressionValueIsNotNull(rocketAutofitTextView, "binding.atmFreeLeftView");
        rocketAutofitTextView.setText(str);
    }
}

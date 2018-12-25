package ru.rocketbank.r2d2.fragments.deposit;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.Deposit;
import ru.rocketbank.r2d2.fragments.deposit.DepositTypeFragment.Companion;

/* compiled from: OpenReplenishableDepositFragment.kt */
public final class OpenReplenishableDepositFragment$onCreateView$1 extends FragmentStatePagerAdapter {
    final /* synthetic */ OpenReplenishableDepositFragment this$0;

    OpenReplenishableDepositFragment$onCreateView$1(OpenReplenishableDepositFragment openReplenishableDepositFragment, FragmentManager fragmentManager) {
        this.this$0 = openReplenishableDepositFragment;
        super(fragmentManager);
    }

    public final DepositTypeFragment getItem(int i) {
        Companion companion = DepositTypeFragment.Companion;
        i = OpenReplenishableDepositFragment.access$getDeposit$p(this.this$0).getDeposits().get(i);
        Intrinsics.checkExpressionValueIsNotNull(i, "deposit.deposits[position]");
        return companion.newInstance((Deposit) i);
    }

    public final int getCount() {
        return OpenReplenishableDepositFragment.access$getDeposit$p(this.this$0).getDeposits().size();
    }
}

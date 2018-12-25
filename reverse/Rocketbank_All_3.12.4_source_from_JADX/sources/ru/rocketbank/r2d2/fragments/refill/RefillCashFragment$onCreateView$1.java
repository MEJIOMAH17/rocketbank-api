package ru.rocketbank.r2d2.fragments.refill;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

/* compiled from: RefillCashFragment.kt */
final class RefillCashFragment$onCreateView$1 implements OnCheckedChangeListener {
    final /* synthetic */ RefillCashFragment this$0;

    RefillCashFragment$onCreateView$1(RefillCashFragment refillCashFragment) {
        this.this$0 = refillCashFragment;
    }

    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.this$0.updateMap();
    }
}

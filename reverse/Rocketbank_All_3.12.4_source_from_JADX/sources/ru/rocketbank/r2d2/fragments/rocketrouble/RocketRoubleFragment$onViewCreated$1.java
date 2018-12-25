package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: RocketRoubleFragment.kt */
final class RocketRoubleFragment$onViewCreated$1 implements OnClickListener {
    final /* synthetic */ RocketRoubleFragment this$0;

    RocketRoubleFragment$onViewCreated$1(RocketRoubleFragment rocketRoubleFragment) {
        this.this$0 = rocketRoubleFragment;
    }

    public final void onClick(View view) {
        RocketRoubleFragment.access$getRocketRoubleModel$p(this.this$0).setFullMoneyMode(RocketRoubleFragment.access$getRocketRoubleModel$p(this.this$0).isFullMoneyMode() ^ 1);
        this.this$0.showBalance();
    }
}

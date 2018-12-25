package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;

/* compiled from: RocketRoubleFragment.kt */
final class RocketRoubleFragment$onViewCreated$2 implements OnRefreshListener {
    final /* synthetic */ RocketRoubleFragment this$0;

    RocketRoubleFragment$onViewCreated$2(RocketRoubleFragment rocketRoubleFragment) {
        this.this$0 = rocketRoubleFragment;
    }

    public final void onRefresh() {
        this.this$0.refreshUserData();
    }
}

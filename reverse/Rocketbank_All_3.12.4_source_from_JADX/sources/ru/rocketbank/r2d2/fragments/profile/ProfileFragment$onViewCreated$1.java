package ru.rocketbank.r2d2.fragments.profile;

import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$onViewCreated$1 implements OnRefreshListener {
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$onViewCreated$1(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
    }

    public final void onRefresh() {
        this.this$0.authorization.refreshBackgroundProfile();
    }
}

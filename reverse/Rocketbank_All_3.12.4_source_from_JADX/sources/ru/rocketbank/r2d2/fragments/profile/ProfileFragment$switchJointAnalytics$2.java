package ru.rocketbank.r2d2.fragments.profile;

import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.AnalyticsProfileViewHolder;
import rx.functions.Action1;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$switchJointAnalytics$2<T> implements Action1<Throwable> {
    final /* synthetic */ AnalyticsProfileViewHolder $viewHolder;
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$switchJointAnalytics$2(ProfileFragment profileFragment, AnalyticsProfileViewHolder analyticsProfileViewHolder) {
        this.this$0 = profileFragment;
        this.$viewHolder = analyticsProfileViewHolder;
    }

    public final void call(Throwable th) {
        this.$viewHolder.setSwitchEnabled(true);
        this.$viewHolder.setInProgress(false);
        this.this$0.authorization.refreshBackgroundProfile();
    }
}

package ru.rocketbank.r2d2.fragments.profile;

import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.AnalyticsProfileViewHolder;
import rx.functions.Action1;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$switchJointAnalytics$1<T> implements Action1<GenericRequestResponseData> {
    final /* synthetic */ AnalyticsProfileViewHolder $viewHolder;
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$switchJointAnalytics$1(ProfileFragment profileFragment, AnalyticsProfileViewHolder analyticsProfileViewHolder) {
        this.this$0 = profileFragment;
        this.$viewHolder = analyticsProfileViewHolder;
    }

    public final void call(GenericRequestResponseData genericRequestResponseData) {
        this.$viewHolder.setSwitchEnabled(false);
        this.$viewHolder.setInProgress(false);
        this.$viewHolder.setName(null);
        this.$viewHolder.setIcon(null);
        this.$viewHolder.setStatus(this.this$0.getString(C0859R.string.joint_analytics_description));
        this.this$0.authorization.refreshBackgroundProfile();
    }
}

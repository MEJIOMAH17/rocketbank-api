package ru.rocketbank.r2d2.fragments.profile;

import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref.ObjectRef;
import ru.rocketbank.core.model.JointAccount;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.AnalyticsProfileViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$addJointAnalytics$onAnalyticsBind$1 extends Lambda implements Function2<ParallaxItem, GenericViewHolder, Unit> {
    final /* synthetic */ ObjectRef $account;
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$addJointAnalytics$onAnalyticsBind$1(ProfileFragment profileFragment, ObjectRef objectRef) {
        this.this$0 = profileFragment;
        this.$account = objectRef;
        super(2);
    }

    public final void invoke(ParallaxItem parallaxItem, GenericViewHolder genericViewHolder) {
        Intrinsics.checkParameterIsNotNull(parallaxItem, "parallaxItem");
        if (genericViewHolder == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.recycler.parallax.vh.AnalyticsProfileViewHolder");
        }
        AnalyticsProfileViewHolder analyticsProfileViewHolder = (AnalyticsProfileViewHolder) genericViewHolder;
        analyticsProfileViewHolder.setEnabled(((JointAccount) this.$account.element) != null ? true : null);
        analyticsProfileViewHolder.setInProgress(this.this$0.analyticsInProgress);
    }
}

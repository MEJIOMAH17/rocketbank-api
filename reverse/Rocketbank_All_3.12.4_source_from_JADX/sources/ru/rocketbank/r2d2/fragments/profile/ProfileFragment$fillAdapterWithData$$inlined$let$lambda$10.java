package ru.rocketbank.r2d2.fragments.profile;

import android.content.Context;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.charges.ChargeNotificationActivity;
import ru.rocketbank.r2d2.charges.ChargeNotificationActivity.Companion;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$fillAdapterWithData$$inlined$let$lambda$10 extends Lambda implements Function1<ParallaxItem, Unit> {
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$fillAdapterWithData$$inlined$let$lambda$10(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
        super(1);
    }

    public final void invoke(ParallaxItem parallaxItem) {
        parallaxItem = this.this$0.userModel;
        if (parallaxItem != null) {
            Companion companion = ChargeNotificationActivity.Companion;
            Context context = this.this$0.getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            companion.start(context, parallaxItem.isPenaltyTaxNotifications(), parallaxItem.getInn(), parallaxItem.getCtc(), parallaxItem.getDriverLicence());
        }
    }
}

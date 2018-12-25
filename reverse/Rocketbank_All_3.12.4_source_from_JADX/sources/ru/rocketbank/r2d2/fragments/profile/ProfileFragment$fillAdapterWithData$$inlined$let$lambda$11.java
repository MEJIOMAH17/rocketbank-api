package ru.rocketbank.r2d2.fragments.profile;

import android.support.v4.app.FragmentActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.activities.ChangeCodewordActivity;
import ru.rocketbank.r2d2.activities.ChangeCodewordActivity.Companion;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$fillAdapterWithData$$inlined$let$lambda$11 extends Lambda implements Function1<ParallaxItem, Unit> {
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$fillAdapterWithData$$inlined$let$lambda$11(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
        super(1);
    }

    public final void invoke(ParallaxItem parallaxItem) {
        parallaxItem = this.this$0.userModel;
        if (parallaxItem != null) {
            parallaxItem = parallaxItem.getChangeCodeWord();
            if (parallaxItem != null) {
                Companion companion = ChangeCodewordActivity.Companion;
                FragmentActivity activity = this.this$0.getActivity();
                if (activity == null) {
                    Intrinsics.throwNpe();
                }
                Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
                companion.start(activity, parallaxItem);
            }
        }
    }
}

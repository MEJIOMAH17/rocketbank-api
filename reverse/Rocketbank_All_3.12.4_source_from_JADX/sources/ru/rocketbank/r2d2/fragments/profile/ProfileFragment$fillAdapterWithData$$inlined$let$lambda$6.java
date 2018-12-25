package ru.rocketbank.r2d2.fragments.profile;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$fillAdapterWithData$$inlined$let$lambda$6 extends Lambda implements Function1<ParallaxItem, Unit> {
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$fillAdapterWithData$$inlined$let$lambda$6(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
        super(1);
    }

    public final void invoke(ParallaxItem parallaxItem) {
        this.this$0.onChangePin();
    }
}

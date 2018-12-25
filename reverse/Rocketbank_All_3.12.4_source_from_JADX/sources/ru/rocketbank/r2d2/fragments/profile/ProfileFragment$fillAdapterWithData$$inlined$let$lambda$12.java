package ru.rocketbank.r2d2.fragments.profile;

import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericSwitchViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$fillAdapterWithData$$inlined$let$lambda$12 extends Lambda implements Function3<ParallaxItem, Boolean, GenericViewHolder, Unit> {
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$fillAdapterWithData$$inlined$let$lambda$12(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
        super(3);
    }

    public final void invoke(ParallaxItem parallaxItem, boolean z, GenericViewHolder genericViewHolder) {
        ProfileFragment profileFragment = this.this$0;
        if (parallaxItem == null) {
            Intrinsics.throwNpe();
        }
        if (genericViewHolder == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericSwitchViewHolder");
        }
        profileFragment.onCheckChanged(parallaxItem, z, (GenericSwitchViewHolder) genericViewHolder);
    }
}

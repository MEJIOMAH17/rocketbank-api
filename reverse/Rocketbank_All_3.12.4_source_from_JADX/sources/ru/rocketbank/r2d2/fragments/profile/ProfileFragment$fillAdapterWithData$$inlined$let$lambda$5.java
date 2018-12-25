package ru.rocketbank.r2d2.fragments.profile;

import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericSwitchViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$fillAdapterWithData$$inlined$let$lambda$5 extends Lambda implements Function2<ParallaxItem, GenericViewHolder, Unit> {
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$fillAdapterWithData$$inlined$let$lambda$5(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
        super(2);
    }

    public final void invoke(ParallaxItem parallaxItem, GenericViewHolder genericViewHolder) {
        Intrinsics.checkParameterIsNotNull(parallaxItem, "parallaxItem");
        parallaxItem.setId(ProfileAdapter.Companion.getFINGERPRINT());
        if (genericViewHolder == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericSwitchViewHolder");
        }
        GenericSwitchViewHolder genericSwitchViewHolder = (GenericSwitchViewHolder) genericViewHolder;
        parallaxItem = (this.this$0.touchManager.isAvailable() == null || this.this$0.touchManager.gotValidToken() == null) ? null : true;
        genericSwitchViewHolder.setEnabled(parallaxItem);
    }
}

package ru.rocketbank.r2d2.root.card;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.pay.google.AndroidPayUtils;
import ru.rocketbank.r2d2.root.card.binding.AndroidPayParameters;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: CardDetailFragment.kt */
final class CardDetailFragment$refreshAdapter$1 extends Lambda implements Function1<ParallaxItem, Unit> {
    final /* synthetic */ AndroidPayParameters $androidPayParameters;
    final /* synthetic */ CardDetailFragment this$0;

    CardDetailFragment$refreshAdapter$1(CardDetailFragment cardDetailFragment, AndroidPayParameters androidPayParameters) {
        this.this$0 = cardDetailFragment;
        this.$androidPayParameters = androidPayParameters;
        super(1);
    }

    public final void invoke(ParallaxItem parallaxItem) {
        parallaxItem = AndroidPayUtils.INSTANCE;
        parallaxItem = this.this$0.getContext();
        if (parallaxItem == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(parallaxItem, "context!!");
        AndroidPayUtils.runCodeOrOpenGooglePlay(parallaxItem, this.$androidPayParameters.getClickFun());
    }
}

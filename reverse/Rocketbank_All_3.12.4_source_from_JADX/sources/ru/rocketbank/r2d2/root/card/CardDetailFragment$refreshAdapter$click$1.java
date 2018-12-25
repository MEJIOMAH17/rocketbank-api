package ru.rocketbank.r2d2.root.card;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.card.binding.SPayParameters;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: CardDetailFragment.kt */
final class CardDetailFragment$refreshAdapter$click$1 extends Lambda implements Function1<ParallaxItem, Unit> {
    final /* synthetic */ SPayParameters $spParams;

    CardDetailFragment$refreshAdapter$click$1(SPayParameters sPayParameters) {
        this.$spParams = sPayParameters;
        super(1);
    }

    public final void invoke(ParallaxItem parallaxItem) {
        this.$spParams.getClickFun().invoke();
    }
}

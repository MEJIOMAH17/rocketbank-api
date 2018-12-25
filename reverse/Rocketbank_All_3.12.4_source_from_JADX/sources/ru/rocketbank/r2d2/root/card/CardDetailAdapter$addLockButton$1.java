package ru.rocketbank.r2d2.root.card;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: CardDetailAdapter.kt */
final class CardDetailAdapter$addLockButton$1 extends Lambda implements Function1<ParallaxItem, Unit> {
    final /* synthetic */ Function0 $onClicked;

    CardDetailAdapter$addLockButton$1(Function0 function0) {
        this.$onClicked = function0;
        super(1);
    }

    public final void invoke(ParallaxItem parallaxItem) {
        this.$onClicked.invoke();
    }
}

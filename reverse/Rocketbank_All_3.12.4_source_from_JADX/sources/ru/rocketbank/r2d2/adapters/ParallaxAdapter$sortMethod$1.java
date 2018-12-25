package ru.rocketbank.r2d2.adapters;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ParallaxAdapter.kt */
final class ParallaxAdapter$sortMethod$1 extends Lambda implements Function2<ParallaxItem, ParallaxItem, Integer> {
    public static final ParallaxAdapter$sortMethod$1 INSTANCE = new ParallaxAdapter$sortMethod$1();

    ParallaxAdapter$sortMethod$1() {
        super(2);
    }

    public final int invoke(ParallaxItem parallaxItem, ParallaxItem parallaxItem2) {
        Intrinsics.checkParameterIsNotNull(parallaxItem, "first");
        Intrinsics.checkParameterIsNotNull(parallaxItem2, "second");
        parallaxItem = parallaxItem.getFeedItem();
        parallaxItem2 = parallaxItem2.getFeedItem();
        return (parallaxItem == null || parallaxItem2 == null) ? null : (int) (parallaxItem2.getHappenedAt() - parallaxItem.getHappenedAt());
    }
}

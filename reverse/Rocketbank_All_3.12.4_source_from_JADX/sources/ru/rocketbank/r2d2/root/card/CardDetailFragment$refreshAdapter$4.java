package ru.rocketbank.r2d2.root.card;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.activities.ChangeCodeActivity;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: CardDetailFragment.kt */
final class CardDetailFragment$refreshAdapter$4 extends Lambda implements Function1<ParallaxItem, Unit> {
    final /* synthetic */ CardDetailFragment this$0;

    CardDetailFragment$refreshAdapter$4(CardDetailFragment cardDetailFragment) {
        this.this$0 = cardDetailFragment;
        super(1);
    }

    public final void invoke(ParallaxItem parallaxItem) {
        parallaxItem = this.this$0.changePin;
        if (parallaxItem != null) {
            ChangeCodeActivity.startPin(this.this$0.getActivity(), false, parallaxItem, true);
        }
    }
}

package ru.rocketbank.r2d2.root.card;

import android.support.v4.app.FragmentActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.activities.card.CardLimitActivity;
import ru.rocketbank.r2d2.activities.card.CardLimitActivity.Companion;
import ru.rocketbank.r2d2.root.card.binding.CardParameters;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: CardDetailFragment.kt */
final class CardDetailFragment$refreshAdapter$8 extends Lambda implements Function1<ParallaxItem, Unit> {
    final /* synthetic */ CardParameters $cardParameters;
    final /* synthetic */ CardDetailFragment this$0;

    CardDetailFragment$refreshAdapter$8(CardDetailFragment cardDetailFragment, CardParameters cardParameters) {
        this.this$0 = cardDetailFragment;
        this.$cardParameters = cardParameters;
        super(1);
    }

    public final void invoke(ParallaxItem parallaxItem) {
        parallaxItem = this.$cardParameters.getPlasticToken();
        if (parallaxItem != null) {
            Companion companion = CardLimitActivity.Companion;
            FragmentActivity activity = this.this$0.getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
            companion.start(activity, parallaxItem);
        }
    }
}

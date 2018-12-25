package ru.rocketbank.r2d2.root.card;

import android.support.v4.app.FragmentActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.activities.AccountDetailsActivity;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: CardDetailFragment.kt */
final class CardDetailFragment$refreshAdapter$7 extends Lambda implements Function1<ParallaxItem, Unit> {
    final /* synthetic */ CardDetailFragment this$0;

    CardDetailFragment$refreshAdapter$7(CardDetailFragment cardDetailFragment) {
        this.this$0 = cardDetailFragment;
        super(1);
    }

    public final void invoke(ParallaxItem parallaxItem) {
        parallaxItem = AccountDetailsActivity.Companion;
        FragmentActivity activity = this.this$0.getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        parallaxItem.start(activity, CardDetailFragment.access$getToken$p(this.this$0));
    }
}

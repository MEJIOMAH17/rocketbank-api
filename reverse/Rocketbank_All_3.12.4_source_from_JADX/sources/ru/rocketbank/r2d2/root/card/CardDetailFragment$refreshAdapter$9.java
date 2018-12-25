package ru.rocketbank.r2d2.root.card;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.card.binding.CardParameters;

/* compiled from: CardDetailFragment.kt */
final class CardDetailFragment$refreshAdapter$9 extends Lambda implements Function0<Unit> {
    final /* synthetic */ CardParameters $cardParameters;
    final /* synthetic */ CardDetailFragment this$0;

    CardDetailFragment$refreshAdapter$9(CardDetailFragment cardDetailFragment, CardParameters cardParameters) {
        this.this$0 = cardDetailFragment;
        this.$cardParameters = cardParameters;
        super(0);
    }

    public final void invoke() {
        this.this$0.lockUnlockCard(this.$cardParameters.isLocked());
    }
}

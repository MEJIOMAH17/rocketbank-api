package ru.rocketbank.r2d2.root.card;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: CardDetailFragment.kt */
final class CardDetailFragment$unlockCard$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ CardDetailFragment this$0;

    CardDetailFragment$unlockCard$1(CardDetailFragment cardDetailFragment) {
        this.this$0 = cardDetailFragment;
        super(0);
    }

    public final void invoke() {
        this.this$0.hideSpinner();
    }
}

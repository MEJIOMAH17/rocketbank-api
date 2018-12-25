package ru.rocketbank.r2d2.root.card.binding;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: CardPresenter.kt */
final class CardPresenter$onAccount$spOnClick$3 extends Lambda implements Function0<Unit> {
    final /* synthetic */ CardPresenter this$0;

    CardPresenter$onAccount$spOnClick$3(CardPresenter cardPresenter) {
        this.this$0 = cardPresenter;
        super(0);
    }

    public final void invoke() {
        CardDetailView access$getView$p = this.this$0.view;
        if (access$getView$p != null) {
            access$getView$p.addCardToSp();
        }
    }
}

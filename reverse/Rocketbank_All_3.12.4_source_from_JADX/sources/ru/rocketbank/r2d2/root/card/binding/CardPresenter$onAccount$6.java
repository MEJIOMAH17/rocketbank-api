package ru.rocketbank.r2d2.root.card.binding;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: CardPresenter.kt */
final class CardPresenter$onAccount$6 extends Lambda implements Function0<Unit> {
    final /* synthetic */ ApCheckResult $androidPayResult;
    final /* synthetic */ CardPresenter this$0;

    CardPresenter$onAccount$6(CardPresenter cardPresenter, ApCheckResult apCheckResult) {
        this.this$0 = cardPresenter;
        this.$androidPayResult = apCheckResult;
        super(0);
    }

    public final void invoke() {
        CardDetailView access$getView$p = this.this$0.view;
        if (access$getView$p != null) {
            String tur = this.$androidPayResult.getTur();
            if (tur == null) {
                Intrinsics.throwNpe();
            }
            access$getView$p.startCanDeleteOnly(tur);
        }
    }
}

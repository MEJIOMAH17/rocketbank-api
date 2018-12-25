package ru.rocketbank.core.widgets;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.core.widgets.CardViewMini.CardActionsListener;

/* compiled from: CardViewMini.kt */
final class CardViewMini$setCard$1 implements OnClickListener {
    final /* synthetic */ CardModel $cardModel;
    final /* synthetic */ CardViewMini this$0;

    CardViewMini$setCard$1(CardViewMini cardViewMini, CardModel cardModel) {
        this.this$0 = cardViewMini;
        this.$cardModel = cardModel;
    }

    public final void onClick(View view) {
        CardActionsListener access$getCardActionsListener$p = this.this$0.cardActionsListener;
        if (access$getCardActionsListener$p != null) {
            CardModel cardModel = this.$cardModel;
            Intrinsics.checkExpressionValueIsNotNull(view, "v");
            access$getCardActionsListener$p.onActionRequested(cardModel, view);
        }
    }
}

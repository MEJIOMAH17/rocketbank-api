package ru.rocketbank.r2d2.root.card;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: CardDetailFragment.kt */
final class CardDetailFragment$showSpayUpdateDialog$$inlined$let$lambda$1 implements OnClickListener {
    final /* synthetic */ CardDetailFragment this$0;

    CardDetailFragment$showSpayUpdateDialog$$inlined$let$lambda$1(CardDetailFragment cardDetailFragment) {
        this.this$0 = cardDetailFragment;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        CardDetailFragment.access$getCardPresenter$p(this.this$0).updateSpay();
    }
}

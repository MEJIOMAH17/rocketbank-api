package ru.rocketbank.r2d2.root.card;

import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;

/* compiled from: CardDetailFragment.kt */
final class CardDetailFragment$onViewCreated$1 implements OnRefreshListener {
    final /* synthetic */ CardDetailFragment this$0;

    CardDetailFragment$onViewCreated$1(CardDetailFragment cardDetailFragment) {
        this.this$0 = cardDetailFragment;
    }

    public final void onRefresh() {
        CardDetailFragment.access$getCardPresenter$p(this.this$0).refresh();
    }
}

package ru.rocketbank.r2d2.shop.feed;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ShopFeedFragment.kt */
final class ShopFeedFragment$onCreateView$1 implements OnClickListener {
    final /* synthetic */ ShopFeedFragment this$0;

    ShopFeedFragment$onCreateView$1(ShopFeedFragment shopFeedFragment) {
        this.this$0 = shopFeedFragment;
    }

    public final void onClick(View view) {
        ((ShopFeedPresenter) this.this$0.getPresenter()).onCartButtonClick();
    }
}

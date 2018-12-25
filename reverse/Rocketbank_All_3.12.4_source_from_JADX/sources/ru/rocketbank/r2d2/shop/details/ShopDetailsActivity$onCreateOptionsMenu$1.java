package ru.rocketbank.r2d2.shop.details;

import android.support.v7.widget.Toolbar;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.helpers.UIHelper;

/* compiled from: ShopDetailsActivity.kt */
final class ShopDetailsActivity$onCreateOptionsMenu$1 implements Runnable {
    final /* synthetic */ ShopDetailsActivity this$0;

    ShopDetailsActivity$onCreateOptionsMenu$1(ShopDetailsActivity shopDetailsActivity) {
        this.this$0 = shopDetailsActivity;
    }

    public final void run() {
        UIHelper.colorizeToolbar((Toolbar) this.this$0._$_findCachedViewById(C0859R.id.toolbar), this.this$0.currentToolbarColor, this.this$0);
    }
}

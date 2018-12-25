package ru.rocketbank.r2d2.root.card;

import android.support.v7.widget.Toolbar.OnMenuItemClickListener;
import android.view.MenuItem;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: CardDetailFragment.kt */
final class CardDetailFragment$setupToolbar$1 implements OnMenuItemClickListener {
    final /* synthetic */ CardDetailFragment this$0;

    CardDetailFragment$setupToolbar$1(CardDetailFragment cardDetailFragment) {
        this.this$0 = cardDetailFragment;
    }

    public final boolean onMenuItemClick(MenuItem menuItem) {
        Intrinsics.checkExpressionValueIsNotNull(menuItem, "item");
        menuItem = menuItem.getItemId();
        if (menuItem == C0859R.id.rename) {
            this.this$0.rename();
        } else if (menuItem == C0859R.id.support) {
            this.this$0.showSupport();
        }
        return null;
    }
}

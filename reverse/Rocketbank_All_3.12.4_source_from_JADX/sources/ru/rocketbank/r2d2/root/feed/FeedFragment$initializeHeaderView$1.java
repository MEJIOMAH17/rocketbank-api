package ru.rocketbank.r2d2.root.feed;

import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: FeedFragment.kt */
final class FeedFragment$initializeHeaderView$1 implements Runnable {
    final /* synthetic */ Toolbar $toolbar;
    final /* synthetic */ FeedFragment this$0;

    FeedFragment$initializeHeaderView$1(FeedFragment feedFragment, Toolbar toolbar) {
        this.this$0 = feedFragment;
        this.$toolbar = toolbar;
    }

    public final void run() {
        this.$toolbar.setNavigationIcon(C0859R.drawable.ic_drawer_white);
        this.$toolbar.inflateMenu(C0859R.menu.menu_feed_static);
        this.$toolbar.setNavigationOnClickListener(this.this$0.getNavigationClick());
        Toolbar toolbar = FeedFragment.access$getBinding$p(this.this$0).toolbar;
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "binding.toolbar");
        toolbar.getMenu().findItem(C0859R.id.action_open_search).setOnMenuItemClickListener(new OnMenuItemClickListener() {
            public final boolean onMenuItemClick(MenuItem menuItem) {
                menuItem = this.this$0.searchView;
                if (menuItem == null) {
                    Intrinsics.throwNpe();
                }
                menuItem.setIconified(false);
                return true;
            }
        });
    }
}

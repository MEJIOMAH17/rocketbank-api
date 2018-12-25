package ru.rocketbank.r2d2.root.feed;

import android.support.v4.view.MenuItemCompat;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: FeedFragment.kt */
final class FeedFragment$setupToolbar$1 implements Runnable {
    final /* synthetic */ Toolbar $toolbar;
    final /* synthetic */ FeedFragment this$0;

    FeedFragment$setupToolbar$1(FeedFragment feedFragment, Toolbar toolbar) {
        this.this$0 = feedFragment;
        this.$toolbar = toolbar;
    }

    public final void run() {
        this.$toolbar.setNavigationIcon(C0859R.drawable.ic_drawer_black);
        this.$toolbar.inflateMenu(C0859R.menu.menu_feed);
        this.$toolbar.setNavigationOnClickListener(this.this$0.getNavigationClick());
        FeedFragment feedFragment = this.this$0;
        Toolbar toolbar = FeedFragment.access$getBinding$p(this.this$0).realToolbar;
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "binding.realToolbar");
        MenuItem findItem = toolbar.getMenu().findItem(C0859R.id.action_search);
        Intrinsics.checkExpressionValueIsNotNull(findItem, "binding.realToolbar.menu…dItem(R.id.action_search)");
        feedFragment.searchMenuItem = findItem;
        feedFragment = this.this$0;
        View actionView = MenuItemCompat.getActionView(FeedFragment.access$getSearchMenuItem$p(this.this$0));
        if (actionView == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.SearchView");
        }
        feedFragment.searchView = (SearchView) actionView;
        SearchView access$getSearchView$p = this.this$0.searchView;
        if (access$getSearchView$p == null) {
            Intrinsics.throwNpe();
        }
        access$getSearchView$p.setOnQueryTextListener(this.this$0);
        access$getSearchView$p = this.this$0.searchView;
        if (access$getSearchView$p == null) {
            Intrinsics.throwNpe();
        }
        access$getSearchView$p.setOnCloseListener(this.this$0);
        access$getSearchView$p = this.this$0.searchView;
        if (access$getSearchView$p == null) {
            Intrinsics.throwNpe();
        }
        access$getSearchView$p.setOnSearchClickListener(new OnClickListener() {
            public final void onClick(View view) {
                this.this$0.showSearch();
            }
        });
    }
}

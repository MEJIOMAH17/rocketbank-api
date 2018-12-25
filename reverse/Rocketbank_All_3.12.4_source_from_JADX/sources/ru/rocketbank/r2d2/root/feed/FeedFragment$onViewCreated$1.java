package ru.rocketbank.r2d2.root.feed;

import android.support.v7.widget.RecyclerView.RecyclerListener;
import android.support.v7.widget.RecyclerView.ViewHolder;
import kotlin.TypeCastException;
import ru.rocketbank.r2d2.root.feed.viewholder.FeedViewHolder;

/* compiled from: FeedFragment.kt */
final class FeedFragment$onViewCreated$1 implements RecyclerListener {
    public static final FeedFragment$onViewCreated$1 INSTANCE = new FeedFragment$onViewCreated$1();

    FeedFragment$onViewCreated$1() {
    }

    public final void onViewRecycled(ViewHolder viewHolder) {
        if (viewHolder == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.root.feed.viewholder.FeedViewHolder");
        }
        ((FeedViewHolder) viewHolder).clean();
    }
}

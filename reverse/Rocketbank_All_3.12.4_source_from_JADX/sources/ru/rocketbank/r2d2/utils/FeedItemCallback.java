package ru.rocketbank.r2d2.utils;

import android.support.v7.util.SortedList.Callback;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.FeedItem;

/* compiled from: FeedItemCallback.kt */
public class FeedItemCallback<VH extends ViewHolder, StickyItem> extends Callback<FeedItem> {
    private final Adapter<VH> adapter;
    private final ArrayList<StickyItem> stickyItem;

    public boolean areContentsTheSame(FeedItem feedItem, FeedItem feedItem2) {
        Intrinsics.checkParameterIsNotNull(feedItem, "oldItem");
        Intrinsics.checkParameterIsNotNull(feedItem2, "newItem");
        return feedItem == feedItem2;
    }

    public void onRemoved(int i, int i2) {
    }

    public final Adapter<VH> getAdapter() {
        return this.adapter;
    }

    public FeedItemCallback(Adapter<VH> adapter, ArrayList<StickyItem> arrayList) {
        Intrinsics.checkParameterIsNotNull(adapter, "adapter");
        this.adapter = adapter;
        this.stickyItem = arrayList;
    }

    public int compare(FeedItem feedItem, FeedItem feedItem2) {
        Intrinsics.checkParameterIsNotNull(feedItem, "first");
        Intrinsics.checkParameterIsNotNull(feedItem2, "second");
        return (int) (feedItem2.getHappenedAt() - feedItem.getHappenedAt());
    }

    public void onInserted(int i, int i2) {
        i2 = this.stickyItem;
        this.adapter.notifyItemInserted(i + (i2 != 0 ? i2.size() : 0));
    }

    public void onMoved(int i, int i2) {
        ArrayList arrayList = this.stickyItem;
        int size = arrayList != null ? arrayList.size() : 0;
        this.adapter.notifyItemMoved(i + size, i2 + size);
    }

    public void onChanged(int i, int i2) {
        i2 = this.stickyItem;
        this.adapter.notifyItemChanged(i + (i2 != 0 ? i2.size() : 0));
    }

    public boolean areItemsTheSame(FeedItem feedItem, FeedItem feedItem2) {
        Intrinsics.checkParameterIsNotNull(feedItem, "item1");
        Intrinsics.checkParameterIsNotNull(feedItem2, "item2");
        return Intrinsics.areEqual(feedItem, feedItem2);
    }
}

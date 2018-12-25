package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.feed.viewholder.MonthCashback;

public class FeedItemMonthCashbackBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final CardView cardBody;
    public final RocketTextView confirm;
    public final RocketTextView headerText;
    private long mDirtyFlags = -1;
    private MonthCashback mFeed;
    public final LinearLayout merchantContainer;
    public final LinearLayout root;
    public final RocketTextView selectionStatus;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.cardBody, 1);
        sViewsWithIds.put(C0859R.id.headerText, 2);
        sViewsWithIds.put(C0859R.id.selectionStatus, 3);
        sViewsWithIds.put(C0859R.id.merchantContainer, 4);
        sViewsWithIds.put(C0859R.id.confirm, 5);
    }

    public FeedItemMonthCashbackBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.cardBody = (CardView) dataBindingComponent[1];
        this.confirm = (RocketTextView) dataBindingComponent[5];
        this.headerText = (RocketTextView) dataBindingComponent[2];
        this.merchantContainer = (LinearLayout) dataBindingComponent[4];
        this.root = (LinearLayout) dataBindingComponent[0];
        this.root.setTag(null);
        this.selectionStatus = (RocketTextView) dataBindingComponent[3];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 2;
        }
        requestRebind();
    }

    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.mDirtyFlags != 0) {
                return true;
            }
            return false;
        }
    }

    public boolean setVariable(int i, Object obj) {
        if (31 != i) {
            return false;
        }
        setFeed((MonthCashback) obj);
        return true;
    }

    public void setFeed(MonthCashback monthCashback) {
        this.mFeed = monthCashback;
    }

    public MonthCashback getFeed() {
        return this.mFeed;
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
    }

    public static FeedItemMonthCashbackBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemMonthCashbackBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FeedItemMonthCashbackBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.feed_item_month_cashback, viewGroup, z, dataBindingComponent);
    }

    public static FeedItemMonthCashbackBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemMonthCashbackBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.feed_item_month_cashback, null, false), dataBindingComponent);
    }

    public static FeedItemMonthCashbackBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemMonthCashbackBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/feed_item_month_cashback_0".equals(view.getTag())) {
            return new FeedItemMonthCashbackBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

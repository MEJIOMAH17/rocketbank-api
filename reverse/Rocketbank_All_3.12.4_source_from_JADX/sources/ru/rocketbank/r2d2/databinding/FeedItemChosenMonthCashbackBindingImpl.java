package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.feed.viewholder.ChosenMonthCashback;

public class FeedItemChosenMonthCashbackBindingImpl extends FeedItemChosenMonthCashbackBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.cardBody, 1);
        sViewsWithIds.put(C0859R.id.title, 2);
        sViewsWithIds.put(C0859R.id.merchantImageViewOne, 3);
        sViewsWithIds.put(C0859R.id.merchantNameOne, 4);
        sViewsWithIds.put(C0859R.id.merchantImageViewTwo, 5);
        sViewsWithIds.put(C0859R.id.merchantNameTwo, 6);
        sViewsWithIds.put(C0859R.id.merchantImageViewThree, 7);
        sViewsWithIds.put(C0859R.id.merchantNameThree, 8);
    }

    public FeedItemChosenMonthCashbackBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds));
    }

    private FeedItemChosenMonthCashbackBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CardView) objArr[1], (ImageView) objArr[3], (ImageView) objArr[7], (ImageView) objArr[5], (TextView) objArr[4], (TextView) objArr[8], (TextView) objArr[6], (LinearLayout) objArr[0], (TextView) objArr[2]);
        this.mDirtyFlags = -1;
        this.root.setTag(null);
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
        setFeed((ChosenMonthCashback) obj);
        return true;
    }

    public void setFeed(ChosenMonthCashback chosenMonthCashback) {
        this.mFeed = chosenMonthCashback;
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
    }
}

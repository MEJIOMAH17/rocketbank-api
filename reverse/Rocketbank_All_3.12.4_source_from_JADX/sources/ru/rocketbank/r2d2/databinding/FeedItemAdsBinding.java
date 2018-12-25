package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.feed.viewholder.AdsModel;

public class FeedItemAdsBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final ImageView adsImage;
    public final RocketTextView adsText;
    private AdsModel mAds;
    private long mDirtyFlags = -1;
    public final LinearLayout root;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.ads_image, 1);
        sViewsWithIds.put(C0859R.id.ads_text, 2);
    }

    public FeedItemAdsBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds);
        this.adsImage = (ImageView) dataBindingComponent[1];
        this.adsText = (RocketTextView) dataBindingComponent[2];
        this.root = (LinearLayout) dataBindingComponent[0];
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
        if (4 != i) {
            return false;
        }
        setAds((AdsModel) obj);
        return true;
    }

    public void setAds(AdsModel adsModel) {
        this.mAds = adsModel;
    }

    public AdsModel getAds() {
        return this.mAds;
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
    }

    public static FeedItemAdsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemAdsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FeedItemAdsBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.feed_item_ads, viewGroup, z, dataBindingComponent);
    }

    public static FeedItemAdsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemAdsBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.feed_item_ads, null, false), dataBindingComponent);
    }

    public static FeedItemAdsBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemAdsBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/feed_item_ads_0".equals(view.getTag())) {
            return new FeedItemAdsBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

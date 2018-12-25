package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.support.constraint.ConstraintLayout;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.core.widgets.viewpagerindicator.CirclePageIndicator;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.shop.details.GestureLockableObservableScrollView;
import ru.rocketbank.r2d2.shop.feed.RatioLayout;

public class ActivityShopDetailsBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final LinearLayout attributes;
    public final View backView;
    public final View blockingView;
    public final ConstraintLayout constraintLayout;
    public final CoordinatorLayout content;
    public final FloatingActionButton fab;
    public final RatioLayout images;
    private long mDirtyFlags = -1;
    private ShopItem mItem;
    public final GestureLockableObservableScrollView observableScrollView;
    public final CirclePageIndicator pageIndicator;
    public final RocketTextView textViewAmount;
    public final RocketTextView textViewComposition;
    public final RocketTextView textViewCompositionTitle;
    public final RocketTextView textViewDescription;
    public final RocketTextView textViewTitle;
    public final Toolbar toolbar;
    public final ViewPager viewPager;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.toolbar, 5);
        sViewsWithIds.put(C0859R.id.observableScrollView, 6);
        sViewsWithIds.put(C0859R.id.constraintLayout, 7);
        sViewsWithIds.put(C0859R.id.images, 8);
        sViewsWithIds.put(C0859R.id.backView, 9);
        sViewsWithIds.put(C0859R.id.viewPager, 10);
        sViewsWithIds.put(C0859R.id.blockingView, 11);
        sViewsWithIds.put(C0859R.id.pageIndicator, 12);
        sViewsWithIds.put(C0859R.id.textViewAmount, 13);
        sViewsWithIds.put(C0859R.id.attributes, 14);
        sViewsWithIds.put(C0859R.id.fab, 15);
    }

    public ActivityShopDetailsBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 16, sIncludes, sViewsWithIds);
        this.attributes = (LinearLayout) dataBindingComponent[14];
        this.backView = (View) dataBindingComponent[9];
        this.blockingView = (View) dataBindingComponent[11];
        this.constraintLayout = (ConstraintLayout) dataBindingComponent[7];
        this.content = (CoordinatorLayout) dataBindingComponent[0];
        this.content.setTag(null);
        this.fab = (FloatingActionButton) dataBindingComponent[15];
        this.images = (RatioLayout) dataBindingComponent[8];
        this.observableScrollView = (GestureLockableObservableScrollView) dataBindingComponent[6];
        this.pageIndicator = (CirclePageIndicator) dataBindingComponent[12];
        this.textViewAmount = (RocketTextView) dataBindingComponent[13];
        this.textViewComposition = (RocketTextView) dataBindingComponent[4];
        this.textViewComposition.setTag(null);
        this.textViewCompositionTitle = (RocketTextView) dataBindingComponent[3];
        this.textViewCompositionTitle.setTag(null);
        this.textViewDescription = (RocketTextView) dataBindingComponent[2];
        this.textViewDescription.setTag(null);
        this.textViewTitle = (RocketTextView) dataBindingComponent[1];
        this.textViewTitle.setTag(null);
        this.toolbar = (Toolbar) dataBindingComponent[5];
        this.viewPager = (ViewPager) dataBindingComponent[10];
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
        if (49 != i) {
            return false;
        }
        setItem((ShopItem) obj);
        return true;
    }

    public void setItem(ShopItem shopItem) {
        this.mItem = shopItem;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    public ShopItem getItem() {
        return this.mItem;
    }

    protected void executeBindings() {
        long j;
        CharSequence description;
        CharSequence charSequence;
        ActivityShopDetailsBinding activityShopDetailsBinding = this;
        synchronized (this) {
            try {
                j = activityShopDetailsBinding.mDirtyFlags;
                activityShopDetailsBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        ShopItem shopItem = activityShopDetailsBinding.mItem;
        long j2 = j & 3;
        int i = 0;
        CharSequence charSequence2 = null;
        if (j2 != 0) {
            String structure;
            String title;
            if (shopItem != null) {
                structure = shopItem.getStructure();
                title = shopItem.getTitle();
                description = shopItem.getDescription();
            } else {
                description = null;
                structure = description;
                title = structure;
            }
            int i2 = structure != null ? 1 : 0;
            if (j2 != 0) {
                j = i2 != 0 ? j | 8 : j | 4;
            }
            if (title != null) {
                charSequence2 = title.replaceAll("\n", " ");
            }
            if (i2 == 0) {
                i = 8;
            }
            charSequence = charSequence2;
            charSequence2 = structure;
        } else {
            description = null;
            charSequence = description;
        }
        if ((j & 3) != 0) {
            TextViewBindingAdapter.setText(activityShopDetailsBinding.textViewComposition, charSequence2);
            activityShopDetailsBinding.textViewComposition.setVisibility(i);
            activityShopDetailsBinding.textViewCompositionTitle.setVisibility(i);
            TextViewBindingAdapter.setText(activityShopDetailsBinding.textViewDescription, description);
            TextViewBindingAdapter.setText(activityShopDetailsBinding.textViewTitle, charSequence);
        }
    }

    public static ActivityShopDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityShopDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityShopDetailsBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_shop_details, viewGroup, z, dataBindingComponent);
    }

    public static ActivityShopDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityShopDetailsBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_shop_details, null, false), dataBindingComponent);
    }

    public static ActivityShopDetailsBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityShopDetailsBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_shop_details_0".equals(view.getTag())) {
            return new ActivityShopDetailsBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

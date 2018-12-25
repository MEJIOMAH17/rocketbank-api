package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import ru.rocketbank.core.network.model.ShopImage;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.utils.BindingUtils;

public class ShopDetailsImageBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final FrameLayout child;
    public final ImageView imageView;
    private long mDirtyFlags = -1;
    private ShopImage mImage;
    private final FrameLayout mboundView0;
    private final ImageView mboundView1;
    public final ProgressBar progressBar;
    public final View viewColor;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.child, 2);
        sViewsWithIds.put(C0859R.id.viewColor, 3);
        sViewsWithIds.put(C0859R.id.progressBar, 4);
        sViewsWithIds.put(C0859R.id.imageView, 5);
    }

    public ShopDetailsImageBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.child = (FrameLayout) dataBindingComponent[2];
        this.imageView = (ImageView) dataBindingComponent[5];
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (ImageView) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.progressBar = (ProgressBar) dataBindingComponent[4];
        this.viewColor = (View) dataBindingComponent[3];
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
        if (43 != i) {
            return false;
        }
        setImage((ShopImage) obj);
        return true;
    }

    public void setImage(ShopImage shopImage) {
        this.mImage = shopImage;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(43);
        super.requestRebind();
    }

    public ShopImage getImage() {
        return this.mImage;
    }

    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        String str = null;
        ShopImage shopImage = this.mImage;
        long j2 = j & 3;
        int i = 0;
        if (j2 != 0) {
            if (shopImage != null) {
                str = shopImage.getTexture_url();
            }
            int i2 = str != null ? 1 : 0;
            if (j2 != 0) {
                j = i2 != 0 ? j | 8 : j | 4;
            }
            if (i2 == 0) {
                i = 8;
            }
        }
        if ((j & 3) != 0) {
            this.mboundView1.setVisibility(i);
            BindingUtils.imageUrl(this.mboundView1, str);
        }
    }

    public static ShopDetailsImageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ShopDetailsImageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ShopDetailsImageBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.shop_details_image, viewGroup, z, dataBindingComponent);
    }

    public static ShopDetailsImageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ShopDetailsImageBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.shop_details_image, null, false), dataBindingComponent);
    }

    public static ShopDetailsImageBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ShopDetailsImageBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/shop_details_image_0".equals(view.getTag())) {
            return new ShopDetailsImageBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

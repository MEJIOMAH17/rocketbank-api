package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import ru.rocketbank.core.model.shop.CartItem;
import ru.rocketbank.core.network.model.ShopImage;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.utils.BindingUtils;

public class ShopCartItemBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final LinearLayout attributes;
    public final RocketButton deleteButton;
    public final ImageView imageView6;
    private long mDirtyFlags = -1;
    private CartItem mItem;
    private final CardView mboundView0;
    public final RocketTextView textViewAmount;
    public final RocketTextView textViewTitle;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.attributes, 3);
        sViewsWithIds.put(C0859R.id.textViewAmount, 4);
        sViewsWithIds.put(C0859R.id.deleteButton, 5);
    }

    public ShopCartItemBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.attributes = (LinearLayout) dataBindingComponent[3];
        this.deleteButton = (RocketButton) dataBindingComponent[5];
        this.imageView6 = (ImageView) dataBindingComponent[1];
        this.imageView6.setTag(null);
        this.mboundView0 = (CardView) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.textViewAmount = (RocketTextView) dataBindingComponent[4];
        this.textViewTitle = (RocketTextView) dataBindingComponent[2];
        this.textViewTitle.setTag(null);
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
        setItem((CartItem) obj);
        return true;
    }

    public void setItem(CartItem cartItem) {
        this.mItem = cartItem;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    public CartItem getItem() {
        return this.mItem;
    }

    protected void executeBindings() {
        long j;
        String image_url;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        CartItem cartItem = this.mItem;
        long j2 = j & 3;
        CharSequence charSequence = null;
        if (j2 != 0) {
            ShopImage image;
            String title;
            if (cartItem != null) {
                image = cartItem.getImage();
                title = cartItem.getTitle();
            } else {
                image = null;
                title = image;
            }
            image_url = image != null ? image.getImage_url() : null;
            if (title != null) {
                charSequence = title.replaceAll("\n", " ");
            }
        } else {
            image_url = null;
        }
        if (j2 != 0) {
            BindingUtils.imageUrl(this.imageView6, image_url);
            TextViewBindingAdapter.setText(this.textViewTitle, charSequence);
        }
    }

    public static ShopCartItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ShopCartItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ShopCartItemBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.shop_cart_item, viewGroup, z, dataBindingComponent);
    }

    public static ShopCartItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ShopCartItemBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.shop_cart_item, null, false), dataBindingComponent);
    }

    public static ShopCartItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ShopCartItemBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/shop_cart_item_0".equals(view.getTag())) {
            return new ShopCartItemBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

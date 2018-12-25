package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.Converters;
import android.databinding.adapters.ImageViewBindingAdapter;
import android.databinding.adapters.TextViewBindingAdapter;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import de.hdodenhof.circleimageview.CircleImageView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.core.widgets.SquareLayout;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.discount.GameItemData;

public class DiscountGameItemBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final CircleImageView gameImage;
    private GameItemData mData;
    private long mDirtyFlags = -1;
    private final SquareLayout mboundView0;
    private final RocketTextView mboundView2;
    public final CircleImageView percentBackground;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.game_image, 3);
    }

    public DiscountGameItemBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.gameImage = (CircleImageView) dataBindingComponent[3];
        this.mboundView0 = (SquareLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView2 = (RocketTextView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.percentBackground = (CircleImageView) dataBindingComponent[1];
        this.percentBackground.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 8;
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
        if (24 != i) {
            return false;
        }
        setData((GameItemData) obj);
        return true;
    }

    public void setData(GameItemData gameItemData) {
        this.mData = gameItemData;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public GameItemData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataPercent((ObservableInt) obj, i2);
            case 1:
                return onChangeDataIsYellow((ObservableBoolean) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataPercent(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataIsYellow(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    protected void executeBindings() {
        CharSequence stringBuilder;
        DiscountGameItemBinding discountGameItemBinding = this;
        synchronized (this) {
            try {
                long j = discountGameItemBinding.mDirtyFlags;
                discountGameItemBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        GameItemData gameItemData = discountGameItemBinding.mData;
        Object obj = null;
        int i = 0;
        if ((j & 15) != 0) {
            if ((j & 13) != 0) {
                Object percent = gameItemData != null ? gameItemData.getPercent() : null;
                updateRegistration(0, percent);
                String valueOf = String.valueOf(percent != null ? percent.get() : 0);
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(valueOf);
                stringBuilder2.append('%');
                stringBuilder = stringBuilder2.toString();
            } else {
                stringBuilder = null;
            }
            long j2 = j & 14;
            if (j2 != 0) {
                View view;
                int i2;
                if (gameItemData != null) {
                    obj = gameItemData.isYellow();
                }
                updateRegistration(1, obj);
                if (obj != null) {
                    i = obj.get();
                }
                if (j2 != 0) {
                    j = i != 0 ? j | 32 : j | 16;
                }
                if (i != 0) {
                    view = discountGameItemBinding.percentBackground;
                    i2 = C0859R.color.eur;
                } else {
                    view = discountGameItemBinding.percentBackground;
                    i2 = C0859R.color.white;
                }
                i = getColorFromResource(view, i2);
            }
        } else {
            stringBuilder = null;
        }
        if ((j & 13) != 0) {
            TextViewBindingAdapter.setText(discountGameItemBinding.mboundView2, stringBuilder);
        }
        if ((j & 14) != 0) {
            ImageViewBindingAdapter.setImageDrawable(discountGameItemBinding.percentBackground, Converters.convertColorToDrawable(i));
        }
    }

    public static DiscountGameItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountGameItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (DiscountGameItemBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.discount_game_item, viewGroup, z, dataBindingComponent);
    }

    public static DiscountGameItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountGameItemBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.discount_game_item, null, false), dataBindingComponent);
    }

    public static DiscountGameItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountGameItemBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/discount_game_item_0".equals(view.getTag())) {
            return new DiscountGameItemBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

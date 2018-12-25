package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.constraint.ConstraintLayout;
import android.support.v7.widget.SwitchCompat;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.card.CardLimitData;
import ru.rocketbank.r2d2.utils.BindingUtils;

public class CardLimitItemBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final ImageView imageView;
    private CardLimitData mData;
    private long mDirtyFlags = -1;
    private final ConstraintLayout mboundView0;
    public final SwitchCompat switchCompat;
    public final RocketTextView textView;

    public CardLimitItemBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.imageView = (ImageView) dataBindingComponent[1];
        this.imageView.setTag(null);
        this.mboundView0 = (ConstraintLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.switchCompat = (SwitchCompat) dataBindingComponent[2];
        this.switchCompat.setTag(null);
        this.textView = (RocketTextView) dataBindingComponent[3];
        this.textView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 4;
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
        setData((CardLimitData) obj);
        return true;
    }

    public void setData(CardLimitData cardLimitData) {
        this.mData = cardLimitData;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public CardLimitData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeDataEnabled((ObservableBoolean) obj, i2);
    }

    private boolean onChangeDataEnabled(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        boolean z;
        int i;
        int i2;
        int i3;
        CardLimitItemBinding cardLimitItemBinding = this;
        synchronized (this) {
            try {
                j = cardLimitItemBinding.mDirtyFlags;
                cardLimitItemBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        CardLimitData cardLimitData = cardLimitItemBinding.mData;
        long j2 = j & 7;
        int i4 = 0;
        if (j2 != 0) {
            Object enabled = cardLimitData != null ? cardLimitData.getEnabled() : null;
            updateRegistration(0, enabled);
            if (enabled != null) {
                z = enabled.get();
            } else {
                z = false;
            }
            if (j2 != 0) {
                j = z ? j | 16 : j | 8;
            }
            if ((j & 6) == 0 || cardLimitData == null) {
                i = 0;
                i2 = i;
            } else {
                i = cardLimitData.getTitle();
                i2 = cardLimitData.getIcon();
            }
        } else {
            i = 0;
            i2 = i;
            z = i2;
        }
        int textDisabled = ((j & 8) == 0 || cardLimitData == null) ? 0 : cardLimitData.getTextDisabled();
        if ((j & 16) == 0 || cardLimitData == null) {
            i3 = 0;
        } else {
            i3 = cardLimitData.getTextEnabled();
        }
        long j3 = j & 7;
        if (j3 != 0) {
            i4 = z ? i3 : textDisabled;
        }
        if ((j & 6) != 0) {
            BindingUtils.setImageViewResource(cardLimitItemBinding.imageView, i2);
            cardLimitItemBinding.switchCompat.setText(i);
        }
        if (j3 != 0) {
            cardLimitItemBinding.textView.setText(i4);
        }
    }

    public static CardLimitItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static CardLimitItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (CardLimitItemBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.card_limit_item, viewGroup, z, dataBindingComponent);
    }

    public static CardLimitItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static CardLimitItemBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.card_limit_item, null, false), dataBindingComponent);
    }

    public static CardLimitItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static CardLimitItemBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/card_limit_item_0".equals(view.getTag())) {
            return new CardLimitItemBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

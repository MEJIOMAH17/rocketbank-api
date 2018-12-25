package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.ImageViewBindingAdapter;
import android.databinding.adapters.TextViewBindingAdapter;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.transfer.SmallAccountData;

public class FragmentSmallAccountBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketAutofitTextView amount;
    public final CardView card;
    public final ImageView icon;
    private SmallAccountData mData;
    private long mDirtyFlags = -1;
    private final FrameLayout mboundView0;
    public final RocketTextView name;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.card, 4);
    }

    public FragmentSmallAccountBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 3);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.amount = (RocketAutofitTextView) dataBindingComponent[3];
        this.amount.setTag(null);
        this.card = (CardView) dataBindingComponent[4];
        this.icon = (ImageView) dataBindingComponent[1];
        this.icon.setTag(null);
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.name = (RocketTextView) dataBindingComponent[2];
        this.name.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 16;
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
        setData((SmallAccountData) obj);
        return true;
    }

    public void setData(SmallAccountData smallAccountData) {
        this.mData = smallAccountData;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public SmallAccountData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataAmount((ObservableField) obj, i2);
            case 1:
                return onChangeDataImage((ObservableField) obj, i2);
            case 2:
                return onChangeDataName((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataAmount(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataImage(ObservableField<Drawable> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataName(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    protected void executeBindings() {
        CharSequence charSequence;
        Drawable drawable;
        CharSequence charSequence2;
        FragmentSmallAccountBinding fragmentSmallAccountBinding = this;
        synchronized (this) {
            try {
                long j = fragmentSmallAccountBinding.mDirtyFlags;
                fragmentSmallAccountBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        SmallAccountData smallAccountData = fragmentSmallAccountBinding.mData;
        if ((j & 31) != 0) {
            Object image;
            Object name;
            if ((j & 25) != 0) {
                Object amount = smallAccountData != null ? smallAccountData.getAmount() : null;
                updateRegistration(0, amount);
                if (amount != null) {
                    charSequence = (String) amount.get();
                    if ((j & 26) != 0) {
                        image = smallAccountData == null ? smallAccountData.getImage() : null;
                        updateRegistration(1, image);
                        if (image != null) {
                            drawable = (Drawable) image.get();
                            if ((j & 28) != 0) {
                                name = smallAccountData == null ? smallAccountData.getName() : null;
                                updateRegistration(2, name);
                                if (name != null) {
                                    charSequence2 = (String) name.get();
                                }
                            }
                            charSequence2 = null;
                        }
                    }
                    drawable = null;
                    if ((j & 28) != 0) {
                        if (smallAccountData == null) {
                        }
                        updateRegistration(2, name);
                        if (name != null) {
                            charSequence2 = (String) name.get();
                        }
                    }
                    charSequence2 = null;
                }
            }
            charSequence = null;
            if ((j & 26) != 0) {
                if (smallAccountData == null) {
                }
                updateRegistration(1, image);
                if (image != null) {
                    drawable = (Drawable) image.get();
                    if ((j & 28) != 0) {
                        if (smallAccountData == null) {
                        }
                        updateRegistration(2, name);
                        if (name != null) {
                            charSequence2 = (String) name.get();
                        }
                    }
                    charSequence2 = null;
                }
            }
            drawable = null;
            if ((j & 28) != 0) {
                if (smallAccountData == null) {
                }
                updateRegistration(2, name);
                if (name != null) {
                    charSequence2 = (String) name.get();
                }
            }
            charSequence2 = null;
        } else {
            charSequence2 = null;
            charSequence = null;
            drawable = null;
        }
        if ((j & 25) != 0) {
            TextViewBindingAdapter.setText(fragmentSmallAccountBinding.amount, charSequence);
        }
        if ((j & 26) != 0) {
            ImageViewBindingAdapter.setImageDrawable(fragmentSmallAccountBinding.icon, drawable);
        }
        if ((j & 28) != 0) {
            TextViewBindingAdapter.setText(fragmentSmallAccountBinding.name, charSequence2);
        }
    }

    public static FragmentSmallAccountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentSmallAccountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentSmallAccountBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_small_account, viewGroup, z, dataBindingComponent);
    }

    public static FragmentSmallAccountBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentSmallAccountBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_small_account, null, false), dataBindingComponent);
    }

    public static FragmentSmallAccountBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentSmallAccountBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_small_account_0".equals(view.getTag())) {
            return new FragmentSmallAccountBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

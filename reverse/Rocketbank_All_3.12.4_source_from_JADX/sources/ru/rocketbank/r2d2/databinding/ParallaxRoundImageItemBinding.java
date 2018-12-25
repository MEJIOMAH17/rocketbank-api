package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import de.hdodenhof.circleimageview.CircleImageView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.parallax.ParallaxRoundItem;

public class ParallaxRoundImageItemBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final CircleImageView image;
    private ParallaxRoundItem mData;
    private long mDirtyFlags = -1;
    private final RelativeLayout mboundView0;
    private final RocketTextView mboundView1;
    public final RocketTextView title;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.image, 3);
    }

    public ParallaxRoundImageItemBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.image = (CircleImageView) dataBindingComponent[3];
        this.mboundView0 = (RelativeLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (RocketTextView) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.title = (RocketTextView) dataBindingComponent[2];
        this.title.setTag(null);
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
        setData((ParallaxRoundItem) obj);
        return true;
    }

    public void setData(ParallaxRoundItem parallaxRoundItem) {
        this.mData = parallaxRoundItem;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public ParallaxRoundItem getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataText((ObservableField) obj, i2);
            case 1:
                return onChangeDataSubText((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataSubText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    protected void executeBindings() {
        CharSequence charSequence;
        synchronized (this) {
            long j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        ParallaxRoundItem parallaxRoundItem = this.mData;
        CharSequence charSequence2 = null;
        if ((j & 15) != 0) {
            Object subText;
            if ((j & 13) != 0) {
                Object text = parallaxRoundItem != null ? parallaxRoundItem.getText() : null;
                updateRegistration(0, text);
                if (text != null) {
                    charSequence = (String) text.get();
                    if ((j & 14) != 0) {
                        subText = parallaxRoundItem == null ? parallaxRoundItem.getSubText() : null;
                        updateRegistration(1, subText);
                        if (subText != null) {
                            charSequence2 = (String) subText.get();
                        }
                    }
                }
            }
            charSequence = null;
            if ((j & 14) != 0) {
                if (parallaxRoundItem == null) {
                }
                updateRegistration(1, subText);
                if (subText != null) {
                    charSequence2 = (String) subText.get();
                }
            }
        } else {
            charSequence = null;
        }
        if ((j & 13) != 0) {
            TextViewBindingAdapter.setText(this.mboundView1, charSequence);
        }
        if ((j & 14) != 0) {
            TextViewBindingAdapter.setText(this.title, charSequence2);
        }
    }

    public static ParallaxRoundImageItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ParallaxRoundImageItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ParallaxRoundImageItemBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.parallax_round_image_item, viewGroup, z, dataBindingComponent);
    }

    public static ParallaxRoundImageItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ParallaxRoundImageItemBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.parallax_round_image_item, null, false), dataBindingComponent);
    }

    public static ParallaxRoundImageItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ParallaxRoundImageItemBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/parallax_round_image_item_0".equals(view.getTag())) {
            return new ParallaxRoundImageItemBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

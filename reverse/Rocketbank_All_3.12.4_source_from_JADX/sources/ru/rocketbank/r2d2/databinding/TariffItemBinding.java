package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.ImageViewBindingAdapter;
import android.databinding.adapters.TextViewBindingAdapter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import de.hdodenhof.circleimageview.CircleImageView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.tariff.TariffItemData;

public class TariffItemBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final RocketTextView colorText;
    private long mDirtyFlags = -1;
    private TariffItemData mTariffItem;
    private final LinearLayout mboundView0;
    private final CircleImageView mboundView1;
    private final RocketTextView mboundView3;

    public TariffItemBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 3);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.colorText = (RocketTextView) dataBindingComponent[2];
        this.colorText.setTag(null);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (CircleImageView) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.mboundView3 = (RocketTextView) dataBindingComponent[3];
        this.mboundView3.setTag(null);
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
        if (76 != i) {
            return false;
        }
        setTariffItem((TariffItemData) obj);
        return true;
    }

    public void setTariffItem(TariffItemData tariffItemData) {
        this.mTariffItem = tariffItemData;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(76);
        super.requestRebind();
    }

    public TariffItemData getTariffItem() {
        return this.mTariffItem;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeTariffItemText((ObservableField) obj, i2);
            case 1:
                return onChangeTariffItemColor((ObservableField) obj, i2);
            case 2:
                return onChangeTariffItemTextColor((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeTariffItemText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeTariffItemColor(ObservableField<ColorDrawable> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeTariffItemTextColor(ObservableField<String> observableField, int i) {
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
        TariffItemBinding tariffItemBinding = this;
        synchronized (this) {
            try {
                long j = tariffItemBinding.mDirtyFlags;
                tariffItemBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        TariffItemData tariffItemData = tariffItemBinding.mTariffItem;
        if ((j & 31) != 0) {
            Object color;
            Object textColor;
            if ((j & 25) != 0) {
                Object text = tariffItemData != null ? tariffItemData.getText() : null;
                updateRegistration(0, text);
                if (text != null) {
                    charSequence = (String) text.get();
                    if ((j & 26) != 0) {
                        color = tariffItemData == null ? tariffItemData.getColor() : null;
                        updateRegistration(1, color);
                        if (color != null) {
                            drawable = (ColorDrawable) color.get();
                            if ((j & 28) != 0) {
                                textColor = tariffItemData == null ? tariffItemData.getTextColor() : null;
                                updateRegistration(2, textColor);
                                if (textColor != null) {
                                    charSequence2 = (String) textColor.get();
                                }
                            }
                            charSequence2 = null;
                        }
                    }
                    drawable = null;
                    if ((j & 28) != 0) {
                        if (tariffItemData == null) {
                        }
                        updateRegistration(2, textColor);
                        if (textColor != null) {
                            charSequence2 = (String) textColor.get();
                        }
                    }
                    charSequence2 = null;
                }
            }
            charSequence = null;
            if ((j & 26) != 0) {
                if (tariffItemData == null) {
                }
                updateRegistration(1, color);
                if (color != null) {
                    drawable = (ColorDrawable) color.get();
                    if ((j & 28) != 0) {
                        if (tariffItemData == null) {
                        }
                        updateRegistration(2, textColor);
                        if (textColor != null) {
                            charSequence2 = (String) textColor.get();
                        }
                    }
                    charSequence2 = null;
                }
            }
            drawable = null;
            if ((j & 28) != 0) {
                if (tariffItemData == null) {
                }
                updateRegistration(2, textColor);
                if (textColor != null) {
                    charSequence2 = (String) textColor.get();
                }
            }
            charSequence2 = null;
        } else {
            charSequence2 = null;
            charSequence = null;
            drawable = null;
        }
        if ((j & 28) != 0) {
            TextViewBindingAdapter.setText(tariffItemBinding.colorText, charSequence2);
        }
        if ((j & 26) != 0) {
            ImageViewBindingAdapter.setImageDrawable(tariffItemBinding.mboundView1, drawable);
        }
        if ((j & 25) != 0) {
            TextViewBindingAdapter.setText(tariffItemBinding.mboundView3, charSequence);
        }
    }

    public static TariffItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static TariffItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (TariffItemBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.tariff_item, viewGroup, z, dataBindingComponent);
    }

    public static TariffItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static TariffItemBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.tariff_item, null, false), dataBindingComponent);
    }

    public static TariffItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static TariffItemBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/tariff_item_0".equals(view.getTag())) {
            return new TariffItemBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

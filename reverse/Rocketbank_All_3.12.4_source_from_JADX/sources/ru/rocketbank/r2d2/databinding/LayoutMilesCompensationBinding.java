package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.support.v7.widget.CardView;
import android.text.SpannableString;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.operation.vh.DataMilesCompensate;
import ru.rocketbank.r2d2.root.operation.vh.MilesCompensateHandler;

public class LayoutMilesCompensationBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final RocketTextView description;
    private final OnClickListener mCallback28;
    private DataMilesCompensate mData;
    private long mDirtyFlags = -1;
    private MilesCompensateHandler mHandler;
    private final FrameLayout mboundView0;
    private final CardView mboundView4;
    public final RocketAutofitTextView rocketAmount;
    public final RocketTextView rocketRoublesText;

    public LayoutMilesCompensationBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 3);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.description = (RocketTextView) dataBindingComponent[3];
        this.description.setTag(null);
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView4 = (CardView) dataBindingComponent[4];
        this.mboundView4.setTag(null);
        this.rocketAmount = (RocketAutofitTextView) dataBindingComponent[1];
        this.rocketAmount.setTag(null);
        this.rocketRoublesText = (RocketTextView) dataBindingComponent[2];
        this.rocketRoublesText.setTag(null);
        setRootTag(view);
        this.mCallback28 = new android.databinding.generated.callback.OnClickListener(this, 1);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 32;
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
        if (40 == i) {
            setHandler((MilesCompensateHandler) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((DataMilesCompensate) obj);
        }
        return true;
    }

    public void setHandler(MilesCompensateHandler milesCompensateHandler) {
        this.mHandler = milesCompensateHandler;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public MilesCompensateHandler getHandler() {
        return this.mHandler;
    }

    public void setData(DataMilesCompensate dataMilesCompensate) {
        this.mData = dataMilesCompensate;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public DataMilesCompensate getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataRocketText((ObservableField) obj, i2);
            case 1:
                return onChangeDataAmount((ObservableField) obj, i2);
            case 2:
                return onChangeDataDescription((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataRocketText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataAmount(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataDescription(ObservableField<SpannableString> observableField, int i) {
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
        CharSequence charSequence2;
        CharSequence charSequence3;
        LayoutMilesCompensationBinding layoutMilesCompensationBinding = this;
        synchronized (this) {
            try {
                long j = layoutMilesCompensationBinding.mDirtyFlags;
                layoutMilesCompensationBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        DataMilesCompensate dataMilesCompensate = layoutMilesCompensationBinding.mData;
        if ((j & 55) != 0) {
            Object amount;
            Object description;
            if ((j & 49) != 0) {
                Object rocketText = dataMilesCompensate != null ? dataMilesCompensate.getRocketText() : null;
                updateRegistration(0, rocketText);
                if (rocketText != null) {
                    charSequence = (String) rocketText.get();
                    if ((j & 50) != 0) {
                        amount = dataMilesCompensate == null ? dataMilesCompensate.getAmount() : null;
                        updateRegistration(1, amount);
                        if (amount != null) {
                            charSequence2 = (String) amount.get();
                            if ((j & 52) != 0) {
                                description = dataMilesCompensate == null ? dataMilesCompensate.getDescription() : null;
                                updateRegistration(2, description);
                                if (description != null) {
                                    charSequence3 = (SpannableString) description.get();
                                }
                            }
                            charSequence3 = null;
                        }
                    }
                    charSequence2 = null;
                    if ((j & 52) != 0) {
                        if (dataMilesCompensate == null) {
                        }
                        updateRegistration(2, description);
                        if (description != null) {
                            charSequence3 = (SpannableString) description.get();
                        }
                    }
                    charSequence3 = null;
                }
            }
            charSequence = null;
            if ((j & 50) != 0) {
                if (dataMilesCompensate == null) {
                }
                updateRegistration(1, amount);
                if (amount != null) {
                    charSequence2 = (String) amount.get();
                    if ((j & 52) != 0) {
                        if (dataMilesCompensate == null) {
                        }
                        updateRegistration(2, description);
                        if (description != null) {
                            charSequence3 = (SpannableString) description.get();
                        }
                    }
                    charSequence3 = null;
                }
            }
            charSequence2 = null;
            if ((j & 52) != 0) {
                if (dataMilesCompensate == null) {
                }
                updateRegistration(2, description);
                if (description != null) {
                    charSequence3 = (SpannableString) description.get();
                }
            }
            charSequence3 = null;
        } else {
            charSequence3 = null;
            charSequence = null;
            charSequence2 = null;
        }
        if ((j & 52) != 0) {
            TextViewBindingAdapter.setText(layoutMilesCompensationBinding.description, charSequence3);
        }
        if ((j & 32) != 0) {
            layoutMilesCompensationBinding.mboundView4.setOnClickListener(layoutMilesCompensationBinding.mCallback28);
        }
        if ((j & 50) != 0) {
            TextViewBindingAdapter.setText(layoutMilesCompensationBinding.rocketAmount, charSequence2);
        }
        if ((j & 49) != 0) {
            TextViewBindingAdapter.setText(layoutMilesCompensationBinding.rocketRoublesText, charSequence);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mHandler;
        if ((i != 0 ? true : null) != null) {
            i.onCompensation();
        }
    }

    public static LayoutMilesCompensationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutMilesCompensationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutMilesCompensationBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_miles_compensation, viewGroup, z, dataBindingComponent);
    }

    public static LayoutMilesCompensationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutMilesCompensationBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_miles_compensation, null, false), dataBindingComponent);
    }

    public static LayoutMilesCompensationBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutMilesCompensationBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_miles_compensation_0".equals(view.getTag())) {
            return new LayoutMilesCompensationBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

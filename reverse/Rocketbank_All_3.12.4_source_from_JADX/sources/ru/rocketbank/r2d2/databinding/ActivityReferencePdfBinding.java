package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketLoader;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.reference.ReferencePdfData;
import ru.rocketbank.r2d2.data.binding.reference.ReferencePdfListener;

public class ActivityReferencePdfBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketTextView buttonClose;
    public final RocketTextView buttonTryAgan;
    public final RocketLoader loader;
    private ReferencePdfData mData;
    private long mDirtyFlags = -1;
    private ReferencePdfListener mListener;
    private OnClickListenerImpl mListenerCloseClickedAndroidViewViewOnClickListener;
    private OnClickListenerImpl1 mListenerRepeatClickedAndroidViewViewOnClickListener;
    private final FrameLayout mboundView0;
    private final LinearLayout mboundView2;
    public final RocketTextView statusText;

    public static class OnClickListenerImpl1 implements OnClickListener {
        private ReferencePdfListener value;

        public OnClickListenerImpl1 setValue(ReferencePdfListener referencePdfListener) {
            this.value = referencePdfListener;
            return referencePdfListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.repeatClicked(view);
        }
    }

    public static class OnClickListenerImpl implements OnClickListener {
        private ReferencePdfListener value;

        public OnClickListenerImpl setValue(ReferencePdfListener referencePdfListener) {
            this.value = referencePdfListener;
            return referencePdfListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.closeClicked(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.loader, 5);
    }

    public ActivityReferencePdfBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.buttonClose = (RocketTextView) dataBindingComponent[3];
        this.buttonClose.setTag(null);
        this.buttonTryAgan = (RocketTextView) dataBindingComponent[4];
        this.buttonTryAgan.setTag(null);
        this.loader = (RocketLoader) dataBindingComponent[5];
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView2 = (LinearLayout) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.statusText = (RocketTextView) dataBindingComponent[1];
        this.statusText.setTag(null);
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
        if (55 == i) {
            setListener((ReferencePdfListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((ReferencePdfData) obj);
        }
        return true;
    }

    public void setListener(ReferencePdfListener referencePdfListener) {
        this.mListener = referencePdfListener;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public ReferencePdfListener getListener() {
        return this.mListener;
    }

    public void setData(ReferencePdfData referencePdfData) {
        this.mData = referencePdfData;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public ReferencePdfData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataButtonsToolbar((ObservableBoolean) obj, i2);
            case 1:
                return onChangeDataStatusText((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataButtonsToolbar(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataStatusText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    protected void executeBindings() {
        OnClickListener onClickListener;
        OnClickListener onClickListener2;
        CharSequence charSequence;
        ActivityReferencePdfBinding activityReferencePdfBinding = this;
        synchronized (this) {
            try {
                long j = activityReferencePdfBinding.mDirtyFlags;
                activityReferencePdfBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        ReferencePdfListener referencePdfListener = activityReferencePdfBinding.mListener;
        ReferencePdfData referencePdfData = activityReferencePdfBinding.mData;
        if ((j & 20) == 0 || referencePdfListener == null) {
            onClickListener = null;
            onClickListener2 = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            OnClickListenerImpl1 onClickListenerImpl1;
            if (activityReferencePdfBinding.mListenerCloseClickedAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                activityReferencePdfBinding.mListenerCloseClickedAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = activityReferencePdfBinding.mListenerCloseClickedAndroidViewViewOnClickListener;
            }
            onClickListener2 = onClickListenerImpl.setValue(referencePdfListener);
            if (activityReferencePdfBinding.mListenerRepeatClickedAndroidViewViewOnClickListener == null) {
                onClickListenerImpl1 = new OnClickListenerImpl1();
                activityReferencePdfBinding.mListenerRepeatClickedAndroidViewViewOnClickListener = onClickListenerImpl1;
            } else {
                onClickListenerImpl1 = activityReferencePdfBinding.mListenerRepeatClickedAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl1.setValue(referencePdfListener);
        }
        int i = 0;
        if ((j & 27) != 0) {
            long j2 = j & 25;
            if (j2 != 0) {
                boolean z;
                Object buttonsToolbar = referencePdfData != null ? referencePdfData.getButtonsToolbar() : null;
                updateRegistration(0, buttonsToolbar);
                if (buttonsToolbar != null) {
                    z = buttonsToolbar.get();
                } else {
                    z = false;
                }
                long j3 = j2 != 0 ? z ? j | 64 : j | 32 : j;
                if (!z) {
                    i = 4;
                }
                j = j3;
            }
            if ((j & 26) != 0) {
                Object statusText = referencePdfData != null ? referencePdfData.getStatusText() : null;
                updateRegistration(1, statusText);
                if (statusText != null) {
                    charSequence = (String) statusText.get();
                    if ((j & 20) != 0) {
                        activityReferencePdfBinding.buttonClose.setOnClickListener(onClickListener2);
                        activityReferencePdfBinding.buttonTryAgan.setOnClickListener(onClickListener);
                    }
                    if ((j & 25) != 0) {
                        activityReferencePdfBinding.mboundView2.setVisibility(i);
                    }
                    if ((j & 26) != 0) {
                        TextViewBindingAdapter.setText(activityReferencePdfBinding.statusText, charSequence);
                    }
                }
            }
        }
        charSequence = null;
        if ((j & 20) != 0) {
            activityReferencePdfBinding.buttonClose.setOnClickListener(onClickListener2);
            activityReferencePdfBinding.buttonTryAgan.setOnClickListener(onClickListener);
        }
        if ((j & 25) != 0) {
            activityReferencePdfBinding.mboundView2.setVisibility(i);
        }
        if ((j & 26) != 0) {
            TextViewBindingAdapter.setText(activityReferencePdfBinding.statusText, charSequence);
        }
    }

    public static ActivityReferencePdfBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityReferencePdfBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityReferencePdfBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_reference_pdf, viewGroup, z, dataBindingComponent);
    }

    public static ActivityReferencePdfBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityReferencePdfBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_reference_pdf, null, false), dataBindingComponent);
    }

    public static ActivityReferencePdfBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityReferencePdfBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_reference_pdf_0".equals(view.getTag())) {
            return new ActivityReferencePdfBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

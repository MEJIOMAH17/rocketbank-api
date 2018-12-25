package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import de.hdodenhof.circleimageview.CircleImageView;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.kitchen.RocketCafeData;
import ru.rocketbank.r2d2.data.binding.kitchen.RocketCafeListener;
import ru.rocketbank.r2d2.widgets.BackgroundImageView;

public class ActivityRocketCafeBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final TextView amountAndDescription;
    public final BackgroundImageView background;
    public final RocketTextView cancelButton;
    public final LinearLayout linearLayout;
    private final OnClickListener mCallback51;
    private final OnClickListener mCallback52;
    private RocketCafeData mData;
    private long mDirtyFlags = -1;
    private RocketCafeListener mListener;
    private final FrameLayout mboundView0;
    public final CircleImageView rocketbank;
    public final RocketTextView textView;
    public final RocketButton transferButton;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.background, 4);
        sViewsWithIds.put(C0859R.id.linearLayout, 5);
        sViewsWithIds.put(C0859R.id.rocketbank, 6);
        sViewsWithIds.put(C0859R.id.textView, 7);
    }

    public ActivityRocketCafeBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 8, sIncludes, sViewsWithIds);
        this.amountAndDescription = (TextView) dataBindingComponent[1];
        this.amountAndDescription.setTag(null);
        this.background = (BackgroundImageView) dataBindingComponent[4];
        this.cancelButton = (RocketTextView) dataBindingComponent[3];
        this.cancelButton.setTag(null);
        this.linearLayout = (LinearLayout) dataBindingComponent[5];
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.rocketbank = (CircleImageView) dataBindingComponent[6];
        this.textView = (RocketTextView) dataBindingComponent[7];
        this.transferButton = (RocketButton) dataBindingComponent[2];
        this.transferButton.setTag(null);
        setRootTag(view);
        this.mCallback52 = new android.databinding.generated.callback.OnClickListener(this, 2);
        this.mCallback51 = new android.databinding.generated.callback.OnClickListener(this, 1);
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
        if (55 == i) {
            setListener((RocketCafeListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((RocketCafeData) obj);
        }
        return true;
    }

    public void setListener(RocketCafeListener rocketCafeListener) {
        this.mListener = rocketCafeListener;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public RocketCafeListener getListener() {
        return this.mListener;
    }

    public void setData(RocketCafeData rocketCafeData) {
        this.mData = rocketCafeData;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public RocketCafeData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeDataAmount((ObservableField) obj, i2);
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

    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        RocketCafeData rocketCafeData = this.mData;
        long j2 = j & 13;
        CharSequence charSequence = null;
        if (j2 != 0) {
            String str;
            Object amount = rocketCafeData != null ? rocketCafeData.getAmount() : null;
            updateRegistration(0, amount);
            if (amount != null) {
                str = (String) amount.get();
            }
            charSequence = String.format(this.amountAndDescription.getResources().getString(C0859R.string.rocket_cafe_notification), new Object[]{str});
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.amountAndDescription, charSequence);
        }
        if ((j & 8) != 0) {
            this.cancelButton.setOnClickListener(this.mCallback52);
            this.transferButton.setOnClickListener(this.mCallback51);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        view = null;
        switch (i) {
            case 1:
                i = this.mListener;
                if (i != 0) {
                    view = 1;
                }
                if (view != null) {
                    i.confirmButtonClicked();
                    break;
                }
                break;
            case 2:
                i = this.mListener;
                if (i != 0) {
                    view = 1;
                }
                if (view != null) {
                    i.cancelButtonClicked();
                    return;
                }
                break;
            default:
                break;
        }
    }

    public static ActivityRocketCafeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityRocketCafeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityRocketCafeBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_rocket_cafe, viewGroup, z, dataBindingComponent);
    }

    public static ActivityRocketCafeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityRocketCafeBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_rocket_cafe, null, false), dataBindingComponent);
    }

    public static ActivityRocketCafeBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityRocketCafeBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_rocket_cafe_0".equals(view.getTag())) {
            return new ActivityRocketCafeBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

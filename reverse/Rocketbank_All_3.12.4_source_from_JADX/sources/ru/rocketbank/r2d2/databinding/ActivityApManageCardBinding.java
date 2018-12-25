package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.ViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.support.constraint.ConstraintLayout;
import android.support.constraint.Guideline;
import android.support.v7.widget.AppCompatImageView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import ru.rocketbank.core.widgets.RocketCompatButton;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.ap.APManageCardData;
import ru.rocketbank.r2d2.data.binding.ap.APManageCardListener;

public class ActivityApManageCardBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final AppCompatImageView apLogo;
    public final RocketCompatButton buttonDeleteCard;
    public final RocketCompatButton buttonMainCard;
    public final Guideline guideline2;
    public final Guideline guideline4;
    public final Guideline guideline6;
    private final OnClickListener mCallback17;
    private final OnClickListener mCallback18;
    private APManageCardData mData;
    private long mDirtyFlags = -1;
    private APManageCardListener mListener;
    private final ConstraintLayout mboundView0;
    public final RocketTextView textView6;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.ap_logo, 3);
        sViewsWithIds.put(C0859R.id.guideline2, 4);
        sViewsWithIds.put(C0859R.id.guideline4, 5);
        sViewsWithIds.put(C0859R.id.guideline6, 6);
        sViewsWithIds.put(C0859R.id.textView6, 7);
    }

    public ActivityApManageCardBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 8, sIncludes, sViewsWithIds);
        this.apLogo = (AppCompatImageView) dataBindingComponent[3];
        this.buttonDeleteCard = (RocketCompatButton) dataBindingComponent[2];
        this.buttonDeleteCard.setTag(null);
        this.buttonMainCard = (RocketCompatButton) dataBindingComponent[1];
        this.buttonMainCard.setTag(null);
        this.guideline2 = (Guideline) dataBindingComponent[4];
        this.guideline4 = (Guideline) dataBindingComponent[5];
        this.guideline6 = (Guideline) dataBindingComponent[6];
        this.mboundView0 = (ConstraintLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.textView6 = (RocketTextView) dataBindingComponent[7];
        setRootTag(view);
        this.mCallback17 = new android.databinding.generated.callback.OnClickListener(this, 1);
        this.mCallback18 = new android.databinding.generated.callback.OnClickListener(this, 2);
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
            setListener((APManageCardListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((APManageCardData) obj);
        }
        return true;
    }

    public void setListener(APManageCardListener aPManageCardListener) {
        this.mListener = aPManageCardListener;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public APManageCardListener getListener() {
        return this.mListener;
    }

    public void setData(APManageCardData aPManageCardData) {
        this.mData = aPManageCardData;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public APManageCardData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeDataDefaultEnabled((ObservableBoolean) obj, i2);
    }

    private boolean onChangeDataDefaultEnabled(ObservableBoolean observableBoolean, int i) {
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
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        APManageCardData aPManageCardData = this.mData;
        Object obj = null;
        long j2 = j & 13;
        int i = 0;
        if (j2 != 0) {
            if (aPManageCardData != null) {
                obj = aPManageCardData.getDefaultEnabled();
            }
            updateRegistration(0, obj);
            if (obj != null) {
                z = obj.get();
            } else {
                z = false;
            }
            if (j2 != 0) {
                j = z ? j | 32 : j | 16;
            }
            if (!z) {
                i = 4;
            }
        } else {
            z = false;
        }
        if ((j & 8) != 0) {
            this.buttonDeleteCard.setOnClickListener(this.mCallback18);
        }
        if ((j & 13) != 0) {
            this.buttonMainCard.setVisibility(i);
            ViewBindingAdapter.setOnClick(this.buttonMainCard, this.mCallback17, z);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        view = null;
        APManageCardData aPManageCardData;
        ObservableField androidPayToken;
        switch (i) {
            case 1:
                i = this.mListener;
                aPManageCardData = this.mData;
                if ((i != 0 ? 1 : null) != null) {
                    if ((aPManageCardData != null ? 1 : null) != null) {
                        androidPayToken = aPManageCardData.getAndroidPayToken();
                        if (androidPayToken != null) {
                            view = 1;
                        }
                        if (view != null) {
                            i.makeDefaultClicked((String) androidPayToken.get());
                            return;
                        }
                    }
                }
                break;
            case 2:
                i = this.mListener;
                aPManageCardData = this.mData;
                if ((i != 0 ? 1 : null) != null) {
                    if ((aPManageCardData != null ? 1 : null) != null) {
                        androidPayToken = aPManageCardData.getAndroidPayToken();
                        if (androidPayToken != null) {
                            view = 1;
                        }
                        if (view != null) {
                            i.deleteCardClicked((String) androidPayToken.get());
                            break;
                        }
                    }
                }
                break;
            default:
                break;
        }
    }

    public static ActivityApManageCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityApManageCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityApManageCardBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_ap_manage_card, viewGroup, z, dataBindingComponent);
    }

    public static ActivityApManageCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityApManageCardBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_ap_manage_card, null, false), dataBindingComponent);
    }

    public static ActivityApManageCardBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityApManageCardBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_ap_manage_card_0".equals(view.getTag())) {
            return new ActivityApManageCardBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

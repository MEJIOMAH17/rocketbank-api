package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.support.constraint.ConstraintLayout;
import android.support.constraint.Guideline;
import android.support.v7.widget.AppCompatImageView;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.ap.AddCardData;
import ru.rocketbank.r2d2.data.binding.ap.AddCardListener;

public class ActivitySpAddCardBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final CardView addSpButton;
    public final RocketTextView addText;
    public final Guideline guideline3;
    public final Guideline guideline4;
    public final Guideline guideline6;
    private final OnClickListener mCallback16;
    private AddCardData mData;
    private long mDirtyFlags = -1;
    private AddCardListener mListener;
    private final ConstraintLayout mboundView0;
    public final FrameLayout spAddButton;
    public final ImageView spLogo;
    public final AppCompatImageView spayArrow;
    public final AppCompatImageView spayLogo;
    public final RocketTextView textView6;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.sp_logo, 2);
        sViewsWithIds.put(C0859R.id.guideline3, 3);
        sViewsWithIds.put(C0859R.id.guideline4, 4);
        sViewsWithIds.put(C0859R.id.guideline6, 5);
        sViewsWithIds.put(C0859R.id.textView6, 6);
        sViewsWithIds.put(C0859R.id.add_sp_button, 7);
        sViewsWithIds.put(C0859R.id.add_text, 8);
        sViewsWithIds.put(C0859R.id.spay_arrow, 9);
        sViewsWithIds.put(C0859R.id.spay_logo, 10);
    }

    public ActivitySpAddCardBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 11, sIncludes, sViewsWithIds);
        this.addSpButton = (CardView) dataBindingComponent[7];
        this.addText = (RocketTextView) dataBindingComponent[8];
        this.guideline3 = (Guideline) dataBindingComponent[3];
        this.guideline4 = (Guideline) dataBindingComponent[4];
        this.guideline6 = (Guideline) dataBindingComponent[5];
        this.mboundView0 = (ConstraintLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.spAddButton = (FrameLayout) dataBindingComponent[1];
        this.spAddButton.setTag(null);
        this.spLogo = (ImageView) dataBindingComponent[2];
        this.spayArrow = (AppCompatImageView) dataBindingComponent[9];
        this.spayLogo = (AppCompatImageView) dataBindingComponent[10];
        this.textView6 = (RocketTextView) dataBindingComponent[6];
        setRootTag(view);
        this.mCallback16 = new android.databinding.generated.callback.OnClickListener(this, 1);
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
        if (55 == i) {
            setListener((AddCardListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((AddCardData) obj);
        }
        return true;
    }

    public void setListener(AddCardListener addCardListener) {
        this.mListener = addCardListener;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public AddCardListener getListener() {
        return this.mListener;
    }

    public void setData(AddCardData addCardData) {
        this.mData = addCardData;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public AddCardData getData() {
        return this.mData;
    }

    protected void executeBindings() {
        synchronized (this) {
            long j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        if ((j & 4) != 0) {
            this.spAddButton.setOnClickListener(this.mCallback16);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mListener;
        view = this.mData;
        Object obj = null;
        if ((i != 0 ? 1 : null) != null) {
            if ((view != null ? 1 : null) != null) {
                view = view.getCardToken();
                if (view != null) {
                    obj = 1;
                }
                if (obj != null) {
                    i.onCardAddClicked((String) view.get());
                }
            }
        }
    }

    public static ActivitySpAddCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivitySpAddCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivitySpAddCardBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_sp_add_card, viewGroup, z, dataBindingComponent);
    }

    public static ActivitySpAddCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivitySpAddCardBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_sp_add_card, null, false), dataBindingComponent);
    }

    public static ActivitySpAddCardBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivitySpAddCardBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_sp_add_card_0".equals(view.getTag())) {
            return new ActivitySpAddCardBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

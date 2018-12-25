package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.support.v7.widget.AppCompatImageView;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketCompatButton;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.feed.FeedAPHolderData;
import ru.rocketbank.r2d2.data.binding.feed.FeedOnCLickListener;

public class FeedItemApBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final CardView androidPayCard;
    public final AppCompatImageView apIcon;
    public final RocketCompatButton connectButton;
    private final OnClickListener mCallback21;
    private FeedAPHolderData mData;
    private long mDirtyFlags = -1;
    private FeedOnCLickListener mListener;
    private final LinearLayout mboundView0;
    public final RocketTextView textView7;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.android_pay_card, 3);
        sViewsWithIds.put(C0859R.id.ap_icon, 4);
    }

    public FeedItemApBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.androidPayCard = (CardView) dataBindingComponent[3];
        this.apIcon = (AppCompatImageView) dataBindingComponent[4];
        this.connectButton = (RocketCompatButton) dataBindingComponent[2];
        this.connectButton.setTag(null);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.textView7 = (RocketTextView) dataBindingComponent[1];
        this.textView7.setTag(null);
        setRootTag(view);
        this.mCallback21 = new android.databinding.generated.callback.OnClickListener(this, 1);
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
            setListener((FeedOnCLickListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((FeedAPHolderData) obj);
        }
        return true;
    }

    public void setListener(FeedOnCLickListener feedOnCLickListener) {
        this.mListener = feedOnCLickListener;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public FeedOnCLickListener getListener() {
        return this.mListener;
    }

    public void setData(FeedAPHolderData feedAPHolderData) {
        this.mData = feedAPHolderData;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public FeedAPHolderData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataText((ObservableField) obj, i2);
            case 1:
                return onChangeDataButtonText((ObservableField) obj, i2);
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

    private boolean onChangeDataButtonText(ObservableField<String> observableField, int i) {
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
        FeedAPHolderData feedAPHolderData = this.mData;
        CharSequence charSequence2 = null;
        if ((j & 27) != 0) {
            Object obj;
            if ((j & 25) != 0) {
                Object obj2 = feedAPHolderData != null ? feedAPHolderData.text : null;
                updateRegistration(0, obj2);
                if (obj2 != null) {
                    charSequence = (String) obj2.get();
                    if ((j & 26) != 0) {
                        obj = feedAPHolderData == null ? feedAPHolderData.buttonText : null;
                        updateRegistration(1, obj);
                        if (obj != null) {
                            charSequence2 = (String) obj.get();
                        }
                    }
                }
            }
            charSequence = null;
            if ((j & 26) != 0) {
                if (feedAPHolderData == null) {
                }
                updateRegistration(1, obj);
                if (obj != null) {
                    charSequence2 = (String) obj.get();
                }
            }
        } else {
            charSequence = null;
        }
        if ((j & 16) != 0) {
            this.connectButton.setOnClickListener(this.mCallback21);
        }
        if ((j & 26) != 0) {
            TextViewBindingAdapter.setText(this.connectButton, charSequence2);
        }
        if ((j & 25) != 0) {
            TextViewBindingAdapter.setText(this.textView7, charSequence);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mListener;
        if ((i != 0 ? true : null) != null) {
            i.onClick();
        }
    }

    public static FeedItemApBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemApBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FeedItemApBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.feed_item_ap, viewGroup, z, dataBindingComponent);
    }

    public static FeedItemApBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemApBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.feed_item_ap, null, false), dataBindingComponent);
    }

    public static FeedItemApBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemApBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/feed_item_ap_0".equals(view.getTag())) {
            return new FeedItemApBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

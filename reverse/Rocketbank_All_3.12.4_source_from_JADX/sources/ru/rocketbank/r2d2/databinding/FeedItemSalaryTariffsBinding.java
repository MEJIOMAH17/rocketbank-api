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
import android.widget.ImageView;
import android.widget.LinearLayout;
import ru.rocketbank.core.model.TariffOperation;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.feed.FeedTariffClickListener;
import ru.rocketbank.r2d2.data.binding.feed.FeedTariffHolderData;

public class FeedItemSalaryTariffsBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final ImageView background;
    private final OnClickListener mCallback50;
    private FeedTariffHolderData mData;
    private long mDirtyFlags = -1;
    private FeedTariffClickListener mListener;
    private TariffOperation mOperation;
    private final LinearLayout mboundView0;
    private final RocketTextView mboundView3;
    public final RocketTextView tariffDescription;
    public final RocketTextView tariffText;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.background, 4);
    }

    public FeedItemSalaryTariffsBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 3);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.background = (ImageView) dataBindingComponent[4];
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView3 = (RocketTextView) dataBindingComponent[3];
        this.mboundView3.setTag(null);
        this.tariffDescription = (RocketTextView) dataBindingComponent[2];
        this.tariffDescription.setTag(null);
        this.tariffText = (RocketTextView) dataBindingComponent[1];
        this.tariffText.setTag(null);
        setRootTag(view);
        this.mCallback50 = new android.databinding.generated.callback.OnClickListener(this, 1);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 64;
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
            setListener((FeedTariffClickListener) obj);
        } else if (24 == i) {
            setData((FeedTariffHolderData) obj);
        } else if (61 != i) {
            return false;
        } else {
            setOperation((TariffOperation) obj);
        }
        return true;
    }

    public void setListener(FeedTariffClickListener feedTariffClickListener) {
        this.mListener = feedTariffClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public FeedTariffClickListener getListener() {
        return this.mListener;
    }

    public void setData(FeedTariffHolderData feedTariffHolderData) {
        this.mData = feedTariffHolderData;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public FeedTariffHolderData getData() {
        return this.mData;
    }

    public void setOperation(TariffOperation tariffOperation) {
        this.mOperation = tariffOperation;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(61);
        super.requestRebind();
    }

    public TariffOperation getOperation() {
        return this.mOperation;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataTariffDescription((ObservableField) obj, i2);
            case 1:
                return onChangeDataTariffText((ObservableField) obj, i2);
            case 2:
                return onChangeDataButtonText((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataTariffDescription(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataTariffText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataButtonText(ObservableField<String> observableField, int i) {
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
        FeedItemSalaryTariffsBinding feedItemSalaryTariffsBinding = this;
        synchronized (this) {
            try {
                long j = feedItemSalaryTariffsBinding.mDirtyFlags;
                feedItemSalaryTariffsBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        FeedTariffHolderData feedTariffHolderData = feedItemSalaryTariffsBinding.mData;
        if ((j & 87) != 0) {
            Object tariffText;
            Object buttonText;
            if ((j & 81) != 0) {
                Object tariffDescription = feedTariffHolderData != null ? feedTariffHolderData.getTariffDescription() : null;
                updateRegistration(0, tariffDescription);
                if (tariffDescription != null) {
                    charSequence = (String) tariffDescription.get();
                    if ((j & 82) != 0) {
                        tariffText = feedTariffHolderData == null ? feedTariffHolderData.getTariffText() : null;
                        updateRegistration(1, tariffText);
                        if (tariffText != null) {
                            charSequence2 = (String) tariffText.get();
                            if ((j & 84) != 0) {
                                buttonText = feedTariffHolderData == null ? feedTariffHolderData.getButtonText() : null;
                                updateRegistration(2, buttonText);
                                if (buttonText != null) {
                                    charSequence3 = (String) buttonText.get();
                                }
                            }
                            charSequence3 = null;
                        }
                    }
                    charSequence2 = null;
                    if ((j & 84) != 0) {
                        if (feedTariffHolderData == null) {
                        }
                        updateRegistration(2, buttonText);
                        if (buttonText != null) {
                            charSequence3 = (String) buttonText.get();
                        }
                    }
                    charSequence3 = null;
                }
            }
            charSequence = null;
            if ((j & 82) != 0) {
                if (feedTariffHolderData == null) {
                }
                updateRegistration(1, tariffText);
                if (tariffText != null) {
                    charSequence2 = (String) tariffText.get();
                    if ((j & 84) != 0) {
                        if (feedTariffHolderData == null) {
                        }
                        updateRegistration(2, buttonText);
                        if (buttonText != null) {
                            charSequence3 = (String) buttonText.get();
                        }
                    }
                    charSequence3 = null;
                }
            }
            charSequence2 = null;
            if ((j & 84) != 0) {
                if (feedTariffHolderData == null) {
                }
                updateRegistration(2, buttonText);
                if (buttonText != null) {
                    charSequence3 = (String) buttonText.get();
                }
            }
            charSequence3 = null;
        } else {
            charSequence3 = null;
            charSequence = null;
            charSequence2 = null;
        }
        if ((j & 64) != 0) {
            feedItemSalaryTariffsBinding.mboundView3.setOnClickListener(feedItemSalaryTariffsBinding.mCallback50);
        }
        if ((j & 84) != 0) {
            TextViewBindingAdapter.setText(feedItemSalaryTariffsBinding.mboundView3, charSequence3);
        }
        if ((j & 81) != 0) {
            TextViewBindingAdapter.setText(feedItemSalaryTariffsBinding.tariffDescription, charSequence);
        }
        if ((j & 82) != 0) {
            TextViewBindingAdapter.setText(feedItemSalaryTariffsBinding.tariffText, charSequence2);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mOperation;
        view = this.mListener;
        if ((view != null ? 1 : null) != null) {
            view.onTariffButtonClicked(i);
        }
    }

    public static FeedItemSalaryTariffsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemSalaryTariffsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FeedItemSalaryTariffsBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.feed_item_salary_tariffs, viewGroup, z, dataBindingComponent);
    }

    public static FeedItemSalaryTariffsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemSalaryTariffsBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.feed_item_salary_tariffs, null, false), dataBindingComponent);
    }

    public static FeedItemSalaryTariffsBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemSalaryTariffsBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/feed_item_salary_tariffs_0".equals(view.getTag())) {
            return new FeedItemSalaryTariffsBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

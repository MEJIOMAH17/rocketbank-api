package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.support.design.widget.CoordinatorLayout;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.core.widgets.SquareLayout;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.operation.model.OperationReceiptModel;
import ru.rocketbank.r2d2.root.operation.OperationActionHandler;
import ru.rocketbank.r2d2.widgets.operations.OperationIconView;

public class ActivityOperationModernReceiptBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketAutofitTextView amount;
    public final FrameLayout header;
    public final View headerOverlay;
    public final OperationIconView iconImage;
    public final FrameLayout iconLayout;
    private final OnClickListener mCallback10;
    private final OnClickListener mCallback11;
    private long mDirtyFlags = -1;
    private OperationActionHandler mHandler;
    private OperationReceiptModel mReceipt;
    private final CoordinatorLayout mboundView0;
    private final RocketTextView mboundView2;
    private final RocketTextView mboundView3;
    public final ObservableRecyclerView operation;
    public final OperationIconView operationIcon;
    public final View overlay;
    public final Toolbar realToolbar;
    public final RocketTextView realToolbarTitle;
    public final RocketTextView rocketMoney;
    public final SquareLayout sputnik;
    public final Toolbar toolbar;
    public final TextureView video;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.video, 8);
        sViewsWithIds.put(C0859R.id.overlay, 9);
        sViewsWithIds.put(C0859R.id.icon_layout, 10);
        sViewsWithIds.put(C0859R.id.operationIcon, 11);
        sViewsWithIds.put(C0859R.id.sputnik, 12);
        sViewsWithIds.put(C0859R.id.toolbar, 13);
        sViewsWithIds.put(C0859R.id.header_overlay, 14);
        sViewsWithIds.put(C0859R.id.iconImage, 15);
        sViewsWithIds.put(C0859R.id.operation, 16);
    }

    public ActivityOperationModernReceiptBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 7);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 17, sIncludes, sViewsWithIds);
        this.amount = (RocketAutofitTextView) dataBindingComponent[4];
        this.amount.setTag(null);
        this.header = (FrameLayout) dataBindingComponent[1];
        this.header.setTag(null);
        this.headerOverlay = (View) dataBindingComponent[14];
        this.iconImage = (OperationIconView) dataBindingComponent[15];
        this.iconLayout = (FrameLayout) dataBindingComponent[10];
        this.mboundView0 = (CoordinatorLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView2 = (RocketTextView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.mboundView3 = (RocketTextView) dataBindingComponent[3];
        this.mboundView3.setTag(null);
        this.operation = (ObservableRecyclerView) dataBindingComponent[16];
        this.operationIcon = (OperationIconView) dataBindingComponent[11];
        this.overlay = (View) dataBindingComponent[9];
        this.realToolbar = (Toolbar) dataBindingComponent[6];
        this.realToolbar.setTag(null);
        this.realToolbarTitle = (RocketTextView) dataBindingComponent[7];
        this.realToolbarTitle.setTag(null);
        this.rocketMoney = (RocketTextView) dataBindingComponent[5];
        this.rocketMoney.setTag(null);
        this.sputnik = (SquareLayout) dataBindingComponent[12];
        this.toolbar = (Toolbar) dataBindingComponent[13];
        this.video = (TextureView) dataBindingComponent[8];
        setRootTag(view);
        this.mCallback11 = new android.databinding.generated.callback.OnClickListener(this, 2);
        this.mCallback10 = new android.databinding.generated.callback.OnClickListener(this, 1);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 512;
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
            setHandler((OperationActionHandler) obj);
        } else if (69 != i) {
            return false;
        } else {
            setReceipt((OperationReceiptModel) obj);
        }
        return true;
    }

    public void setHandler(OperationActionHandler operationActionHandler) {
        this.mHandler = operationActionHandler;
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public OperationActionHandler getHandler() {
        return this.mHandler;
    }

    public void setReceipt(OperationReceiptModel operationReceiptModel) {
        this.mReceipt = operationReceiptModel;
        synchronized (this) {
            this.mDirtyFlags |= 256;
        }
        notifyPropertyChanged(69);
        super.requestRebind();
    }

    public OperationReceiptModel getReceipt() {
        return this.mReceipt;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeReceiptRocketAmountValue((ObservableField) obj, i2);
            case 1:
                return onChangeReceiptToolbarTranslation((ObservableInt) obj, i2);
            case 2:
                return onChangeReceiptDataValue((ObservableField) obj, i2);
            case 3:
                return onChangeReceiptParallaxTranslation((ObservableInt) obj, i2);
            case 4:
                return onChangeReceiptPlaceName((ObservableField) obj, i2);
            case 5:
                return onChangeReceiptAmountValue((ObservableField) obj, i2);
            case 6:
                return onChangeReceiptTitleAmountValue((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeReceiptRocketAmountValue(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeReceiptToolbarTranslation(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeReceiptDataValue(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeReceiptParallaxTranslation(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeReceiptPlaceName(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeReceiptAmountValue(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    private boolean onChangeReceiptTitleAmountValue(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        ActivityOperationModernReceiptBinding activityOperationModernReceiptBinding = this;
        synchronized (this) {
            try {
                j = activityOperationModernReceiptBinding.mDirtyFlags;
                long j2 = 0;
                activityOperationModernReceiptBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        OperationReceiptModel operationReceiptModel = activityOperationModernReceiptBinding.mReceipt;
        long j3 = 784;
        long j4 = 776;
        long j5 = 772;
        long j6 = 770;
        long j7 = 769;
        Object obj = null;
        CharSequence charSequence;
        int i;
        CharSequence charSequence2;
        int i2;
        CharSequence charSequence3;
        CharSequence charSequence4;
        CharSequence charSequence5;
        if ((j & 895) != 0) {
            ObservableInt toolbarTranslation;
            Object dataValue;
            Object parallaxTranslation;
            Object placeName;
            Object amountValue;
            Object titleAmountValue;
            if ((j & 769) != 0) {
                Object rocketAmountValue = operationReceiptModel != null ? operationReceiptModel.getRocketAmountValue() : null;
                updateRegistration(0, rocketAmountValue);
                if (rocketAmountValue != null) {
                    charSequence = (String) rocketAmountValue.get();
                    if ((j & 770) != 0) {
                        if (operationReceiptModel == null) {
                            toolbarTranslation = operationReceiptModel.getToolbarTranslation();
                        } else {
                            obj = null;
                        }
                        updateRegistration(1, obj);
                        if (obj != null) {
                            i = obj.get();
                            if ((j & j5) != j2) {
                                dataValue = operationReceiptModel == null ? operationReceiptModel.getDataValue() : null;
                                updateRegistration(2, dataValue);
                                if (dataValue != null) {
                                    charSequence2 = (String) dataValue.get();
                                    if ((j & j4) != j2) {
                                        parallaxTranslation = operationReceiptModel == null ? operationReceiptModel.getParallaxTranslation() : null;
                                        updateRegistration(3, parallaxTranslation);
                                        if (parallaxTranslation != null) {
                                            i2 = parallaxTranslation.get();
                                            if ((j & j3) != j2) {
                                                placeName = operationReceiptModel == null ? operationReceiptModel.getPlaceName() : null;
                                                updateRegistration(4, placeName);
                                                if (placeName != null) {
                                                    charSequence3 = (String) placeName.get();
                                                    if ((j & 800) != j2) {
                                                        amountValue = operationReceiptModel == null ? operationReceiptModel.getAmountValue() : null;
                                                        updateRegistration(5, amountValue);
                                                        if (amountValue != null) {
                                                            charSequence4 = (String) amountValue.get();
                                                            if ((j & 832) != j2) {
                                                                titleAmountValue = operationReceiptModel == null ? operationReceiptModel.getTitleAmountValue() : null;
                                                                updateRegistration(6, titleAmountValue);
                                                                if (titleAmountValue != null) {
                                                                    charSequence5 = (String) titleAmountValue.get();
                                                                    if ((j & 512) != j2) {
                                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                                    }
                                                                    if ((j & 800) != j2) {
                                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                                    }
                                                                    if ((j & 776) != j2 && getBuildSdkInt() >= 11) {
                                                                        activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                                    }
                                                                    if ((j & 784) != j2) {
                                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                                    }
                                                                    if ((j & j5) != j2) {
                                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                                    }
                                                                    if ((j & j6) != j2 && getBuildSdkInt() >= 11) {
                                                                        activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                                    }
                                                                    if ((j & 832) != j2) {
                                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                                    }
                                                                    if ((j & j7) != j2) {
                                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                                    }
                                                                }
                                                            }
                                                            charSequence5 = null;
                                                            if ((j & 512) != j2) {
                                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                            }
                                                            if ((j & 800) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                            }
                                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                            if ((j & 784) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                            }
                                                            if ((j & j5) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                            }
                                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                            if ((j & 832) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                            }
                                                            if ((j & j7) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                            }
                                                        }
                                                    }
                                                    charSequence4 = null;
                                                    if ((j & 832) != j2) {
                                                        if (operationReceiptModel == null) {
                                                        }
                                                        updateRegistration(6, titleAmountValue);
                                                        if (titleAmountValue != null) {
                                                            charSequence5 = (String) titleAmountValue.get();
                                                            if ((j & 512) != j2) {
                                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                            }
                                                            if ((j & 800) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                            }
                                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                            if ((j & 784) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                            }
                                                            if ((j & j5) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                            }
                                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                            if ((j & 832) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                            }
                                                            if ((j & j7) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                            }
                                                        }
                                                    }
                                                    charSequence5 = null;
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence3 = null;
                                            if ((j & 800) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(5, amountValue);
                                                if (amountValue != null) {
                                                    charSequence4 = (String) amountValue.get();
                                                    if ((j & 832) != j2) {
                                                        if (operationReceiptModel == null) {
                                                        }
                                                        updateRegistration(6, titleAmountValue);
                                                        if (titleAmountValue != null) {
                                                            charSequence5 = (String) titleAmountValue.get();
                                                            if ((j & 512) != j2) {
                                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                            }
                                                            if ((j & 800) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                            }
                                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                            if ((j & 784) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                            }
                                                            if ((j & j5) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                            }
                                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                            if ((j & 832) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                            }
                                                            if ((j & j7) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                            }
                                                        }
                                                    }
                                                    charSequence5 = null;
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence4 = null;
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    i2 = 0;
                                    if ((j & j3) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(4, placeName);
                                        if (placeName != null) {
                                            charSequence3 = (String) placeName.get();
                                            if ((j & 800) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(5, amountValue);
                                                if (amountValue != null) {
                                                    charSequence4 = (String) amountValue.get();
                                                    if ((j & 832) != j2) {
                                                        if (operationReceiptModel == null) {
                                                        }
                                                        updateRegistration(6, titleAmountValue);
                                                        if (titleAmountValue != null) {
                                                            charSequence5 = (String) titleAmountValue.get();
                                                            if ((j & 512) != j2) {
                                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                            }
                                                            if ((j & 800) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                            }
                                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                            if ((j & 784) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                            }
                                                            if ((j & j5) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                            }
                                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                            if ((j & 832) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                            }
                                                            if ((j & j7) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                            }
                                                        }
                                                    }
                                                    charSequence5 = null;
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence4 = null;
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence3 = null;
                                    if ((j & 800) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(5, amountValue);
                                        if (amountValue != null) {
                                            charSequence4 = (String) amountValue.get();
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence4 = null;
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence2 = null;
                            if ((j & j4) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(3, parallaxTranslation);
                                if (parallaxTranslation != null) {
                                    i2 = parallaxTranslation.get();
                                    if ((j & j3) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(4, placeName);
                                        if (placeName != null) {
                                            charSequence3 = (String) placeName.get();
                                            if ((j & 800) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(5, amountValue);
                                                if (amountValue != null) {
                                                    charSequence4 = (String) amountValue.get();
                                                    if ((j & 832) != j2) {
                                                        if (operationReceiptModel == null) {
                                                        }
                                                        updateRegistration(6, titleAmountValue);
                                                        if (titleAmountValue != null) {
                                                            charSequence5 = (String) titleAmountValue.get();
                                                            if ((j & 512) != j2) {
                                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                            }
                                                            if ((j & 800) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                            }
                                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                            if ((j & 784) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                            }
                                                            if ((j & j5) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                            }
                                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                            if ((j & 832) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                            }
                                                            if ((j & j7) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                            }
                                                        }
                                                    }
                                                    charSequence5 = null;
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence4 = null;
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence3 = null;
                                    if ((j & 800) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(5, amountValue);
                                        if (amountValue != null) {
                                            charSequence4 = (String) amountValue.get();
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence4 = null;
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            i2 = 0;
                            if ((j & j3) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(4, placeName);
                                if (placeName != null) {
                                    charSequence3 = (String) placeName.get();
                                    if ((j & 800) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(5, amountValue);
                                        if (amountValue != null) {
                                            charSequence4 = (String) amountValue.get();
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence4 = null;
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence3 = null;
                            if ((j & 800) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(5, amountValue);
                                if (amountValue != null) {
                                    charSequence4 = (String) amountValue.get();
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence4 = null;
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    i = 0;
                    if ((j & j5) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(2, dataValue);
                        if (dataValue != null) {
                            charSequence2 = (String) dataValue.get();
                            if ((j & j4) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(3, parallaxTranslation);
                                if (parallaxTranslation != null) {
                                    i2 = parallaxTranslation.get();
                                    if ((j & j3) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(4, placeName);
                                        if (placeName != null) {
                                            charSequence3 = (String) placeName.get();
                                            if ((j & 800) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(5, amountValue);
                                                if (amountValue != null) {
                                                    charSequence4 = (String) amountValue.get();
                                                    if ((j & 832) != j2) {
                                                        if (operationReceiptModel == null) {
                                                        }
                                                        updateRegistration(6, titleAmountValue);
                                                        if (titleAmountValue != null) {
                                                            charSequence5 = (String) titleAmountValue.get();
                                                            if ((j & 512) != j2) {
                                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                            }
                                                            if ((j & 800) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                            }
                                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                            if ((j & 784) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                            }
                                                            if ((j & j5) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                            }
                                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                            if ((j & 832) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                            }
                                                            if ((j & j7) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                            }
                                                        }
                                                    }
                                                    charSequence5 = null;
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence4 = null;
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence3 = null;
                                    if ((j & 800) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(5, amountValue);
                                        if (amountValue != null) {
                                            charSequence4 = (String) amountValue.get();
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence4 = null;
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            i2 = 0;
                            if ((j & j3) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(4, placeName);
                                if (placeName != null) {
                                    charSequence3 = (String) placeName.get();
                                    if ((j & 800) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(5, amountValue);
                                        if (amountValue != null) {
                                            charSequence4 = (String) amountValue.get();
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence4 = null;
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence3 = null;
                            if ((j & 800) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(5, amountValue);
                                if (amountValue != null) {
                                    charSequence4 = (String) amountValue.get();
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence4 = null;
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence2 = null;
                    if ((j & j4) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(3, parallaxTranslation);
                        if (parallaxTranslation != null) {
                            i2 = parallaxTranslation.get();
                            if ((j & j3) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(4, placeName);
                                if (placeName != null) {
                                    charSequence3 = (String) placeName.get();
                                    if ((j & 800) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(5, amountValue);
                                        if (amountValue != null) {
                                            charSequence4 = (String) amountValue.get();
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence4 = null;
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence3 = null;
                            if ((j & 800) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(5, amountValue);
                                if (amountValue != null) {
                                    charSequence4 = (String) amountValue.get();
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence4 = null;
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    i2 = 0;
                    if ((j & j3) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(4, placeName);
                        if (placeName != null) {
                            charSequence3 = (String) placeName.get();
                            if ((j & 800) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(5, amountValue);
                                if (amountValue != null) {
                                    charSequence4 = (String) amountValue.get();
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence4 = null;
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence3 = null;
                    if ((j & 800) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(5, amountValue);
                        if (amountValue != null) {
                            charSequence4 = (String) amountValue.get();
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence4 = null;
                    if ((j & 832) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(6, titleAmountValue);
                        if (titleAmountValue != null) {
                            charSequence5 = (String) titleAmountValue.get();
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence5 = null;
                    if ((j & 512) != j2) {
                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                    }
                    if ((j & 800) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                    }
                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                    if ((j & 784) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                    }
                    if ((j & j5) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                    }
                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                    if ((j & 832) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                    }
                    if ((j & j7) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                    }
                }
            }
            charSequence = null;
            if ((j & 770) != 0) {
                if (operationReceiptModel == null) {
                    obj = null;
                } else {
                    toolbarTranslation = operationReceiptModel.getToolbarTranslation();
                }
                updateRegistration(1, obj);
                if (obj != null) {
                    i = obj.get();
                    if ((j & j5) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(2, dataValue);
                        if (dataValue != null) {
                            charSequence2 = (String) dataValue.get();
                            if ((j & j4) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(3, parallaxTranslation);
                                if (parallaxTranslation != null) {
                                    i2 = parallaxTranslation.get();
                                    if ((j & j3) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(4, placeName);
                                        if (placeName != null) {
                                            charSequence3 = (String) placeName.get();
                                            if ((j & 800) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(5, amountValue);
                                                if (amountValue != null) {
                                                    charSequence4 = (String) amountValue.get();
                                                    if ((j & 832) != j2) {
                                                        if (operationReceiptModel == null) {
                                                        }
                                                        updateRegistration(6, titleAmountValue);
                                                        if (titleAmountValue != null) {
                                                            charSequence5 = (String) titleAmountValue.get();
                                                            if ((j & 512) != j2) {
                                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                            }
                                                            if ((j & 800) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                            }
                                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                            if ((j & 784) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                            }
                                                            if ((j & j5) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                            }
                                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                            if ((j & 832) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                            }
                                                            if ((j & j7) != j2) {
                                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                            }
                                                        }
                                                    }
                                                    charSequence5 = null;
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence4 = null;
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence3 = null;
                                    if ((j & 800) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(5, amountValue);
                                        if (amountValue != null) {
                                            charSequence4 = (String) amountValue.get();
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence4 = null;
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            i2 = 0;
                            if ((j & j3) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(4, placeName);
                                if (placeName != null) {
                                    charSequence3 = (String) placeName.get();
                                    if ((j & 800) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(5, amountValue);
                                        if (amountValue != null) {
                                            charSequence4 = (String) amountValue.get();
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence4 = null;
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence3 = null;
                            if ((j & 800) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(5, amountValue);
                                if (amountValue != null) {
                                    charSequence4 = (String) amountValue.get();
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence4 = null;
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence2 = null;
                    if ((j & j4) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(3, parallaxTranslation);
                        if (parallaxTranslation != null) {
                            i2 = parallaxTranslation.get();
                            if ((j & j3) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(4, placeName);
                                if (placeName != null) {
                                    charSequence3 = (String) placeName.get();
                                    if ((j & 800) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(5, amountValue);
                                        if (amountValue != null) {
                                            charSequence4 = (String) amountValue.get();
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence4 = null;
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence3 = null;
                            if ((j & 800) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(5, amountValue);
                                if (amountValue != null) {
                                    charSequence4 = (String) amountValue.get();
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence4 = null;
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    i2 = 0;
                    if ((j & j3) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(4, placeName);
                        if (placeName != null) {
                            charSequence3 = (String) placeName.get();
                            if ((j & 800) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(5, amountValue);
                                if (amountValue != null) {
                                    charSequence4 = (String) amountValue.get();
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence4 = null;
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence3 = null;
                    if ((j & 800) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(5, amountValue);
                        if (amountValue != null) {
                            charSequence4 = (String) amountValue.get();
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence4 = null;
                    if ((j & 832) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(6, titleAmountValue);
                        if (titleAmountValue != null) {
                            charSequence5 = (String) titleAmountValue.get();
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence5 = null;
                    if ((j & 512) != j2) {
                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                    }
                    if ((j & 800) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                    }
                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                    if ((j & 784) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                    }
                    if ((j & j5) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                    }
                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                    if ((j & 832) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                    }
                    if ((j & j7) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                    }
                }
            }
            i = 0;
            if ((j & j5) != j2) {
                if (operationReceiptModel == null) {
                }
                updateRegistration(2, dataValue);
                if (dataValue != null) {
                    charSequence2 = (String) dataValue.get();
                    if ((j & j4) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(3, parallaxTranslation);
                        if (parallaxTranslation != null) {
                            i2 = parallaxTranslation.get();
                            if ((j & j3) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(4, placeName);
                                if (placeName != null) {
                                    charSequence3 = (String) placeName.get();
                                    if ((j & 800) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(5, amountValue);
                                        if (amountValue != null) {
                                            charSequence4 = (String) amountValue.get();
                                            if ((j & 832) != j2) {
                                                if (operationReceiptModel == null) {
                                                }
                                                updateRegistration(6, titleAmountValue);
                                                if (titleAmountValue != null) {
                                                    charSequence5 = (String) titleAmountValue.get();
                                                    if ((j & 512) != j2) {
                                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                                    }
                                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                                    if ((j & 784) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                                    }
                                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                                    }
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence4 = null;
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence3 = null;
                            if ((j & 800) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(5, amountValue);
                                if (amountValue != null) {
                                    charSequence4 = (String) amountValue.get();
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence4 = null;
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    i2 = 0;
                    if ((j & j3) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(4, placeName);
                        if (placeName != null) {
                            charSequence3 = (String) placeName.get();
                            if ((j & 800) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(5, amountValue);
                                if (amountValue != null) {
                                    charSequence4 = (String) amountValue.get();
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence4 = null;
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence3 = null;
                    if ((j & 800) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(5, amountValue);
                        if (amountValue != null) {
                            charSequence4 = (String) amountValue.get();
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence4 = null;
                    if ((j & 832) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(6, titleAmountValue);
                        if (titleAmountValue != null) {
                            charSequence5 = (String) titleAmountValue.get();
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence5 = null;
                    if ((j & 512) != j2) {
                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                    }
                    if ((j & 800) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                    }
                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                    if ((j & 784) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                    }
                    if ((j & j5) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                    }
                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                    if ((j & 832) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                    }
                    if ((j & j7) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                    }
                }
            }
            charSequence2 = null;
            if ((j & j4) != j2) {
                if (operationReceiptModel == null) {
                }
                updateRegistration(3, parallaxTranslation);
                if (parallaxTranslation != null) {
                    i2 = parallaxTranslation.get();
                    if ((j & j3) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(4, placeName);
                        if (placeName != null) {
                            charSequence3 = (String) placeName.get();
                            if ((j & 800) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(5, amountValue);
                                if (amountValue != null) {
                                    charSequence4 = (String) amountValue.get();
                                    if ((j & 832) != j2) {
                                        if (operationReceiptModel == null) {
                                        }
                                        updateRegistration(6, titleAmountValue);
                                        if (titleAmountValue != null) {
                                            charSequence5 = (String) titleAmountValue.get();
                                            if ((j & 512) != j2) {
                                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                            }
                                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                            if ((j & 784) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                            }
                                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence4 = null;
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence3 = null;
                    if ((j & 800) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(5, amountValue);
                        if (amountValue != null) {
                            charSequence4 = (String) amountValue.get();
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence4 = null;
                    if ((j & 832) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(6, titleAmountValue);
                        if (titleAmountValue != null) {
                            charSequence5 = (String) titleAmountValue.get();
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence5 = null;
                    if ((j & 512) != j2) {
                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                    }
                    if ((j & 800) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                    }
                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                    if ((j & 784) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                    }
                    if ((j & j5) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                    }
                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                    if ((j & 832) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                    }
                    if ((j & j7) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                    }
                }
            }
            i2 = 0;
            if ((j & j3) != j2) {
                if (operationReceiptModel == null) {
                }
                updateRegistration(4, placeName);
                if (placeName != null) {
                    charSequence3 = (String) placeName.get();
                    if ((j & 800) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(5, amountValue);
                        if (amountValue != null) {
                            charSequence4 = (String) amountValue.get();
                            if ((j & 832) != j2) {
                                if (operationReceiptModel == null) {
                                }
                                updateRegistration(6, titleAmountValue);
                                if (titleAmountValue != null) {
                                    charSequence5 = (String) titleAmountValue.get();
                                    if ((j & 512) != j2) {
                                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                                    }
                                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                                    if ((j & 784) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                                    }
                                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                                    }
                                }
                            }
                            charSequence5 = null;
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence4 = null;
                    if ((j & 832) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(6, titleAmountValue);
                        if (titleAmountValue != null) {
                            charSequence5 = (String) titleAmountValue.get();
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence5 = null;
                    if ((j & 512) != j2) {
                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                    }
                    if ((j & 800) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                    }
                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                    if ((j & 784) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                    }
                    if ((j & j5) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                    }
                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                    if ((j & 832) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                    }
                    if ((j & j7) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                    }
                }
            }
            charSequence3 = null;
            if ((j & 800) != j2) {
                if (operationReceiptModel == null) {
                }
                updateRegistration(5, amountValue);
                if (amountValue != null) {
                    charSequence4 = (String) amountValue.get();
                    if ((j & 832) != j2) {
                        if (operationReceiptModel == null) {
                        }
                        updateRegistration(6, titleAmountValue);
                        if (titleAmountValue != null) {
                            charSequence5 = (String) titleAmountValue.get();
                            if ((j & 512) != j2) {
                                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                            }
                            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                            if ((j & 784) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                            }
                            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                            }
                        }
                    }
                    charSequence5 = null;
                    if ((j & 512) != j2) {
                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                    }
                    if ((j & 800) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                    }
                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                    if ((j & 784) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                    }
                    if ((j & j5) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                    }
                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                    if ((j & 832) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                    }
                    if ((j & j7) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                    }
                }
            }
            charSequence4 = null;
            if ((j & 832) != j2) {
                if (operationReceiptModel == null) {
                }
                updateRegistration(6, titleAmountValue);
                if (titleAmountValue != null) {
                    charSequence5 = (String) titleAmountValue.get();
                    if ((j & 512) != j2) {
                        activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                        activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
                    }
                    if ((j & 800) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
                    }
                    activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
                    if ((j & 784) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
                    }
                    if ((j & j5) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
                    }
                    activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
                    if ((j & 832) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
                    }
                    if ((j & j7) != j2) {
                        TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
                    }
                }
            }
            charSequence5 = null;
            if ((j & 512) != j2) {
                activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
                activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
            }
            if ((j & 800) != j2) {
                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
            }
            activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
            if ((j & 784) != j2) {
                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
            }
            if ((j & j5) != j2) {
                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
            }
            activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
            if ((j & 832) != j2) {
                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
            }
            if ((j & j7) != j2) {
                TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
            }
        }
        charSequence5 = null;
        charSequence = null;
        i = 0;
        charSequence2 = null;
        i2 = 0;
        charSequence3 = null;
        charSequence4 = null;
        if ((j & 512) != j2) {
            activityOperationModernReceiptBinding.amount.setOnClickListener(activityOperationModernReceiptBinding.mCallback10);
            activityOperationModernReceiptBinding.rocketMoney.setOnClickListener(activityOperationModernReceiptBinding.mCallback11);
        }
        if ((j & 800) != j2) {
            TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.amount, charSequence4);
        }
        activityOperationModernReceiptBinding.header.setTranslationY((float) i2);
        if ((j & 784) != j2) {
            TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView2, charSequence3);
        }
        if ((j & j5) != j2) {
            TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.mboundView3, charSequence2);
        }
        activityOperationModernReceiptBinding.realToolbar.setTranslationY((float) i);
        if ((j & 832) != j2) {
            TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.realToolbarTitle, charSequence5);
        }
        if ((j & j7) != j2) {
            TextViewBindingAdapter.setText(activityOperationModernReceiptBinding.rocketMoney, charSequence);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        view = null;
        switch (i) {
            case 1:
                i = this.mHandler;
                if (i != 0) {
                    view = 1;
                }
                if (view != null) {
                    i.onMoneyPressed();
                    break;
                }
                break;
            case 2:
                i = this.mHandler;
                if (i != 0) {
                    view = 1;
                }
                if (view != null) {
                    i.onRocketMoneyPressed();
                    return;
                }
                break;
            default:
                break;
        }
    }

    public static ActivityOperationModernReceiptBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityOperationModernReceiptBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityOperationModernReceiptBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_operation_modern_receipt, viewGroup, z, dataBindingComponent);
    }

    public static ActivityOperationModernReceiptBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityOperationModernReceiptBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_operation_modern_receipt, null, false), dataBindingComponent);
    }

    public static ActivityOperationModernReceiptBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityOperationModernReceiptBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_operation_modern_receipt_0".equals(view.getTag())) {
            return new ActivityOperationModernReceiptBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ViewSwitcher;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.AmountCardBinding;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;
import ru.rocketbank.r2d2.widget.AccountWidget;

public class ActivityCardTransferAmountBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final AccountWidget accountWidget;
    public final RocketEditText amount;
    public final ImageView backround;
    public final RocketTextView cardName;
    public final RocketTextView cardNumber;
    public final RocketTextView comment;
    public final CardView commentCard;
    public final RocketTextView commission;
    public final ViewSwitcher commissionSwitcher;
    public final CardView fullLoogo;
    private AmountCardBinding mAmountBinding;
    private long mDirtyFlags = -1;
    private ToolbarWithButtonHandler mHandler;
    private ToolbarWithButtonData mToolbarBinding;
    private final CoordinatorLayout mboundView0;
    private final RocketTextView mboundView3;
    public final NestedScrollView scroll;
    public final LayoutToolbarWithButtonBinding toolbarBlock;

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(14);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"layout_toolbar_with_button"}, new int[]{7}, new int[]{C0859R.layout.layout_toolbar_with_button});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.scroll, 8);
        sViewsWithIds.put(C0859R.id.accountWidget, 9);
        sViewsWithIds.put(C0859R.id.fullLoogo, 10);
        sViewsWithIds.put(C0859R.id.backround, 11);
        sViewsWithIds.put(C0859R.id.amount, 12);
        sViewsWithIds.put(C0859R.id.commission_switcher, 13);
    }

    public ActivityCardTransferAmountBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 7);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 14, sIncludes, sViewsWithIds);
        this.accountWidget = (AccountWidget) dataBindingComponent[9];
        this.amount = (RocketEditText) dataBindingComponent[12];
        this.backround = (ImageView) dataBindingComponent[11];
        this.cardName = (RocketTextView) dataBindingComponent[1];
        this.cardName.setTag(null);
        this.cardNumber = (RocketTextView) dataBindingComponent[2];
        this.cardNumber.setTag(null);
        this.comment = (RocketTextView) dataBindingComponent[6];
        this.comment.setTag(null);
        this.commentCard = (CardView) dataBindingComponent[5];
        this.commentCard.setTag(null);
        this.commission = (RocketTextView) dataBindingComponent[4];
        this.commission.setTag(null);
        this.commissionSwitcher = (ViewSwitcher) dataBindingComponent[13];
        this.fullLoogo = (CardView) dataBindingComponent[10];
        this.mboundView0 = (CoordinatorLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView3 = (RocketTextView) dataBindingComponent[3];
        this.mboundView3.setTag(null);
        this.scroll = (NestedScrollView) dataBindingComponent[8];
        this.toolbarBlock = (LayoutToolbarWithButtonBinding) dataBindingComponent[7];
        setContainedBinding(this.toolbarBlock);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        }
        this.toolbarBlock.invalidateAll();
        requestRebind();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean hasPendingBindings() {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.mDirtyFlags;	 Catch:{ all -> 0x0018 }
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        r0 = 1;
        if (r4 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        return r0;
    L_0x000c:
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        r1 = r5.toolbarBlock;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0016;
    L_0x0015:
        return r0;
    L_0x0016:
        r0 = 0;
        return r0;
    L_0x0018:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.ActivityCardTransferAmountBinding.hasPendingBindings():boolean");
    }

    public boolean setVariable(int i, Object obj) {
        if (84 == i) {
            setToolbarBinding((ToolbarWithButtonData) obj);
        } else if (6 == i) {
            setAmountBinding((AmountCardBinding) obj);
        } else if (40 != i) {
            return false;
        } else {
            setHandler((ToolbarWithButtonHandler) obj);
        }
        return true;
    }

    public void setToolbarBinding(ToolbarWithButtonData toolbarWithButtonData) {
        this.mToolbarBinding = toolbarWithButtonData;
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        notifyPropertyChanged(84);
        super.requestRebind();
    }

    public ToolbarWithButtonData getToolbarBinding() {
        return this.mToolbarBinding;
    }

    public void setAmountBinding(AmountCardBinding amountCardBinding) {
        this.mAmountBinding = amountCardBinding;
        synchronized (this) {
            this.mDirtyFlags |= 256;
        }
        notifyPropertyChanged(6);
        super.requestRebind();
    }

    public AmountCardBinding getAmountBinding() {
        return this.mAmountBinding;
    }

    public void setHandler(ToolbarWithButtonHandler toolbarWithButtonHandler) {
        this.mHandler = toolbarWithButtonHandler;
        synchronized (this) {
            this.mDirtyFlags |= 512;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public ToolbarWithButtonHandler getHandler() {
        return this.mHandler;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.toolbarBlock.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeAmountBindingComment((ObservableField) obj, i2);
            case 1:
                return onChangeAmountBindingCommentVisibility((ObservableInt) obj, i2);
            case 2:
                return onChangeAmountBindingCardNumber((ObservableField) obj, i2);
            case 3:
                return onChangeAmountBindingCommission((ObservableField) obj, i2);
            case 4:
                return onChangeAmountBindingCardName((ObservableField) obj, i2);
            case 5:
                return onChangeToolbarBlock((LayoutToolbarWithButtonBinding) obj, i2);
            case 6:
                return onChangeAmountBindingAmountTargetText((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeAmountBindingComment(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeAmountBindingCommentVisibility(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeAmountBindingCardNumber(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeAmountBindingCommission(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeAmountBindingCardName(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeToolbarBlock(LayoutToolbarWithButtonBinding layoutToolbarWithButtonBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    private boolean onChangeAmountBindingAmountTargetText(ObservableField<String> observableField, int i) {
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
        ActivityCardTransferAmountBinding activityCardTransferAmountBinding = this;
        synchronized (this) {
            try {
                j = activityCardTransferAmountBinding.mDirtyFlags;
                long j2 = 0;
                activityCardTransferAmountBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        ToolbarWithButtonData toolbarWithButtonData = activityCardTransferAmountBinding.mToolbarBinding;
        AmountCardBinding amountCardBinding = activityCardTransferAmountBinding.mAmountBinding;
        ToolbarWithButtonHandler toolbarWithButtonHandler = activityCardTransferAmountBinding.mHandler;
        long j3 = 1288;
        long j4 = 1284;
        long j5 = 1282;
        long j6 = 1281;
        Object obj = null;
        CharSequence charSequence;
        int i;
        CharSequence charSequence2;
        CharSequence charSequence3;
        CharSequence charSequence4;
        CharSequence charSequence5;
        if ((j & 1375) != 0) {
            ObservableInt commentVisibility;
            Object cardNumber;
            Object commission;
            Object cardName;
            Object amountTargetText;
            if ((j & 1281) != 0) {
                Object comment = amountCardBinding != null ? amountCardBinding.getComment() : null;
                updateRegistration(0, comment);
                if (comment != null) {
                    charSequence = (String) comment.get();
                    if ((j & 1282) != 0) {
                        if (amountCardBinding == null) {
                            commentVisibility = amountCardBinding.getCommentVisibility();
                        } else {
                            obj = null;
                        }
                        updateRegistration(1, obj);
                        if (obj != null) {
                            i = obj.get();
                            if ((j & j4) != j2) {
                                cardNumber = amountCardBinding == null ? amountCardBinding.getCardNumber() : null;
                                updateRegistration(2, cardNumber);
                                if (cardNumber != null) {
                                    charSequence2 = (String) cardNumber.get();
                                    if ((j & j3) != j2) {
                                        commission = amountCardBinding == null ? amountCardBinding.getCommission() : null;
                                        updateRegistration(3, commission);
                                        if (commission != null) {
                                            charSequence3 = (String) commission.get();
                                            if ((j & 1296) != j2) {
                                                cardName = amountCardBinding == null ? amountCardBinding.getCardName() : null;
                                                updateRegistration(4, cardName);
                                                if (cardName != null) {
                                                    charSequence4 = (String) cardName.get();
                                                    if ((j & 1344) != j2) {
                                                        amountTargetText = amountCardBinding == null ? amountCardBinding.getAmountTargetText() : null;
                                                        updateRegistration(6, amountTargetText);
                                                        if (amountTargetText != null) {
                                                            charSequence5 = (String) amountTargetText.get();
                                                            if ((j & 1296) != j2) {
                                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                                            }
                                                            if ((j & j4) != j2) {
                                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                                            }
                                                            if ((j & j6) != j2) {
                                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                                            }
                                                            if ((j & j5) != j2) {
                                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                                            }
                                                            if ((j & 1288) != j2) {
                                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                                            }
                                                            if ((j & 1344) != j2) {
                                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                                            }
                                                            if ((j & 1536) != j2) {
                                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                                            }
                                                            if ((j & 1152) != j2) {
                                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                                            }
                                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                                        }
                                                    }
                                                    charSequence5 = null;
                                                    if ((j & 1296) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                                    }
                                                    if ((j & j4) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                                    }
                                                    if ((j & j6) != j2) {
                                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                                    }
                                                    if ((j & 1288) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                                    }
                                                    if ((j & 1344) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                                    }
                                                    if ((j & 1536) != j2) {
                                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                                    }
                                                    if ((j & 1152) != j2) {
                                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                                    }
                                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                                }
                                            }
                                            charSequence4 = null;
                                            if ((j & 1344) != j2) {
                                                if (amountCardBinding == null) {
                                                }
                                                updateRegistration(6, amountTargetText);
                                                if (amountTargetText != null) {
                                                    charSequence5 = (String) amountTargetText.get();
                                                    if ((j & 1296) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                                    }
                                                    if ((j & j4) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                                    }
                                                    if ((j & j6) != j2) {
                                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                                    }
                                                    if ((j & 1288) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                                    }
                                                    if ((j & 1344) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                                    }
                                                    if ((j & 1536) != j2) {
                                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                                    }
                                                    if ((j & 1152) != j2) {
                                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                                    }
                                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence3 = null;
                                    if ((j & 1296) != j2) {
                                        if (amountCardBinding == null) {
                                        }
                                        updateRegistration(4, cardName);
                                        if (cardName != null) {
                                            charSequence4 = (String) cardName.get();
                                            if ((j & 1344) != j2) {
                                                if (amountCardBinding == null) {
                                                }
                                                updateRegistration(6, amountTargetText);
                                                if (amountTargetText != null) {
                                                    charSequence5 = (String) amountTargetText.get();
                                                    if ((j & 1296) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                                    }
                                                    if ((j & j4) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                                    }
                                                    if ((j & j6) != j2) {
                                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                                    }
                                                    if ((j & 1288) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                                    }
                                                    if ((j & 1344) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                                    }
                                                    if ((j & 1536) != j2) {
                                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                                    }
                                                    if ((j & 1152) != j2) {
                                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                                    }
                                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence4 = null;
                                    if ((j & 1344) != j2) {
                                        if (amountCardBinding == null) {
                                        }
                                        updateRegistration(6, amountTargetText);
                                        if (amountTargetText != null) {
                                            charSequence5 = (String) amountTargetText.get();
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence2 = null;
                            if ((j & j3) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(3, commission);
                                if (commission != null) {
                                    charSequence3 = (String) commission.get();
                                    if ((j & 1296) != j2) {
                                        if (amountCardBinding == null) {
                                        }
                                        updateRegistration(4, cardName);
                                        if (cardName != null) {
                                            charSequence4 = (String) cardName.get();
                                            if ((j & 1344) != j2) {
                                                if (amountCardBinding == null) {
                                                }
                                                updateRegistration(6, amountTargetText);
                                                if (amountTargetText != null) {
                                                    charSequence5 = (String) amountTargetText.get();
                                                    if ((j & 1296) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                                    }
                                                    if ((j & j4) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                                    }
                                                    if ((j & j6) != j2) {
                                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                                    }
                                                    if ((j & 1288) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                                    }
                                                    if ((j & 1344) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                                    }
                                                    if ((j & 1536) != j2) {
                                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                                    }
                                                    if ((j & 1152) != j2) {
                                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                                    }
                                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence4 = null;
                                    if ((j & 1344) != j2) {
                                        if (amountCardBinding == null) {
                                        }
                                        updateRegistration(6, amountTargetText);
                                        if (amountTargetText != null) {
                                            charSequence5 = (String) amountTargetText.get();
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence3 = null;
                            if ((j & 1296) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(4, cardName);
                                if (cardName != null) {
                                    charSequence4 = (String) cardName.get();
                                    if ((j & 1344) != j2) {
                                        if (amountCardBinding == null) {
                                        }
                                        updateRegistration(6, amountTargetText);
                                        if (amountTargetText != null) {
                                            charSequence5 = (String) amountTargetText.get();
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence4 = null;
                            if ((j & 1344) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(6, amountTargetText);
                                if (amountTargetText != null) {
                                    charSequence5 = (String) amountTargetText.get();
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence5 = null;
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    i = 0;
                    if ((j & j4) != j2) {
                        if (amountCardBinding == null) {
                        }
                        updateRegistration(2, cardNumber);
                        if (cardNumber != null) {
                            charSequence2 = (String) cardNumber.get();
                            if ((j & j3) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(3, commission);
                                if (commission != null) {
                                    charSequence3 = (String) commission.get();
                                    if ((j & 1296) != j2) {
                                        if (amountCardBinding == null) {
                                        }
                                        updateRegistration(4, cardName);
                                        if (cardName != null) {
                                            charSequence4 = (String) cardName.get();
                                            if ((j & 1344) != j2) {
                                                if (amountCardBinding == null) {
                                                }
                                                updateRegistration(6, amountTargetText);
                                                if (amountTargetText != null) {
                                                    charSequence5 = (String) amountTargetText.get();
                                                    if ((j & 1296) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                                    }
                                                    if ((j & j4) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                                    }
                                                    if ((j & j6) != j2) {
                                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                                    }
                                                    if ((j & 1288) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                                    }
                                                    if ((j & 1344) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                                    }
                                                    if ((j & 1536) != j2) {
                                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                                    }
                                                    if ((j & 1152) != j2) {
                                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                                    }
                                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence4 = null;
                                    if ((j & 1344) != j2) {
                                        if (amountCardBinding == null) {
                                        }
                                        updateRegistration(6, amountTargetText);
                                        if (amountTargetText != null) {
                                            charSequence5 = (String) amountTargetText.get();
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence3 = null;
                            if ((j & 1296) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(4, cardName);
                                if (cardName != null) {
                                    charSequence4 = (String) cardName.get();
                                    if ((j & 1344) != j2) {
                                        if (amountCardBinding == null) {
                                        }
                                        updateRegistration(6, amountTargetText);
                                        if (amountTargetText != null) {
                                            charSequence5 = (String) amountTargetText.get();
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence4 = null;
                            if ((j & 1344) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(6, amountTargetText);
                                if (amountTargetText != null) {
                                    charSequence5 = (String) amountTargetText.get();
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence5 = null;
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    charSequence2 = null;
                    if ((j & j3) != j2) {
                        if (amountCardBinding == null) {
                        }
                        updateRegistration(3, commission);
                        if (commission != null) {
                            charSequence3 = (String) commission.get();
                            if ((j & 1296) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(4, cardName);
                                if (cardName != null) {
                                    charSequence4 = (String) cardName.get();
                                    if ((j & 1344) != j2) {
                                        if (amountCardBinding == null) {
                                        }
                                        updateRegistration(6, amountTargetText);
                                        if (amountTargetText != null) {
                                            charSequence5 = (String) amountTargetText.get();
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence4 = null;
                            if ((j & 1344) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(6, amountTargetText);
                                if (amountTargetText != null) {
                                    charSequence5 = (String) amountTargetText.get();
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence5 = null;
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    charSequence3 = null;
                    if ((j & 1296) != j2) {
                        if (amountCardBinding == null) {
                        }
                        updateRegistration(4, cardName);
                        if (cardName != null) {
                            charSequence4 = (String) cardName.get();
                            if ((j & 1344) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(6, amountTargetText);
                                if (amountTargetText != null) {
                                    charSequence5 = (String) amountTargetText.get();
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence5 = null;
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    charSequence4 = null;
                    if ((j & 1344) != j2) {
                        if (amountCardBinding == null) {
                        }
                        updateRegistration(6, amountTargetText);
                        if (amountTargetText != null) {
                            charSequence5 = (String) amountTargetText.get();
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    charSequence5 = null;
                    if ((j & 1296) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                    }
                    if ((j & j6) != j2) {
                        activityCardTransferAmountBinding.comment.setText(charSequence);
                    }
                    if ((j & j5) != j2) {
                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                    }
                    if ((j & 1288) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                    }
                    if ((j & 1344) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                    }
                    if ((j & 1536) != j2) {
                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 1152) != j2) {
                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                    }
                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                }
            }
            charSequence = null;
            if ((j & 1282) != 0) {
                if (amountCardBinding == null) {
                    obj = null;
                } else {
                    commentVisibility = amountCardBinding.getCommentVisibility();
                }
                updateRegistration(1, obj);
                if (obj != null) {
                    i = obj.get();
                    if ((j & j4) != j2) {
                        if (amountCardBinding == null) {
                        }
                        updateRegistration(2, cardNumber);
                        if (cardNumber != null) {
                            charSequence2 = (String) cardNumber.get();
                            if ((j & j3) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(3, commission);
                                if (commission != null) {
                                    charSequence3 = (String) commission.get();
                                    if ((j & 1296) != j2) {
                                        if (amountCardBinding == null) {
                                        }
                                        updateRegistration(4, cardName);
                                        if (cardName != null) {
                                            charSequence4 = (String) cardName.get();
                                            if ((j & 1344) != j2) {
                                                if (amountCardBinding == null) {
                                                }
                                                updateRegistration(6, amountTargetText);
                                                if (amountTargetText != null) {
                                                    charSequence5 = (String) amountTargetText.get();
                                                    if ((j & 1296) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                                    }
                                                    if ((j & j4) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                                    }
                                                    if ((j & j6) != j2) {
                                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                                    }
                                                    if ((j & j5) != j2) {
                                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                                    }
                                                    if ((j & 1288) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                                    }
                                                    if ((j & 1344) != j2) {
                                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                                    }
                                                    if ((j & 1536) != j2) {
                                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                                    }
                                                    if ((j & 1152) != j2) {
                                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                                    }
                                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                                }
                                            }
                                            charSequence5 = null;
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence4 = null;
                                    if ((j & 1344) != j2) {
                                        if (amountCardBinding == null) {
                                        }
                                        updateRegistration(6, amountTargetText);
                                        if (amountTargetText != null) {
                                            charSequence5 = (String) amountTargetText.get();
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence3 = null;
                            if ((j & 1296) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(4, cardName);
                                if (cardName != null) {
                                    charSequence4 = (String) cardName.get();
                                    if ((j & 1344) != j2) {
                                        if (amountCardBinding == null) {
                                        }
                                        updateRegistration(6, amountTargetText);
                                        if (amountTargetText != null) {
                                            charSequence5 = (String) amountTargetText.get();
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence4 = null;
                            if ((j & 1344) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(6, amountTargetText);
                                if (amountTargetText != null) {
                                    charSequence5 = (String) amountTargetText.get();
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence5 = null;
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    charSequence2 = null;
                    if ((j & j3) != j2) {
                        if (amountCardBinding == null) {
                        }
                        updateRegistration(3, commission);
                        if (commission != null) {
                            charSequence3 = (String) commission.get();
                            if ((j & 1296) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(4, cardName);
                                if (cardName != null) {
                                    charSequence4 = (String) cardName.get();
                                    if ((j & 1344) != j2) {
                                        if (amountCardBinding == null) {
                                        }
                                        updateRegistration(6, amountTargetText);
                                        if (amountTargetText != null) {
                                            charSequence5 = (String) amountTargetText.get();
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence4 = null;
                            if ((j & 1344) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(6, amountTargetText);
                                if (amountTargetText != null) {
                                    charSequence5 = (String) amountTargetText.get();
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence5 = null;
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    charSequence3 = null;
                    if ((j & 1296) != j2) {
                        if (amountCardBinding == null) {
                        }
                        updateRegistration(4, cardName);
                        if (cardName != null) {
                            charSequence4 = (String) cardName.get();
                            if ((j & 1344) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(6, amountTargetText);
                                if (amountTargetText != null) {
                                    charSequence5 = (String) amountTargetText.get();
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence5 = null;
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    charSequence4 = null;
                    if ((j & 1344) != j2) {
                        if (amountCardBinding == null) {
                        }
                        updateRegistration(6, amountTargetText);
                        if (amountTargetText != null) {
                            charSequence5 = (String) amountTargetText.get();
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    charSequence5 = null;
                    if ((j & 1296) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                    }
                    if ((j & j6) != j2) {
                        activityCardTransferAmountBinding.comment.setText(charSequence);
                    }
                    if ((j & j5) != j2) {
                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                    }
                    if ((j & 1288) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                    }
                    if ((j & 1344) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                    }
                    if ((j & 1536) != j2) {
                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 1152) != j2) {
                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                    }
                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                }
            }
            i = 0;
            if ((j & j4) != j2) {
                if (amountCardBinding == null) {
                }
                updateRegistration(2, cardNumber);
                if (cardNumber != null) {
                    charSequence2 = (String) cardNumber.get();
                    if ((j & j3) != j2) {
                        if (amountCardBinding == null) {
                        }
                        updateRegistration(3, commission);
                        if (commission != null) {
                            charSequence3 = (String) commission.get();
                            if ((j & 1296) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(4, cardName);
                                if (cardName != null) {
                                    charSequence4 = (String) cardName.get();
                                    if ((j & 1344) != j2) {
                                        if (amountCardBinding == null) {
                                        }
                                        updateRegistration(6, amountTargetText);
                                        if (amountTargetText != null) {
                                            charSequence5 = (String) amountTargetText.get();
                                            if ((j & 1296) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                            }
                                            if ((j & j6) != j2) {
                                                activityCardTransferAmountBinding.comment.setText(charSequence);
                                            }
                                            if ((j & j5) != j2) {
                                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                            }
                                            if ((j & 1288) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                            }
                                            if ((j & 1344) != j2) {
                                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                            }
                                            if ((j & 1536) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 1152) != j2) {
                                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                        }
                                    }
                                    charSequence5 = null;
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence4 = null;
                            if ((j & 1344) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(6, amountTargetText);
                                if (amountTargetText != null) {
                                    charSequence5 = (String) amountTargetText.get();
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence5 = null;
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    charSequence3 = null;
                    if ((j & 1296) != j2) {
                        if (amountCardBinding == null) {
                        }
                        updateRegistration(4, cardName);
                        if (cardName != null) {
                            charSequence4 = (String) cardName.get();
                            if ((j & 1344) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(6, amountTargetText);
                                if (amountTargetText != null) {
                                    charSequence5 = (String) amountTargetText.get();
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence5 = null;
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    charSequence4 = null;
                    if ((j & 1344) != j2) {
                        if (amountCardBinding == null) {
                        }
                        updateRegistration(6, amountTargetText);
                        if (amountTargetText != null) {
                            charSequence5 = (String) amountTargetText.get();
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    charSequence5 = null;
                    if ((j & 1296) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                    }
                    if ((j & j6) != j2) {
                        activityCardTransferAmountBinding.comment.setText(charSequence);
                    }
                    if ((j & j5) != j2) {
                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                    }
                    if ((j & 1288) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                    }
                    if ((j & 1344) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                    }
                    if ((j & 1536) != j2) {
                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 1152) != j2) {
                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                    }
                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                }
            }
            charSequence2 = null;
            if ((j & j3) != j2) {
                if (amountCardBinding == null) {
                }
                updateRegistration(3, commission);
                if (commission != null) {
                    charSequence3 = (String) commission.get();
                    if ((j & 1296) != j2) {
                        if (amountCardBinding == null) {
                        }
                        updateRegistration(4, cardName);
                        if (cardName != null) {
                            charSequence4 = (String) cardName.get();
                            if ((j & 1344) != j2) {
                                if (amountCardBinding == null) {
                                }
                                updateRegistration(6, amountTargetText);
                                if (amountTargetText != null) {
                                    charSequence5 = (String) amountTargetText.get();
                                    if ((j & 1296) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                                    }
                                    if ((j & j6) != j2) {
                                        activityCardTransferAmountBinding.comment.setText(charSequence);
                                    }
                                    if ((j & j5) != j2) {
                                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                                    }
                                    if ((j & 1288) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                                    }
                                    if ((j & 1344) != j2) {
                                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                                    }
                                    if ((j & 1536) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 1152) != j2) {
                                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                                }
                            }
                            charSequence5 = null;
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    charSequence4 = null;
                    if ((j & 1344) != j2) {
                        if (amountCardBinding == null) {
                        }
                        updateRegistration(6, amountTargetText);
                        if (amountTargetText != null) {
                            charSequence5 = (String) amountTargetText.get();
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    charSequence5 = null;
                    if ((j & 1296) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                    }
                    if ((j & j6) != j2) {
                        activityCardTransferAmountBinding.comment.setText(charSequence);
                    }
                    if ((j & j5) != j2) {
                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                    }
                    if ((j & 1288) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                    }
                    if ((j & 1344) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                    }
                    if ((j & 1536) != j2) {
                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 1152) != j2) {
                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                    }
                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                }
            }
            charSequence3 = null;
            if ((j & 1296) != j2) {
                if (amountCardBinding == null) {
                }
                updateRegistration(4, cardName);
                if (cardName != null) {
                    charSequence4 = (String) cardName.get();
                    if ((j & 1344) != j2) {
                        if (amountCardBinding == null) {
                        }
                        updateRegistration(6, amountTargetText);
                        if (amountTargetText != null) {
                            charSequence5 = (String) amountTargetText.get();
                            if ((j & 1296) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                            }
                            if ((j & j6) != j2) {
                                activityCardTransferAmountBinding.comment.setText(charSequence);
                            }
                            if ((j & j5) != j2) {
                                activityCardTransferAmountBinding.commentCard.setVisibility(i);
                            }
                            if ((j & 1288) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                            }
                            if ((j & 1344) != j2) {
                                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                            }
                            if ((j & 1536) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 1152) != j2) {
                                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                        }
                    }
                    charSequence5 = null;
                    if ((j & 1296) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                    }
                    if ((j & j6) != j2) {
                        activityCardTransferAmountBinding.comment.setText(charSequence);
                    }
                    if ((j & j5) != j2) {
                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                    }
                    if ((j & 1288) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                    }
                    if ((j & 1344) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                    }
                    if ((j & 1536) != j2) {
                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 1152) != j2) {
                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                    }
                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                }
            }
            charSequence4 = null;
            if ((j & 1344) != j2) {
                if (amountCardBinding == null) {
                }
                updateRegistration(6, amountTargetText);
                if (amountTargetText != null) {
                    charSequence5 = (String) amountTargetText.get();
                    if ((j & 1296) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
                    }
                    if ((j & j6) != j2) {
                        activityCardTransferAmountBinding.comment.setText(charSequence);
                    }
                    if ((j & j5) != j2) {
                        activityCardTransferAmountBinding.commentCard.setVisibility(i);
                    }
                    if ((j & 1288) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
                    }
                    if ((j & 1344) != j2) {
                        TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
                    }
                    if ((j & 1536) != j2) {
                        activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 1152) != j2) {
                        activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                    }
                    executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
                }
            }
            charSequence5 = null;
            if ((j & 1296) != j2) {
                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
            }
            if ((j & j4) != j2) {
                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
            }
            if ((j & j6) != j2) {
                activityCardTransferAmountBinding.comment.setText(charSequence);
            }
            if ((j & j5) != j2) {
                activityCardTransferAmountBinding.commentCard.setVisibility(i);
            }
            if ((j & 1288) != j2) {
                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
            }
            if ((j & 1344) != j2) {
                TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
            }
            if ((j & 1536) != j2) {
                activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
            }
            if ((j & 1152) != j2) {
                activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
            }
            executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
        }
        charSequence5 = null;
        charSequence = null;
        i = 0;
        charSequence2 = null;
        charSequence3 = null;
        charSequence4 = null;
        if ((j & 1296) != j2) {
            TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardName, charSequence4);
        }
        if ((j & j4) != j2) {
            TextViewBindingAdapter.setText(activityCardTransferAmountBinding.cardNumber, charSequence2);
        }
        if ((j & j6) != j2) {
            activityCardTransferAmountBinding.comment.setText(charSequence);
        }
        if ((j & j5) != j2) {
            activityCardTransferAmountBinding.commentCard.setVisibility(i);
        }
        if ((j & 1288) != j2) {
            TextViewBindingAdapter.setText(activityCardTransferAmountBinding.commission, charSequence3);
        }
        if ((j & 1344) != j2) {
            TextViewBindingAdapter.setText(activityCardTransferAmountBinding.mboundView3, charSequence5);
        }
        if ((j & 1536) != j2) {
            activityCardTransferAmountBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
        }
        if ((j & 1152) != j2) {
            activityCardTransferAmountBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
        }
        executeBindingsOn(activityCardTransferAmountBinding.toolbarBlock);
    }

    public static ActivityCardTransferAmountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityCardTransferAmountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityCardTransferAmountBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_card_transfer_amount, viewGroup, z, dataBindingComponent);
    }

    public static ActivityCardTransferAmountBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityCardTransferAmountBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_card_transfer_amount, null, false), dataBindingComponent);
    }

    public static ActivityCardTransferAmountBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityCardTransferAmountBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_card_transfer_amount_0".equals(view.getTag())) {
            return new ActivityCardTransferAmountBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

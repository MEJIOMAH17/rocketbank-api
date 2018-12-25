package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.ImageViewBindingAdapter;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.graphics.drawable.Drawable;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.view.ViewPager;
import android.text.Spanned;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import fr.castorflex.android.verticalviewpager.VerticalViewPager;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;
import ru.rocketbank.r2d2.data.binding.transfer.TransferAccountData;
import ru.rocketbank.r2d2.data.binding.transfer.TransferAccountsHandler;

public class FragmentTransferBetweenCardsBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final CoordinatorLayout coordinatorLayout;
    public final VerticalViewPager currencies;
    public final ViewPager destination;
    public final ProgressBar indeterminateProgress;
    public final RocketEditText inputAmount;
    private final OnClickListener mCallback19;
    private final OnClickListener mCallback20;
    private TransferAccountData mData;
    private long mDirtyFlags = -1;
    private TransferAccountsHandler mHandler;
    private final LinearLayout mboundView1;
    private final ImageView mboundView2;
    private final ImageView mboundView3;
    private final RocketTextView mboundView5;
    public final ViewPager source;
    public final LayoutToolbarWithButtonBinding toolbarBlock;

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(11);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"layout_toolbar_with_button"}, new int[]{6}, new int[]{C0859R.layout.layout_toolbar_with_button});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.source, 7);
        sViewsWithIds.put(C0859R.id.destination, 8);
        sViewsWithIds.put(C0859R.id.inputAmount, 9);
        sViewsWithIds.put(C0859R.id.currencies, 10);
    }

    public FragmentTransferBetweenCardsBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 6);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 11, sIncludes, sViewsWithIds);
        this.coordinatorLayout = (CoordinatorLayout) dataBindingComponent[0];
        this.coordinatorLayout.setTag(null);
        this.currencies = (VerticalViewPager) dataBindingComponent[10];
        this.destination = (ViewPager) dataBindingComponent[8];
        this.indeterminateProgress = (ProgressBar) dataBindingComponent[4];
        this.indeterminateProgress.setTag(null);
        this.inputAmount = (RocketEditText) dataBindingComponent[9];
        this.mboundView1 = (LinearLayout) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.mboundView2 = (ImageView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.mboundView3 = (ImageView) dataBindingComponent[3];
        this.mboundView3.setTag(null);
        this.mboundView5 = (RocketTextView) dataBindingComponent[5];
        this.mboundView5.setTag(null);
        this.source = (ViewPager) dataBindingComponent[7];
        this.toolbarBlock = (LayoutToolbarWithButtonBinding) dataBindingComponent[6];
        setContainedBinding(this.toolbarBlock);
        setRootTag(view);
        this.mCallback19 = new android.databinding.generated.callback.OnClickListener(this, 1);
        this.mCallback20 = new android.databinding.generated.callback.OnClickListener(this, 2);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 256;
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
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.FragmentTransferBetweenCardsBinding.hasPendingBindings():boolean");
    }

    public boolean setVariable(int i, Object obj) {
        if (40 == i) {
            setHandler((TransferAccountsHandler) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((TransferAccountData) obj);
        }
        return true;
    }

    public void setHandler(TransferAccountsHandler transferAccountsHandler) {
        this.mHandler = transferAccountsHandler;
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public TransferAccountsHandler getHandler() {
        return this.mHandler;
    }

    public void setData(TransferAccountData transferAccountData) {
        this.mData = transferAccountData;
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public TransferAccountData getData() {
        return this.mData;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.toolbarBlock.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataCurrencyDownDrawable((ObservableField) obj, i2);
            case 1:
                return onChangeDataInfoText((ObservableField) obj, i2);
            case 2:
                return onChangeDataCurrencyUpDrawable((ObservableField) obj, i2);
            case 3:
                return onChangeDataInfoTextColor((ObservableInt) obj, i2);
            case 4:
                return onChangeToolbarBlock((LayoutToolbarWithButtonBinding) obj, i2);
            case 5:
                return onChangeDataProgressVisible((ObservableBoolean) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataCurrencyDownDrawable(ObservableField<Drawable> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataInfoText(ObservableField<Spanned> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataCurrencyUpDrawable(ObservableField<Drawable> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataInfoTextColor(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeToolbarBlock(LayoutToolbarWithButtonBinding layoutToolbarWithButtonBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeDataProgressVisible(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        FragmentTransferBetweenCardsBinding fragmentTransferBetweenCardsBinding = this;
        synchronized (this) {
            try {
                j = fragmentTransferBetweenCardsBinding.mDirtyFlags;
                long j2 = 0;
                fragmentTransferBetweenCardsBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        ToolbarWithButtonHandler toolbarWithButtonHandler = fragmentTransferBetweenCardsBinding.mHandler;
        ToolbarWithButtonData toolbarWithButtonData = fragmentTransferBetweenCardsBinding.mData;
        long j3 = 392;
        long j4 = 388;
        long j5 = 385;
        Object obj = null;
        Drawable drawable;
        int i;
        int i2;
        long j6;
        CharSequence charSequence;
        Drawable drawable2;
        int i3;
        if ((j & 431) != 0) {
            Drawable drawable3;
            ObservableField infoText;
            Spanned spanned;
            Object infoTextColor;
            int i4;
            long j7;
            Object progressVisible;
            boolean z;
            int i5;
            if ((j & 385) != 0) {
                Object currencyDownDrawable = toolbarWithButtonData != null ? toolbarWithButtonData.getCurrencyDownDrawable() : null;
                updateRegistration(0, currencyDownDrawable);
                if (currencyDownDrawable != null) {
                    drawable3 = (Drawable) currencyDownDrawable.get();
                    if ((j & 386) != 0) {
                        if (toolbarWithButtonData == null) {
                            infoText = toolbarWithButtonData.getInfoText();
                        } else {
                            obj = null;
                        }
                        updateRegistration(1, obj);
                        if (obj != null) {
                            spanned = (Spanned) obj.get();
                            if ((j & j4) != j2) {
                                obj = toolbarWithButtonData == null ? toolbarWithButtonData.getCurrencyUpDrawable() : null;
                                updateRegistration(2, obj);
                                if (obj != null) {
                                    drawable = (Drawable) obj.get();
                                    if ((j & j3) != j2) {
                                        infoTextColor = toolbarWithButtonData == null ? toolbarWithButtonData.getInfoTextColor() : null;
                                        updateRegistration(3, infoTextColor);
                                        if (infoTextColor != null) {
                                            i4 = infoTextColor.get();
                                            j7 = j & 416;
                                            if (j7 == j2) {
                                                progressVisible = toolbarWithButtonData == null ? toolbarWithButtonData.getProgressVisible() : null;
                                                updateRegistration(5, progressVisible);
                                                if (progressVisible == null) {
                                                    z = progressVisible.get();
                                                } else {
                                                    z = false;
                                                }
                                                if (j7 != j2) {
                                                    j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                                                }
                                                i = 8;
                                                i5 = z ? 8 : 0;
                                                if (z) {
                                                    i = 0;
                                                }
                                                i2 = i4;
                                                j6 = 416;
                                                charSequence = spanned;
                                                drawable2 = drawable3;
                                                i3 = i5;
                                            } else {
                                                i2 = i4;
                                                i = 0;
                                                j6 = 416;
                                                charSequence = spanned;
                                                drawable2 = drawable3;
                                                i3 = 0;
                                            }
                                            if ((j & j6) != j2) {
                                                fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                                                fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                                            }
                                            if ((j & 256) != j2) {
                                                fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                                                fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                                            }
                                            if ((j & 388) != j2) {
                                                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                                            }
                                            if ((j & j5) != j2) {
                                                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                                            }
                                            if ((j & 386) != j2) {
                                                TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                                            }
                                            if ((j & 392) != j2) {
                                                fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                                            }
                                            if ((j & 320) != j2) {
                                                fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                            }
                                            if ((j & 384) != j2) {
                                                fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                            }
                                            executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                                        }
                                    }
                                    i4 = 0;
                                    j7 = j & 416;
                                    if (j7 == j2) {
                                        i2 = i4;
                                        i = 0;
                                        j6 = 416;
                                        charSequence = spanned;
                                        drawable2 = drawable3;
                                        i3 = 0;
                                    } else {
                                        if (toolbarWithButtonData == null) {
                                        }
                                        updateRegistration(5, progressVisible);
                                        if (progressVisible == null) {
                                            z = false;
                                        } else {
                                            z = progressVisible.get();
                                        }
                                        if (j7 != j2) {
                                            if (z) {
                                            }
                                            j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                                        }
                                        i = 8;
                                        if (z) {
                                        }
                                        if (z) {
                                            i = 0;
                                        }
                                        i2 = i4;
                                        j6 = 416;
                                        charSequence = spanned;
                                        drawable2 = drawable3;
                                        i3 = i5;
                                    }
                                    if ((j & j6) != j2) {
                                        fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                                        fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                                    }
                                    if ((j & 256) != j2) {
                                        fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                                        fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                                    }
                                    if ((j & 388) != j2) {
                                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                                    }
                                    if ((j & j5) != j2) {
                                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                                    }
                                    if ((j & 386) != j2) {
                                        TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                                    }
                                    if ((j & 392) != j2) {
                                        fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                                    }
                                    if ((j & 320) != j2) {
                                        fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 384) != j2) {
                                        fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                                }
                            }
                            drawable = null;
                            if ((j & j3) != j2) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(3, infoTextColor);
                                if (infoTextColor != null) {
                                    i4 = infoTextColor.get();
                                    j7 = j & 416;
                                    if (j7 == j2) {
                                        if (toolbarWithButtonData == null) {
                                        }
                                        updateRegistration(5, progressVisible);
                                        if (progressVisible == null) {
                                            z = progressVisible.get();
                                        } else {
                                            z = false;
                                        }
                                        if (j7 != j2) {
                                            if (z) {
                                            }
                                            j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                                        }
                                        i = 8;
                                        if (z) {
                                        }
                                        if (z) {
                                            i = 0;
                                        }
                                        i2 = i4;
                                        j6 = 416;
                                        charSequence = spanned;
                                        drawable2 = drawable3;
                                        i3 = i5;
                                    } else {
                                        i2 = i4;
                                        i = 0;
                                        j6 = 416;
                                        charSequence = spanned;
                                        drawable2 = drawable3;
                                        i3 = 0;
                                    }
                                    if ((j & j6) != j2) {
                                        fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                                        fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                                    }
                                    if ((j & 256) != j2) {
                                        fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                                        fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                                    }
                                    if ((j & 388) != j2) {
                                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                                    }
                                    if ((j & j5) != j2) {
                                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                                    }
                                    if ((j & 386) != j2) {
                                        TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                                    }
                                    if ((j & 392) != j2) {
                                        fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                                    }
                                    if ((j & 320) != j2) {
                                        fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 384) != j2) {
                                        fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                                }
                            }
                            i4 = 0;
                            j7 = j & 416;
                            if (j7 == j2) {
                                i2 = i4;
                                i = 0;
                                j6 = 416;
                                charSequence = spanned;
                                drawable2 = drawable3;
                                i3 = 0;
                            } else {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(5, progressVisible);
                                if (progressVisible == null) {
                                    z = false;
                                } else {
                                    z = progressVisible.get();
                                }
                                if (j7 != j2) {
                                    if (z) {
                                    }
                                    j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                                }
                                i = 8;
                                if (z) {
                                }
                                if (z) {
                                    i = 0;
                                }
                                i2 = i4;
                                j6 = 416;
                                charSequence = spanned;
                                drawable2 = drawable3;
                                i3 = i5;
                            }
                            if ((j & j6) != j2) {
                                fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                                fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                            }
                            if ((j & 256) != j2) {
                                fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                                fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                            }
                            if ((j & 388) != j2) {
                                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                            }
                            if ((j & j5) != j2) {
                                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                            }
                            if ((j & 386) != j2) {
                                TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                            }
                            if ((j & 392) != j2) {
                                fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                            }
                            if ((j & 320) != j2) {
                                fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 384) != j2) {
                                fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                        }
                    }
                    spanned = null;
                    if ((j & j4) != j2) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(2, obj);
                        if (obj != null) {
                            drawable = (Drawable) obj.get();
                            if ((j & j3) != j2) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(3, infoTextColor);
                                if (infoTextColor != null) {
                                    i4 = infoTextColor.get();
                                    j7 = j & 416;
                                    if (j7 == j2) {
                                        if (toolbarWithButtonData == null) {
                                        }
                                        updateRegistration(5, progressVisible);
                                        if (progressVisible == null) {
                                            z = progressVisible.get();
                                        } else {
                                            z = false;
                                        }
                                        if (j7 != j2) {
                                            if (z) {
                                            }
                                            j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                                        }
                                        i = 8;
                                        if (z) {
                                        }
                                        if (z) {
                                            i = 0;
                                        }
                                        i2 = i4;
                                        j6 = 416;
                                        charSequence = spanned;
                                        drawable2 = drawable3;
                                        i3 = i5;
                                    } else {
                                        i2 = i4;
                                        i = 0;
                                        j6 = 416;
                                        charSequence = spanned;
                                        drawable2 = drawable3;
                                        i3 = 0;
                                    }
                                    if ((j & j6) != j2) {
                                        fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                                        fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                                    }
                                    if ((j & 256) != j2) {
                                        fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                                        fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                                    }
                                    if ((j & 388) != j2) {
                                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                                    }
                                    if ((j & j5) != j2) {
                                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                                    }
                                    if ((j & 386) != j2) {
                                        TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                                    }
                                    if ((j & 392) != j2) {
                                        fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                                    }
                                    if ((j & 320) != j2) {
                                        fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 384) != j2) {
                                        fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                                }
                            }
                            i4 = 0;
                            j7 = j & 416;
                            if (j7 == j2) {
                                i2 = i4;
                                i = 0;
                                j6 = 416;
                                charSequence = spanned;
                                drawable2 = drawable3;
                                i3 = 0;
                            } else {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(5, progressVisible);
                                if (progressVisible == null) {
                                    z = false;
                                } else {
                                    z = progressVisible.get();
                                }
                                if (j7 != j2) {
                                    if (z) {
                                    }
                                    j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                                }
                                i = 8;
                                if (z) {
                                }
                                if (z) {
                                    i = 0;
                                }
                                i2 = i4;
                                j6 = 416;
                                charSequence = spanned;
                                drawable2 = drawable3;
                                i3 = i5;
                            }
                            if ((j & j6) != j2) {
                                fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                                fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                            }
                            if ((j & 256) != j2) {
                                fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                                fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                            }
                            if ((j & 388) != j2) {
                                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                            }
                            if ((j & j5) != j2) {
                                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                            }
                            if ((j & 386) != j2) {
                                TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                            }
                            if ((j & 392) != j2) {
                                fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                            }
                            if ((j & 320) != j2) {
                                fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 384) != j2) {
                                fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                        }
                    }
                    drawable = null;
                    if ((j & j3) != j2) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(3, infoTextColor);
                        if (infoTextColor != null) {
                            i4 = infoTextColor.get();
                            j7 = j & 416;
                            if (j7 == j2) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(5, progressVisible);
                                if (progressVisible == null) {
                                    z = progressVisible.get();
                                } else {
                                    z = false;
                                }
                                if (j7 != j2) {
                                    if (z) {
                                    }
                                    j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                                }
                                i = 8;
                                if (z) {
                                }
                                if (z) {
                                    i = 0;
                                }
                                i2 = i4;
                                j6 = 416;
                                charSequence = spanned;
                                drawable2 = drawable3;
                                i3 = i5;
                            } else {
                                i2 = i4;
                                i = 0;
                                j6 = 416;
                                charSequence = spanned;
                                drawable2 = drawable3;
                                i3 = 0;
                            }
                            if ((j & j6) != j2) {
                                fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                                fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                            }
                            if ((j & 256) != j2) {
                                fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                                fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                            }
                            if ((j & 388) != j2) {
                                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                            }
                            if ((j & j5) != j2) {
                                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                            }
                            if ((j & 386) != j2) {
                                TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                            }
                            if ((j & 392) != j2) {
                                fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                            }
                            if ((j & 320) != j2) {
                                fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 384) != j2) {
                                fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                        }
                    }
                    i4 = 0;
                    j7 = j & 416;
                    if (j7 == j2) {
                        i2 = i4;
                        i = 0;
                        j6 = 416;
                        charSequence = spanned;
                        drawable2 = drawable3;
                        i3 = 0;
                    } else {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(5, progressVisible);
                        if (progressVisible == null) {
                            z = false;
                        } else {
                            z = progressVisible.get();
                        }
                        if (j7 != j2) {
                            if (z) {
                            }
                            j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                        }
                        i = 8;
                        if (z) {
                        }
                        if (z) {
                            i = 0;
                        }
                        i2 = i4;
                        j6 = 416;
                        charSequence = spanned;
                        drawable2 = drawable3;
                        i3 = i5;
                    }
                    if ((j & j6) != j2) {
                        fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                        fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                    }
                    if ((j & 256) != j2) {
                        fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                        fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                    }
                    if ((j & 388) != j2) {
                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                    }
                    if ((j & j5) != j2) {
                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                    }
                    if ((j & 386) != j2) {
                        TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                    }
                    if ((j & 392) != j2) {
                        fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                    }
                    if ((j & 320) != j2) {
                        fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 384) != j2) {
                        fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                    }
                    executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                }
            }
            drawable3 = null;
            if ((j & 386) != 0) {
                if (toolbarWithButtonData == null) {
                    obj = null;
                } else {
                    infoText = toolbarWithButtonData.getInfoText();
                }
                updateRegistration(1, obj);
                if (obj != null) {
                    spanned = (Spanned) obj.get();
                    if ((j & j4) != j2) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(2, obj);
                        if (obj != null) {
                            drawable = (Drawable) obj.get();
                            if ((j & j3) != j2) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(3, infoTextColor);
                                if (infoTextColor != null) {
                                    i4 = infoTextColor.get();
                                    j7 = j & 416;
                                    if (j7 == j2) {
                                        if (toolbarWithButtonData == null) {
                                        }
                                        updateRegistration(5, progressVisible);
                                        if (progressVisible == null) {
                                            z = progressVisible.get();
                                        } else {
                                            z = false;
                                        }
                                        if (j7 != j2) {
                                            if (z) {
                                            }
                                            j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                                        }
                                        i = 8;
                                        if (z) {
                                        }
                                        if (z) {
                                            i = 0;
                                        }
                                        i2 = i4;
                                        j6 = 416;
                                        charSequence = spanned;
                                        drawable2 = drawable3;
                                        i3 = i5;
                                    } else {
                                        i2 = i4;
                                        i = 0;
                                        j6 = 416;
                                        charSequence = spanned;
                                        drawable2 = drawable3;
                                        i3 = 0;
                                    }
                                    if ((j & j6) != j2) {
                                        fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                                        fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                                    }
                                    if ((j & 256) != j2) {
                                        fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                                        fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                                    }
                                    if ((j & 388) != j2) {
                                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                                    }
                                    if ((j & j5) != j2) {
                                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                                    }
                                    if ((j & 386) != j2) {
                                        TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                                    }
                                    if ((j & 392) != j2) {
                                        fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                                    }
                                    if ((j & 320) != j2) {
                                        fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 384) != j2) {
                                        fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                                }
                            }
                            i4 = 0;
                            j7 = j & 416;
                            if (j7 == j2) {
                                i2 = i4;
                                i = 0;
                                j6 = 416;
                                charSequence = spanned;
                                drawable2 = drawable3;
                                i3 = 0;
                            } else {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(5, progressVisible);
                                if (progressVisible == null) {
                                    z = false;
                                } else {
                                    z = progressVisible.get();
                                }
                                if (j7 != j2) {
                                    if (z) {
                                    }
                                    j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                                }
                                i = 8;
                                if (z) {
                                }
                                if (z) {
                                    i = 0;
                                }
                                i2 = i4;
                                j6 = 416;
                                charSequence = spanned;
                                drawable2 = drawable3;
                                i3 = i5;
                            }
                            if ((j & j6) != j2) {
                                fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                                fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                            }
                            if ((j & 256) != j2) {
                                fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                                fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                            }
                            if ((j & 388) != j2) {
                                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                            }
                            if ((j & j5) != j2) {
                                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                            }
                            if ((j & 386) != j2) {
                                TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                            }
                            if ((j & 392) != j2) {
                                fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                            }
                            if ((j & 320) != j2) {
                                fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 384) != j2) {
                                fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                        }
                    }
                    drawable = null;
                    if ((j & j3) != j2) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(3, infoTextColor);
                        if (infoTextColor != null) {
                            i4 = infoTextColor.get();
                            j7 = j & 416;
                            if (j7 == j2) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(5, progressVisible);
                                if (progressVisible == null) {
                                    z = progressVisible.get();
                                } else {
                                    z = false;
                                }
                                if (j7 != j2) {
                                    if (z) {
                                    }
                                    j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                                }
                                i = 8;
                                if (z) {
                                }
                                if (z) {
                                    i = 0;
                                }
                                i2 = i4;
                                j6 = 416;
                                charSequence = spanned;
                                drawable2 = drawable3;
                                i3 = i5;
                            } else {
                                i2 = i4;
                                i = 0;
                                j6 = 416;
                                charSequence = spanned;
                                drawable2 = drawable3;
                                i3 = 0;
                            }
                            if ((j & j6) != j2) {
                                fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                                fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                            }
                            if ((j & 256) != j2) {
                                fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                                fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                            }
                            if ((j & 388) != j2) {
                                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                            }
                            if ((j & j5) != j2) {
                                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                            }
                            if ((j & 386) != j2) {
                                TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                            }
                            if ((j & 392) != j2) {
                                fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                            }
                            if ((j & 320) != j2) {
                                fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 384) != j2) {
                                fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                        }
                    }
                    i4 = 0;
                    j7 = j & 416;
                    if (j7 == j2) {
                        i2 = i4;
                        i = 0;
                        j6 = 416;
                        charSequence = spanned;
                        drawable2 = drawable3;
                        i3 = 0;
                    } else {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(5, progressVisible);
                        if (progressVisible == null) {
                            z = false;
                        } else {
                            z = progressVisible.get();
                        }
                        if (j7 != j2) {
                            if (z) {
                            }
                            j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                        }
                        i = 8;
                        if (z) {
                        }
                        if (z) {
                            i = 0;
                        }
                        i2 = i4;
                        j6 = 416;
                        charSequence = spanned;
                        drawable2 = drawable3;
                        i3 = i5;
                    }
                    if ((j & j6) != j2) {
                        fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                        fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                    }
                    if ((j & 256) != j2) {
                        fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                        fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                    }
                    if ((j & 388) != j2) {
                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                    }
                    if ((j & j5) != j2) {
                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                    }
                    if ((j & 386) != j2) {
                        TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                    }
                    if ((j & 392) != j2) {
                        fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                    }
                    if ((j & 320) != j2) {
                        fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 384) != j2) {
                        fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                    }
                    executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                }
            }
            spanned = null;
            if ((j & j4) != j2) {
                if (toolbarWithButtonData == null) {
                }
                updateRegistration(2, obj);
                if (obj != null) {
                    drawable = (Drawable) obj.get();
                    if ((j & j3) != j2) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(3, infoTextColor);
                        if (infoTextColor != null) {
                            i4 = infoTextColor.get();
                            j7 = j & 416;
                            if (j7 == j2) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(5, progressVisible);
                                if (progressVisible == null) {
                                    z = progressVisible.get();
                                } else {
                                    z = false;
                                }
                                if (j7 != j2) {
                                    if (z) {
                                    }
                                    j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                                }
                                i = 8;
                                if (z) {
                                }
                                if (z) {
                                    i = 0;
                                }
                                i2 = i4;
                                j6 = 416;
                                charSequence = spanned;
                                drawable2 = drawable3;
                                i3 = i5;
                            } else {
                                i2 = i4;
                                i = 0;
                                j6 = 416;
                                charSequence = spanned;
                                drawable2 = drawable3;
                                i3 = 0;
                            }
                            if ((j & j6) != j2) {
                                fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                                fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                            }
                            if ((j & 256) != j2) {
                                fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                                fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                            }
                            if ((j & 388) != j2) {
                                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                            }
                            if ((j & j5) != j2) {
                                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                            }
                            if ((j & 386) != j2) {
                                TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                            }
                            if ((j & 392) != j2) {
                                fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                            }
                            if ((j & 320) != j2) {
                                fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 384) != j2) {
                                fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                        }
                    }
                    i4 = 0;
                    j7 = j & 416;
                    if (j7 == j2) {
                        i2 = i4;
                        i = 0;
                        j6 = 416;
                        charSequence = spanned;
                        drawable2 = drawable3;
                        i3 = 0;
                    } else {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(5, progressVisible);
                        if (progressVisible == null) {
                            z = false;
                        } else {
                            z = progressVisible.get();
                        }
                        if (j7 != j2) {
                            if (z) {
                            }
                            j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                        }
                        i = 8;
                        if (z) {
                        }
                        if (z) {
                            i = 0;
                        }
                        i2 = i4;
                        j6 = 416;
                        charSequence = spanned;
                        drawable2 = drawable3;
                        i3 = i5;
                    }
                    if ((j & j6) != j2) {
                        fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                        fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                    }
                    if ((j & 256) != j2) {
                        fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                        fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                    }
                    if ((j & 388) != j2) {
                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                    }
                    if ((j & j5) != j2) {
                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                    }
                    if ((j & 386) != j2) {
                        TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                    }
                    if ((j & 392) != j2) {
                        fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                    }
                    if ((j & 320) != j2) {
                        fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 384) != j2) {
                        fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                    }
                    executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                }
            }
            drawable = null;
            if ((j & j3) != j2) {
                if (toolbarWithButtonData == null) {
                }
                updateRegistration(3, infoTextColor);
                if (infoTextColor != null) {
                    i4 = infoTextColor.get();
                    j7 = j & 416;
                    if (j7 == j2) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(5, progressVisible);
                        if (progressVisible == null) {
                            z = progressVisible.get();
                        } else {
                            z = false;
                        }
                        if (j7 != j2) {
                            if (z) {
                            }
                            j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                        }
                        i = 8;
                        if (z) {
                        }
                        if (z) {
                            i = 0;
                        }
                        i2 = i4;
                        j6 = 416;
                        charSequence = spanned;
                        drawable2 = drawable3;
                        i3 = i5;
                    } else {
                        i2 = i4;
                        i = 0;
                        j6 = 416;
                        charSequence = spanned;
                        drawable2 = drawable3;
                        i3 = 0;
                    }
                    if ((j & j6) != j2) {
                        fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                        fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
                    }
                    if ((j & 256) != j2) {
                        fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                        fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
                    }
                    if ((j & 388) != j2) {
                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
                    }
                    if ((j & j5) != j2) {
                        ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
                    }
                    if ((j & 386) != j2) {
                        TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
                    }
                    if ((j & 392) != j2) {
                        fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
                    }
                    if ((j & 320) != j2) {
                        fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 384) != j2) {
                        fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
                    }
                    executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
                }
            }
            i4 = 0;
            j7 = j & 416;
            if (j7 == j2) {
                i2 = i4;
                i = 0;
                j6 = 416;
                charSequence = spanned;
                drawable2 = drawable3;
                i3 = 0;
            } else {
                if (toolbarWithButtonData == null) {
                }
                updateRegistration(5, progressVisible);
                if (progressVisible == null) {
                    z = false;
                } else {
                    z = progressVisible.get();
                }
                if (j7 != j2) {
                    if (z) {
                    }
                    j = z ? (j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : (j | 512) | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                }
                i = 8;
                if (z) {
                }
                if (z) {
                    i = 0;
                }
                i2 = i4;
                j6 = 416;
                charSequence = spanned;
                drawable2 = drawable3;
                i3 = i5;
            }
            if ((j & j6) != j2) {
                fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
                fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
            }
            if ((j & 256) != j2) {
                fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
                fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
            }
            if ((j & 388) != j2) {
                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
            }
            if ((j & j5) != j2) {
                ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
            }
            if ((j & 386) != j2) {
                TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
            }
            if ((j & 392) != j2) {
                fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
            }
            if ((j & 320) != j2) {
                fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
            }
            if ((j & 384) != j2) {
                fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
            }
            executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
        }
        i3 = 0;
        drawable = null;
        drawable2 = null;
        charSequence = null;
        i2 = 0;
        i = 0;
        j6 = 416;
        if ((j & j6) != j2) {
            fragmentTransferBetweenCardsBinding.indeterminateProgress.setVisibility(i);
            fragmentTransferBetweenCardsBinding.mboundView5.setVisibility(i3);
        }
        if ((j & 256) != j2) {
            fragmentTransferBetweenCardsBinding.mboundView2.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback19);
            fragmentTransferBetweenCardsBinding.mboundView3.setOnClickListener(fragmentTransferBetweenCardsBinding.mCallback20);
        }
        if ((j & 388) != j2) {
            ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView2, drawable);
        }
        if ((j & j5) != j2) {
            ImageViewBindingAdapter.setImageDrawable(fragmentTransferBetweenCardsBinding.mboundView3, drawable2);
        }
        if ((j & 386) != j2) {
            TextViewBindingAdapter.setText(fragmentTransferBetweenCardsBinding.mboundView5, charSequence);
        }
        if ((j & 392) != j2) {
            fragmentTransferBetweenCardsBinding.mboundView5.setTextColor(i2);
        }
        if ((j & 320) != j2) {
            fragmentTransferBetweenCardsBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
        }
        if ((j & 384) != j2) {
            fragmentTransferBetweenCardsBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
        }
        executeBindingsOn(fragmentTransferBetweenCardsBinding.toolbarBlock);
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
                    i.onUpPressed();
                    return;
                }
                break;
            case 2:
                i = this.mHandler;
                if (i != 0) {
                    view = 1;
                }
                if (view != null) {
                    i.onDownPressed();
                    break;
                }
                break;
            default:
                break;
        }
    }

    public static FragmentTransferBetweenCardsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentTransferBetweenCardsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentTransferBetweenCardsBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_transfer_between_cards, viewGroup, z, dataBindingComponent);
    }

    public static FragmentTransferBetweenCardsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentTransferBetweenCardsBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_transfer_between_cards, null, false), dataBindingComponent);
    }

    public static FragmentTransferBetweenCardsBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentTransferBetweenCardsBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_transfer_between_cards_0".equals(view.getTag())) {
            return new FragmentTransferBetweenCardsBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

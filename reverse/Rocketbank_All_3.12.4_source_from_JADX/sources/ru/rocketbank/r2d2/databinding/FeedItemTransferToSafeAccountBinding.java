package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.feed.FeedTransferToSafeListener;
import ru.rocketbank.r2d2.data.binding.feed.FeedTransferToSaveData;

public class FeedItemTransferToSafeAccountBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final RocketTextView confirmButton;
    public final RocketTextView headerText;
    public final RocketTextView infoButton;
    private FeedTransferToSaveData mData;
    private long mDirtyFlags = -1;
    private FeedTransferToSafeListener mListener;
    private OnClickListenerImpl1 mListenerConfirmClickedAndroidViewViewOnClickListener;
    private OnClickListenerImpl mListenerInfoClickedAndroidViewViewOnClickListener;
    private final LinearLayout mboundView0;

    public static class OnClickListenerImpl1 implements OnClickListener {
        private FeedTransferToSafeListener value;

        public OnClickListenerImpl1 setValue(FeedTransferToSafeListener feedTransferToSafeListener) {
            this.value = feedTransferToSafeListener;
            return feedTransferToSafeListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.confirmClicked(view);
        }
    }

    public static class OnClickListenerImpl implements OnClickListener {
        private FeedTransferToSafeListener value;

        public OnClickListenerImpl setValue(FeedTransferToSafeListener feedTransferToSafeListener) {
            this.value = feedTransferToSafeListener;
            return feedTransferToSafeListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.infoClicked(view);
        }
    }

    public FeedItemTransferToSafeAccountBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 3);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.confirmButton = (RocketTextView) dataBindingComponent[3];
        this.confirmButton.setTag(null);
        this.headerText = (RocketTextView) dataBindingComponent[1];
        this.headerText.setTag(null);
        this.infoButton = (RocketTextView) dataBindingComponent[2];
        this.infoButton.setTag(null);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        setRootTag(view);
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
        if (55 == i) {
            setListener((FeedTransferToSafeListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((FeedTransferToSaveData) obj);
        }
        return true;
    }

    public void setListener(FeedTransferToSafeListener feedTransferToSafeListener) {
        this.mListener = feedTransferToSafeListener;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public FeedTransferToSafeListener getListener() {
        return this.mListener;
    }

    public void setData(FeedTransferToSaveData feedTransferToSaveData) {
        this.mData = feedTransferToSaveData;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public FeedTransferToSaveData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataInfoButtonText((ObservableField) obj, i2);
            case 1:
                return onChangeDataText((ObservableField) obj, i2);
            case 2:
                return onChangeDataGoButtonText((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataInfoButtonText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataGoButtonText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        OnClickListener onClickListener;
        OnClickListener onClickListener2;
        FeedItemTransferToSafeAccountBinding feedItemTransferToSafeAccountBinding = this;
        synchronized (this) {
            try {
                j = feedItemTransferToSafeAccountBinding.mDirtyFlags;
                long j2 = 0;
                feedItemTransferToSafeAccountBinding.mDirtyFlags = 0;
            } finally {
                j = 
/*
Method generation error in method: ru.rocketbank.r2d2.databinding.FeedItemTransferToSafeAccountBinding.executeBindings():void, dex: classes2.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x01a6: MERGE  (r2_18 'j' long) = (r0_1 int), (r10_15 int) in method: ru.rocketbank.r2d2.databinding.FeedItemTransferToSafeAccountBinding.executeBindings():void, dex: classes2.dex
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:226)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:203)
	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:100)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:50)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:93)
	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:299)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:93)
	at jadx.core.codegen.RegionGen.makeSynchronizedRegion(RegionGen.java:229)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:187)
	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:320)
	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:257)
	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:220)
	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:110)
	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:75)
	at jadx.core.codegen.CodeGen.visit(CodeGen.java:12)
	at jadx.core.ProcessClass.process(ProcessClass.java:40)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
Caused by: jadx.core.utils.exceptions.CodegenException: MERGE can be used only in fallback mode
	at jadx.core.codegen.InsnGen.fallbackOnlyInsn(InsnGen.java:537)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:509)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:220)
	... 29 more

*/

                public static FeedItemTransferToSafeAccountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
                    return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
                }

                public static FeedItemTransferToSafeAccountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
                    return (FeedItemTransferToSafeAccountBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.feed_item_transfer_to_safe_account, viewGroup, z, dataBindingComponent);
                }

                public static FeedItemTransferToSafeAccountBinding inflate(LayoutInflater layoutInflater) {
                    return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
                }

                public static FeedItemTransferToSafeAccountBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
                    return bind(layoutInflater.inflate(C0859R.layout.feed_item_transfer_to_safe_account, null, false), dataBindingComponent);
                }

                public static FeedItemTransferToSafeAccountBinding bind(View view) {
                    return bind(view, DataBindingUtil.getDefaultComponent());
                }

                public static FeedItemTransferToSafeAccountBinding bind(View view, DataBindingComponent dataBindingComponent) {
                    if ("layout/feed_item_transfer_to_safe_account_0".equals(view.getTag())) {
                        return new FeedItemTransferToSafeAccountBinding(dataBindingComponent, view);
                    }
                    StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
                    stringBuilder.append(view.getTag());
                    throw new RuntimeException(stringBuilder.toString());
                }
            }

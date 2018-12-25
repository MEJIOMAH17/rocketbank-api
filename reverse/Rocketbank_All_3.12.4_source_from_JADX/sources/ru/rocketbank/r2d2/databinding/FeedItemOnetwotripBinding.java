package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.feed.FeedOnetwotripHolderData;

public class FeedItemOnetwotripBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final ImageView background;
    public final RocketTextView button;
    private FeedOnetwotripHolderData mData;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;
    public final RocketTextView tariffCode;
    public final RocketTextView tariffDescription;
    public final RocketTextView tariffText;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.background, 5);
    }

    public FeedItemOnetwotripBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 4);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.background = (ImageView) dataBindingComponent[5];
        this.button = (RocketTextView) dataBindingComponent[4];
        this.button.setTag(null);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.tariffCode = (RocketTextView) dataBindingComponent[3];
        this.tariffCode.setTag(null);
        this.tariffDescription = (RocketTextView) dataBindingComponent[2];
        this.tariffDescription.setTag(null);
        this.tariffText = (RocketTextView) dataBindingComponent[1];
        this.tariffText.setTag(null);
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
        if (24 != i) {
            return false;
        }
        setData((FeedOnetwotripHolderData) obj);
        return true;
    }

    public void setData(FeedOnetwotripHolderData feedOnetwotripHolderData) {
        this.mData = feedOnetwotripHolderData;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public FeedOnetwotripHolderData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataUid((ObservableField) obj, i2);
            case 1:
                return onChangeDataTariffDescription((ObservableField) obj, i2);
            case 2:
                return onChangeDataTariffText((ObservableField) obj, i2);
            case 3:
                return onChangeDataButtonText((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataUid(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataTariffDescription(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataTariffText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataButtonText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        Object buttonText;
        FeedItemOnetwotripBinding feedItemOnetwotripBinding = this;
        synchronized (this) {
            try {
                j = feedItemOnetwotripBinding.mDirtyFlags;
                long j2 = 0;
                feedItemOnetwotripBinding.mDirtyFlags = 0;
            } finally {
                j = 
/*
Method generation error in method: ru.rocketbank.r2d2.databinding.FeedItemOnetwotripBinding.executeBindings():void, dex: classes2.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00cf: MERGE  (r2_5 'j' long) = (r0_1 java.lang.Object), (r6_14 'buttonText' java.lang.Object) in method: ru.rocketbank.r2d2.databinding.FeedItemOnetwotripBinding.executeBindings():void, dex: classes2.dex
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

                public static FeedItemOnetwotripBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
                    return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
                }

                public static FeedItemOnetwotripBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
                    return (FeedItemOnetwotripBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.feed_item_onetwotrip, viewGroup, z, dataBindingComponent);
                }

                public static FeedItemOnetwotripBinding inflate(LayoutInflater layoutInflater) {
                    return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
                }

                public static FeedItemOnetwotripBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
                    return bind(layoutInflater.inflate(C0859R.layout.feed_item_onetwotrip, null, false), dataBindingComponent);
                }

                public static FeedItemOnetwotripBinding bind(View view) {
                    return bind(view, DataBindingUtil.getDefaultComponent());
                }

                public static FeedItemOnetwotripBinding bind(View view, DataBindingComponent dataBindingComponent) {
                    if ("layout/feed_item_onetwotrip_0".equals(view.getTag())) {
                        return new FeedItemOnetwotripBinding(dataBindingComponent, view);
                    }
                    StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
                    stringBuilder.append(view.getTag());
                    throw new RuntimeException(stringBuilder.toString());
                }
            }

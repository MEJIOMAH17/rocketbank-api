package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.feed.DeliveryItemClickListener;
import ru.rocketbank.r2d2.data.binding.feed.FeedDeliveryHolderData;

public class FeedItemDeliveryBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final ImageView backgroundImage;
    public final RocketTextView buttonText;
    public final RocketTextView descriptionText;
    private final OnClickListener mCallback22;
    private FeedDeliveryHolderData mData;
    private long mDirtyFlags = -1;
    private DeliveryItemClickListener mListener;
    private final LinearLayout mboundView0;
    public final RocketTextView titleText;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.backgroundImage, 4);
    }

    public FeedItemDeliveryBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 3);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.backgroundImage = (ImageView) dataBindingComponent[4];
        this.buttonText = (RocketTextView) dataBindingComponent[3];
        this.buttonText.setTag(null);
        this.descriptionText = (RocketTextView) dataBindingComponent[2];
        this.descriptionText.setTag(null);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.titleText = (RocketTextView) dataBindingComponent[1];
        this.titleText.setTag(null);
        setRootTag(view);
        this.mCallback22 = new android.databinding.generated.callback.OnClickListener(this, 1);
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
            setListener((DeliveryItemClickListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((FeedDeliveryHolderData) obj);
        }
        return true;
    }

    public void setListener(DeliveryItemClickListener deliveryItemClickListener) {
        this.mListener = deliveryItemClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public DeliveryItemClickListener getListener() {
        return this.mListener;
    }

    public void setData(FeedDeliveryHolderData feedDeliveryHolderData) {
        this.mData = feedDeliveryHolderData;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public FeedDeliveryHolderData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataTitle((ObservableField) obj, i2);
            case 1:
                return onChangeDataDescription((ObservableField) obj, i2);
            case 2:
                return onChangeDataButtonText((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataTitle(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataDescription(ObservableField<String> observableField, int i) {
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
        long j;
        FeedItemDeliveryBinding feedItemDeliveryBinding = this;
        synchronized (this) {
            try {
                j = feedItemDeliveryBinding.mDirtyFlags;
                long j2 = 0;
                feedItemDeliveryBinding.mDirtyFlags = 0;
            } finally {
                int i;
                j = 
/*
Method generation error in method: ru.rocketbank.r2d2.databinding.FeedItemDeliveryBinding.executeBindings():void, dex: classes2.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00d0: MERGE  (r2_8 'j' long) = (r0_1 int), (r15_9 'i' int) in method: ru.rocketbank.r2d2.databinding.FeedItemDeliveryBinding.executeBindings():void, dex: classes2.dex
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

                public final void _internalCallbackOnClick(int i, View view) {
                    i = this.mListener;
                    if ((i != 0 ? true : null) != null) {
                        i.onDeliveryClicked();
                    }
                }

                public static FeedItemDeliveryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
                    return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
                }

                public static FeedItemDeliveryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
                    return (FeedItemDeliveryBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.feed_item_delivery, viewGroup, z, dataBindingComponent);
                }

                public static FeedItemDeliveryBinding inflate(LayoutInflater layoutInflater) {
                    return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
                }

                public static FeedItemDeliveryBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
                    return bind(layoutInflater.inflate(C0859R.layout.feed_item_delivery, null, false), dataBindingComponent);
                }

                public static FeedItemDeliveryBinding bind(View view) {
                    return bind(view, DataBindingUtil.getDefaultComponent());
                }

                public static FeedItemDeliveryBinding bind(View view, DataBindingComponent dataBindingComponent) {
                    if ("layout/feed_item_delivery_0".equals(view.getTag())) {
                        return new FeedItemDeliveryBinding(dataBindingComponent, view);
                    }
                    StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
                    stringBuilder.append(view.getTag());
                    throw new RuntimeException(stringBuilder.toString());
                }
            }

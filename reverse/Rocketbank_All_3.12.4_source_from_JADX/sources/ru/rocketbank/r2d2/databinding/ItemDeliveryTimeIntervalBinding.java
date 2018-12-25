package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
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
import android.widget.RelativeLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.delivery.TimeIntervalChoseListener;
import ru.rocketbank.r2d2.data.binding.delivery.TimeItemData;

public class ItemDeliveryTimeIntervalBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final ImageView isChecked;
    private final OnClickListener mCallback23;
    private TimeItemData mData;
    private long mDirtyFlags = -1;
    private String mKey;
    private TimeIntervalChoseListener mListener;
    private final RelativeLayout mboundView0;
    private final RocketTextView mboundView2;

    public ItemDeliveryTimeIntervalBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds);
        this.isChecked = (ImageView) dataBindingComponent[1];
        this.isChecked.setTag(null);
        this.mboundView0 = (RelativeLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView2 = (RocketTextView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        setRootTag(view);
        this.mCallback23 = new android.databinding.generated.callback.OnClickListener(this, 1);
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
            setListener((TimeIntervalChoseListener) obj);
        } else if (52 == i) {
            setKey((String) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((TimeItemData) obj);
        }
        return true;
    }

    public void setListener(TimeIntervalChoseListener timeIntervalChoseListener) {
        this.mListener = timeIntervalChoseListener;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public TimeIntervalChoseListener getListener() {
        return this.mListener;
    }

    public void setKey(String str) {
        this.mKey = str;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(52);
        super.requestRebind();
    }

    public String getKey() {
        return this.mKey;
    }

    public void setData(TimeItemData timeItemData) {
        this.mData = timeItemData;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public TimeItemData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataIntervalText((ObservableField) obj, i2);
            case 1:
                return onChangeDataIsSelected((ObservableBoolean) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataIntervalText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataIsSelected(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        ItemDeliveryTimeIntervalBinding itemDeliveryTimeIntervalBinding = this;
        synchronized (this) {
            try {
                j = itemDeliveryTimeIntervalBinding.mDirtyFlags;
                long j2 = 0;
                itemDeliveryTimeIntervalBinding.mDirtyFlags = 0;
            } finally {
                j = 
/*
Method generation error in method: ru.rocketbank.r2d2.databinding.ItemDeliveryTimeIntervalBinding.executeBindings():void, dex: classes2.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00d9: MERGE  (r2_12 'j' long) = (r0_1 int), (r13_7 int) in method: ru.rocketbank.r2d2.databinding.ItemDeliveryTimeIntervalBinding.executeBindings():void, dex: classes2.dex
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
                    view = this.mKey;
                    TimeItemData timeItemData = this.mData;
                    if ((i != 0 ? 1 : null) != null) {
                        i.onTimeIntervalClicked(view, timeItemData);
                    }
                }

                public static ItemDeliveryTimeIntervalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
                    return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
                }

                public static ItemDeliveryTimeIntervalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
                    return (ItemDeliveryTimeIntervalBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.item_delivery_time_interval, viewGroup, z, dataBindingComponent);
                }

                public static ItemDeliveryTimeIntervalBinding inflate(LayoutInflater layoutInflater) {
                    return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
                }

                public static ItemDeliveryTimeIntervalBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
                    return bind(layoutInflater.inflate(C0859R.layout.item_delivery_time_interval, null, false), dataBindingComponent);
                }

                public static ItemDeliveryTimeIntervalBinding bind(View view) {
                    return bind(view, DataBindingUtil.getDefaultComponent());
                }

                public static ItemDeliveryTimeIntervalBinding bind(View view, DataBindingComponent dataBindingComponent) {
                    if ("layout/item_delivery_time_interval_0".equals(view.getTag())) {
                        return new ItemDeliveryTimeIntervalBinding(dataBindingComponent, view);
                    }
                    StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
                    stringBuilder.append(view.getTag());
                    throw new RuntimeException(stringBuilder.toString());
                }
            }

package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.v7.widget.CardView;
import android.support.v7.widget.GridLayout;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.discount.GridDiscountData;

public class DiscountsGridContainerBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final GridLayout container;
    private GridDiscountData mData;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;
    private final CardView mboundView2;
    public final RocketTextView title;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.container, 3);
    }

    public DiscountsGridContainerBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.container = (GridLayout) dataBindingComponent[3];
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView2 = (CardView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.title = (RocketTextView) dataBindingComponent[1];
        this.title.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 8;
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
        setData((GridDiscountData) obj);
        return true;
    }

    public void setData(GridDiscountData gridDiscountData) {
        this.mData = gridDiscountData;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public GridDiscountData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataIsWhiteBackground((ObservableBoolean) obj, i2);
            case 1:
                return onChangeDataTitle((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataIsWhiteBackground(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataTitle(ObservableField<String> observableField, int i) {
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
        DiscountsGridContainerBinding discountsGridContainerBinding = this;
        synchronized (this) {
            try {
                j = discountsGridContainerBinding.mDirtyFlags;
                long j2 = 0;
                discountsGridContainerBinding.mDirtyFlags = 0;
            } finally {
                long j3;
                j = 
/*
Method generation error in method: ru.rocketbank.r2d2.databinding.DiscountsGridContainerBinding.executeBindings():void, dex: classes2.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x008b: MERGE  (r2_9 'j' long) = (r0_1 long), (r16_5 'j3' long) in method: ru.rocketbank.r2d2.databinding.DiscountsGridContainerBinding.executeBindings():void, dex: classes2.dex
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

                public static DiscountsGridContainerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
                    return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
                }

                public static DiscountsGridContainerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
                    return (DiscountsGridContainerBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.discounts_grid_container, viewGroup, z, dataBindingComponent);
                }

                public static DiscountsGridContainerBinding inflate(LayoutInflater layoutInflater) {
                    return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
                }

                public static DiscountsGridContainerBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
                    return bind(layoutInflater.inflate(C0859R.layout.discounts_grid_container, null, false), dataBindingComponent);
                }

                public static DiscountsGridContainerBinding bind(View view) {
                    return bind(view, DataBindingUtil.getDefaultComponent());
                }

                public static DiscountsGridContainerBinding bind(View view, DataBindingComponent dataBindingComponent) {
                    if ("layout/discounts_grid_container_0".equals(view.getTag())) {
                        return new DiscountsGridContainerBinding(dataBindingComponent, view);
                    }
                    StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
                    stringBuilder.append(view.getTag());
                    throw new RuntimeException(stringBuilder.toString());
                }
            }

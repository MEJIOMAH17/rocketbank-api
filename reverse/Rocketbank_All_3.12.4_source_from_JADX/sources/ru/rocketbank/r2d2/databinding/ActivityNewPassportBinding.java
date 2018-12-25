package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.design.widget.CoordinatorLayout;
import android.support.v7.widget.AppCompatImageView;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.registration.new_passport.NewPassportData;

public class ActivityNewPassportBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final CoordinatorLayout container;
    public final AppCompatImageView imageStep1;
    public final AppCompatImageView imageStep2;
    public final AppCompatImageView imageStep3;
    public final View line1;
    public final View line2;
    private NewPassportData mData;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;
    public final Toolbar toolbar;
    public final View toolbarShadow;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.toolbar, 6);
        sViewsWithIds.put(C0859R.id.toolbarShadow, 7);
        sViewsWithIds.put(C0859R.id.container, 8);
    }

    public ActivityNewPassportBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds);
        this.container = (CoordinatorLayout) dataBindingComponent[8];
        this.imageStep1 = (AppCompatImageView) dataBindingComponent[1];
        this.imageStep1.setTag(null);
        this.imageStep2 = (AppCompatImageView) dataBindingComponent[3];
        this.imageStep2.setTag(null);
        this.imageStep3 = (AppCompatImageView) dataBindingComponent[5];
        this.imageStep3.setTag(null);
        this.line1 = (View) dataBindingComponent[2];
        this.line1.setTag(null);
        this.line2 = (View) dataBindingComponent[4];
        this.line2.setTag(null);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.toolbar = (Toolbar) dataBindingComponent[6];
        this.toolbarShadow = (View) dataBindingComponent[7];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 4;
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
        setData((NewPassportData) obj);
        return true;
    }

    public void setData(NewPassportData newPassportData) {
        this.mData = newPassportData;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public NewPassportData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeDataStep((ObservableInt) obj, i2);
    }

    private boolean onChangeDataStep(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        int i;
        ActivityNewPassportBinding activityNewPassportBinding = this;
        synchronized (this) {
            try {
                j = activityNewPassportBinding.mDirtyFlags;
                long j2 = 0;
                activityNewPassportBinding.mDirtyFlags = 0;
            } finally {
                j = 
/*
Method generation error in method: ru.rocketbank.r2d2.databinding.ActivityNewPassportBinding.executeBindings():void, dex: classes2.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00c4: MERGE  (r2_15 'j' long) = (r0_1 int), (r14_9 'i' int) in method: ru.rocketbank.r2d2.databinding.ActivityNewPassportBinding.executeBindings():void, dex: classes2.dex
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

                public static ActivityNewPassportBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
                    return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
                }

                public static ActivityNewPassportBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
                    return (ActivityNewPassportBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_new_passport, viewGroup, z, dataBindingComponent);
                }

                public static ActivityNewPassportBinding inflate(LayoutInflater layoutInflater) {
                    return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
                }

                public static ActivityNewPassportBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
                    return bind(layoutInflater.inflate(C0859R.layout.activity_new_passport, null, false), dataBindingComponent);
                }

                public static ActivityNewPassportBinding bind(View view) {
                    return bind(view, DataBindingUtil.getDefaultComponent());
                }

                public static ActivityNewPassportBinding bind(View view, DataBindingComponent dataBindingComponent) {
                    if ("layout/activity_new_passport_0".equals(view.getTag())) {
                        return new ActivityNewPassportBinding(dataBindingComponent, view);
                    }
                    StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
                    stringBuilder.append(view.getTag());
                    throw new RuntimeException(stringBuilder.toString());
                }
            }

package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.constraint.ConstraintLayout;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import ru.rocketbank.core.model.dto.RocketRoublesInfo;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

public class InfoOnetwotripBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketTextView fromOnetwotrip;
    public final RocketTextView fromRocketbank;
    public final ImageView image3;
    public final ImageView image4;
    public final ImageView image5;
    public final View line;
    private RocketRoublesInfo mData;
    private long mDirtyFlags = -1;
    public final ConstraintLayout onetwotrip;
    public final RocketTextView startGetTripcoins;
    public final RocketTextView text1;
    public final RocketTextView text2;
    public final RocketTextView text3;
    public final RocketTextView text4;
    public final RocketTextView text5;
    public final RocketTextView text6;
    public final RocketTextView text7;
    public final RocketTextView text8;
    public final RocketTextView tripcoins;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.tripcoins, 12);
        sViewsWithIds.put(C0859R.id.line, 13);
        sViewsWithIds.put(C0859R.id.image3, 14);
        sViewsWithIds.put(C0859R.id.image4, 15);
        sViewsWithIds.put(C0859R.id.image5, 16);
    }

    public InfoOnetwotripBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 17, sIncludes, sViewsWithIds);
        this.fromOnetwotrip = (RocketTextView) dataBindingComponent[4];
        this.fromOnetwotrip.setTag(null);
        this.fromRocketbank = (RocketTextView) dataBindingComponent[1];
        this.fromRocketbank.setTag(null);
        this.image3 = (ImageView) dataBindingComponent[14];
        this.image4 = (ImageView) dataBindingComponent[15];
        this.image5 = (ImageView) dataBindingComponent[16];
        this.line = (View) dataBindingComponent[13];
        this.onetwotrip = (ConstraintLayout) dataBindingComponent[0];
        this.onetwotrip.setTag(null);
        this.startGetTripcoins = (RocketTextView) dataBindingComponent[8];
        this.startGetTripcoins.setTag(null);
        this.text1 = (RocketTextView) dataBindingComponent[2];
        this.text1.setTag(null);
        this.text2 = (RocketTextView) dataBindingComponent[3];
        this.text2.setTag(null);
        this.text3 = (RocketTextView) dataBindingComponent[5];
        this.text3.setTag(null);
        this.text4 = (RocketTextView) dataBindingComponent[6];
        this.text4.setTag(null);
        this.text5 = (RocketTextView) dataBindingComponent[7];
        this.text5.setTag(null);
        this.text6 = (RocketTextView) dataBindingComponent[9];
        this.text6.setTag(null);
        this.text7 = (RocketTextView) dataBindingComponent[10];
        this.text7.setTag(null);
        this.text8 = (RocketTextView) dataBindingComponent[11];
        this.text8.setTag(null);
        this.tripcoins = (RocketTextView) dataBindingComponent[12];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 2;
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
        setData((RocketRoublesInfo) obj);
        return true;
    }

    public void setData(RocketRoublesInfo rocketRoublesInfo) {
        this.mData = rocketRoublesInfo;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public RocketRoublesInfo getData() {
        return this.mData;
    }

    protected void executeBindings() {
        long j;
        int i;
        InfoOnetwotripBinding infoOnetwotripBinding = this;
        synchronized (this) {
            try {
                j = infoOnetwotripBinding.mDirtyFlags;
                long j2 = 0;
                infoOnetwotripBinding.mDirtyFlags = 0;
            } finally {
                j = 
/*
Method generation error in method: ru.rocketbank.r2d2.databinding.InfoOnetwotripBinding.executeBindings():void, dex: classes2.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x01f8: MERGE  (r2_47 'j' long) = (r0_1 int), (r19_5 'i' int) in method: ru.rocketbank.r2d2.databinding.InfoOnetwotripBinding.executeBindings():void, dex: classes2.dex
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

                public static InfoOnetwotripBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
                    return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
                }

                public static InfoOnetwotripBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
                    return (InfoOnetwotripBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.info_onetwotrip, viewGroup, z, dataBindingComponent);
                }

                public static InfoOnetwotripBinding inflate(LayoutInflater layoutInflater) {
                    return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
                }

                public static InfoOnetwotripBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
                    return bind(layoutInflater.inflate(C0859R.layout.info_onetwotrip, null, false), dataBindingComponent);
                }

                public static InfoOnetwotripBinding bind(View view) {
                    return bind(view, DataBindingUtil.getDefaultComponent());
                }

                public static InfoOnetwotripBinding bind(View view, DataBindingComponent dataBindingComponent) {
                    if ("layout/info_onetwotrip_0".equals(view.getTag())) {
                        return new InfoOnetwotripBinding(dataBindingComponent, view);
                    }
                    StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
                    stringBuilder.append(view.getTag());
                    throw new RuntimeException(stringBuilder.toString());
                }
            }

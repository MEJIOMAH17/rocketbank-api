package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.constraint.ConstraintLayout;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

public class ShopListItemBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final ConstraintLayout content;
    public final ImageView imageView;
    private long mDirtyFlags = -1;
    private ShopItem mItem;
    private final CardView mboundView0;
    public final ProgressBar progressBar;
    public final RocketTextView rocketTextView3;
    public final RocketTextView textViewAmount;
    public final RocketAutofitTextView textViewPromo;
    public final RocketTextView textViewTitle;
    public final ImageView textureView;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.content, 6);
        sViewsWithIds.put(C0859R.id.progressBar, 7);
        sViewsWithIds.put(C0859R.id.imageView, 8);
    }

    public ShopListItemBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds);
        this.content = (ConstraintLayout) dataBindingComponent[6];
        this.imageView = (ImageView) dataBindingComponent[8];
        this.mboundView0 = (CardView) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.progressBar = (ProgressBar) dataBindingComponent[7];
        this.rocketTextView3 = (RocketTextView) dataBindingComponent[4];
        this.rocketTextView3.setTag(null);
        this.textViewAmount = (RocketTextView) dataBindingComponent[5];
        this.textViewAmount.setTag(null);
        this.textViewPromo = (RocketAutofitTextView) dataBindingComponent[2];
        this.textViewPromo.setTag(null);
        this.textViewTitle = (RocketTextView) dataBindingComponent[3];
        this.textViewTitle.setTag(null);
        this.textureView = (ImageView) dataBindingComponent[1];
        this.textureView.setTag(null);
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
        if (49 != i) {
            return false;
        }
        setItem((ShopItem) obj);
        return true;
    }

    public void setItem(ShopItem shopItem) {
        this.mItem = shopItem;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    public ShopItem getItem() {
        return this.mItem;
    }

    protected void executeBindings() {
        long j;
        int i;
        ShopListItemBinding shopListItemBinding = this;
        synchronized (this) {
            try {
                j = shopListItemBinding.mDirtyFlags;
                long j2 = 0;
                shopListItemBinding.mDirtyFlags = 0;
            } finally {
                j = 
/*
Method generation error in method: ru.rocketbank.r2d2.databinding.ShopListItemBinding.executeBindings():void, dex: classes2.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00f2: MERGE  (r2_23 'j' long) = (r0_1 int), (r19_5 'i' int) in method: ru.rocketbank.r2d2.databinding.ShopListItemBinding.executeBindings():void, dex: classes2.dex
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

                public static ShopListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
                    return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
                }

                public static ShopListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
                    return (ShopListItemBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.shop_list_item, viewGroup, z, dataBindingComponent);
                }

                public static ShopListItemBinding inflate(LayoutInflater layoutInflater) {
                    return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
                }

                public static ShopListItemBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
                    return bind(layoutInflater.inflate(C0859R.layout.shop_list_item, null, false), dataBindingComponent);
                }

                public static ShopListItemBinding bind(View view) {
                    return bind(view, DataBindingUtil.getDefaultComponent());
                }

                public static ShopListItemBinding bind(View view, DataBindingComponent dataBindingComponent) {
                    if ("layout/shop_list_item_0".equals(view.getTag())) {
                        return new ShopListItemBinding(dataBindingComponent, view);
                    }
                    StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
                    stringBuilder.append(view.getTag());
                    throw new RuntimeException(stringBuilder.toString());
                }
            }

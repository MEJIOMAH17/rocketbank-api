package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.feed.FeedOnCLickListener;
import ru.rocketbank.r2d2.root.feed.binding.FeedNewPassportData;

public class FeedItemNewPassportBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final CardView cardBody;
    public final RocketTextView confirm;
    public final RocketTextView headerText;
    private final OnClickListener mCallback12;
    private FeedNewPassportData mData;
    private long mDirtyFlags = -1;
    private FeedOnCLickListener mListener;
    public final LinearLayout root;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.cardBody, 3);
    }

    public FeedItemNewPassportBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.cardBody = (CardView) dataBindingComponent[3];
        this.confirm = (RocketTextView) dataBindingComponent[2];
        this.confirm.setTag(null);
        this.headerText = (RocketTextView) dataBindingComponent[1];
        this.headerText.setTag(null);
        this.root = (LinearLayout) dataBindingComponent[0];
        this.root.setTag(null);
        setRootTag(view);
        this.mCallback12 = new android.databinding.generated.callback.OnClickListener(this, 1);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 16;
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
            setListener((FeedOnCLickListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((FeedNewPassportData) obj);
        }
        return true;
    }

    public void setListener(FeedOnCLickListener feedOnCLickListener) {
        this.mListener = feedOnCLickListener;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public FeedOnCLickListener getListener() {
        return this.mListener;
    }

    public void setData(FeedNewPassportData feedNewPassportData) {
        this.mData = feedNewPassportData;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public FeedNewPassportData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataText((ObservableField) obj, i2);
            case 1:
                return onChangeDataButtonText((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataButtonText(ObservableField<String> observableField, int i) {
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
        CharSequence charSequence;
        int i;
        CharSequence charSequence2;
        boolean z;
        FeedItemNewPassportBinding feedItemNewPassportBinding = this;
        synchronized (this) {
            try {
                j = feedItemNewPassportBinding.mDirtyFlags;
                long j2 = 0;
                feedItemNewPassportBinding.mDirtyFlags = 0;
            } finally {
                String str;
                j = 
/*
Method generation error in method: ru.rocketbank.r2d2.databinding.FeedItemNewPassportBinding.executeBindings():void, dex: classes2.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00e8: MERGE  (r2_11 'j' long) = (r0_1 java.lang.String), (r6_19 'str' java.lang.String) in method: ru.rocketbank.r2d2.databinding.FeedItemNewPassportBinding.executeBindings():void, dex: classes2.dex
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
                        i.onClick();
                    }
                }

                public static FeedItemNewPassportBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
                    return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
                }

                public static FeedItemNewPassportBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
                    return (FeedItemNewPassportBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.feed_item_new_passport, viewGroup, z, dataBindingComponent);
                }

                public static FeedItemNewPassportBinding inflate(LayoutInflater layoutInflater) {
                    return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
                }

                public static FeedItemNewPassportBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
                    return bind(layoutInflater.inflate(C0859R.layout.feed_item_new_passport, null, false), dataBindingComponent);
                }

                public static FeedItemNewPassportBinding bind(View view) {
                    return bind(view, DataBindingUtil.getDefaultComponent());
                }

                public static FeedItemNewPassportBinding bind(View view, DataBindingComponent dataBindingComponent) {
                    if ("layout/feed_item_new_passport_0".equals(view.getTag())) {
                        return new FeedItemNewPassportBinding(dataBindingComponent, view);
                    }
                    StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
                    stringBuilder.append(view.getTag());
                    throw new RuntimeException(stringBuilder.toString());
                }
            }

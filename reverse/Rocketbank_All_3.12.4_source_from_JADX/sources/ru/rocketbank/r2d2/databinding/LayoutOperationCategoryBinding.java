package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
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
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import ru.rocketbank.core.widgets.RocketIconView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.friends.HashTagEditText;
import ru.rocketbank.r2d2.root.operation.vh.CommonOperationData;
import ru.rocketbank.r2d2.root.operation.vh.TagActions;
import ru.rocketbank.r2d2.root.operation.vh.TagState;

public class LayoutOperationCategoryBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketTextView cancel;
    public final CardView card;
    public final RocketTextView categoryName;
    public final HashTagEditText comment;
    public final RocketIconView icon;
    public final ProgressBar indeterminateProgress;
    private final OnClickListener mCallback4;
    private final OnClickListener mCallback5;
    private TagState mData;
    private long mDirtyFlags = -1;
    private TagActions mHandler;
    private CommonOperationData mState;
    private final FrameLayout mboundView0;
    private final LinearLayout mboundView2;
    public final RocketTextView save;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.card, 6);
        sViewsWithIds.put(C0859R.id.icon, 7);
        sViewsWithIds.put(C0859R.id.comment, 8);
    }

    public LayoutOperationCategoryBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 3);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds);
        this.cancel = (RocketTextView) dataBindingComponent[3];
        this.cancel.setTag(null);
        this.card = (CardView) dataBindingComponent[6];
        this.categoryName = (RocketTextView) dataBindingComponent[1];
        this.categoryName.setTag(null);
        this.comment = (HashTagEditText) dataBindingComponent[8];
        this.icon = (RocketIconView) dataBindingComponent[7];
        this.indeterminateProgress = (ProgressBar) dataBindingComponent[5];
        this.indeterminateProgress.setTag(null);
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView2 = (LinearLayout) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.save = (RocketTextView) dataBindingComponent[4];
        this.save.setTag(null);
        setRootTag(view);
        this.mCallback5 = new android.databinding.generated.callback.OnClickListener(this, 2);
        this.mCallback4 = new android.databinding.generated.callback.OnClickListener(this, 1);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 64;
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
        if (40 == i) {
            setHandler((TagActions) obj);
        } else if (24 == i) {
            setData((TagState) obj);
        } else if (75 != i) {
            return false;
        } else {
            setState((CommonOperationData) obj);
        }
        return true;
    }

    public void setHandler(TagActions tagActions) {
        this.mHandler = tagActions;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public TagActions getHandler() {
        return this.mHandler;
    }

    public void setData(TagState tagState) {
        this.mData = tagState;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public TagState getData() {
        return this.mData;
    }

    public void setState(CommonOperationData commonOperationData) {
        this.mState = commonOperationData;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(75);
        super.requestRebind();
    }

    public CommonOperationData getState() {
        return this.mState;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeStateUpdateInProgress((ObservableBoolean) obj, i2);
            case 1:
                return onChangeStateSaveActionsActive((ObservableBoolean) obj, i2);
            case 2:
                return onChangeDataCategoryName((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeStateUpdateInProgress(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeStateSaveActionsActive(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataCategoryName(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    protected void executeBindings() {
        int i;
        CharSequence charSequence;
        long j;
        long j2;
        long j3;
        int i2;
        Object updateInProgress;
        boolean z;
        long j4;
        int i3;
        int i4;
        int i5;
        Object saveActionsActive;
        boolean z2;
        int i6;
        int i7;
        LayoutOperationCategoryBinding layoutOperationCategoryBinding = this;
        synchronized (this) {
            try {
                long j5 = layoutOperationCategoryBinding.mDirtyFlags;
                long j6 = 0;
                layoutOperationCategoryBinding.mDirtyFlags = 0;
            } finally {
                int i8 = 
/*
Method generation error in method: ru.rocketbank.r2d2.databinding.LayoutOperationCategoryBinding.executeBindings():void, dex: classes2.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x011f: MERGE  (r2_17 'i8' int) = (r0_1 int), (r10_20 'i' int) in method: ru.rocketbank.r2d2.databinding.LayoutOperationCategoryBinding.executeBindings():void, dex: classes2.dex
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
                    view = null;
                    switch (i) {
                        case 1:
                            i = this.mHandler;
                            if (i != 0) {
                                view = 1;
                            }
                            if (view != null) {
                                i.onCancel();
                                break;
                            }
                            break;
                        case 2:
                            i = this.mHandler;
                            if (i != 0) {
                                view = 1;
                            }
                            if (view != null) {
                                i.onSave();
                                return;
                            }
                            break;
                        default:
                            break;
                    }
                }

                public static LayoutOperationCategoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
                    return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
                }

                public static LayoutOperationCategoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
                    return (LayoutOperationCategoryBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_operation_category, viewGroup, z, dataBindingComponent);
                }

                public static LayoutOperationCategoryBinding inflate(LayoutInflater layoutInflater) {
                    return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
                }

                public static LayoutOperationCategoryBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
                    return bind(layoutInflater.inflate(C0859R.layout.layout_operation_category, null, false), dataBindingComponent);
                }

                public static LayoutOperationCategoryBinding bind(View view) {
                    return bind(view, DataBindingUtil.getDefaultComponent());
                }

                public static LayoutOperationCategoryBinding bind(View view, DataBindingComponent dataBindingComponent) {
                    if ("layout/layout_operation_category_0".equals(view.getTag())) {
                        return new LayoutOperationCategoryBinding(dataBindingComponent, view);
                    }
                    StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
                    stringBuilder.append(view.getTag());
                    throw new RuntimeException(stringBuilder.toString());
                }
            }

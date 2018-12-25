package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.graphics.drawable.Drawable;
import android.support.constraint.ConstraintLayout;
import android.support.v7.widget.AppCompatImageView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.registration.new_passport.NewPassportStepData;
import ru.rocketbank.r2d2.registration.new_passport.OnButtonsClickListener;

public class FragmentNewPassportStepBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final RocketButton button;
    public final RocketButton buttonBottom;
    public final RocketTextView helpText;
    public final AppCompatImageView imageView3;
    private NewPassportStepData mData;
    private long mDirtyFlags = -1;
    private OnButtonsClickListener mListener;
    private OnClickListenerImpl mListenerBottomButtonClickedAndroidViewViewOnClickListener;
    private OnClickListenerImpl1 mListenerMainClickedAndroidViewViewOnClickListener;
    private final ConstraintLayout mboundView0;
    public final RocketTextView titleText;

    public static class OnClickListenerImpl1 implements OnClickListener {
        private OnButtonsClickListener value;

        public OnClickListenerImpl1 setValue(OnButtonsClickListener onButtonsClickListener) {
            this.value = onButtonsClickListener;
            return onButtonsClickListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.mainClicked(view);
        }
    }

    public static class OnClickListenerImpl implements OnClickListener {
        private OnButtonsClickListener value;

        public OnClickListenerImpl setValue(OnButtonsClickListener onButtonsClickListener) {
            this.value = onButtonsClickListener;
            return onButtonsClickListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.bottomButtonClicked(view);
        }
    }

    public FragmentNewPassportStepBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 6);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.button = (RocketButton) dataBindingComponent[3];
        this.button.setTag(null);
        this.buttonBottom = (RocketButton) dataBindingComponent[2];
        this.buttonBottom.setTag(null);
        this.helpText = (RocketTextView) dataBindingComponent[4];
        this.helpText.setTag(null);
        this.imageView3 = (AppCompatImageView) dataBindingComponent[5];
        this.imageView3.setTag(null);
        this.mboundView0 = (ConstraintLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.titleText = (RocketTextView) dataBindingComponent[1];
        this.titleText.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 256;
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
            setListener((OnButtonsClickListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((NewPassportStepData) obj);
        }
        return true;
    }

    public void setListener(OnButtonsClickListener onButtonsClickListener) {
        this.mListener = onButtonsClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public OnButtonsClickListener getListener() {
        return this.mListener;
    }

    public void setData(NewPassportStepData newPassportStepData) {
        this.mData = newPassportStepData;
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public NewPassportStepData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataPhotoTitle((ObservableField) obj, i2);
            case 1:
                return onChangeDataBottomButtonText((ObservableField) obj, i2);
            case 2:
                return onChangeDataImage((ObservableField) obj, i2);
            case 3:
                return onChangeDataButtonsEnabled((ObservableBoolean) obj, i2);
            case 4:
                return onChangeDataHelpText((ObservableField) obj, i2);
            case 5:
                return onChangeDataMainButtonText((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataPhotoTitle(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataBottomButtonText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataImage(ObservableField<Drawable> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataButtonsEnabled(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeDataHelpText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeDataMainButtonText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        int i;
        OnClickListener onClickListener;
        OnClickListener onClickListener2;
        FragmentNewPassportStepBinding fragmentNewPassportStepBinding = this;
        synchronized (this) {
            try {
                j = fragmentNewPassportStepBinding.mDirtyFlags;
                long j2 = 0;
                fragmentNewPassportStepBinding.mDirtyFlags = 0;
            } finally {
                j = 
/*
Method generation error in method: ru.rocketbank.r2d2.databinding.FragmentNewPassportStepBinding.executeBindings():void, dex: classes2.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x01c0: MERGE  (r2_12 'j' long) = (r0_1 int), (r8_15 'i' int) in method: ru.rocketbank.r2d2.databinding.FragmentNewPassportStepBinding.executeBindings():void, dex: classes2.dex
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

                public static FragmentNewPassportStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
                    return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
                }

                public static FragmentNewPassportStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
                    return (FragmentNewPassportStepBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_new_passport_step, viewGroup, z, dataBindingComponent);
                }

                public static FragmentNewPassportStepBinding inflate(LayoutInflater layoutInflater) {
                    return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
                }

                public static FragmentNewPassportStepBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
                    return bind(layoutInflater.inflate(C0859R.layout.fragment_new_passport_step, null, false), dataBindingComponent);
                }

                public static FragmentNewPassportStepBinding bind(View view) {
                    return bind(view, DataBindingUtil.getDefaultComponent());
                }

                public static FragmentNewPassportStepBinding bind(View view, DataBindingComponent dataBindingComponent) {
                    if ("layout/fragment_new_passport_step_0".equals(view.getTag())) {
                        return new FragmentNewPassportStepBinding(dataBindingComponent, view);
                    }
                    StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
                    stringBuilder.append(view.getTag());
                    throw new RuntimeException(stringBuilder.toString());
                }
            }

package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.CardFragmentData;
import ru.rocketbank.r2d2.data.binding.CardFragmentHandler;

public class FragmentCardBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final FrameLayout appBar;
    public final ImageView backgroundImage;
    public final ObservableRecyclerView cardOptions;
    public final View cardOverlay;
    public final FloatingActionButton fab;
    public final View headerOverlay;
    private CardFragmentData mData;
    private long mDirtyFlags = -1;
    private CardFragmentHandler mHandler;
    private OnClickListenerImpl mHandlerOnChangeMoneyModeAndroidViewViewOnClickListener;
    private final FrameLayout mboundView0;
    public final RocketAutofitTextView money;
    public final RocketTextView realToolbarTitle;
    public final RocketTextView rocketMoney;
    public final SwipeRefreshLayout swipeRefresh;
    public final Toolbar toolbar;
    public final FrameLayout toolbarLayout;
    public final Toolbar toolbarReal;
    public final RocketTextView toolbarTitle;

    public static class OnClickListenerImpl implements OnClickListener {
        private CardFragmentHandler value;

        public OnClickListenerImpl setValue(CardFragmentHandler cardFragmentHandler) {
            this.value = cardFragmentHandler;
            return cardFragmentHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onChangeMoneyMode(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.app_bar, 4);
        sViewsWithIds.put(C0859R.id.toolbar_layout, 5);
        sViewsWithIds.put(C0859R.id.backgroundImage, 6);
        sViewsWithIds.put(C0859R.id.toolbar_title, 7);
        sViewsWithIds.put(C0859R.id.rocket_money, 8);
        sViewsWithIds.put(C0859R.id.header_overlay, 9);
        sViewsWithIds.put(C0859R.id.card_overlay, 10);
        sViewsWithIds.put(C0859R.id.swipeRefresh, 11);
        sViewsWithIds.put(C0859R.id.card_options, 12);
        sViewsWithIds.put(C0859R.id.toolbarReal, 13);
        sViewsWithIds.put(C0859R.id.fab, 14);
    }

    public FragmentCardBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 3);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 15, sIncludes, sViewsWithIds);
        this.appBar = (FrameLayout) dataBindingComponent[4];
        this.backgroundImage = (ImageView) dataBindingComponent[6];
        this.cardOptions = (ObservableRecyclerView) dataBindingComponent[12];
        this.cardOverlay = (View) dataBindingComponent[10];
        this.fab = (FloatingActionButton) dataBindingComponent[14];
        this.headerOverlay = (View) dataBindingComponent[9];
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.money = (RocketAutofitTextView) dataBindingComponent[1];
        this.money.setTag(null);
        this.realToolbarTitle = (RocketTextView) dataBindingComponent[3];
        this.realToolbarTitle.setTag(null);
        this.rocketMoney = (RocketTextView) dataBindingComponent[8];
        this.swipeRefresh = (SwipeRefreshLayout) dataBindingComponent[11];
        this.toolbar = (Toolbar) dataBindingComponent[2];
        this.toolbar.setTag(null);
        this.toolbarLayout = (FrameLayout) dataBindingComponent[5];
        this.toolbarReal = (Toolbar) dataBindingComponent[13];
        this.toolbarTitle = (RocketTextView) dataBindingComponent[7];
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
        if (40 == i) {
            setHandler((CardFragmentHandler) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((CardFragmentData) obj);
        }
        return true;
    }

    public void setHandler(CardFragmentHandler cardFragmentHandler) {
        this.mHandler = cardFragmentHandler;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public CardFragmentHandler getHandler() {
        return this.mHandler;
    }

    public void setData(CardFragmentData cardFragmentData) {
        this.mData = cardFragmentData;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public CardFragmentData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataTitleName((ObservableField) obj, i2);
            case 1:
                return onChangeDataMoney((ObservableField) obj, i2);
            case 2:
                return onChangeDataTitle((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataTitleName(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataMoney(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataTitle(ObservableField<String> observableField, int i) {
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
        OnClickListener onClickListener;
        FragmentCardBinding fragmentCardBinding = this;
        synchronized (this) {
            try {
                j = fragmentCardBinding.mDirtyFlags;
                long j2 = 0;
                fragmentCardBinding.mDirtyFlags = 0;
            } finally {
                String str;
                j = 
/*
Method generation error in method: ru.rocketbank.r2d2.databinding.FragmentCardBinding.executeBindings():void, dex: classes2.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00c1: MERGE  (r2_5 'j' long) = (r0_1 java.lang.String), (r8_24 'str' java.lang.String) in method: ru.rocketbank.r2d2.databinding.FragmentCardBinding.executeBindings():void, dex: classes2.dex
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

                public static FragmentCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
                    return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
                }

                public static FragmentCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
                    return (FragmentCardBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_card, viewGroup, z, dataBindingComponent);
                }

                public static FragmentCardBinding inflate(LayoutInflater layoutInflater) {
                    return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
                }

                public static FragmentCardBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
                    return bind(layoutInflater.inflate(C0859R.layout.fragment_card, null, false), dataBindingComponent);
                }

                public static FragmentCardBinding bind(View view) {
                    return bind(view, DataBindingUtil.getDefaultComponent());
                }

                public static FragmentCardBinding bind(View view, DataBindingComponent dataBindingComponent) {
                    if ("layout/fragment_card_0".equals(view.getTag())) {
                        return new FragmentCardBinding(dataBindingComponent, view);
                    }
                    StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
                    stringBuilder.append(view.getTag());
                    throw new RuntimeException(stringBuilder.toString());
                }
            }

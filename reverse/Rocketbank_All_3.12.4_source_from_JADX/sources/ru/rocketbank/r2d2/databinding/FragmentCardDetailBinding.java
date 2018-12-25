package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.graphics.drawable.Drawable;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.card.binding.CardBindingData;
import ru.rocketbank.r2d2.root.card.binding.CardBindingHandler;

public class FragmentCardDetailBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketAutofitTextView amount;
    public final ImageView backgroundImage;
    public final ObservableRecyclerView body;
    public final RelativeLayout cardContainer;
    public final View cardOverlay;
    public final FloatingActionButton fab;
    public final FrameLayout header;
    private final OnClickListener mCallback14;
    private CardBindingData mCardBindingData;
    private long mDirtyFlags = -1;
    private CardBindingHandler mHandler;
    private OnClickListenerImpl mHandlerOnFabClickedAndroidViewViewOnClickListener;
    private final FrameLayout mboundView0;
    private final RocketAutofitTextView mboundView4;
    private final RocketTextView mboundView7;
    public final SwipeRefreshLayout swipeRefresh;
    public final Toolbar toolbar;
    public final Toolbar toolbarReal;

    public static class OnClickListenerImpl implements OnClickListener {
        private CardBindingHandler value;

        public OnClickListenerImpl setValue(CardBindingHandler cardBindingHandler) {
            this.value = cardBindingHandler;
            return cardBindingHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onFabClicked(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.backgroundImage, 9);
        sViewsWithIds.put(C0859R.id.cardContainer, 10);
        sViewsWithIds.put(C0859R.id.swipeRefresh, 11);
        sViewsWithIds.put(C0859R.id.body, 12);
    }

    public FragmentCardDetailBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 10);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 13, sIncludes, sViewsWithIds);
        this.amount = (RocketAutofitTextView) dataBindingComponent[3];
        this.amount.setTag(null);
        this.backgroundImage = (ImageView) dataBindingComponent[9];
        this.body = (ObservableRecyclerView) dataBindingComponent[12];
        this.cardContainer = (RelativeLayout) dataBindingComponent[10];
        this.cardOverlay = (View) dataBindingComponent[5];
        this.cardOverlay.setTag(null);
        this.fab = (FloatingActionButton) dataBindingComponent[8];
        this.fab.setTag(null);
        this.header = (FrameLayout) dataBindingComponent[1];
        this.header.setTag(null);
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView4 = (RocketAutofitTextView) dataBindingComponent[4];
        this.mboundView4.setTag(null);
        this.mboundView7 = (RocketTextView) dataBindingComponent[7];
        this.mboundView7.setTag(null);
        this.swipeRefresh = (SwipeRefreshLayout) dataBindingComponent[11];
        this.toolbar = (Toolbar) dataBindingComponent[2];
        this.toolbar.setTag(null);
        this.toolbarReal = (Toolbar) dataBindingComponent[6];
        this.toolbarReal.setTag(null);
        setRootTag(view);
        this.mCallback14 = new android.databinding.generated.callback.OnClickListener(this, 1);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
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
            setHandler((CardBindingHandler) obj);
        } else if (11 != i) {
            return false;
        } else {
            setCardBindingData((CardBindingData) obj);
        }
        return true;
    }

    public void setHandler(CardBindingHandler cardBindingHandler) {
        this.mHandler = cardBindingHandler;
        synchronized (this) {
            this.mDirtyFlags |= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public CardBindingHandler getHandler() {
        return this.mHandler;
    }

    public void setCardBindingData(CardBindingData cardBindingData) {
        this.mCardBindingData = cardBindingData;
        synchronized (this) {
            this.mDirtyFlags |= PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
        }
        notifyPropertyChanged(11);
        super.requestRebind();
    }

    public CardBindingData getCardBindingData() {
        return this.mCardBindingData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeCardBindingDataBalance((ObservableField) obj, i2);
            case 1:
                return onChangeCardBindingDataOverlayTranslation((ObservableInt) obj, i2);
            case 2:
                return onChangeCardBindingDataIsRoubleCard((ObservableBoolean) obj, i2);
            case 3:
                return onChangeCardBindingDataTitleName((ObservableField) obj, i2);
            case 4:
                return onChangeCardBindingDataCardNumber((ObservableField) obj, i2);
            case 5:
                return onChangeCardBindingDataToolbarTranslation((ObservableInt) obj, i2);
            case 6:
                return onChangeCardBindingDataToolbarWhiteBackDrawable((ObservableField) obj, i2);
            case 7:
                return onChangeCardBindingDataToolbarBackDrawable((ObservableField) obj, i2);
            case 8:
                return onChangeCardBindingDataTitleBalance((ObservableField) obj, i2);
            case 9:
                return onChangeCardBindingDataParallaxTranslation((ObservableInt) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeCardBindingDataBalance(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeCardBindingDataOverlayTranslation(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeCardBindingDataIsRoubleCard(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeCardBindingDataTitleName(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeCardBindingDataCardNumber(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeCardBindingDataToolbarTranslation(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    private boolean onChangeCardBindingDataToolbarWhiteBackDrawable(ObservableField<Drawable> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        return true;
    }

    private boolean onChangeCardBindingDataToolbarBackDrawable(ObservableField<Drawable> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        return true;
    }

    private boolean onChangeCardBindingDataTitleBalance(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 256;
        }
        return true;
    }

    private boolean onChangeCardBindingDataParallaxTranslation(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 512;
        }
        return true;
    }

    protected void executeBindings() {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxOverflowException: Iterative traversal limit reached, method: ru.rocketbank.r2d2.databinding.FragmentCardDetailBinding.executeBindings():void
	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:37)
	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:61)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r39 = this;
        r1 = r39;
        monitor-enter(r39);
        r2 = r1.mDirtyFlags;	 Catch:{ all -> 0x0244 }
        r4 = 0;	 Catch:{ all -> 0x0244 }
        r1.mDirtyFlags = r4;	 Catch:{ all -> 0x0244 }
        monitor-exit(r39);	 Catch:{ all -> 0x0244 }
        r6 = r1.mHandler;
        r7 = r1.mCardBindingData;
        r8 = 5120; // 0x1400 float:7.175E-42 double:2.5296E-320;
        r10 = r2 & r8;
        r12 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1));
        if (r12 == 0) goto L_0x002b;
    L_0x0016:
        if (r6 == 0) goto L_0x002b;
    L_0x0018:
        r11 = r1.mHandlerOnFabClickedAndroidViewViewOnClickListener;
        if (r11 != 0) goto L_0x0024;
    L_0x001c:
        r11 = new ru.rocketbank.r2d2.databinding.FragmentCardDetailBinding$OnClickListenerImpl;
        r11.<init>();
        r1.mHandlerOnFabClickedAndroidViewViewOnClickListener = r11;
        goto L_0x0026;
    L_0x0024:
        r11 = r1.mHandlerOnFabClickedAndroidViewViewOnClickListener;
    L_0x0026:
        r6 = r11.setValue(r6);
        goto L_0x002c;
    L_0x002b:
        r6 = 0;
    L_0x002c:
        r11 = 7167; // 0x1bff float:1.0043E-41 double:3.541E-320;
        r13 = r2 & r11;
        r11 = (r13 > r4 ? 1 : (r13 == r4 ? 0 : -1));
        r16 = 6272; // 0x1880 float:8.789E-42 double:3.099E-320;
        r18 = 6208; // 0x1840 float:8.699E-42 double:3.067E-320;
        r20 = 6176; // 0x1820 float:8.654E-42 double:3.0513E-320;
        r22 = 6160; // 0x1810 float:8.632E-42 double:3.0434E-320;
        r24 = 6152; // 0x1808 float:8.621E-42 double:3.0395E-320;
        r26 = 6148; // 0x1804 float:8.615E-42 double:3.0375E-320;
        r28 = 6146; // 0x1802 float:8.612E-42 double:3.0365E-320;
        r30 = 6145; // 0x1801 float:8.611E-42 double:3.036E-320;
        r10 = 0;
        if (r11 == 0) goto L_0x0189;
    L_0x0045:
        r33 = r2 & r30;
        r11 = (r33 > r4 ? 1 : (r33 == r4 ? 0 : -1));
        if (r11 == 0) goto L_0x005f;
    L_0x004b:
        if (r7 == 0) goto L_0x0052;
    L_0x004d:
        r11 = r7.getBalance();
        goto L_0x0053;
    L_0x0052:
        r11 = 0;
    L_0x0053:
        r1.updateRegistration(r10, r11);
        if (r11 == 0) goto L_0x005f;
    L_0x0058:
        r11 = r11.get();
        r11 = (java.lang.String) r11;
        goto L_0x0060;
    L_0x005f:
        r11 = 0;
    L_0x0060:
        r33 = r2 & r28;
        r35 = (r33 > r4 ? 1 : (r33 == r4 ? 0 : -1));
        if (r35 == 0) goto L_0x007c;
    L_0x0066:
        if (r7 == 0) goto L_0x006f;
    L_0x0068:
        r33 = r7.getOverlayTranslation();
        r10 = r33;
        goto L_0x0070;
    L_0x006f:
        r10 = 0;
    L_0x0070:
        r8 = 1;
        r1.updateRegistration(r8, r10);
        if (r10 == 0) goto L_0x007c;
    L_0x0076:
        r8 = r10.get();
        r10 = r8;
        goto L_0x007d;
    L_0x007c:
        r10 = 0;
    L_0x007d:
        r8 = r2 & r26;
        r33 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1));
        if (r33 == 0) goto L_0x00bd;
    L_0x0083:
        if (r7 == 0) goto L_0x008c;
    L_0x0085:
        r33 = r7.isRoubleCard();
        r12 = r33;
        goto L_0x008d;
    L_0x008c:
        r12 = 0;
    L_0x008d:
        r13 = 2;
        r1.updateRegistration(r13, r12);
        if (r12 == 0) goto L_0x0098;
    L_0x0093:
        r12 = r12.get();
        goto L_0x0099;
    L_0x0098:
        r12 = 0;
    L_0x0099:
        r13 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1));
        if (r13 == 0) goto L_0x00ab;
    L_0x009d:
        if (r12 == 0) goto L_0x00a6;
    L_0x009f:
        r8 = 16384; // 0x4000 float:2.2959E-41 double:8.0948E-320;
        r33 = r2 | r8;
    L_0x00a3:
        r2 = r33;
        goto L_0x00ab;
    L_0x00a6:
        r8 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r33 = r2 | r8;
        goto L_0x00a3;
    L_0x00ab:
        if (r12 == 0) goto L_0x00b7;
    L_0x00ad:
        r8 = r1.fab;
        r9 = 2131230926; // 0x7f0800ce float:1.8077919E38 double:1.052967984E-314;
    L_0x00b2:
        r8 = getDrawableFromResource(r8, r9);
        goto L_0x00be;
    L_0x00b7:
        r8 = r1.fab;
        r9 = 2131231317; // 0x7f080255 float:1.8078712E38 double:1.052968177E-314;
        goto L_0x00b2;
    L_0x00bd:
        r8 = 0;
    L_0x00be:
        r12 = r2 & r24;
        r9 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1));
        if (r9 == 0) goto L_0x00d9;
    L_0x00c4:
        if (r7 == 0) goto L_0x00cb;
    L_0x00c6:
        r9 = r7.getTitleName();
        goto L_0x00cc;
    L_0x00cb:
        r9 = 0;
    L_0x00cc:
        r12 = 3;
        r1.updateRegistration(r12, r9);
        if (r9 == 0) goto L_0x00d9;
    L_0x00d2:
        r9 = r9.get();
        r9 = (java.lang.String) r9;
        goto L_0x00da;
    L_0x00d9:
        r9 = 0;
    L_0x00da:
        r12 = r2 & r22;
        r33 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1));
        if (r33 == 0) goto L_0x00f5;
    L_0x00e0:
        if (r7 == 0) goto L_0x00e7;
    L_0x00e2:
        r12 = r7.getCardNumber();
        goto L_0x00e8;
    L_0x00e7:
        r12 = 0;
    L_0x00e8:
        r13 = 4;
        r1.updateRegistration(r13, r12);
        if (r12 == 0) goto L_0x00f5;
    L_0x00ee:
        r12 = r12.get();
        r12 = (java.lang.String) r12;
        goto L_0x00f6;
    L_0x00f5:
        r12 = 0;
    L_0x00f6:
        r33 = r2 & r20;
        r13 = (r33 > r4 ? 1 : (r33 == r4 ? 0 : -1));
        if (r13 == 0) goto L_0x010f;
    L_0x00fc:
        if (r7 == 0) goto L_0x0103;
    L_0x00fe:
        r13 = r7.getToolbarTranslation();
        goto L_0x0104;
    L_0x0103:
        r13 = 0;
    L_0x0104:
        r14 = 5;
        r1.updateRegistration(r14, r13);
        if (r13 == 0) goto L_0x010f;
    L_0x010a:
        r13 = r13.get();
        goto L_0x0110;
    L_0x010f:
        r13 = 0;
    L_0x0110:
        r14 = r2 & r18;
        r33 = (r14 > r4 ? 1 : (r14 == r4 ? 0 : -1));
        if (r33 == 0) goto L_0x012b;
    L_0x0116:
        if (r7 == 0) goto L_0x011d;
    L_0x0118:
        r14 = r7.getToolbarWhiteBackDrawable();
        goto L_0x011e;
    L_0x011d:
        r14 = 0;
    L_0x011e:
        r15 = 6;
        r1.updateRegistration(r15, r14);
        if (r14 == 0) goto L_0x012b;
    L_0x0124:
        r14 = r14.get();
        r14 = (android.graphics.drawable.Drawable) r14;
        goto L_0x012c;
    L_0x012b:
        r14 = 0;
    L_0x012c:
        r33 = r2 & r16;
        r15 = (r33 > r4 ? 1 : (r33 == r4 ? 0 : -1));
        if (r15 == 0) goto L_0x0147;
    L_0x0132:
        if (r7 == 0) goto L_0x0139;
    L_0x0134:
        r15 = r7.getToolbarBackDrawable();
        goto L_0x013a;
    L_0x0139:
        r15 = 0;
    L_0x013a:
        r4 = 7;
        r1.updateRegistration(r4, r15);
        if (r15 == 0) goto L_0x0147;
    L_0x0140:
        r4 = r15.get();
        r4 = (android.graphics.drawable.Drawable) r4;
        goto L_0x0148;
    L_0x0147:
        r4 = 0;
    L_0x0148:
        r33 = 6400; // 0x1900 float:8.968E-42 double:3.162E-320;
        r36 = r2 & r33;
        r33 = 0;
        r5 = (r36 > r33 ? 1 : (r36 == r33 ? 0 : -1));
        if (r5 == 0) goto L_0x0168;
    L_0x0152:
        if (r7 == 0) goto L_0x0159;
    L_0x0154:
        r5 = r7.getTitleBalance();
        goto L_0x015a;
    L_0x0159:
        r5 = 0;
    L_0x015a:
        r15 = 8;
        r1.updateRegistration(r15, r5);
        if (r5 == 0) goto L_0x0168;
    L_0x0161:
        r5 = r5.get();
        r5 = (java.lang.String) r5;
        goto L_0x0169;
    L_0x0168:
        r5 = 0;
    L_0x0169:
        r33 = 6656; // 0x1a00 float:9.327E-42 double:3.2885E-320;
        r36 = r2 & r33;
        r33 = 0;
        r15 = (r36 > r33 ? 1 : (r36 == r33 ? 0 : -1));
        if (r15 == 0) goto L_0x0187;
    L_0x0173:
        if (r7 == 0) goto L_0x017a;
    L_0x0175:
        r7 = r7.getParallaxTranslation();
        goto L_0x017b;
    L_0x017a:
        r7 = 0;
    L_0x017b:
        r15 = 9;
        r1.updateRegistration(r15, r7);
        if (r7 == 0) goto L_0x0187;
    L_0x0182:
        r7 = r7.get();
        goto L_0x0193;
    L_0x0187:
        r7 = 0;
        goto L_0x0193;
    L_0x0189:
        r4 = 0;
        r5 = 0;
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r10 = 0;
        r11 = 0;
        r12 = 0;
        r13 = 0;
        r14 = 0;
    L_0x0193:
        r32 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r34 = r2 & r32;
        r32 = 0;
        r15 = (r34 > r32 ? 1 : (r34 == r32 ? 0 : -1));
        if (r15 == 0) goto L_0x01a7;
    L_0x019d:
        r15 = r1.amount;
        r38 = r4;
        r4 = r1.mCallback14;
        r15.setOnClickListener(r4);
        goto L_0x01a9;
    L_0x01a7:
        r38 = r4;
    L_0x01a9:
        r34 = r2 & r30;
        r4 = (r34 > r32 ? 1 : (r34 == r32 ? 0 : -1));
        if (r4 == 0) goto L_0x01b4;
    L_0x01af:
        r4 = r1.amount;
        android.databinding.adapters.TextViewBindingAdapter.setText(r4, r11);
    L_0x01b4:
        r30 = r2 & r28;
        r4 = (r30 > r32 ? 1 : (r30 == r32 ? 0 : -1));
        r11 = 11;
        if (r4 == 0) goto L_0x01c8;
    L_0x01bc:
        r4 = getBuildSdkInt();
        if (r4 < r11) goto L_0x01c8;
    L_0x01c2:
        r4 = r1.cardOverlay;
        r10 = (float) r10;
        r4.setTranslationY(r10);
    L_0x01c8:
        r28 = 5120; // 0x1400 float:7.175E-42 double:2.5296E-320;
        r30 = r2 & r28;
        r28 = 0;
        r4 = (r30 > r28 ? 1 : (r30 == r28 ? 0 : -1));
        if (r4 == 0) goto L_0x01d7;
    L_0x01d2:
        r4 = r1.fab;
        r4.setOnClickListener(r6);
    L_0x01d7:
        r30 = r2 & r26;
        r4 = (r30 > r28 ? 1 : (r30 == r28 ? 0 : -1));
        if (r4 == 0) goto L_0x01e2;
    L_0x01dd:
        r4 = r1.fab;
        android.databinding.adapters.ImageViewBindingAdapter.setImageDrawable(r4, r8);
    L_0x01e2:
        r26 = 6656; // 0x1a00 float:9.327E-42 double:3.2885E-320;
        r30 = r2 & r26;
        r4 = (r30 > r28 ? 1 : (r30 == r28 ? 0 : -1));
        if (r4 == 0) goto L_0x01f6;
    L_0x01ea:
        r4 = getBuildSdkInt();
        if (r4 < r11) goto L_0x01f6;
    L_0x01f0:
        r4 = r1.header;
        r6 = (float) r7;
        r4.setTranslationY(r6);
    L_0x01f6:
        r6 = r2 & r22;
        r4 = (r6 > r28 ? 1 : (r6 == r28 ? 0 : -1));
        if (r4 == 0) goto L_0x0201;
    L_0x01fc:
        r4 = r1.mboundView4;
        android.databinding.adapters.TextViewBindingAdapter.setText(r4, r12);
    L_0x0201:
        r6 = 6400; // 0x1900 float:8.968E-42 double:3.162E-320;
        r22 = r2 & r6;
        r4 = (r22 > r28 ? 1 : (r22 == r28 ? 0 : -1));
        if (r4 == 0) goto L_0x020e;
    L_0x0209:
        r4 = r1.mboundView7;
        android.databinding.adapters.TextViewBindingAdapter.setText(r4, r5);
    L_0x020e:
        r4 = r2 & r24;
        r6 = (r4 > r28 ? 1 : (r4 == r28 ? 0 : -1));
        if (r6 == 0) goto L_0x0219;
    L_0x0214:
        r4 = r1.toolbar;
        r4.setTitle(r9);
    L_0x0219:
        r4 = r2 & r18;
        r6 = (r4 > r28 ? 1 : (r4 == r28 ? 0 : -1));
        if (r6 == 0) goto L_0x0224;
    L_0x021f:
        r4 = r1.toolbar;
        r4.setNavigationIcon(r14);
    L_0x0224:
        r4 = r2 & r20;
        r6 = (r4 > r28 ? 1 : (r4 == r28 ? 0 : -1));
        if (r6 == 0) goto L_0x0236;
    L_0x022a:
        r4 = getBuildSdkInt();
        if (r4 < r11) goto L_0x0236;
    L_0x0230:
        r4 = r1.toolbarReal;
        r5 = (float) r13;
        r4.setTranslationY(r5);
    L_0x0236:
        r4 = r2 & r16;
        r2 = (r4 > r28 ? 1 : (r4 == r28 ? 0 : -1));
        if (r2 == 0) goto L_0x0243;
    L_0x023c:
        r2 = r1.toolbarReal;
        r4 = r38;
        r2.setNavigationIcon(r4);
    L_0x0243:
        return;
    L_0x0244:
        r0 = move-exception;
        r2 = r0;
        monitor-exit(r39);	 Catch:{ all -> 0x0244 }
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.FragmentCardDetailBinding.executeBindings():void");
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mHandler;
        if ((i != 0 ? true : null) != null) {
            i.onAmountPressed();
        }
    }

    public static FragmentCardDetailBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentCardDetailBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentCardDetailBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_card_detail, viewGroup, z, dataBindingComponent);
    }

    public static FragmentCardDetailBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentCardDetailBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_card_detail, null, false), dataBindingComponent);
    }

    public static FragmentCardDetailBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentCardDetailBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_card_detail_0".equals(view.getTag())) {
            return new FragmentCardDetailBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

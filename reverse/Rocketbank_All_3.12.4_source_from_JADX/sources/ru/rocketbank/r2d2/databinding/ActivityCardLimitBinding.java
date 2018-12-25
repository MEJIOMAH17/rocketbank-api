package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.card.CardLimitData;
import ru.rocketbank.r2d2.activities.card.CardLimits;

public class ActivityCardLimitBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final CardLimitItemBinding card;
    public final CardLimitItemBinding cash;
    public final CardLimitItemBinding cashAbroad;
    public final LinearLayout content;
    public final FrameLayout header;
    public final ImageView imageView2;
    public final IncludeToolbarBinding includeToolbar;
    public final CardLimitItemBinding internet;
    private CardLimits mData;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;
    private final LinearLayout mboundView1;
    public final ScrollView scrollView;

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(11);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"card_limit_item", "card_limit_item", "card_limit_item", "card_limit_item"}, new int[]{3, 4, 5, 6}, new int[]{C0859R.layout.card_limit_item, C0859R.layout.card_limit_item, C0859R.layout.card_limit_item, C0859R.layout.card_limit_item});
        sIncludes.setIncludes(0, new String[]{"include_toolbar"}, new int[]{2}, new int[]{C0859R.layout.include_toolbar});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.scrollView, 7);
        sViewsWithIds.put(C0859R.id.content, 8);
        sViewsWithIds.put(C0859R.id.header, 9);
        sViewsWithIds.put(C0859R.id.imageView2, 10);
    }

    public ActivityCardLimitBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 5);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 11, sIncludes, sViewsWithIds);
        this.card = (CardLimitItemBinding) dataBindingComponent[3];
        setContainedBinding(this.card);
        this.cash = (CardLimitItemBinding) dataBindingComponent[5];
        setContainedBinding(this.cash);
        this.cashAbroad = (CardLimitItemBinding) dataBindingComponent[6];
        setContainedBinding(this.cashAbroad);
        this.content = (LinearLayout) dataBindingComponent[8];
        this.header = (FrameLayout) dataBindingComponent[9];
        this.imageView2 = (ImageView) dataBindingComponent[10];
        this.includeToolbar = (IncludeToolbarBinding) dataBindingComponent[2];
        setContainedBinding(this.includeToolbar);
        this.internet = (CardLimitItemBinding) dataBindingComponent[4];
        setContainedBinding(this.internet);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (LinearLayout) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.scrollView = (ScrollView) dataBindingComponent[7];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 64;
        }
        this.includeToolbar.invalidateAll();
        this.card.invalidateAll();
        this.internet.invalidateAll();
        this.cash.invalidateAll();
        this.cashAbroad.invalidateAll();
        requestRebind();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean hasPendingBindings() {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.mDirtyFlags;	 Catch:{ all -> 0x003c }
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        r0 = 1;
        if (r4 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r5);	 Catch:{ all -> 0x003c }
        return r0;
    L_0x000c:
        monitor-exit(r5);	 Catch:{ all -> 0x003c }
        r1 = r5.includeToolbar;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0016;
    L_0x0015:
        return r0;
    L_0x0016:
        r1 = r5.card;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x001f;
    L_0x001e:
        return r0;
    L_0x001f:
        r1 = r5.internet;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0028;
    L_0x0027:
        return r0;
    L_0x0028:
        r1 = r5.cash;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0031;
    L_0x0030:
        return r0;
    L_0x0031:
        r1 = r5.cashAbroad;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x003a;
    L_0x0039:
        return r0;
    L_0x003a:
        r0 = 0;
        return r0;
    L_0x003c:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x003c }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.ActivityCardLimitBinding.hasPendingBindings():boolean");
    }

    public boolean setVariable(int i, Object obj) {
        if (24 != i) {
            return false;
        }
        setData((CardLimits) obj);
        return true;
    }

    public void setData(CardLimits cardLimits) {
        this.mData = cardLimits;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public CardLimits getData() {
        return this.mData;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.includeToolbar.setLifecycleOwner(lifecycleOwner);
        this.card.setLifecycleOwner(lifecycleOwner);
        this.internet.setLifecycleOwner(lifecycleOwner);
        this.cash.setLifecycleOwner(lifecycleOwner);
        this.cashAbroad.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeCard((CardLimitItemBinding) obj, i2);
            case 1:
                return onChangeIncludeToolbar((IncludeToolbarBinding) obj, i2);
            case 2:
                return onChangeInternet((CardLimitItemBinding) obj, i2);
            case 3:
                return onChangeCashAbroad((CardLimitItemBinding) obj, i2);
            case 4:
                return onChangeCash((CardLimitItemBinding) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeCard(CardLimitItemBinding cardLimitItemBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeIncludeToolbar(IncludeToolbarBinding includeToolbarBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeInternet(CardLimitItemBinding cardLimitItemBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeCashAbroad(CardLimitItemBinding cardLimitItemBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeCash(CardLimitItemBinding cardLimitItemBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        CardLimitData cardLimitData;
        CardLimitData cardLimitData2;
        CardLimitData cardLimitData3;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        CardLimits cardLimits = this.mData;
        long j2 = j & 96;
        CardLimitData cardLimitData4 = null;
        if (j2 == 0 || cardLimits == null) {
            cardLimitData = null;
            cardLimitData2 = cardLimitData;
            cardLimitData3 = cardLimitData2;
        } else {
            cardLimitData4 = cardLimits.getCashAbroad();
            cardLimitData = cardLimits.getCash();
            cardLimitData3 = cardLimits.getInternet();
            CardLimitData card = cardLimits.getCard();
            cardLimitData2 = cardLimitData4;
            cardLimitData4 = card;
        }
        if (j2 != 0) {
            this.card.setData(cardLimitData4);
            this.cash.setData(cardLimitData);
            this.cashAbroad.setData(cardLimitData2);
            this.internet.setData(cardLimitData3);
        }
        executeBindingsOn(this.includeToolbar);
        executeBindingsOn(this.card);
        executeBindingsOn(this.internet);
        executeBindingsOn(this.cash);
        executeBindingsOn(this.cashAbroad);
    }

    public static ActivityCardLimitBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityCardLimitBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityCardLimitBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_card_limit, viewGroup, z, dataBindingComponent);
    }

    public static ActivityCardLimitBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityCardLimitBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_card_limit, null, false), dataBindingComponent);
    }

    public static ActivityCardLimitBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityCardLimitBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_card_limit_0".equals(view.getTag())) {
            return new ActivityCardLimitBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

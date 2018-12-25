package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
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
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import io.codetail.widget.RevealFrameLayout;
import ru.rocketbank.r2d2.C0859R;

public class ActivityRocketRubleInfoBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final CardView closeButton;
    public final FrameLayout fullscreenContent;
    private long mDirtyFlags = -1;
    private final RevealFrameLayout mboundView0;
    private final ConstraintLayout mboundView1;
    private final InfoOnetwotripBinding mboundView11;
    public final ProgressBar progressBar;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public boolean setVariable(int i, Object obj) {
        return true;
    }

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(6);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"info_onetwotrip"}, new int[]{2}, new int[]{C0859R.layout.info_onetwotrip});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.fullscreen_content, 3);
        sViewsWithIds.put(C0859R.id.progressBar, 4);
        sViewsWithIds.put(C0859R.id.closeButton, 5);
    }

    public ActivityRocketRubleInfoBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.closeButton = (CardView) dataBindingComponent[5];
        this.fullscreenContent = (FrameLayout) dataBindingComponent[3];
        this.mboundView0 = (RevealFrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (ConstraintLayout) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.mboundView11 = (InfoOnetwotripBinding) dataBindingComponent[2];
        setContainedBinding(this.mboundView11);
        this.progressBar = (ProgressBar) dataBindingComponent[4];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 1;
        }
        this.mboundView11.invalidateAll();
        requestRebind();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean hasPendingBindings() {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.mDirtyFlags;	 Catch:{ all -> 0x0018 }
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        r0 = 1;
        if (r4 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        return r0;
    L_0x000c:
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        r1 = r5.mboundView11;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0016;
    L_0x0015:
        return r0;
    L_0x0016:
        r0 = 0;
        return r0;
    L_0x0018:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.ActivityRocketRubleInfoBinding.hasPendingBindings():boolean");
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.mboundView11.setLifecycleOwner(lifecycleOwner);
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
        executeBindingsOn(this.mboundView11);
    }

    public static ActivityRocketRubleInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityRocketRubleInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityRocketRubleInfoBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_rocket_ruble_info, viewGroup, z, dataBindingComponent);
    }

    public static ActivityRocketRubleInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityRocketRubleInfoBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_rocket_ruble_info, null, false), dataBindingComponent);
    }

    public static ActivityRocketRubleInfoBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityRocketRubleInfoBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_rocket_ruble_info_0".equals(view.getTag())) {
            return new ActivityRocketRubleInfoBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

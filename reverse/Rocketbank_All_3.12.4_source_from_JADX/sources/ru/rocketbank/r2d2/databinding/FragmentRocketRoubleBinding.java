package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.rocketrouble.RocketRoubleModel;

public class FragmentRocketRoubleBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final FrameLayout appBar;
    public final View cardOverlay;
    public final FloatingActionButton fab;
    public final ObservableRecyclerView feed;
    public final View headerOverlay;
    private long mDirtyFlags = -1;
    private RocketRoubleModel mModel;
    private final FrameLayout mboundView0;
    public final RocketAutofitTextView money;
    public final RocketTextView realToolbarTitle;
    public final RocketTextView rocketMoney;
    public final SwipeRefreshLayout swipeRefresh;
    public final Toolbar toolbar;
    public final Toolbar toolbarReal;
    public final TextureView videoView;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.app_bar, 1);
        sViewsWithIds.put(C0859R.id.videoView, 2);
        sViewsWithIds.put(C0859R.id.money, 3);
        sViewsWithIds.put(C0859R.id.rocket_money, 4);
        sViewsWithIds.put(C0859R.id.toolbar, 5);
        sViewsWithIds.put(C0859R.id.header_overlay, 6);
        sViewsWithIds.put(C0859R.id.card_overlay, 7);
        sViewsWithIds.put(C0859R.id.swipeRefresh, 8);
        sViewsWithIds.put(C0859R.id.feed, 9);
        sViewsWithIds.put(C0859R.id.toolbarReal, 10);
        sViewsWithIds.put(C0859R.id.real_toolbar_title, 11);
        sViewsWithIds.put(C0859R.id.fab, 12);
    }

    public FragmentRocketRoubleBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 13, sIncludes, sViewsWithIds);
        this.appBar = (FrameLayout) dataBindingComponent[1];
        this.cardOverlay = (View) dataBindingComponent[7];
        this.fab = (FloatingActionButton) dataBindingComponent[12];
        this.feed = (ObservableRecyclerView) dataBindingComponent[9];
        this.headerOverlay = (View) dataBindingComponent[6];
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.money = (RocketAutofitTextView) dataBindingComponent[3];
        this.realToolbarTitle = (RocketTextView) dataBindingComponent[11];
        this.rocketMoney = (RocketTextView) dataBindingComponent[4];
        this.swipeRefresh = (SwipeRefreshLayout) dataBindingComponent[8];
        this.toolbar = (Toolbar) dataBindingComponent[5];
        this.toolbarReal = (Toolbar) dataBindingComponent[10];
        this.videoView = (TextureView) dataBindingComponent[2];
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
        if (58 != i) {
            return false;
        }
        setModel((RocketRoubleModel) obj);
        return true;
    }

    public void setModel(RocketRoubleModel rocketRoubleModel) {
        this.mModel = rocketRoubleModel;
    }

    public RocketRoubleModel getModel() {
        return this.mModel;
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
    }

    public static FragmentRocketRoubleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentRocketRoubleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentRocketRoubleBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_rocket_rouble, viewGroup, z, dataBindingComponent);
    }

    public static FragmentRocketRoubleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentRocketRoubleBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_rocket_rouble, null, false), dataBindingComponent);
    }

    public static FragmentRocketRoubleBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentRocketRoubleBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_rocket_rouble_0".equals(view.getTag())) {
            return new FragmentRocketRoubleBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

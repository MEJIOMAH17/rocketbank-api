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
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.feed.FeedModel;

public class FragmentFeedBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketAutofitTextView atmFreeLeftView;
    public final View cardOverlay;
    public final ImageView catView;
    public final ImageView coverImage;
    public final ObservableRecyclerView feedView;
    public final FloatingActionButton floatingActionButton;
    public final FrameLayout header;
    private long mDirtyFlags = -1;
    private FeedModel mFeed;
    public final RocketAutofitTextView money;
    public final FrameLayout nothingFound;
    public final RocketTextView nothingFoundText;
    public final Toolbar realToolbar;
    public final RocketTextView rocketMoney;
    public final FrameLayout root;
    public final SwipeRefreshLayout swipeRefreshLayout;
    public final Toolbar toolbar;
    public final RocketTextView toolbarTitle;
    public final ImageView userPic;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.header, 1);
        sViewsWithIds.put(C0859R.id.coverImage, 2);
        sViewsWithIds.put(C0859R.id.userPic, 3);
        sViewsWithIds.put(C0859R.id.rocket_money, 4);
        sViewsWithIds.put(C0859R.id.money, 5);
        sViewsWithIds.put(C0859R.id.atmFreeLeftView, 6);
        sViewsWithIds.put(C0859R.id.toolbar, 7);
        sViewsWithIds.put(C0859R.id.cardOverlay, 8);
        sViewsWithIds.put(C0859R.id.swipeRefreshLayout, 9);
        sViewsWithIds.put(C0859R.id.feedView, 10);
        sViewsWithIds.put(C0859R.id.nothingFound, 11);
        sViewsWithIds.put(C0859R.id.catView, 12);
        sViewsWithIds.put(C0859R.id.nothingFoundText, 13);
        sViewsWithIds.put(C0859R.id.realToolbar, 14);
        sViewsWithIds.put(C0859R.id.toolbarTitle, 15);
        sViewsWithIds.put(C0859R.id.floatingActionButton, 16);
    }

    public FragmentFeedBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 17, sIncludes, sViewsWithIds);
        this.atmFreeLeftView = (RocketAutofitTextView) dataBindingComponent[6];
        this.cardOverlay = (View) dataBindingComponent[8];
        this.catView = (ImageView) dataBindingComponent[12];
        this.coverImage = (ImageView) dataBindingComponent[2];
        this.feedView = (ObservableRecyclerView) dataBindingComponent[10];
        this.floatingActionButton = (FloatingActionButton) dataBindingComponent[16];
        this.header = (FrameLayout) dataBindingComponent[1];
        this.money = (RocketAutofitTextView) dataBindingComponent[5];
        this.nothingFound = (FrameLayout) dataBindingComponent[11];
        this.nothingFoundText = (RocketTextView) dataBindingComponent[13];
        this.realToolbar = (Toolbar) dataBindingComponent[14];
        this.rocketMoney = (RocketTextView) dataBindingComponent[4];
        this.root = (FrameLayout) dataBindingComponent[0];
        this.root.setTag(null);
        this.swipeRefreshLayout = (SwipeRefreshLayout) dataBindingComponent[9];
        this.toolbar = (Toolbar) dataBindingComponent[7];
        this.toolbarTitle = (RocketTextView) dataBindingComponent[15];
        this.userPic = (ImageView) dataBindingComponent[3];
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
        if (31 != i) {
            return false;
        }
        setFeed((FeedModel) obj);
        return true;
    }

    public void setFeed(FeedModel feedModel) {
        this.mFeed = feedModel;
    }

    public FeedModel getFeed() {
        return this.mFeed;
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
    }

    public static FragmentFeedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentFeedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentFeedBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_feed, viewGroup, z, dataBindingComponent);
    }

    public static FragmentFeedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentFeedBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_feed, null, false), dataBindingComponent);
    }

    public static FragmentFeedBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentFeedBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_feed_0".equals(view.getTag())) {
            return new FragmentFeedBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

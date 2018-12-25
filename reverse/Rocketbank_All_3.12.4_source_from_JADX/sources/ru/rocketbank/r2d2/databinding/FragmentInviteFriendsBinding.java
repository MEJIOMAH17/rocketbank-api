package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.design.widget.FloatingActionButton;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.InviteFriendsFragmentHandler;

public class FragmentInviteFriendsBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final ImageView cat;
    public final FrameLayout content;
    public final FloatingActionButton fab;
    public final FrameLayout image;
    public final View listBackground;
    private long mDirtyFlags = -1;
    private InviteFriendsFragmentHandler mHandler;
    private OnClickListenerImpl mHandlerOnFabClickAndroidViewViewOnClickListener;
    private OnClickListenerImpl1 mHandlerOnUrlClickAndroidViewViewOnClickListener;
    public final FrameLayout nothingFound;
    public final RocketTextView nothingFoundText;
    public final View overlay;
    public final ProgressBar progressBar;
    public final ObservableRecyclerView recyclerView;
    public final RocketAutofitTextView title;
    public final RocketTextView titleURL;
    public final Toolbar toolbar;
    public final TextureView videoView;

    public static class OnClickListenerImpl1 implements OnClickListener {
        private InviteFriendsFragmentHandler value;

        public OnClickListenerImpl1 setValue(InviteFriendsFragmentHandler inviteFriendsFragmentHandler) {
            this.value = inviteFriendsFragmentHandler;
            return inviteFriendsFragmentHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onUrlClick(view);
        }
    }

    public static class OnClickListenerImpl implements OnClickListener {
        private InviteFriendsFragmentHandler value;

        public OnClickListenerImpl setValue(InviteFriendsFragmentHandler inviteFriendsFragmentHandler) {
            this.value = inviteFriendsFragmentHandler;
            return inviteFriendsFragmentHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onFabClick(view);
        }
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.image, 3);
        sViewsWithIds.put(C0859R.id.videoView, 4);
        sViewsWithIds.put(C0859R.id.title, 5);
        sViewsWithIds.put(C0859R.id.overlay, 6);
        sViewsWithIds.put(C0859R.id.list_background, 7);
        sViewsWithIds.put(C0859R.id.recyclerView, 8);
        sViewsWithIds.put(C0859R.id.progressBar, 9);
        sViewsWithIds.put(C0859R.id.nothingFound, 10);
        sViewsWithIds.put(C0859R.id.cat, 11);
        sViewsWithIds.put(C0859R.id.nothingFoundText, 12);
        sViewsWithIds.put(C0859R.id.toolbar, 13);
    }

    public FragmentInviteFriendsBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 14, sIncludes, sViewsWithIds);
        this.cat = (ImageView) dataBindingComponent[11];
        this.content = (FrameLayout) dataBindingComponent[0];
        this.content.setTag(null);
        this.fab = (FloatingActionButton) dataBindingComponent[2];
        this.fab.setTag(null);
        this.image = (FrameLayout) dataBindingComponent[3];
        this.listBackground = (View) dataBindingComponent[7];
        this.nothingFound = (FrameLayout) dataBindingComponent[10];
        this.nothingFoundText = (RocketTextView) dataBindingComponent[12];
        this.overlay = (View) dataBindingComponent[6];
        this.progressBar = (ProgressBar) dataBindingComponent[9];
        this.recyclerView = (ObservableRecyclerView) dataBindingComponent[8];
        this.title = (RocketAutofitTextView) dataBindingComponent[5];
        this.titleURL = (RocketTextView) dataBindingComponent[1];
        this.titleURL.setTag(null);
        this.toolbar = (Toolbar) dataBindingComponent[13];
        this.videoView = (TextureView) dataBindingComponent[4];
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
        if (40 != i) {
            return false;
        }
        setHandler((InviteFriendsFragmentHandler) obj);
        return true;
    }

    public void setHandler(InviteFriendsFragmentHandler inviteFriendsFragmentHandler) {
        this.mHandler = inviteFriendsFragmentHandler;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public InviteFriendsFragmentHandler getHandler() {
        return this.mHandler;
    }

    protected void executeBindings() {
        long j;
        OnClickListener onClickListener;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        InviteFriendsFragmentHandler inviteFriendsFragmentHandler = this.mHandler;
        long j2 = j & 3;
        OnClickListener onClickListener2 = null;
        if (j2 == 0 || inviteFriendsFragmentHandler == null) {
            onClickListener = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            OnClickListenerImpl1 onClickListenerImpl1;
            if (this.mHandlerOnFabClickAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                this.mHandlerOnFabClickAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = this.mHandlerOnFabClickAndroidViewViewOnClickListener;
            }
            onClickListener2 = onClickListenerImpl.setValue(inviteFriendsFragmentHandler);
            if (this.mHandlerOnUrlClickAndroidViewViewOnClickListener == null) {
                onClickListenerImpl1 = new OnClickListenerImpl1();
                this.mHandlerOnUrlClickAndroidViewViewOnClickListener = onClickListenerImpl1;
            } else {
                onClickListenerImpl1 = this.mHandlerOnUrlClickAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl1.setValue(inviteFriendsFragmentHandler);
        }
        if (j2 != 0) {
            this.fab.setOnClickListener(onClickListener2);
            this.titleURL.setOnClickListener(onClickListener);
        }
    }

    public static FragmentInviteFriendsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentInviteFriendsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentInviteFriendsBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_invite_friends, viewGroup, z, dataBindingComponent);
    }

    public static FragmentInviteFriendsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentInviteFriendsBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_invite_friends, null, false), dataBindingComponent);
    }

    public static FragmentInviteFriendsBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentInviteFriendsBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_invite_friends_0".equals(view.getTag())) {
            return new FragmentInviteFriendsBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

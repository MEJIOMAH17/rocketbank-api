package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.design.widget.CoordinatorLayout;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import io.codetail.widget.RevealFrameLayout;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.InviteFriendsInfoHandler;

public class ActivityInviteFriendInfoBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketButton closeButton;
    public final ImageButton facebook;
    public final CoordinatorLayout fullscreenContent;
    private long mDirtyFlags = -1;
    private InviteFriendsInfoHandler mHandler;
    private OnClickListenerImpl1 mHandlerOnCloseAndroidViewViewOnClickListener;
    private OnClickListenerImpl3 mHandlerOnFacebookAndroidViewViewOnClickListener;
    private OnClickListenerImpl mHandlerOnTwitterAndroidViewViewOnClickListener;
    private OnClickListenerImpl4 mHandlerOnUrlAndroidViewViewOnClickListener;
    private OnClickListenerImpl2 mHandlerOnVkAndroidViewViewOnClickListener;
    private final RevealFrameLayout mboundView0;
    public final RocketTextView rocket;
    public final LinearLayout social;
    public final RocketTextView textPayment;
    public final ImageButton twitter;
    public final RocketTextView url;
    public final ImageButton vk;
    public final RocketTextView yourUrl;

    public static class OnClickListenerImpl1 implements OnClickListener {
        private InviteFriendsInfoHandler value;

        public OnClickListenerImpl1 setValue(InviteFriendsInfoHandler inviteFriendsInfoHandler) {
            this.value = inviteFriendsInfoHandler;
            return inviteFriendsInfoHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onClose(view);
        }
    }

    public static class OnClickListenerImpl2 implements OnClickListener {
        private InviteFriendsInfoHandler value;

        public OnClickListenerImpl2 setValue(InviteFriendsInfoHandler inviteFriendsInfoHandler) {
            this.value = inviteFriendsInfoHandler;
            return inviteFriendsInfoHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onVk(view);
        }
    }

    public static class OnClickListenerImpl3 implements OnClickListener {
        private InviteFriendsInfoHandler value;

        public OnClickListenerImpl3 setValue(InviteFriendsInfoHandler inviteFriendsInfoHandler) {
            this.value = inviteFriendsInfoHandler;
            return inviteFriendsInfoHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onFacebook(view);
        }
    }

    public static class OnClickListenerImpl4 implements OnClickListener {
        private InviteFriendsInfoHandler value;

        public OnClickListenerImpl4 setValue(InviteFriendsInfoHandler inviteFriendsInfoHandler) {
            this.value = inviteFriendsInfoHandler;
            return inviteFriendsInfoHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onUrl(view);
        }
    }

    public static class OnClickListenerImpl implements OnClickListener {
        private InviteFriendsInfoHandler value;

        public OnClickListenerImpl setValue(InviteFriendsInfoHandler inviteFriendsInfoHandler) {
            this.value = inviteFriendsInfoHandler;
            return inviteFriendsInfoHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onTwitter(view);
        }
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.fullscreen_content, 6);
        sViewsWithIds.put(C0859R.id.rocket, 7);
        sViewsWithIds.put(C0859R.id.your_url, 8);
        sViewsWithIds.put(C0859R.id.social, 9);
        sViewsWithIds.put(C0859R.id.textPayment, 10);
    }

    public ActivityInviteFriendInfoBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 11, sIncludes, sViewsWithIds);
        this.closeButton = (RocketButton) dataBindingComponent[5];
        this.closeButton.setTag(null);
        this.facebook = (ImageButton) dataBindingComponent[2];
        this.facebook.setTag(null);
        this.fullscreenContent = (CoordinatorLayout) dataBindingComponent[6];
        this.mboundView0 = (RevealFrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.rocket = (RocketTextView) dataBindingComponent[7];
        this.social = (LinearLayout) dataBindingComponent[9];
        this.textPayment = (RocketTextView) dataBindingComponent[10];
        this.twitter = (ImageButton) dataBindingComponent[4];
        this.twitter.setTag(null);
        this.url = (RocketTextView) dataBindingComponent[1];
        this.url.setTag(null);
        this.vk = (ImageButton) dataBindingComponent[3];
        this.vk.setTag(null);
        this.yourUrl = (RocketTextView) dataBindingComponent[8];
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
        setHandler((InviteFriendsInfoHandler) obj);
        return true;
    }

    public void setHandler(InviteFriendsInfoHandler inviteFriendsInfoHandler) {
        this.mHandler = inviteFriendsInfoHandler;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public InviteFriendsInfoHandler getHandler() {
        return this.mHandler;
    }

    protected void executeBindings() {
        long j;
        OnClickListener onClickListener;
        OnClickListener onClickListener2;
        OnClickListener onClickListener3;
        OnClickListener onClickListener4;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        InviteFriendsInfoHandler inviteFriendsInfoHandler = this.mHandler;
        long j2 = j & 3;
        OnClickListener onClickListener5 = null;
        if (j2 == 0 || inviteFriendsInfoHandler == null) {
            onClickListener = null;
            onClickListener2 = onClickListener;
            onClickListener3 = onClickListener2;
            onClickListener4 = onClickListener3;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            OnClickListenerImpl1 onClickListenerImpl1;
            OnClickListenerImpl2 onClickListenerImpl2;
            OnClickListenerImpl3 onClickListenerImpl3;
            OnClickListenerImpl4 onClickListenerImpl4;
            if (this.mHandlerOnTwitterAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                this.mHandlerOnTwitterAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = this.mHandlerOnTwitterAndroidViewViewOnClickListener;
            }
            OnClickListenerImpl value = onClickListenerImpl.setValue(inviteFriendsInfoHandler);
            if (this.mHandlerOnCloseAndroidViewViewOnClickListener == null) {
                onClickListenerImpl1 = new OnClickListenerImpl1();
                this.mHandlerOnCloseAndroidViewViewOnClickListener = onClickListenerImpl1;
            } else {
                onClickListenerImpl1 = this.mHandlerOnCloseAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl1.setValue(inviteFriendsInfoHandler);
            if (this.mHandlerOnVkAndroidViewViewOnClickListener == null) {
                onClickListenerImpl2 = new OnClickListenerImpl2();
                this.mHandlerOnVkAndroidViewViewOnClickListener = onClickListenerImpl2;
            } else {
                onClickListenerImpl2 = this.mHandlerOnVkAndroidViewViewOnClickListener;
            }
            onClickListenerImpl2 = onClickListenerImpl2.setValue(inviteFriendsInfoHandler);
            if (this.mHandlerOnFacebookAndroidViewViewOnClickListener == null) {
                onClickListenerImpl3 = new OnClickListenerImpl3();
                this.mHandlerOnFacebookAndroidViewViewOnClickListener = onClickListenerImpl3;
            } else {
                onClickListenerImpl3 = this.mHandlerOnFacebookAndroidViewViewOnClickListener;
            }
            onClickListenerImpl3 = onClickListenerImpl3.setValue(inviteFriendsInfoHandler);
            if (this.mHandlerOnUrlAndroidViewViewOnClickListener == null) {
                onClickListenerImpl4 = new OnClickListenerImpl4();
                this.mHandlerOnUrlAndroidViewViewOnClickListener = onClickListenerImpl4;
            } else {
                onClickListenerImpl4 = this.mHandlerOnUrlAndroidViewViewOnClickListener;
            }
            OnClickListenerImpl4 value2 = onClickListenerImpl4.setValue(inviteFriendsInfoHandler);
            onClickListener2 = value;
            onClickListener5 = onClickListenerImpl3;
            onClickListener4 = onClickListenerImpl2;
            onClickListener3 = value2;
        }
        if (j2 != 0) {
            this.closeButton.setOnClickListener(onClickListener);
            this.facebook.setOnClickListener(onClickListener5);
            this.twitter.setOnClickListener(onClickListener2);
            this.url.setOnClickListener(onClickListener3);
            this.vk.setOnClickListener(onClickListener4);
        }
    }

    public static ActivityInviteFriendInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityInviteFriendInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityInviteFriendInfoBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_invite_friend_info, viewGroup, z, dataBindingComponent);
    }

    public static ActivityInviteFriendInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityInviteFriendInfoBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_invite_friend_info, null, false), dataBindingComponent);
    }

    public static ActivityInviteFriendInfoBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityInviteFriendInfoBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_invite_friend_info_0".equals(view.getTag())) {
            return new ActivityInviteFriendInfoBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

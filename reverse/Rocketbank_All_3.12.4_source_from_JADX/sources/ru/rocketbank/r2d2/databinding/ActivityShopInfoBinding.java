package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.InviteFriendsInfoHandler;

public class ActivityShopInfoBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final LinearLayout fullscreenContent;
    private long mDirtyFlags = -1;
    private InviteFriendsInfoHandler mHandler;
    public final RocketTextView rocket;
    public final RocketTextView supportButton;
    public final RocketTextView textPayment;
    public final Toolbar toolbar;
    public final RocketTextView yourUrl;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.toolbar, 1);
        sViewsWithIds.put(C0859R.id.rocket, 2);
        sViewsWithIds.put(C0859R.id.your_url, 3);
        sViewsWithIds.put(C0859R.id.textPayment, 4);
        sViewsWithIds.put(C0859R.id.supportButton, 5);
    }

    public ActivityShopInfoBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.fullscreenContent = (LinearLayout) dataBindingComponent[0];
        this.fullscreenContent.setTag(null);
        this.rocket = (RocketTextView) dataBindingComponent[2];
        this.supportButton = (RocketTextView) dataBindingComponent[5];
        this.textPayment = (RocketTextView) dataBindingComponent[4];
        this.toolbar = (Toolbar) dataBindingComponent[1];
        this.yourUrl = (RocketTextView) dataBindingComponent[3];
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
    }

    public InviteFriendsInfoHandler getHandler() {
        return this.mHandler;
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
    }

    public static ActivityShopInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityShopInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityShopInfoBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_shop_info, viewGroup, z, dataBindingComponent);
    }

    public static ActivityShopInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityShopInfoBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_shop_info, null, false), dataBindingComponent);
    }

    public static ActivityShopInfoBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityShopInfoBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_shop_info_0".equals(view.getTag())) {
            return new ActivityShopInfoBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

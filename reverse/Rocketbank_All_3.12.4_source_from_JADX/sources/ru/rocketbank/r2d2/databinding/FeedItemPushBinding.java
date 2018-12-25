package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.feed.viewholder.PushModel;

public class FeedItemPushBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketTextView additionalAction;
    public final RocketTextView body;
    public final LinearLayout buttons;
    public final CardView cardBody;
    public final ImageView image;
    private long mDirtyFlags = -1;
    private PushModel mPush;
    public final RelativeLayout main;
    public final RocketTextView mainAction;
    public final LinearLayout root;
    public final RocketTextView title;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.cardBody, 1);
        sViewsWithIds.put(C0859R.id.main, 2);
        sViewsWithIds.put(C0859R.id.image, 3);
        sViewsWithIds.put(C0859R.id.title, 4);
        sViewsWithIds.put(C0859R.id.body, 5);
        sViewsWithIds.put(C0859R.id.buttons, 6);
        sViewsWithIds.put(C0859R.id.additionalAction, 7);
        sViewsWithIds.put(C0859R.id.mainAction, 8);
    }

    public FeedItemPushBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds);
        this.additionalAction = (RocketTextView) dataBindingComponent[7];
        this.body = (RocketTextView) dataBindingComponent[5];
        this.buttons = (LinearLayout) dataBindingComponent[6];
        this.cardBody = (CardView) dataBindingComponent[1];
        this.image = (ImageView) dataBindingComponent[3];
        this.main = (RelativeLayout) dataBindingComponent[2];
        this.mainAction = (RocketTextView) dataBindingComponent[8];
        this.root = (LinearLayout) dataBindingComponent[0];
        this.root.setTag(null);
        this.title = (RocketTextView) dataBindingComponent[4];
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
        if (68 != i) {
            return false;
        }
        setPush((PushModel) obj);
        return true;
    }

    public void setPush(PushModel pushModel) {
        this.mPush = pushModel;
    }

    public PushModel getPush() {
        return this.mPush;
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
    }

    public static FeedItemPushBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemPushBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FeedItemPushBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.feed_item_push, viewGroup, z, dataBindingComponent);
    }

    public static FeedItemPushBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemPushBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.feed_item_push, null, false), dataBindingComponent);
    }

    public static FeedItemPushBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemPushBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/feed_item_push_0".equals(view.getTag())) {
            return new FeedItemPushBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}

package com.mikepenz.materialdrawer;

import android.app.Activity;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.FrameLayout;
import com.mikepenz.materialdrawer.model.interfaces.IDrawerItem;
import com.mikepenz.materialdrawer.util.IdDistributor;
import com.mikepenz.materialdrawer.util.KeyboardUtil;
import java.util.ArrayList;
import ru.rocketbank.r2d2.C0859R;

public final class Drawer {
    private FrameLayout mContentView;
    protected final DrawerBuilder mDrawerBuilder;
    private KeyboardUtil mKeyboardUtil = null;
    private ArrayList<IDrawerItem> originalDrawerItems;
    private int originalDrawerSelection = -1;

    public interface OnDrawerItemClickListener {
        boolean onItemClick(View view, int i, IDrawerItem iDrawerItem);
    }

    protected Drawer(DrawerBuilder drawerBuilder) {
        this.mDrawerBuilder = drawerBuilder;
    }

    public final DrawerLayout getDrawerLayout() {
        return this.mDrawerBuilder.mDrawerLayout;
    }

    public final void openDrawer() {
        if (this.mDrawerBuilder.mDrawerLayout != null && this.mDrawerBuilder.mSliderLayout != null) {
            this.mDrawerBuilder.mDrawerLayout.openDrawer(this.mDrawerBuilder.mDrawerGravity.intValue());
        }
    }

    public final void closeDrawer() {
        if (this.mDrawerBuilder.mDrawerLayout != null) {
            this.mDrawerBuilder.mDrawerLayout.closeDrawer(this.mDrawerBuilder.mDrawerGravity.intValue());
        }
    }

    public final boolean isDrawerOpen() {
        return (this.mDrawerBuilder.mDrawerLayout == null || this.mDrawerBuilder.mSliderLayout == null) ? false : this.mDrawerBuilder.mDrawerLayout.isDrawerOpen(this.mDrawerBuilder.mDrawerGravity.intValue());
    }

    public final void keyboardSupportEnabled$3ef676ad(Activity activity) {
        if (getContent() != null && getContent().getChildCount() > 0) {
            if (this.mKeyboardUtil == null) {
                this.mKeyboardUtil = new KeyboardUtil(activity, getContent().getChildAt(0));
                this.mKeyboardUtil.disable();
            }
            this.mKeyboardUtil.enable();
        }
    }

    private FrameLayout getContent() {
        if (this.mContentView == null && this.mDrawerBuilder.mDrawerLayout != null) {
            this.mContentView = (FrameLayout) this.mDrawerBuilder.mDrawerLayout.findViewById(C0859R.id.content_layout);
        }
        return this.mContentView;
    }

    public final RecyclerView getRecyclerView() {
        return this.mDrawerBuilder.mRecyclerView;
    }

    public final ArrayList<IDrawerItem> getDrawerItems() {
        return this.mDrawerBuilder.getAdapter().getDrawerItems();
    }

    public final void setItems(ArrayList<IDrawerItem> arrayList) {
        arrayList = IdDistributor.checkIds((ArrayList) arrayList);
        if (this.originalDrawerItems != null) {
            this.originalDrawerItems = arrayList;
            this.mDrawerBuilder.mCurrentSelection = -1;
        } else {
            this.mDrawerBuilder.getAdapter().setDrawerItems(arrayList);
        }
        this.mDrawerBuilder.mAdapter.notifyDataSetChanged();
    }

    public final boolean setSelection$7a7ce801(IDrawerItem iDrawerItem) {
        iDrawerItem = DrawerUtils.getPositionByIdentifier(this.mDrawerBuilder, iDrawerItem.getIdentifier());
        if (this.mDrawerBuilder.mRecyclerView == null) {
            return null;
        }
        DrawerBuilder drawerBuilder = this.mDrawerBuilder;
        drawerBuilder.getDrawerItem(iDrawerItem);
        return DrawerUtils.setRecyclerViewSelection$4633d628(drawerBuilder, iDrawerItem);
    }

    public final void updateItem(IDrawerItem iDrawerItem) {
        int positionByIdentifier = DrawerUtils.getPositionByIdentifier(this.mDrawerBuilder, iDrawerItem.getIdentifier());
        if (this.mDrawerBuilder.checkDrawerItem$256326a(positionByIdentifier)) {
            this.mDrawerBuilder.getAdapter().setDrawerItem(positionByIdentifier, iDrawerItem);
        }
    }
}

package com.mikepenz.materialdrawer.model;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import com.mikepenz.materialdrawer.model.utils.ViewHolderFactory;
import ru.rocketbank.r2d2.C0859R;

public final class ContainerDrawerItem extends AbstractDrawerItem<ContainerDrawerItem> {
    private boolean mDivider = true;
    private View mView;
    private Position mViewPosition = Position.TOP;

    public enum Position {
        TOP,
        BOTTOM,
        NONE
    }

    public static class ItemFactory implements ViewHolderFactory<ViewHolder> {
        public final /* bridge */ /* synthetic */ android.support.v7.widget.RecyclerView.ViewHolder factory(View view) {
            return new ViewHolder(view);
        }
    }

    static class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder {
        private View view;

        private ViewHolder(View view) {
            super(view);
            this.view = view;
        }
    }

    public final int getLayoutRes() {
        return C0859R.layout.material_drawer_item_container;
    }

    public final String getType() {
        return "CONTAINER_ITEM";
    }

    public final ContainerDrawerItem withView(View view) {
        this.mView = view;
        return this;
    }

    public final ContainerDrawerItem withViewPosition(Position position) {
        this.mViewPosition = position;
        return this;
    }

    public final ContainerDrawerItem withDivider(boolean z) {
        this.mDivider = z;
        return this;
    }

    public final void bindView(android.support.v7.widget.RecyclerView.ViewHolder viewHolder) {
        Context context = viewHolder.itemView.getContext();
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        viewHolder.itemView.setId(getIdentifier());
        int i = false;
        viewHolder2.view.setEnabled(false);
        if (this.mView.getParent() != null) {
            ((ViewGroup) this.mView.getParent()).removeView(this.mView);
        }
        ((ViewGroup) viewHolder2.view).removeAllViews();
        boolean z = this.mDivider;
        View view = new View(context);
        view.setMinimumHeight(z);
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(C0859R.attr.material_drawer_divider, typedValue, true)) {
            i = typedValue.data;
        }
        if (i == 0) {
            i = context.getResources().getColor(C0859R.color.material_drawer_divider);
        }
        view.setBackgroundColor(i);
        LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, (int) (((float) z) * (((float) context.getResources().getDisplayMetrics().densityDpi) / 160.0f)));
        if (this.mViewPosition == Position.TOP) {
            ((ViewGroup) viewHolder2.view).addView(this.mView, -1, -2);
            layoutParams.bottomMargin = context.getResources().getDimensionPixelSize(C0859R.dimen.material_drawer_padding);
            ((ViewGroup) viewHolder2.view).addView(view, layoutParams);
        } else {
            if (this.mViewPosition == Position.BOTTOM) {
                layoutParams.topMargin = context.getResources().getDimensionPixelSize(C0859R.dimen.material_drawer_padding);
                ((ViewGroup) viewHolder2.view).addView(view, layoutParams);
            }
            ((ViewGroup) viewHolder2.view).addView(this.mView);
        }
        onPostBindView(this, viewHolder.itemView);
    }

    public final ViewHolderFactory getFactory() {
        return new ItemFactory();
    }
}

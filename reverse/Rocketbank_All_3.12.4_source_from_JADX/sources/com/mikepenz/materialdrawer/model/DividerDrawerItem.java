package com.mikepenz.materialdrawer.model;

import android.content.Context;
import android.support.v4.view.ViewCompat;
import android.util.TypedValue;
import android.view.View;
import com.mikepenz.materialdrawer.model.utils.ViewHolderFactory;
import ru.rocketbank.r2d2.C0859R;

public final class DividerDrawerItem extends AbstractDrawerItem<DividerDrawerItem> {

    public static class ItemFactory implements ViewHolderFactory<ViewHolder> {
        public final /* bridge */ /* synthetic */ android.support.v7.widget.RecyclerView.ViewHolder factory(View view) {
            return new ViewHolder(view);
        }
    }

    static class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder {
        private View divider;
        private View view;

        private ViewHolder(View view) {
            super(view);
            this.view = view;
            this.divider = view.findViewById(C0859R.id.material_drawer_divider);
        }
    }

    public final int getLayoutRes() {
        return C0859R.layout.material_drawer_item_divider;
    }

    public final String getType() {
        return "DIVIDER_ITEM";
    }

    public final void bindView(android.support.v7.widget.RecyclerView.ViewHolder viewHolder) {
        Context context = viewHolder.itemView.getContext();
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        viewHolder.itemView.setId(getIdentifier());
        int i = false;
        viewHolder2.view.setClickable(false);
        viewHolder2.view.setEnabled(false);
        viewHolder2.view.setMinimumHeight(1);
        ViewCompat.setImportantForAccessibility(viewHolder2.view, 2);
        View access$100 = viewHolder2.divider;
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(C0859R.attr.material_drawer_divider, typedValue, true)) {
            i = typedValue.data;
        }
        if (i == 0) {
            i = context.getResources().getColor(C0859R.color.material_drawer_divider);
        }
        access$100.setBackgroundColor(i);
        onPostBindView(this, viewHolder.itemView);
    }

    public final ViewHolderFactory getFactory() {
        return new ItemFactory();
    }
}

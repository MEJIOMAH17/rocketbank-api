package com.mikepenz.materialdrawer.model;

import android.content.Context;
import android.support.v7.appcompat.C0219R.string;
import android.view.View;
import android.widget.TextView;
import com.mikepenz.materialdrawer.holder.BadgeStyle;
import com.mikepenz.materialdrawer.holder.StringHolder;
import com.mikepenz.materialdrawer.model.BasePrimaryDrawerItem.BaseViewHolder;
import com.mikepenz.materialdrawer.model.utils.ViewHolderFactory;
import ru.rocketbank.r2d2.C0859R;

public class PrimaryDrawerItem extends BasePrimaryDrawerItem<PrimaryDrawerItem> {
    protected StringHolder mBadge;
    protected BadgeStyle mBadgeStyle = new BadgeStyle();

    public static class ItemFactory implements ViewHolderFactory<ViewHolder> {
        public final /* bridge */ /* synthetic */ android.support.v7.widget.RecyclerView.ViewHolder factory(View view) {
            return new ViewHolder(view);
        }
    }

    static class ViewHolder extends BaseViewHolder {
        private TextView badge;
        private View badgeContainer;

        public ViewHolder(View view) {
            super(view);
            this.badgeContainer = view.findViewById(C0859R.id.material_drawer_badge_container);
            this.badge = (TextView) view.findViewById(C0859R.id.material_drawer_badge);
        }
    }

    public int getLayoutRes() {
        return C0859R.layout.material_drawer_item_primary;
    }

    public String getType() {
        return "PRIMARY_ITEM";
    }

    public PrimaryDrawerItem withBadge(StringHolder stringHolder) {
        this.mBadge = stringHolder;
        return this;
    }

    public PrimaryDrawerItem withBadge(String str) {
        this.mBadge = new StringHolder(str);
        return this;
    }

    public PrimaryDrawerItem withBadge(int i) {
        this.mBadge = new StringHolder(i);
        return this;
    }

    public PrimaryDrawerItem withBadgeStyle(BadgeStyle badgeStyle) {
        this.mBadgeStyle = badgeStyle;
        return this;
    }

    public StringHolder getBadge() {
        return this.mBadge;
    }

    public BadgeStyle getBadgeStyle() {
        return this.mBadgeStyle;
    }

    public void bindView(android.support.v7.widget.RecyclerView.ViewHolder viewHolder) {
        Context context = viewHolder.itemView.getContext();
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        bindViewHelper((BaseViewHolder) viewHolder);
        if (string.applyToOrHide$3730f3a8(this.mBadge, viewHolder2.badge)) {
            this.mBadgeStyle.style(viewHolder2.badge, getTextColorStateList(getColor(context), getSelectedTextColor(context)));
            viewHolder2.badgeContainer.setVisibility(0);
        } else {
            viewHolder2.badgeContainer.setVisibility(8);
        }
        if (getTypeface() != null) {
            viewHolder2.badge.setTypeface(getTypeface());
        }
        onPostBindView(this, viewHolder.itemView);
    }

    public ViewHolderFactory getFactory() {
        return new ItemFactory();
    }
}

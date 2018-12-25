package com.mikepenz.materialdrawer.model;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build.VERSION;
import android.support.v7.appcompat.C0219R.id;
import android.support.v7.appcompat.C0219R.string;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.mikepenz.materialdrawer.holder.ColorHolder;
import com.mikepenz.materialdrawer.holder.ImageHolder;
import com.mikepenz.materialdrawer.holder.StringHolder;
import com.mikepenz.materialdrawer.util.DrawerUIUtils;
import com.mikepenz.materialize.util.UIUtils;
import ru.rocketbank.r2d2.C0859R;

public abstract class BaseSecondaryDrawerItem<T> extends BaseDrawerItem<T> {
    private StringHolder description;
    private ColorHolder descriptionTextColor;

    public static class BaseViewHolder extends ViewHolder {
        private TextView description;
        protected ImageView icon;
        protected TextView name;
        protected View view;

        public BaseViewHolder(View view) {
            super(view);
            this.view = view;
            this.icon = (ImageView) view.findViewById(C0859R.id.material_drawer_icon);
            this.name = (TextView) view.findViewById(C0859R.id.material_drawer_name);
            this.description = (TextView) view.findViewById(C0859R.id.material_drawer_description);
        }
    }

    public T withDescription(String str) {
        this.description = new StringHolder(str);
        return this;
    }

    public T withDescription(int i) {
        this.description = new StringHolder(i);
        return this;
    }

    public StringHolder getDescription() {
        return this.description;
    }

    public ColorHolder getDescriptionTextColor() {
        return this.descriptionTextColor;
    }

    protected int getColor(Context context) {
        if (isEnabled()) {
            return id.color$54b3a3d9(getTextColor(), context, C0859R.attr.material_drawer_secondary_text, C0859R.color.material_drawer_secondary_text);
        }
        return id.color$54b3a3d9(getDisabledTextColor(), context, C0859R.attr.material_drawer_hint_text, C0859R.color.material_drawer_hint_text);
    }

    protected void bindViewHelper(BaseViewHolder baseViewHolder) {
        Context context = baseViewHolder.itemView.getContext();
        baseViewHolder.itemView.setId(getIdentifier());
        baseViewHolder.itemView.setSelected(isSelected());
        int selectedColor = getSelectedColor(context);
        int color = getColor(context);
        int selectedTextColor = getSelectedTextColor(context);
        int iconColor = getIconColor(context);
        int selectedIconColor = getSelectedIconColor(context);
        View view = baseViewHolder.view;
        Drawable colorDrawable = new ColorDrawable(selectedColor);
        Drawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842913}, colorDrawable);
        stateListDrawable.addState(new int[0], UIUtils.getCompatDrawable(context, DrawerUIUtils.getSelectableBackground(context)));
        if (VERSION.SDK_INT < 16) {
            view.setBackgroundDrawable(stateListDrawable);
        } else {
            view.setBackground(stateListDrawable);
        }
        string.applyTo$3730f3ac(getName(), baseViewHolder.name);
        string.applyToOrHide$3730f3a8(getDescription(), baseViewHolder.description);
        baseViewHolder.name.setTextColor(getTextColorStateList(color, selectedTextColor));
        id.applyToOr$d8581ce(getDescriptionTextColor(), baseViewHolder.description, getTextColorStateList(getColor(context), getSelectedColor(context)));
        if (getTypeface() != null) {
            baseViewHolder.name.setTypeface(getTypeface());
            baseViewHolder.description.setTypeface(getTypeface());
        }
        ImageHolder icon = getIcon();
        Drawable decideIcon$4fc524c5 = icon == null ? null : icon.decideIcon$4fc524c5(context, iconColor, isIconTinted());
        icon = getSelectedIcon();
        com.mikepenz.materialize.holder.ImageHolder.applyMultiIconTo(decideIcon$4fc524c5, iconColor, icon == null ? null : icon.decideIcon$4fc524c5(context, selectedIconColor, isIconTinted()), selectedIconColor, isIconTinted(), baseViewHolder.icon);
        DrawerUIUtils.setDrawerVerticalPadding(baseViewHolder.view, this.level);
    }

    public T withDescriptionTextColor(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorInt(i);
        this.descriptionTextColor = colorHolder;
        return this;
    }

    public T withDescriptionTextColorRes(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorRes(i);
        this.descriptionTextColor = colorHolder;
        return this;
    }
}

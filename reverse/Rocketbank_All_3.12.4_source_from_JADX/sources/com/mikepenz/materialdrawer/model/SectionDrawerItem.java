package com.mikepenz.materialdrawer.model;

import android.content.Context;
import android.graphics.Typeface;
import android.support.v7.appcompat.C0219R.id;
import android.support.v7.appcompat.C0219R.string;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import com.mikepenz.materialdrawer.holder.ColorHolder;
import com.mikepenz.materialdrawer.holder.StringHolder;
import com.mikepenz.materialdrawer.model.utils.ViewHolderFactory;
import ru.rocketbank.r2d2.C0859R;

public class SectionDrawerItem extends AbstractDrawerItem<SectionDrawerItem> {
    private boolean divider = true;
    private StringHolder name;
    private ColorHolder textColor;
    private Typeface typeface = null;

    public static class ItemFactory implements ViewHolderFactory<ViewHolder> {
        public final /* bridge */ /* synthetic */ android.support.v7.widget.RecyclerView.ViewHolder factory(View view) {
            return new ViewHolder(view);
        }
    }

    static class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder {
        private View divider;
        private TextView name;
        private View view;

        private ViewHolder(View view) {
            super(view);
            this.view = view;
            this.divider = view.findViewById(C0859R.id.material_drawer_divider);
            this.name = (TextView) view.findViewById(C0859R.id.material_drawer_name);
        }
    }

    public int getLayoutRes() {
        return C0859R.layout.material_drawer_item_section;
    }

    public String getType() {
        return "SECTION_ITEM";
    }

    public boolean isEnabled() {
        return false;
    }

    public boolean isSelected() {
        return false;
    }

    public SectionDrawerItem withName(StringHolder stringHolder) {
        this.name = stringHolder;
        return this;
    }

    public SectionDrawerItem withName(String str) {
        this.name = new StringHolder(str);
        return this;
    }

    public SectionDrawerItem withName(int i) {
        this.name = new StringHolder(i);
        return this;
    }

    public SectionDrawerItem withDivider(boolean z) {
        this.divider = z;
        return this;
    }

    public SectionDrawerItem withTypeface(Typeface typeface) {
        this.typeface = typeface;
        return this;
    }

    public boolean hasDivider() {
        return this.divider;
    }

    public ColorHolder getTextColor() {
        return this.textColor;
    }

    public StringHolder getName() {
        return this.name;
    }

    public Typeface getTypeface() {
        return this.typeface;
    }

    public void bindView(android.support.v7.widget.RecyclerView.ViewHolder viewHolder) {
        Context context = viewHolder.itemView.getContext();
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        viewHolder.itemView.setId(getIdentifier());
        int i = false;
        viewHolder2.view.setClickable(false);
        viewHolder2.view.setEnabled(false);
        viewHolder2.name.setTextColor(id.color$54b3a3d9(getTextColor(), context, C0859R.attr.material_drawer_secondary_text, C0859R.color.material_drawer_secondary_text));
        string.applyTo$3730f3ac(getName(), viewHolder2.name);
        if (hasDivider()) {
            viewHolder2.divider.setVisibility(0);
        } else {
            viewHolder2.divider.setVisibility(8);
        }
        View access$200 = viewHolder2.divider;
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(C0859R.attr.material_drawer_divider, typedValue, true)) {
            i = typedValue.data;
        }
        if (i == 0) {
            i = context.getResources().getColor(C0859R.color.material_drawer_divider);
        }
        access$200.setBackgroundColor(i);
        onPostBindView(this, viewHolder.itemView);
    }

    public ViewHolderFactory getFactory() {
        return new ItemFactory();
    }

    public SectionDrawerItem withTextColor(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorInt(i);
        this.textColor = colorHolder;
        return this;
    }

    public SectionDrawerItem withTextColorRes(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorRes(i);
        this.textColor = colorHolder;
        return this;
    }
}

package com.mikepenz.materialdrawer.model;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.appcompat.C0219R.id;
import android.util.Pair;
import com.mikepenz.iconics.typeface.IIcon;
import com.mikepenz.materialdrawer.holder.ColorHolder;
import com.mikepenz.materialdrawer.holder.ImageHolder;
import com.mikepenz.materialdrawer.holder.StringHolder;
import ru.rocketbank.r2d2.C0859R;

public abstract class BaseDrawerItem<T> extends AbstractDrawerItem<T> {
    protected Pair<Integer, ColorStateList> colorStateList;
    protected ColorHolder disabledIconColor;
    protected ColorHolder disabledTextColor;
    protected ImageHolder icon;
    protected ColorHolder iconColor;
    protected boolean iconTinted = false;
    protected int level = 1;
    protected StringHolder name;
    protected ColorHolder selectedColor;
    protected ImageHolder selectedIcon;
    protected ColorHolder selectedIconColor;
    protected ColorHolder selectedTextColor;
    protected ColorHolder textColor;
    protected Typeface typeface = null;

    public T withIcon(ImageHolder imageHolder) {
        this.icon = imageHolder;
        return this;
    }

    public T withIcon(Drawable drawable) {
        this.icon = new ImageHolder(drawable);
        return this;
    }

    public T withIcon(int i) {
        this.icon = new ImageHolder(i);
        return this;
    }

    public T withSelectedIcon(Drawable drawable) {
        this.selectedIcon = new ImageHolder(drawable);
        return this;
    }

    public T withSelectedIcon(int i) {
        this.selectedIcon = new ImageHolder(i);
        return this;
    }

    public T withIcon(IIcon iIcon) {
        this.icon = new ImageHolder(iIcon);
        if (VERSION.SDK_INT >= 21) {
            this.selectedIcon = new ImageHolder(iIcon);
        } else {
            withIconTintingEnabled(true);
        }
        return this;
    }

    public T withName(StringHolder stringHolder) {
        this.name = stringHolder;
        return this;
    }

    public T withName(String str) {
        this.name = new StringHolder(str);
        return this;
    }

    public T withName(int i) {
        this.name = new StringHolder(i);
        return this;
    }

    public T withIconTintingEnabled(boolean z) {
        this.iconTinted = z;
        return this;
    }

    @Deprecated
    public T withIconTinted(boolean z) {
        this.iconTinted = z;
        return this;
    }

    @Deprecated
    public T withTintSelectedIcon(boolean z) {
        return withIconTintingEnabled(z);
    }

    public T withTypeface(Typeface typeface) {
        this.typeface = typeface;
        return this;
    }

    public T withLevel(int i) {
        this.level = i;
        return this;
    }

    public ColorHolder getSelectedColor() {
        return this.selectedColor;
    }

    public ColorHolder getTextColor() {
        return this.textColor;
    }

    public ColorHolder getSelectedTextColor() {
        return this.selectedTextColor;
    }

    public ColorHolder getDisabledTextColor() {
        return this.disabledTextColor;
    }

    public boolean isIconTinted() {
        return this.iconTinted;
    }

    public ImageHolder getIcon() {
        return this.icon;
    }

    public ImageHolder getSelectedIcon() {
        return this.selectedIcon;
    }

    public StringHolder getName() {
        return this.name;
    }

    public ColorHolder getDisabledIconColor() {
        return this.disabledIconColor;
    }

    public ColorHolder getSelectedIconColor() {
        return this.selectedIconColor;
    }

    public ColorHolder getIconColor() {
        return this.iconColor;
    }

    public Typeface getTypeface() {
        return this.typeface;
    }

    public int getLevel() {
        return this.level;
    }

    protected int getSelectedColor(Context context) {
        return id.color$54b3a3d9(getSelectedColor(), context, C0859R.attr.material_drawer_selected, C0859R.color.material_drawer_selected);
    }

    protected int getColor(Context context) {
        if (isEnabled()) {
            return id.color$54b3a3d9(getTextColor(), context, C0859R.attr.material_drawer_primary_text, C0859R.color.material_drawer_primary_text);
        }
        return id.color$54b3a3d9(getDisabledTextColor(), context, C0859R.attr.material_drawer_hint_text, C0859R.color.material_drawer_hint_text);
    }

    protected int getSelectedTextColor(Context context) {
        return id.color$54b3a3d9(getSelectedTextColor(), context, C0859R.attr.material_drawer_selected_text, C0859R.color.material_drawer_selected_text);
    }

    public int getIconColor(Context context) {
        if (isEnabled()) {
            return id.color$54b3a3d9(getIconColor(), context, C0859R.attr.material_drawer_primary_icon, C0859R.color.material_drawer_primary_icon);
        }
        return id.color$54b3a3d9(getDisabledIconColor(), context, C0859R.attr.material_drawer_hint_icon, C0859R.color.material_drawer_hint_icon);
    }

    protected int getSelectedIconColor(Context context) {
        return id.color$54b3a3d9(getSelectedIconColor(), context, C0859R.attr.material_drawer_selected_text, C0859R.color.material_drawer_selected_text);
    }

    protected ColorStateList getTextColorStateList(int i, int i2) {
        if (this.colorStateList == null || i + i2 != ((Integer) this.colorStateList.first).intValue()) {
            Integer valueOf = Integer.valueOf(i + i2);
            r4 = new int[2][];
            r4[0] = new int[]{16842913};
            r4[1] = new int[0];
            this.colorStateList = new Pair(valueOf, new ColorStateList(r4, new int[]{i2, i}));
        }
        return (ColorStateList) this.colorStateList.second;
    }

    public T withSelectedColor(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorInt(i);
        this.selectedColor = colorHolder;
        return this;
    }

    public T withSelectedColorRes(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorRes(i);
        this.selectedColor = colorHolder;
        return this;
    }

    public T withTextColor(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorInt(i);
        this.textColor = colorHolder;
        return this;
    }

    public T withTextColorRes(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorRes(i);
        this.textColor = colorHolder;
        return this;
    }

    public T withSelectedTextColor(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorInt(i);
        this.selectedTextColor = colorHolder;
        return this;
    }

    public T withSelectedTextColorRes(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorRes(i);
        this.selectedTextColor = colorHolder;
        return this;
    }

    public T withDisabledTextColor(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorInt(i);
        this.disabledTextColor = colorHolder;
        return this;
    }

    public T withDisabledTextColorRes(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorRes(i);
        this.disabledTextColor = colorHolder;
        return this;
    }

    public T withIconColor(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorInt(i);
        this.iconColor = colorHolder;
        return this;
    }

    public T withIconColorRes(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorRes(i);
        this.iconColor = colorHolder;
        return this;
    }

    public T withSelectedIconColor(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorInt(i);
        this.selectedIconColor = colorHolder;
        return this;
    }

    public T withSelectedIconColorRes(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorRes(i);
        this.selectedIconColor = colorHolder;
        return this;
    }

    public T withDisabledIconColor(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorInt(i);
        this.disabledIconColor = colorHolder;
        return this;
    }

    public T withDisabledIconColorRes(int i) {
        ColorHolder colorHolder = new ColorHolder();
        colorHolder.setColorRes(i);
        this.disabledIconColor = colorHolder;
        return this;
    }
}

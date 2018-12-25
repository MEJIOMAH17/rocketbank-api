package com.mikepenz.materialdrawer.holder;

import android.content.Context;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import com.mikepenz.iconics.IconicsDrawable;
import com.mikepenz.iconics.typeface.IIcon;
import com.mikepenz.materialize.util.UIUtils;

public final class ImageHolder extends com.mikepenz.materialize.holder.ImageHolder {
    private IIcon mIIcon;

    public ImageHolder(Drawable drawable) {
        super(drawable);
    }

    public ImageHolder(int i) {
        super(i);
    }

    public ImageHolder(IIcon iIcon) {
        this.mIIcon = iIcon;
    }

    public final Drawable decideIcon$4fc524c5(Context context, int i, boolean z) {
        Drawable icon = getIcon();
        if (this.mIIcon != null) {
            icon = new IconicsDrawable(context, this.mIIcon).color(i).sizeDp(24).paddingDp(1);
        } else if (getIconRes() != -1) {
            icon = UIUtils.getCompatDrawable(context, getIconRes());
        }
        if (icon == null || !z || this.mIIcon != null) {
            return icon;
        }
        icon = icon.mutate();
        icon.setColorFilter(i, Mode.SRC_IN);
        return icon;
    }
}

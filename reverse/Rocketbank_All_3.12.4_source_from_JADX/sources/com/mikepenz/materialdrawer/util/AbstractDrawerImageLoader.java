package com.mikepenz.materialdrawer.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.mikepenz.iconics.IconicsDrawable;
import com.mikepenz.materialdrawer.icons.MaterialDrawerFont.Icon;
import com.mikepenz.materialdrawer.util.DrawerImageLoader.IDrawerImageLoader;

public abstract class AbstractDrawerImageLoader implements IDrawerImageLoader {
    public final void set$29cb36a4() {
        Log.i("MaterialDrawer", "you have not specified a ImageLoader implementation through the DrawerImageLoader.init(IDrawerImageLoader) method");
    }

    public final Drawable placeholder$36ecdf9d(Context context) {
        return new IconicsDrawable(context, Icon.mdf_person).colorRes$236e4172().backgroundColorRes$236e4172().sizeDp(56).paddingDp(16);
    }
}

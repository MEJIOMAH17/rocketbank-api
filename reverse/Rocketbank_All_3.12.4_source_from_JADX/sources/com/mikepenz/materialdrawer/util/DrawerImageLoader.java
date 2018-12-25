package com.mikepenz.materialdrawer.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;

public final class DrawerImageLoader {
    private static DrawerImageLoader SINGLETON;
    private IDrawerImageLoader imageLoader;
    private boolean mHandleAllUris = false;

    public interface IDrawerImageLoader {
        Drawable placeholder$36ecdf9d(Context context);

        void set$29cb36a4();
    }

    public enum Tags {
        PROFILE,
        PROFILE_DRAWER_ITEM,
        ACCOUNT_HEADER
    }

    /* renamed from: com.mikepenz.materialdrawer.util.DrawerImageLoader$1 */
    static class C14091 extends AbstractDrawerImageLoader {
        C14091() {
        }
    }

    private DrawerImageLoader(IDrawerImageLoader iDrawerImageLoader) {
        this.imageLoader = iDrawerImageLoader;
    }

    public static DrawerImageLoader getInstance() {
        if (SINGLETON == null) {
            SINGLETON = new DrawerImageLoader(new C14091());
        }
        return SINGLETON;
    }

    public final boolean setImage$15ce6e06(ImageView imageView, Uri uri) {
        if (!"http".equals(uri.getScheme())) {
            if ("https".equals(uri.getScheme()) == null) {
                return null;
            }
        }
        if (this.imageLoader != null) {
            this.imageLoader.placeholder$36ecdf9d(imageView.getContext());
            this.imageLoader.set$29cb36a4();
        }
        return true;
    }
}

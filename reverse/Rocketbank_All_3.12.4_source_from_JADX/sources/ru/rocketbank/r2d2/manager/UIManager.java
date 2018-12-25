package ru.rocketbank.r2d2.manager;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.view.KeyCharacterMap;
import android.view.WindowManager.LayoutParams;
import io.fabric.sdk.android.services.common.AbstractSpiCall;

public final class UIManager {
    private int bottom;
    private int right;
    private int top;

    public UIManager(Activity activity) {
        if (VERSION.SDK_INT >= 19) {
            LayoutParams attributes = activity.getWindow().getAttributes();
            activity = activity.getResources();
            int identifier = activity.getIdentifier("config_showNavigationBar", "bool", AbstractSpiCall.ANDROID_CLIENT_TYPE);
            Configuration configuration = activity.getConfiguration();
            if ((attributes.flags & 134217728) != 0 && ((identifier > 0 && activity.getBoolean(identifier)) || !(KeyCharacterMap.deviceHasKey(4) || KeyCharacterMap.deviceHasKey(3)))) {
                if (configuration.orientation != 1) {
                    if ((configuration.screenLayout & 15) < 3) {
                        this.right = getDimensionPixelSize(activity, "navigation_bar_width");
                    }
                }
                this.bottom = getDimensionPixelSize(activity, "navigation_bar_height");
            }
            if ((attributes.flags & 67108864) != 0) {
                this.top = getDimensionPixelSize(activity, "status_bar_height");
            }
        }
    }

    public final int getBottom() {
        return this.bottom;
    }

    public final int getRight() {
        return this.right;
    }

    public final int getTop() {
        return this.top;
    }

    private int getDimensionPixelSize(Resources resources, String str) {
        str = resources.getIdentifier(str, "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        return str > null ? resources.getDimensionPixelSize(str) : null;
    }
}

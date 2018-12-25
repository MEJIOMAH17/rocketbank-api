package android.support.v4.widget;

import android.os.Build.VERSION;
import android.support.annotation.RestrictTo;

@RestrictTo
public interface AutoSizeableTextView {
    @RestrictTo
    public static final boolean PLATFORM_SUPPORTS_AUTOSIZE = (VERSION.SDK_INT >= 27);
}

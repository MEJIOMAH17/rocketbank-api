package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.graphics.drawable.TintAwareDrawable;
import android.util.AttributeSet;
import android.widget.Button;
import com.google.android.gms.C0537R;

public final class zzak extends Button {
    public zzak(Context context) {
        this(context, null);
    }

    public zzak(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842824);
    }

    private void zza(Resources resources) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i);
        setMinWidth(i);
    }

    private void zzc(Resources resources, int i, int i2) {
        int i3 = C0537R.color.common_google_signin_btn_text_dark;
        int i4 = C0537R.color.common_google_signin_btn_text_light;
        setTextColor((ColorStateList) zzac.zzw(resources.getColorStateList(zzg(i2, i3, i4, i4))));
        switch (i) {
            case 0:
                i = C0537R.string.common_signin_button_text;
                break;
            case 1:
                i = C0537R.string.common_signin_button_text_long;
                break;
            case 2:
                setText(null);
                break;
            default:
                StringBuilder stringBuilder = new StringBuilder(32);
                stringBuilder.append("Unknown button size: ");
                stringBuilder.append(i);
                throw new IllegalStateException(stringBuilder.toString());
        }
        setText(resources.getString(i));
        setTransformationMethod(null);
    }

    private int zze(int i, int i2, int i3) {
        switch (i) {
            case 0:
            case 1:
                return i3;
            case 2:
                return i2;
            default:
                StringBuilder stringBuilder = new StringBuilder(32);
                stringBuilder.append("Unknown button size: ");
                stringBuilder.append(i);
                throw new IllegalStateException(stringBuilder.toString());
        }
    }

    private int zzg(int i, int i2, int i3, int i4) {
        switch (i) {
            case 0:
                return i2;
            case 1:
                return i3;
            case 2:
                return i4;
            default:
                StringBuilder stringBuilder = new StringBuilder(33);
                stringBuilder.append("Unknown color scheme: ");
                stringBuilder.append(i);
                throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public final void zza(Resources resources, int i, int i2) {
        zza(resources);
        zzb(resources, i, i2);
        zzc(resources, i, i2);
    }

    private void zzb(Resources resources, int i, int i2) {
        int i3 = C0537R.drawable.common_google_signin_btn_icon_dark;
        int i4 = C0537R.drawable.common_google_signin_btn_icon_light;
        i3 = zzg(i2, i3, i4, i4);
        i4 = C0537R.drawable.common_google_signin_btn_text_dark;
        int i5 = C0537R.drawable.common_google_signin_btn_text_light;
        i = DrawableCompat.wrap(resources.getDrawable(zze(i, i3, zzg(i2, i4, i5, i5))));
        resources = resources.getColorStateList(C0537R.color.common_google_signin_btn_tint);
        if (VERSION.SDK_INT >= 21) {
            i.setTintList(resources);
        } else if ((i instanceof TintAwareDrawable) != 0) {
            ((TintAwareDrawable) i).setTintList(resources);
        }
        resources = Mode.SRC_ATOP;
        if (VERSION.SDK_INT >= 21) {
            i.setTintMode(resources);
        } else if ((i instanceof TintAwareDrawable) != 0) {
            ((TintAwareDrawable) i).setTintMode(resources);
        }
        setBackgroundDrawable(i);
    }
}

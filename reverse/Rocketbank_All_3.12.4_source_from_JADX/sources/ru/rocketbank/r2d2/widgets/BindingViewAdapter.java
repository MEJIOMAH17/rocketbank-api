package ru.rocketbank.r2d2.widgets;

import android.databinding.BindingAdapter;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.AppCompatImageView;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BindingViewAdapter.kt */
public final class BindingViewAdapter {
    public static final BindingViewAdapter INSTANCE = new BindingViewAdapter();

    private BindingViewAdapter() {
    }

    @BindingAdapter({"srcCompat"})
    public static final void setDrawable(AppCompatImageView appCompatImageView, Drawable drawable) {
        Intrinsics.checkParameterIsNotNull(appCompatImageView, "view");
        appCompatImageView.setImageDrawable(drawable);
    }
}

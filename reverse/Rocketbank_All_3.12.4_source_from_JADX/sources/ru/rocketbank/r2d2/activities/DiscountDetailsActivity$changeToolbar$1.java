package ru.rocketbank.r2d2.activities;

import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.support.v7.graphics.Palette;
import android.support.v7.graphics.Palette.PaletteAsyncListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DiscountDetailsActivity.kt */
final class DiscountDetailsActivity$changeToolbar$1 implements PaletteAsyncListener {
    final /* synthetic */ DiscountDetailsActivity this$0;

    DiscountDetailsActivity$changeToolbar$1(DiscountDetailsActivity discountDetailsActivity) {
        this.this$0 = discountDetailsActivity;
    }

    public final void onGenerated(Palette palette) {
        Intrinsics.checkParameterIsNotNull(palette, "palette");
        palette = palette.getDominantSwatch();
        DiscountDetailsActivity discountDetailsActivity = this.this$0;
        int i = ViewCompat.MEASURED_STATE_MASK;
        discountDetailsActivity.toolbarBackground = palette != null ? palette.getRgb() : -16777216;
        if ((this.this$0.toolbarBackground & ViewCompat.MEASURED_SIZE_MASK) <= 14532061) {
            i = -1;
        }
        DiscountDetailsActivity.access$getToolbar$p(this.this$0).setTitleTextColor(i);
        DiscountDetailsActivity.access$getArrow$p(this.this$0).setColor(i);
        DiscountDetailsActivity.access$getToolbar$p(this.this$0).setNavigationIcon((Drawable) DiscountDetailsActivity.access$getArrow$p(this.this$0));
    }
}

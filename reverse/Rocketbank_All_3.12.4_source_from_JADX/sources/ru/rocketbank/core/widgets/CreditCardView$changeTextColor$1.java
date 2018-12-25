package ru.rocketbank.core.widgets;

import android.support.v7.graphics.Palette;
import android.support.v7.graphics.Palette.PaletteAsyncListener;

/* compiled from: CreditCardView.kt */
final class CreditCardView$changeTextColor$1 implements PaletteAsyncListener {
    final /* synthetic */ CreditCardView this$0;

    CreditCardView$changeTextColor$1(CreditCardView creditCardView) {
        this.this$0 = creditCardView;
    }

    public final void onGenerated(Palette palette) {
        if (palette != null) {
            this.this$0.onPalette(palette);
        }
    }
}

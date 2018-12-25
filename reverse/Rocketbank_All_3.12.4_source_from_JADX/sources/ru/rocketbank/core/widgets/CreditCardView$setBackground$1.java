package ru.rocketbank.core.widgets;

import android.graphics.Bitmap;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;

/* compiled from: CreditCardView.kt */
public final class CreditCardView$setBackground$1 implements RequestListener<String, Bitmap> {
    final /* synthetic */ CreditCardView this$0;

    public final /* bridge */ /* synthetic */ boolean onException(Exception exception, Object obj, Target target, boolean z) {
        return false;
    }

    CreditCardView$setBackground$1(CreditCardView creditCardView) {
        this.this$0 = creditCardView;
    }

    public final /* bridge */ /* synthetic */ boolean onResourceReady(Object obj, Object obj2, Target target, boolean z, boolean z2) {
        this.this$0.changeTextColor((Bitmap) obj);
        return null;
    }
}

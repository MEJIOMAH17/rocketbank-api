package ru.rocketbank.r2d2.root.chat.incoming;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.request.target.GlideDrawableImageViewTarget;

/* compiled from: IncomingSticker.kt */
public final class IncomingSticker$load$1 extends GlideDrawableImageViewTarget {
    final /* synthetic */ IncomingSticker this$0;

    IncomingSticker$load$1(IncomingSticker incomingSticker, ImageView imageView) {
        this.this$0 = incomingSticker;
        super(imageView);
    }

    public final void onLoadFailed(Exception exception, Drawable drawable) {
        super.onLoadFailed(exception, drawable);
    }
}

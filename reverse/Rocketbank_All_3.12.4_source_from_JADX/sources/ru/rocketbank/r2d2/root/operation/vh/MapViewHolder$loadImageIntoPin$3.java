package ru.rocketbank.r2d2.root.operation.vh;

import android.graphics.Bitmap;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;

/* compiled from: MapViewHolder.kt */
public final class MapViewHolder$loadImageIntoPin$3 extends SimpleTarget<Bitmap> {
    final /* synthetic */ float $px;
    final /* synthetic */ MapViewHolder this$0;

    MapViewHolder$loadImageIntoPin$3(MapViewHolder mapViewHolder, float f) {
        this.this$0 = mapViewHolder;
        this.$px = f;
    }

    public final void onResourceReady(Bitmap bitmap, GlideAnimation<? super Bitmap> glideAnimation) {
        this.this$0.pinBitmap = bitmap != null ? this.this$0.createPin(bitmap, this.$px, this.$px) : null;
        bitmap = this.this$0.operation;
        if (bitmap != null) {
            bitmap = bitmap.getLocation();
            if (bitmap != null) {
                this.this$0.showLocation(bitmap);
            }
        }
    }
}

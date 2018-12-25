package ru.rocketbank.r2d2.root.operation.vh;

import android.graphics.Bitmap;
import kotlin.jvm.internal.Intrinsics;
import rx.Subscriber;

/* compiled from: MapViewHolder.kt */
public final class MapViewHolder$subscribeLocation$1 extends Subscriber<Bitmap> {
    final /* synthetic */ MapViewHolder this$0;

    public final void onCompleted() {
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
    }

    MapViewHolder$subscribeLocation$1(MapViewHolder mapViewHolder) {
        this.this$0 = mapViewHolder;
    }

    public final void onNext(Bitmap bitmap) {
        Intrinsics.checkParameterIsNotNull(bitmap, "bitmap");
        this.this$0.pinBitmap = bitmap;
    }
}

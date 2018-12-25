package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.support.coreui.C0888R.style;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.io.IOException;

final class GifFrameResourceDecoder implements ResourceDecoder<GifDecoder, Bitmap> {
    private final BitmapPool bitmapPool;

    public final String getId() {
        return "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif";
    }

    public final /* bridge */ /* synthetic */ Resource decode(Object obj, int i, int i2) throws IOException {
        obj = ((GifDecoder) obj).getNextFrame();
        i = this.bitmapPool;
        if (obj == null) {
            return null;
        }
        return new style(obj, i);
    }

    public GifFrameResourceDecoder(BitmapPool bitmapPool) {
        this.bitmapPool = bitmapPool;
    }
}

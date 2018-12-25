package android.support.v4.content.res;

import android.support.annotation.RestrictTo;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import java.io.IOException;
import java.io.InputStream;

@RestrictTo
public final class TypedArrayUtils implements ResourceDecoder<InputStream, GifBitmapWrapper> {
    private final ResourceDecoder<ImageVideoWrapper, GifBitmapWrapper> gifBitmapDecoder;

    public TypedArrayUtils(ResourceDecoder<ImageVideoWrapper, GifBitmapWrapper> resourceDecoder) {
        this.gifBitmapDecoder = resourceDecoder;
    }

    public final String getId() {
        return this.gifBitmapDecoder.getId();
    }

    public final /* bridge */ /* synthetic */ Resource decode(Object obj, int i, int i2) throws IOException {
        return this.gifBitmapDecoder.decode(new ImageVideoWrapper((InputStream) obj, null), i, i2);
    }
}

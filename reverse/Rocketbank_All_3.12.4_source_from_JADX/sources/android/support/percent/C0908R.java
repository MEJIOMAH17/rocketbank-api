package android.support.percent;

import android.content.Context;
import android.support.constraint.C0887R;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.file.FileToStreamDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifResourceDecoder;
import com.bumptech.glide.load.resource.gif.GifResourceEncoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.File;
import java.io.InputStream;
import ru.rocketbank.r2d2.C0859R;

/* renamed from: android.support.percent.R */
public final class C0908R implements DataLoadProvider<InputStream, GifDrawable> {
    private final FileToStreamDecoder<GifDrawable> cacheDecoder = new FileToStreamDecoder(this.decoder);
    private final GifResourceDecoder decoder;
    private final GifResourceEncoder encoder;
    private final C0887R sourceEncoder$3e7a537b;

    /* renamed from: android.support.percent.R$styleable */
    public static final class styleable {
        public static final int[] FontFamily = new int[]{C0859R.attr.fontProviderAuthority, C0859R.attr.fontProviderCerts, C0859R.attr.fontProviderFetchStrategy, C0859R.attr.fontProviderFetchTimeout, C0859R.attr.fontProviderPackage, C0859R.attr.fontProviderQuery};
        public static final int[] FontFamilyFont = new int[]{16844082, 16844083, 16844095, C0859R.attr.font, C0859R.attr.fontStyle, C0859R.attr.fontWeight};
        public static final int[] PercentLayout_Layout = new int[]{C0859R.attr.layout_aspectRatio, C0859R.attr.layout_heightPercent, C0859R.attr.layout_marginBottomPercent, C0859R.attr.layout_marginEndPercent, C0859R.attr.layout_marginLeftPercent, C0859R.attr.layout_marginPercent, C0859R.attr.layout_marginRightPercent, C0859R.attr.layout_marginStartPercent, C0859R.attr.layout_marginTopPercent, C0859R.attr.layout_widthPercent};
        public static final int PercentLayout_Layout_layout_aspectRatio = 0;
        public static final int PercentLayout_Layout_layout_heightPercent = 1;
        public static final int PercentLayout_Layout_layout_marginBottomPercent = 2;
        public static final int PercentLayout_Layout_layout_marginEndPercent = 3;
        public static final int PercentLayout_Layout_layout_marginLeftPercent = 4;
        public static final int PercentLayout_Layout_layout_marginPercent = 5;
        public static final int PercentLayout_Layout_layout_marginRightPercent = 6;
        public static final int PercentLayout_Layout_layout_marginStartPercent = 7;
        public static final int PercentLayout_Layout_layout_marginTopPercent = 8;
        public static final int PercentLayout_Layout_layout_widthPercent = 9;
    }

    public C0908R(Context context, BitmapPool bitmapPool) {
        this.decoder = new GifResourceDecoder(context, bitmapPool);
        this.encoder = new GifResourceEncoder(bitmapPool);
        this.sourceEncoder$3e7a537b = new C0887R();
    }

    public final ResourceDecoder<File, GifDrawable> getCacheDecoder() {
        return this.cacheDecoder;
    }

    public final ResourceDecoder<InputStream, GifDrawable> getSourceDecoder() {
        return this.decoder;
    }

    public final AnimatorUpdateListener<InputStream> getSourceEncoder$2e726854() {
        return this.sourceEncoder$3e7a537b;
    }

    public final AnimatorUpdateListener<GifDrawable> getEncoder$743e27e$2e726854() {
        return this.encoder;
    }
}

package android.support.graphics.drawable;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.ParcelFileDescriptor;
import android.support.annotation.RestrictTo;
import android.support.mediacompat.C0907R.integer;
import android.support.v4.view.animation.FastOutLinearInInterpolator;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.support.v4.view.animation.LinearOutSlowInInterpolator;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.CycleInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.NullEncoder;
import com.bumptech.glide.load.resource.bitmap.BitmapEncoder;
import com.bumptech.glide.load.resource.file.FileToStreamDecoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.File;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo
public final class AnimationUtilsCompat implements DataLoadProvider<ParcelFileDescriptor, Bitmap> {
    private final ResourceDecoder<File, Bitmap> cacheDecoder;
    private final BitmapEncoder encoder = new BitmapEncoder();
    private final AnimatorInflaterCompat sourceDecoder$5bcc54a6;
    private final AnimatorUpdateListener<ParcelFileDescriptor> sourceEncoder$527e0935 = NullEncoder.get$2e726854();

    public static Interpolator loadInterpolator(Context context, int i) throws NotFoundException {
        StringBuilder stringBuilder;
        NotFoundException notFoundException;
        if (VERSION.SDK_INT >= 21) {
            return AnimationUtils.loadInterpolator(context, i);
        }
        Interpolator interpolator = null;
        XmlResourceParser xmlResourceParser;
        if (i == 17563663) {
            try {
                return new FastOutLinearInInterpolator();
            } catch (XmlPullParserException e) {
                context = e;
                stringBuilder = new StringBuilder("Can't load animation resource ID #0x");
                stringBuilder.append(Integer.toHexString(i));
                notFoundException = new NotFoundException(stringBuilder.toString());
                notFoundException.initCause(context);
                throw notFoundException;
            } catch (IOException e2) {
                context = e2;
                try {
                    stringBuilder = new StringBuilder("Can't load animation resource ID #0x");
                    stringBuilder.append(Integer.toHexString(i));
                    notFoundException = new NotFoundException(stringBuilder.toString());
                    notFoundException.initCause(context);
                    throw notFoundException;
                } catch (Throwable th) {
                    context = th;
                    xmlResourceParser = interpolator;
                    if (xmlResourceParser != null) {
                        xmlResourceParser.close();
                    }
                    throw context;
                }
            }
        } else if (i == 17563661) {
            return new FastOutSlowInInterpolator();
        } else {
            if (i == 17563662) {
                return new LinearOutSlowInInterpolator();
            }
            xmlResourceParser = context.getResources().getAnimation(i);
            try {
                context.getResources();
                context.getTheme();
                int depth = xmlResourceParser.getDepth();
                while (true) {
                    int next = xmlResourceParser.next();
                    if ((next != 3 || xmlResourceParser.getDepth() > depth) && next != 1) {
                        if (next == 2) {
                            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                            String name = xmlResourceParser.getName();
                            if (name.equals("linearInterpolator")) {
                                interpolator = new LinearInterpolator();
                            } else {
                                AccelerateInterpolator accelerateInterpolator;
                                if (name.equals("accelerateInterpolator")) {
                                    accelerateInterpolator = new AccelerateInterpolator(context, asAttributeSet);
                                } else if (name.equals("decelerateInterpolator")) {
                                    accelerateInterpolator = new DecelerateInterpolator(context, asAttributeSet);
                                } else if (name.equals("accelerateDecelerateInterpolator")) {
                                    interpolator = new AccelerateDecelerateInterpolator();
                                } else if (name.equals("cycleInterpolator")) {
                                    accelerateInterpolator = new CycleInterpolator(context, asAttributeSet);
                                } else if (name.equals("anticipateInterpolator")) {
                                    accelerateInterpolator = new AnticipateInterpolator(context, asAttributeSet);
                                } else if (name.equals("overshootInterpolator")) {
                                    accelerateInterpolator = new OvershootInterpolator(context, asAttributeSet);
                                } else if (name.equals("anticipateOvershootInterpolator")) {
                                    accelerateInterpolator = new AnticipateOvershootInterpolator(context, asAttributeSet);
                                } else if (name.equals("bounceInterpolator")) {
                                    interpolator = new BounceInterpolator();
                                } else if (name.equals("pathInterpolator")) {
                                    accelerateInterpolator = new PathInterpolatorCompat(context, asAttributeSet, xmlResourceParser);
                                } else {
                                    StringBuilder stringBuilder2 = new StringBuilder("Unknown interpolator name: ");
                                    stringBuilder2.append(xmlResourceParser.getName());
                                    throw new RuntimeException(stringBuilder2.toString());
                                }
                                interpolator = accelerateInterpolator;
                            }
                        }
                    }
                }
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
                return interpolator;
            } catch (XmlPullParserException e3) {
                context = e3;
                XmlResourceParser xmlResourceParser2 = xmlResourceParser;
                stringBuilder = new StringBuilder("Can't load animation resource ID #0x");
                stringBuilder.append(Integer.toHexString(i));
                notFoundException = new NotFoundException(stringBuilder.toString());
                notFoundException.initCause(context);
                throw notFoundException;
            } catch (IOException e4) {
                context = e4;
                interpolator = xmlResourceParser;
                stringBuilder = new StringBuilder("Can't load animation resource ID #0x");
                stringBuilder.append(Integer.toHexString(i));
                notFoundException = new NotFoundException(stringBuilder.toString());
                notFoundException.initCause(context);
                throw notFoundException;
            } catch (Throwable th2) {
                context = th2;
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
                throw context;
            }
        }
    }

    public AnimationUtilsCompat(BitmapPool bitmapPool, DecodeFormat decodeFormat) {
        this.cacheDecoder = new FileToStreamDecoder(new integer(bitmapPool, decodeFormat));
        this.sourceDecoder$5bcc54a6 = new AnimatorInflaterCompat(bitmapPool, decodeFormat);
    }

    public final ResourceDecoder<File, Bitmap> getCacheDecoder() {
        return this.cacheDecoder;
    }

    public final ResourceDecoder<ParcelFileDescriptor, Bitmap> getSourceDecoder() {
        return this.sourceDecoder$5bcc54a6;
    }

    public final AnimatorUpdateListener<ParcelFileDescriptor> getSourceEncoder$2e726854() {
        return this.sourceEncoder$527e0935;
    }

    public final AnimatorUpdateListener<Bitmap> getEncoder$743e27e$2e726854() {
        return this.encoder;
    }
}

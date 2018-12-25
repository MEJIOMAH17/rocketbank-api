package android.support.v4.content.res;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.FontResourcesParserCompat.FamilyResourceEntry;
import android.support.v4.graphics.TypefaceCompat;
import android.util.Log;
import android.util.TypedValue;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.OutputStream;

public final class ResourcesCompat implements AnimatorUpdateListener<GifBitmapWrapper> {
    private final AnimatorUpdateListener<Bitmap> bitmapEncoder$8b2b29d$527e0935;
    private final AnimatorUpdateListener<GifDrawable> gifEncoder$8b2b29d$527e0935;
    private String id;

    public static abstract class FontCallback {
        public abstract void onFontRetrievalFailed(int i);

        public abstract void onFontRetrieved(Typeface typeface);

        @RestrictTo
        public final void callbackSuccessAsync(final Typeface typeface, Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new Runnable() {
                public final void run() {
                    FontCallback.this.onFontRetrieved(typeface);
                }
            });
        }

        @RestrictTo
        public final void callbackFailAsync(final int i, Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new Runnable() {
                public final void run() {
                    FontCallback.this.onFontRetrievalFailed(i);
                }
            });
        }
    }

    @RestrictTo
    public static Typeface getFont(Context context, int i, TypedValue typedValue, int i2, FontCallback fontCallback) throws NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        context = loadFont$999c59f(context, resources, typedValue, i, i2, fontCallback);
        if (context != null || fontCallback != null) {
            return context;
        }
        typedValue = new StringBuilder("Font resource ID #0x");
        typedValue.append(Integer.toHexString(i));
        typedValue.append(" could not be retrieved.");
        throw new NotFoundException(typedValue.toString());
    }

    private static Typeface loadFont$999c59f(Context context, Resources resources, TypedValue typedValue, int i, int i2, FontCallback fontCallback) {
        if (typedValue.string == null) {
            i2 = new StringBuilder("Resource \"");
            i2.append(resources.getResourceName(i));
            i2.append("\" (");
            i2.append(Integer.toHexString(i));
            i2.append(") is not a Font: ");
            i2.append(typedValue);
            throw new NotFoundException(i2.toString());
        }
        typedValue = typedValue.string.toString();
        if (typedValue.startsWith("res/")) {
            Typeface findFromCache = TypefaceCompat.findFromCache(resources, i, i2);
            if (findFromCache != null) {
                if (fontCallback != null) {
                    fontCallback.callbackSuccessAsync(findFromCache, null);
                }
                return findFromCache;
            }
            try {
                if (typedValue.toLowerCase().endsWith(".xml")) {
                    FamilyResourceEntry parse = FontResourcesParserCompat.parse(resources.getXml(i), resources);
                    if (parse != null) {
                        return TypefaceCompat.createFromResourcesFamilyXml$225f2a9c(context, parse, resources, i, i2, fontCallback);
                    }
                    Log.e("ResourcesCompat", "Failed to find font-family tag");
                    if (fontCallback != null) {
                        fontCallback.callbackFailAsync(-3, null);
                    }
                    return null;
                }
                context = TypefaceCompat.createFromResourcesFontFile(context, resources, i, typedValue, i2);
                if (fontCallback != null) {
                    if (context != null) {
                        fontCallback.callbackSuccessAsync(context, null);
                    } else {
                        fontCallback.callbackFailAsync(-3, null);
                    }
                }
                return context;
            } catch (Context context2) {
                Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(String.valueOf(typedValue)), context2);
                if (fontCallback != null) {
                    fontCallback.callbackFailAsync(-3, null);
                }
                return null;
            } catch (Context context22) {
                Log.e("ResourcesCompat", "Failed to read xml resource ".concat(String.valueOf(typedValue)), context22);
                if (fontCallback != null) {
                    fontCallback.callbackFailAsync(-3, null);
                }
                return null;
            }
        }
        if (fontCallback != null) {
            fontCallback.callbackFailAsync(-3, null);
        }
        return null;
    }

    public ResourcesCompat(AnimatorUpdateListener<Bitmap> animatorUpdateListener, AnimatorUpdateListener<GifDrawable> animatorUpdateListener2) {
        this.bitmapEncoder$8b2b29d$527e0935 = animatorUpdateListener;
        this.gifEncoder$8b2b29d$527e0935 = animatorUpdateListener2;
    }

    public final String getId() {
        if (this.id == null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.bitmapEncoder$8b2b29d$527e0935.getId());
            stringBuilder.append(this.gifEncoder$8b2b29d$527e0935.getId());
            this.id = stringBuilder.toString();
        }
        return this.id;
    }

    public final /* bridge */ /* synthetic */ boolean encode(Object obj, OutputStream outputStream) {
        GifBitmapWrapper gifBitmapWrapper = (GifBitmapWrapper) ((Resource) obj).get();
        Resource bitmapResource = gifBitmapWrapper.getBitmapResource();
        if (bitmapResource != null) {
            return this.bitmapEncoder$8b2b29d$527e0935.encode(bitmapResource, outputStream);
        }
        return this.gifEncoder$8b2b29d$527e0935.encode(gifBitmapWrapper.getGifResource(), outputStream);
    }
}

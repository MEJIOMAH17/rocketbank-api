package android.support.v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.FontResourcesParserCompat.FamilyResourceEntry;
import android.support.v4.content.res.FontResourcesParserCompat.FontFamilyFilesResourceEntry;
import android.support.v4.content.res.FontResourcesParserCompat.ProviderResourceEntry;
import android.support.v4.content.res.ResourcesCompat.FontCallback;
import android.support.v4.provider.FontsContractCompat;
import android.support.v4.provider.FontsContractCompat.FontInfo;
import android.support.v4.util.LruCache;

@RestrictTo
public final class TypefaceCompat {
    private static final LruCache<String, Typeface> sTypefaceCache = new LruCache(16);
    private static final TypefaceCompatImpl sTypefaceCompatImpl;

    interface TypefaceCompatImpl {
        Typeface createFromFontFamilyFilesResourceEntry(Context context, FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i);

        Typeface createFromFontInfo$7af7ae3(Context context, FontInfo[] fontInfoArr, int i);

        Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2);
    }

    static {
        if (VERSION.SDK_INT >= 26) {
            sTypefaceCompatImpl = new TypefaceCompatApi26Impl();
        } else if (VERSION.SDK_INT >= 24 && TypefaceCompatApi24Impl.isUsable()) {
            sTypefaceCompatImpl = new TypefaceCompatApi24Impl();
        } else if (VERSION.SDK_INT >= 21) {
            sTypefaceCompatImpl = new TypefaceCompatApi21Impl();
        } else {
            sTypefaceCompatImpl = new TypefaceCompatBaseImpl();
        }
    }

    public static Typeface findFromCache(Resources resources, int i, int i2) {
        return (Typeface) sTypefaceCache.get(createResourceUid(resources, i, i2));
    }

    private static String createResourceUid(Resources resources, int i, int i2) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(resources.getResourcePackageName(i));
        stringBuilder.append("-");
        stringBuilder.append(i);
        stringBuilder.append("-");
        stringBuilder.append(i2);
        return stringBuilder.toString();
    }

    public static Typeface createFromResourcesFamilyXml$225f2a9c(Context context, FamilyResourceEntry familyResourceEntry, Resources resources, int i, int i2, FontCallback fontCallback) {
        if (familyResourceEntry instanceof ProviderResourceEntry) {
            ProviderResourceEntry providerResourceEntry = (ProviderResourceEntry) familyResourceEntry;
            context = FontsContractCompat.getFontSync$f7878c5(context, providerResourceEntry.getRequest(), fontCallback, providerResourceEntry.getFetchStrategy() == 0, providerResourceEntry.getTimeout(), i2);
        } else {
            context = sTypefaceCompatImpl.createFromFontFamilyFilesResourceEntry(context, (FontFamilyFilesResourceEntry) familyResourceEntry, resources, i2);
            if (fontCallback != null) {
                if (context != null) {
                    fontCallback.callbackSuccessAsync(context, null);
                } else {
                    fontCallback.callbackFailAsync(-3, null);
                }
            }
        }
        if (context != null) {
            sTypefaceCache.put(createResourceUid(resources, i, i2), context);
        }
        return context;
    }

    public static Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
        context = sTypefaceCompatImpl.createFromResourcesFontFile(context, resources, i, str, i2);
        if (context != null) {
            sTypefaceCache.put(createResourceUid(resources, i, i2), context);
        }
        return context;
    }

    public static Typeface createFromFontInfo$7af7ae3(Context context, FontInfo[] fontInfoArr, int i) {
        return sTypefaceCompatImpl.createFromFontInfo$7af7ae3(context, fontInfoArr, i);
    }
}

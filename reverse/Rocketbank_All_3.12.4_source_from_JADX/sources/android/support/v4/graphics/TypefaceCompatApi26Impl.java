package android.support.v4.graphics;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.FontResourcesParserCompat.FontFamilyFilesResourceEntry;
import android.support.v4.content.res.FontResourcesParserCompat.FontFileResourceEntry;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

@RestrictTo
public final class TypefaceCompatApi26Impl extends TypefaceCompatApi21Impl {
    private static final Method sAbortCreation;
    private static final Method sAddFontFromAssetManager;
    private static final Method sAddFontFromBuffer;
    private static final Method sCreateFromFamiliesWithDefault;
    private static final Class sFontFamily;
    private static final Constructor sFontFamilyCtor;
    private static final Method sFreeze;

    static {
        Class cls;
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method declaredMethod;
        Constructor constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor constructor2 = cls.getConstructor(new Class[0]);
            method = cls.getMethod("addFontFromAssetManager", new Class[]{AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class});
            method2 = cls.getMethod("addFontFromBuffer", new Class[]{ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE});
            method3 = cls.getMethod("freeze", new Class[0]);
            method4 = cls.getMethod("abortCreation", new Class[0]);
            declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", new Class[]{Array.newInstance(cls, 1).getClass(), Integer.TYPE, Integer.TYPE});
            declaredMethod.setAccessible(true);
            constructor = constructor2;
        } catch (Throwable e) {
            StringBuilder stringBuilder = new StringBuilder("Unable to collect necessary methods for class ");
            stringBuilder.append(e.getClass().getName());
            Log.e("TypefaceCompatApi26Impl", stringBuilder.toString(), e);
            cls = null;
            declaredMethod = cls;
            method = declaredMethod;
            method2 = method;
            method3 = method2;
            method4 = method3;
        }
        sFontFamilyCtor = constructor;
        sFontFamily = cls;
        sAddFontFromAssetManager = method;
        sAddFontFromBuffer = method2;
        sFreeze = method3;
        sAbortCreation = method4;
        sCreateFromFamiliesWithDefault = declaredMethod;
    }

    private static Object newFamily() {
        try {
            return sFontFamilyCtor.newInstance(new Object[0]);
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    private static boolean addFontFromAssetManager$2c7a4f12(Context context, Object obj, String str, int i, int i2) {
        try {
            return ((Boolean) sAddFontFromAssetManager.invoke(obj, new Object[]{context.getAssets(), str, Integer.valueOf(0), Boolean.FALSE, Integer.valueOf(0), Integer.valueOf(i), Integer.valueOf(i2), null})).booleanValue();
        } catch (Context context2) {
            throw new RuntimeException(context2);
        }
    }

    private static boolean addFontFromBuffer(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) sAddFontFromBuffer.invoke(obj, new Object[]{byteBuffer, Integer.valueOf(i), 0, Integer.valueOf(i2), Integer.valueOf(i3)})).booleanValue();
        } catch (Object obj2) {
            throw new RuntimeException(obj2);
        }
    }

    private static Typeface createFromFamiliesWithDefault(Object obj) {
        try {
            Array.set(Array.newInstance(sFontFamily, 1), 0, obj);
            return (Typeface) sCreateFromFamiliesWithDefault.invoke(null, new Object[]{r0, Integer.valueOf(-1), Integer.valueOf(-1)});
        } catch (Object obj2) {
            throw new RuntimeException(obj2);
        }
    }

    private static boolean freeze(Object obj) {
        try {
            return ((Boolean) sFreeze.invoke(obj, new Object[0])).booleanValue();
        } catch (Object obj2) {
            throw new RuntimeException(obj2);
        }
    }

    public final android.graphics.Typeface createFromFontInfo$7af7ae3(android.content.Context r12, android.support.v4.provider.FontsContractCompat.FontInfo[] r13, int r14) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r11 = this;
        r0 = 0;
        r1 = r13.length;
        if (r1 > 0) goto L_0x0005;
    L_0x0004:
        return r0;
    L_0x0005:
        r1 = sAddFontFromAssetManager;
        if (r1 != 0) goto L_0x0010;
    L_0x0009:
        r1 = "TypefaceCompatApi26Impl";
        r2 = "Unable to collect necessary private methods. Fallback to legacy implementation.";
        android.util.Log.w(r1, r2);
    L_0x0010:
        r1 = sAddFontFromAssetManager;
        r2 = 1;
        r3 = 0;
        if (r1 == 0) goto L_0x0018;
    L_0x0016:
        r1 = r2;
        goto L_0x0019;
    L_0x0018:
        r1 = r3;
    L_0x0019:
        if (r1 != 0) goto L_0x0073;
    L_0x001b:
        r13 = r11.findBestInfo(r13, r14);
        r12 = r12.getContentResolver();
        r14 = r13.getUri();	 Catch:{ IOException -> 0x0072 }
        r1 = "r";	 Catch:{ IOException -> 0x0072 }
        r12 = r12.openFileDescriptor(r14, r1, r0);	 Catch:{ IOException -> 0x0072 }
        if (r12 != 0) goto L_0x0035;	 Catch:{ IOException -> 0x0072 }
    L_0x002f:
        if (r12 == 0) goto L_0x0034;	 Catch:{ IOException -> 0x0072 }
    L_0x0031:
        r12.close();	 Catch:{ IOException -> 0x0072 }
    L_0x0034:
        return r0;
    L_0x0035:
        r14 = new android.graphics.Typeface$Builder;	 Catch:{ Throwable -> 0x005b, all -> 0x0058 }
        r1 = r12.getFileDescriptor();	 Catch:{ Throwable -> 0x005b, all -> 0x0058 }
        r14.<init>(r1);	 Catch:{ Throwable -> 0x005b, all -> 0x0058 }
        r1 = r13.getWeight();	 Catch:{ Throwable -> 0x005b, all -> 0x0058 }
        r14 = r14.setWeight(r1);	 Catch:{ Throwable -> 0x005b, all -> 0x0058 }
        r13 = r13.isItalic();	 Catch:{ Throwable -> 0x005b, all -> 0x0058 }
        r13 = r14.setItalic(r13);	 Catch:{ Throwable -> 0x005b, all -> 0x0058 }
        r13 = r13.build();	 Catch:{ Throwable -> 0x005b, all -> 0x0058 }
        if (r12 == 0) goto L_0x0057;
    L_0x0054:
        r12.close();	 Catch:{ IOException -> 0x0072 }
    L_0x0057:
        return r13;
    L_0x0058:
        r13 = move-exception;
        r14 = r0;
        goto L_0x0061;
    L_0x005b:
        r13 = move-exception;
        throw r13;	 Catch:{ all -> 0x005d }
    L_0x005d:
        r14 = move-exception;
        r10 = r14;
        r14 = r13;
        r13 = r10;
    L_0x0061:
        if (r12 == 0) goto L_0x0071;
    L_0x0063:
        if (r14 == 0) goto L_0x006e;
    L_0x0065:
        r12.close();	 Catch:{ Throwable -> 0x0069 }
        goto L_0x0071;
    L_0x0069:
        r12 = move-exception;
        r14.addSuppressed(r12);	 Catch:{ IOException -> 0x0072 }
        goto L_0x0071;	 Catch:{ IOException -> 0x0072 }
    L_0x006e:
        r12.close();	 Catch:{ IOException -> 0x0072 }
    L_0x0071:
        throw r13;	 Catch:{ IOException -> 0x0072 }
    L_0x0072:
        return r0;
    L_0x0073:
        r12 = android.support.v4.provider.FontsContractCompat.prepareFontData$75fcca9b(r12, r13);
        r1 = newFamily();
        r4 = r13.length;
        r5 = r3;
        r6 = r5;
    L_0x007e:
        if (r5 >= r4) goto L_0x00b3;
    L_0x0080:
        r7 = r13[r5];
        r8 = r7.getUri();
        r8 = r12.get(r8);
        r8 = (java.nio.ByteBuffer) r8;
        if (r8 == 0) goto L_0x00b0;
    L_0x008e:
        r6 = r7.getTtcIndex();
        r9 = r7.getWeight();
        r7 = r7.isItalic();
        r6 = addFontFromBuffer(r1, r8, r6, r9, r7);
        if (r6 != 0) goto L_0x00af;
    L_0x00a0:
        r12 = sAbortCreation;	 Catch:{ IllegalAccessException -> 0x00a8, IllegalAccessException -> 0x00a8 }
        r13 = new java.lang.Object[r3];	 Catch:{ IllegalAccessException -> 0x00a8, IllegalAccessException -> 0x00a8 }
        r12.invoke(r1, r13);	 Catch:{ IllegalAccessException -> 0x00a8, IllegalAccessException -> 0x00a8 }
        return r0;
    L_0x00a8:
        r12 = move-exception;
        r13 = new java.lang.RuntimeException;
        r13.<init>(r12);
        throw r13;
    L_0x00af:
        r6 = r2;
    L_0x00b0:
        r5 = r5 + 1;
        goto L_0x007e;
    L_0x00b3:
        if (r6 != 0) goto L_0x00c4;
    L_0x00b5:
        r12 = sAbortCreation;	 Catch:{ IllegalAccessException -> 0x00bd, IllegalAccessException -> 0x00bd }
        r13 = new java.lang.Object[r3];	 Catch:{ IllegalAccessException -> 0x00bd, IllegalAccessException -> 0x00bd }
        r12.invoke(r1, r13);	 Catch:{ IllegalAccessException -> 0x00bd, IllegalAccessException -> 0x00bd }
        return r0;
    L_0x00bd:
        r12 = move-exception;
        r13 = new java.lang.RuntimeException;
        r13.<init>(r12);
        throw r13;
    L_0x00c4:
        r12 = freeze(r1);
        if (r12 != 0) goto L_0x00cb;
    L_0x00ca:
        return r0;
    L_0x00cb:
        r12 = createFromFamiliesWithDefault(r1);
        r12 = android.graphics.Typeface.create(r12, r14);
        return r12;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatApi26Impl.createFromFontInfo$7af7ae3(android.content.Context, android.support.v4.provider.FontsContractCompat$FontInfo[], int):android.graphics.Typeface");
    }

    public final Typeface createFromFontFamilyFilesResourceEntry(Context context, FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        if (sAddFontFromAssetManager == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if ((sAddFontFromAssetManager != null ? 1 : 0) == 0) {
            return super.createFromFontFamilyFilesResourceEntry(context, fontFamilyFilesResourceEntry, resources, i);
        }
        resources = newFamily();
        fontFamilyFilesResourceEntry = fontFamilyFilesResourceEntry.getEntries();
        i = fontFamilyFilesResourceEntry.length;
        int i2 = 0;
        while (i2 < i) {
            FontFileResourceEntry fontFileResourceEntry = fontFamilyFilesResourceEntry[i2];
            if (addFontFromAssetManager$2c7a4f12(context, resources, fontFileResourceEntry.getFileName(), fontFileResourceEntry.getWeight(), fontFileResourceEntry.isItalic())) {
                i2++;
            } else {
                try {
                    sAbortCreation.invoke(resources, new Object[0]);
                    return null;
                } catch (Context context2) {
                    throw new RuntimeException(context2);
                }
            }
        }
        if (freeze(resources) == null) {
            return null;
        }
        return createFromFamiliesWithDefault(resources);
    }

    public final Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
        if (sAddFontFromAssetManager == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if ((sAddFontFromAssetManager != null ? 1 : 0) == 0) {
            return super.createFromResourcesFontFile(context, resources, i, str, i2);
        }
        resources = newFamily();
        if (addFontFromAssetManager$2c7a4f12(context, resources, str, -1, -1) == null) {
            try {
                sAbortCreation.invoke(resources, new Object[0]);
                return null;
            } catch (Context context2) {
                throw new RuntimeException(context2);
            }
        } else if (freeze(resources) == null) {
            return null;
        } else {
            return createFromFamiliesWithDefault(resources);
        }
    }
}

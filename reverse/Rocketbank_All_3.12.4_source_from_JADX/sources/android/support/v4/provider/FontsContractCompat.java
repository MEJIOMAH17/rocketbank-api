package android.support.v4.provider;

import android.content.Context;
import android.content.pm.Signature;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.ResourcesCompat.FontCallback;
import android.support.v4.graphics.TypefaceCompatUtil;
import android.support.v4.provider.SelfDestructiveThread.ReplyCallback;
import android.support.v4.util.LruCache;
import android.support.v4.util.SimpleArrayMap;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class FontsContractCompat {
    private static final SelfDestructiveThread sBackgroundThread = new SelfDestructiveThread("fonts");
    private static final Comparator<byte[]> sByteArrayComparator = new C01725();
    private static final Object sLock = new Object();
    private static final SimpleArrayMap<String, ArrayList<ReplyCallback<TypefaceResult>>> sPendingReplies = new SimpleArrayMap();
    private static final LruCache<String, Typeface> sTypefaceCache = new LruCache(16);

    /* renamed from: android.support.v4.provider.FontsContractCompat$5 */
    static class C01725 implements Comparator<byte[]> {
        C01725() {
        }

        public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = (byte[]) obj2;
            if (bArr.length != bArr2.length) {
                return bArr.length - bArr2.length;
            }
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] != bArr2[i]) {
                    return bArr[i] - bArr2[i];
                }
            }
            return 0;
        }
    }

    public static class FontFamilyResult {
        private final FontInfo[] mFonts;
        private final int mStatusCode;

        @RestrictTo
        public FontFamilyResult(int i, FontInfo[] fontInfoArr) {
            this.mStatusCode = i;
            this.mFonts = fontInfoArr;
        }

        public final int getStatusCode() {
            return this.mStatusCode;
        }

        public final FontInfo[] getFonts() {
            return this.mFonts;
        }
    }

    public static class FontInfo {
        private final boolean mItalic;
        private final int mResultCode;
        private final int mTtcIndex;
        private final Uri mUri;
        private final int mWeight;

        @RestrictTo
        public FontInfo(Uri uri, int i, int i2, boolean z, int i3) {
            if (uri == null) {
                throw new NullPointerException();
            }
            this.mUri = uri;
            this.mTtcIndex = i;
            this.mWeight = i2;
            this.mItalic = z;
            this.mResultCode = i3;
        }

        public final Uri getUri() {
            return this.mUri;
        }

        public final int getTtcIndex() {
            return this.mTtcIndex;
        }

        public final int getWeight() {
            return this.mWeight;
        }

        public final boolean isItalic() {
            return this.mItalic;
        }

        public final int getResultCode() {
            return this.mResultCode;
        }
    }

    static final class TypefaceResult {
        final int mResult;
        final Typeface mTypeface;

        TypefaceResult(Typeface typeface, int i) {
            this.mTypeface = typeface;
            this.mResult = i;
        }
    }

    /* renamed from: android.support.v4.provider.FontsContractCompat$2 */
    static class C09312 implements ReplyCallback<TypefaceResult> {
        final /* synthetic */ FontCallback val$fontCallback;
        final /* synthetic */ Handler val$handler = null;

        C09312(FontCallback fontCallback, Handler handler) {
            this.val$fontCallback = fontCallback;
        }

        public final /* bridge */ /* synthetic */ void onReply(Object obj) {
            TypefaceResult typefaceResult = (TypefaceResult) obj;
            if (typefaceResult == null) {
                this.val$fontCallback.callbackFailAsync(1, this.val$handler);
            } else if (typefaceResult.mResult == 0) {
                this.val$fontCallback.callbackSuccessAsync(typefaceResult.mTypeface, this.val$handler);
            } else {
                this.val$fontCallback.callbackFailAsync(typefaceResult.mResult, this.val$handler);
            }
        }
    }

    private static android.support.v4.provider.FontsContractCompat.FontInfo[] getFontFromProvider$2412f3a4(android.content.Context r22, android.support.v4.provider.FontRequest r23, java.lang.String r24) {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Can't find block by offset: 0x0134 in list [B:8:0x00ae]
	at jadx.core.utils.BlockUtils.getBlockByOffset(BlockUtils.java:43)
	at jadx.core.dex.instructions.IfNode.initBlocks(IfNode.java:60)
	at jadx.core.dex.visitors.blocksmaker.BlockFinish.initBlocksInIfNodes(BlockFinish.java:48)
	at jadx.core.dex.visitors.blocksmaker.BlockFinish.visit(BlockFinish.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r1 = r24;
        r2 = new java.util.ArrayList;
        r2.<init>();
        r3 = new android.net.Uri$Builder;
        r3.<init>();
        r4 = "content";
        r3 = r3.scheme(r4);
        r3 = r3.authority(r1);
        r3 = r3.build();
        r4 = new android.net.Uri$Builder;
        r4.<init>();
        r5 = "content";
        r4 = r4.scheme(r5);
        r1 = r4.authority(r1);
        r4 = "file";
        r1 = r1.appendPath(r4);
        r1 = r1.build();
        r11 = 0;
        r4 = android.os.Build.VERSION.SDK_INT;	 Catch:{ all -> 0x0143 }
        r5 = 16;	 Catch:{ all -> 0x0143 }
        r6 = 6;	 Catch:{ all -> 0x0143 }
        r7 = 5;	 Catch:{ all -> 0x0143 }
        r8 = 4;	 Catch:{ all -> 0x0143 }
        r9 = 3;	 Catch:{ all -> 0x0143 }
        r10 = 2;	 Catch:{ all -> 0x0143 }
        r12 = 7;	 Catch:{ all -> 0x0143 }
        r13 = 1;	 Catch:{ all -> 0x0143 }
        r14 = 0;	 Catch:{ all -> 0x0143 }
        if (r4 <= r5) goto L_0x0078;	 Catch:{ all -> 0x0143 }
    L_0x0042:
        r4 = r22.getContentResolver();	 Catch:{ all -> 0x0143 }
        r12 = new java.lang.String[r12];	 Catch:{ all -> 0x0143 }
        r5 = "_id";	 Catch:{ all -> 0x0143 }
        r12[r14] = r5;	 Catch:{ all -> 0x0143 }
        r5 = "file_id";	 Catch:{ all -> 0x0143 }
        r12[r13] = r5;	 Catch:{ all -> 0x0143 }
        r5 = "font_ttc_index";	 Catch:{ all -> 0x0143 }
        r12[r10] = r5;	 Catch:{ all -> 0x0143 }
        r5 = "font_variation_settings";	 Catch:{ all -> 0x0143 }
        r12[r9] = r5;	 Catch:{ all -> 0x0143 }
        r5 = "font_weight";	 Catch:{ all -> 0x0143 }
        r12[r8] = r5;	 Catch:{ all -> 0x0143 }
        r5 = "font_italic";	 Catch:{ all -> 0x0143 }
        r12[r7] = r5;	 Catch:{ all -> 0x0143 }
        r5 = "result_code";	 Catch:{ all -> 0x0143 }
        r12[r6] = r5;	 Catch:{ all -> 0x0143 }
        r7 = "query = ?";	 Catch:{ all -> 0x0143 }
        r8 = new java.lang.String[r13];	 Catch:{ all -> 0x0143 }
        r5 = r23.getQuery();	 Catch:{ all -> 0x0143 }
        r8[r14] = r5;	 Catch:{ all -> 0x0143 }
        r9 = 0;	 Catch:{ all -> 0x0143 }
        r10 = 0;	 Catch:{ all -> 0x0143 }
        r5 = r3;	 Catch:{ all -> 0x0143 }
        r6 = r12;	 Catch:{ all -> 0x0143 }
        r4 = r4.query(r5, r6, r7, r8, r9, r10);	 Catch:{ all -> 0x0143 }
    L_0x0076:
        r11 = r4;	 Catch:{ all -> 0x0143 }
        goto L_0x00ac;	 Catch:{ all -> 0x0143 }
    L_0x0078:
        r4 = r22.getContentResolver();	 Catch:{ all -> 0x0143 }
        r12 = new java.lang.String[r12];	 Catch:{ all -> 0x0143 }
        r5 = "_id";	 Catch:{ all -> 0x0143 }
        r12[r14] = r5;	 Catch:{ all -> 0x0143 }
        r5 = "file_id";	 Catch:{ all -> 0x0143 }
        r12[r13] = r5;	 Catch:{ all -> 0x0143 }
        r5 = "font_ttc_index";	 Catch:{ all -> 0x0143 }
        r12[r10] = r5;	 Catch:{ all -> 0x0143 }
        r5 = "font_variation_settings";	 Catch:{ all -> 0x0143 }
        r12[r9] = r5;	 Catch:{ all -> 0x0143 }
        r5 = "font_weight";	 Catch:{ all -> 0x0143 }
        r12[r8] = r5;	 Catch:{ all -> 0x0143 }
        r5 = "font_italic";	 Catch:{ all -> 0x0143 }
        r12[r7] = r5;	 Catch:{ all -> 0x0143 }
        r5 = "result_code";	 Catch:{ all -> 0x0143 }
        r12[r6] = r5;	 Catch:{ all -> 0x0143 }
        r7 = "query = ?";	 Catch:{ all -> 0x0143 }
        r8 = new java.lang.String[r13];	 Catch:{ all -> 0x0143 }
        r5 = r23.getQuery();	 Catch:{ all -> 0x0143 }
        r8[r14] = r5;	 Catch:{ all -> 0x0143 }
        r9 = 0;	 Catch:{ all -> 0x0143 }
        r5 = r3;	 Catch:{ all -> 0x0143 }
        r6 = r12;	 Catch:{ all -> 0x0143 }
        r4 = r4.query(r5, r6, r7, r8, r9);	 Catch:{ all -> 0x0143 }
        goto L_0x0076;	 Catch:{ all -> 0x0143 }
    L_0x00ac:
        if (r11 == 0) goto L_0x0134;	 Catch:{ all -> 0x0143 }
    L_0x00ae:
        r4 = r11.getCount();	 Catch:{ all -> 0x0143 }
        if (r4 <= 0) goto L_0x0134;	 Catch:{ all -> 0x0143 }
    L_0x00b4:
        r2 = "result_code";	 Catch:{ all -> 0x0143 }
        r2 = r11.getColumnIndex(r2);	 Catch:{ all -> 0x0143 }
        r4 = new java.util.ArrayList;	 Catch:{ all -> 0x0143 }
        r4.<init>();	 Catch:{ all -> 0x0143 }
        r5 = "_id";	 Catch:{ all -> 0x0143 }
        r5 = r11.getColumnIndex(r5);	 Catch:{ all -> 0x0143 }
        r6 = "file_id";	 Catch:{ all -> 0x0143 }
        r6 = r11.getColumnIndex(r6);	 Catch:{ all -> 0x0143 }
        r7 = "font_ttc_index";	 Catch:{ all -> 0x0143 }
        r7 = r11.getColumnIndex(r7);	 Catch:{ all -> 0x0143 }
        r8 = "font_weight";	 Catch:{ all -> 0x0143 }
        r8 = r11.getColumnIndex(r8);	 Catch:{ all -> 0x0143 }
        r9 = "font_italic";	 Catch:{ all -> 0x0143 }
        r9 = r11.getColumnIndex(r9);	 Catch:{ all -> 0x0143 }
    L_0x00dd:
        r10 = r11.moveToNext();	 Catch:{ all -> 0x0143 }
        if (r10 == 0) goto L_0x0133;	 Catch:{ all -> 0x0143 }
    L_0x00e3:
        r10 = -1;	 Catch:{ all -> 0x0143 }
        if (r2 == r10) goto L_0x00ed;	 Catch:{ all -> 0x0143 }
    L_0x00e6:
        r12 = r11.getInt(r2);	 Catch:{ all -> 0x0143 }
        r20 = r12;	 Catch:{ all -> 0x0143 }
        goto L_0x00ef;	 Catch:{ all -> 0x0143 }
    L_0x00ed:
        r20 = r14;	 Catch:{ all -> 0x0143 }
    L_0x00ef:
        if (r7 == r10) goto L_0x00f8;	 Catch:{ all -> 0x0143 }
    L_0x00f1:
        r12 = r11.getInt(r7);	 Catch:{ all -> 0x0143 }
        r17 = r12;	 Catch:{ all -> 0x0143 }
        goto L_0x00fa;	 Catch:{ all -> 0x0143 }
    L_0x00f8:
        r17 = r14;	 Catch:{ all -> 0x0143 }
    L_0x00fa:
        if (r6 != r10) goto L_0x0107;	 Catch:{ all -> 0x0143 }
    L_0x00fc:
        r14 = r11.getLong(r5);	 Catch:{ all -> 0x0143 }
        r12 = android.content.ContentUris.withAppendedId(r3, r14);	 Catch:{ all -> 0x0143 }
    L_0x0104:
        r16 = r12;	 Catch:{ all -> 0x0143 }
        goto L_0x0110;	 Catch:{ all -> 0x0143 }
    L_0x0107:
        r14 = r11.getLong(r6);	 Catch:{ all -> 0x0143 }
        r12 = android.content.ContentUris.withAppendedId(r1, r14);	 Catch:{ all -> 0x0143 }
        goto L_0x0104;	 Catch:{ all -> 0x0143 }
    L_0x0110:
        if (r8 == r10) goto L_0x0117;	 Catch:{ all -> 0x0143 }
    L_0x0112:
        r12 = r11.getInt(r8);	 Catch:{ all -> 0x0143 }
        goto L_0x0119;	 Catch:{ all -> 0x0143 }
    L_0x0117:
        r12 = 400; // 0x190 float:5.6E-43 double:1.976E-321;	 Catch:{ all -> 0x0143 }
    L_0x0119:
        r18 = r12;	 Catch:{ all -> 0x0143 }
        if (r9 == r10) goto L_0x0126;	 Catch:{ all -> 0x0143 }
    L_0x011d:
        r10 = r11.getInt(r9);	 Catch:{ all -> 0x0143 }
        if (r10 != r13) goto L_0x0126;	 Catch:{ all -> 0x0143 }
    L_0x0123:
        r19 = r13;	 Catch:{ all -> 0x0143 }
        goto L_0x0128;	 Catch:{ all -> 0x0143 }
    L_0x0126:
        r19 = 0;	 Catch:{ all -> 0x0143 }
    L_0x0128:
        r10 = new android.support.v4.provider.FontsContractCompat$FontInfo;	 Catch:{ all -> 0x0143 }
        r15 = r10;	 Catch:{ all -> 0x0143 }
        r15.<init>(r16, r17, r18, r19, r20);	 Catch:{ all -> 0x0143 }
        r4.add(r10);	 Catch:{ all -> 0x0143 }
        r14 = 0;
        goto L_0x00dd;
    L_0x0133:
        r2 = r4;
    L_0x0134:
        if (r11 == 0) goto L_0x0139;
    L_0x0136:
        r11.close();
    L_0x0139:
        r1 = 0;
        r1 = new android.support.v4.provider.FontsContractCompat.FontInfo[r1];
        r1 = r2.toArray(r1);
        r1 = (android.support.v4.provider.FontsContractCompat.FontInfo[]) r1;
        return r1;
    L_0x0143:
        r0 = move-exception;
        r1 = r0;
        if (r11 == 0) goto L_0x014a;
    L_0x0147:
        r11.close();
    L_0x014a:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.provider.FontsContractCompat.getFontFromProvider$2412f3a4(android.content.Context, android.support.v4.provider.FontRequest, java.lang.String):android.support.v4.provider.FontsContractCompat$FontInfo[]");
    }

    @android.support.annotation.RestrictTo
    public static android.graphics.Typeface getFontSync$f7878c5(final android.content.Context r3, final android.support.v4.provider.FontRequest r4, android.support.v4.content.res.ResourcesCompat.FontCallback r5, boolean r6, int r7, final int r8) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = r4.getIdentifier();
        r0.append(r1);
        r1 = "-";
        r0.append(r1);
        r0.append(r8);
        r0 = r0.toString();
        r1 = sTypefaceCache;
        r1 = r1.get(r0);
        r1 = (android.graphics.Typeface) r1;
        if (r1 == 0) goto L_0x0028;
    L_0x0022:
        if (r5 == 0) goto L_0x0027;
    L_0x0024:
        r5.onFontRetrieved(r1);
    L_0x0027:
        return r1;
    L_0x0028:
        r1 = 0;
        if (r6 == 0) goto L_0x0046;
    L_0x002b:
        r2 = -1;
        if (r7 != r2) goto L_0x0046;
    L_0x002e:
        r3 = getFontInternal(r3, r4, r8);
        if (r5 == 0) goto L_0x0043;
    L_0x0034:
        r4 = r3.mResult;
        if (r4 != 0) goto L_0x003e;
    L_0x0038:
        r4 = r3.mTypeface;
        r5.callbackSuccessAsync(r4, r1);
        goto L_0x0043;
    L_0x003e:
        r4 = r3.mResult;
        r5.callbackFailAsync(r4, r1);
    L_0x0043:
        r3 = r3.mTypeface;
        return r3;
    L_0x0046:
        r2 = new android.support.v4.provider.FontsContractCompat$1;
        r2.<init>(r3, r4, r8, r0);
        if (r6 == 0) goto L_0x0059;
    L_0x004d:
        r3 = sBackgroundThread;	 Catch:{ InterruptedException -> 0x0058 }
        r3 = r3.postAndWait(r2, r7);	 Catch:{ InterruptedException -> 0x0058 }
        r3 = (android.support.v4.provider.FontsContractCompat.TypefaceResult) r3;	 Catch:{ InterruptedException -> 0x0058 }
        r3 = r3.mTypeface;	 Catch:{ InterruptedException -> 0x0058 }
        return r3;
    L_0x0058:
        return r1;
    L_0x0059:
        if (r5 != 0) goto L_0x005d;
    L_0x005b:
        r3 = r1;
        goto L_0x0062;
    L_0x005d:
        r3 = new android.support.v4.provider.FontsContractCompat$2;
        r3.<init>(r5, r1);
    L_0x0062:
        r4 = sLock;
        monitor-enter(r4);
        r5 = sPendingReplies;	 Catch:{ all -> 0x0097 }
        r5 = r5.containsKey(r0);	 Catch:{ all -> 0x0097 }
        if (r5 == 0) goto L_0x007c;	 Catch:{ all -> 0x0097 }
    L_0x006d:
        if (r3 == 0) goto L_0x007a;	 Catch:{ all -> 0x0097 }
    L_0x006f:
        r5 = sPendingReplies;	 Catch:{ all -> 0x0097 }
        r5 = r5.get(r0);	 Catch:{ all -> 0x0097 }
        r5 = (java.util.ArrayList) r5;	 Catch:{ all -> 0x0097 }
        r5.add(r3);	 Catch:{ all -> 0x0097 }
    L_0x007a:
        monitor-exit(r4);	 Catch:{ all -> 0x0097 }
        return r1;	 Catch:{ all -> 0x0097 }
    L_0x007c:
        if (r3 == 0) goto L_0x008b;	 Catch:{ all -> 0x0097 }
    L_0x007e:
        r5 = new java.util.ArrayList;	 Catch:{ all -> 0x0097 }
        r5.<init>();	 Catch:{ all -> 0x0097 }
        r5.add(r3);	 Catch:{ all -> 0x0097 }
        r3 = sPendingReplies;	 Catch:{ all -> 0x0097 }
        r3.put(r0, r5);	 Catch:{ all -> 0x0097 }
    L_0x008b:
        monitor-exit(r4);	 Catch:{ all -> 0x0097 }
        r3 = sBackgroundThread;
        r4 = new android.support.v4.provider.FontsContractCompat$3;
        r4.<init>(r0);
        r3.postAndReply(r2, r4);
        return r1;
    L_0x0097:
        r3 = move-exception;
        monitor-exit(r4);	 Catch:{ all -> 0x0097 }
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.provider.FontsContractCompat.getFontSync$f7878c5(android.content.Context, android.support.v4.provider.FontRequest, android.support.v4.content.res.ResourcesCompat$FontCallback, boolean, int, int):android.graphics.Typeface");
    }

    @RestrictTo
    public static Map<Uri, ByteBuffer> prepareFontData$75fcca9b(Context context, FontInfo[] fontInfoArr) {
        Map hashMap = new HashMap();
        for (FontInfo fontInfo : fontInfoArr) {
            if (fontInfo.getResultCode() == 0) {
                Uri uri = fontInfo.getUri();
                if (!hashMap.containsKey(uri)) {
                    hashMap.put(uri, TypefaceCompatUtil.mmap$c2bc5d0(context, uri));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    private static boolean equalsByteArrayList(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals((byte[]) list.get(i), (byte[]) list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static List<byte[]> convertToByteArrayList(Signature[] signatureArr) {
        List<byte[]> arrayList = new ArrayList();
        for (Signature toByteArray : signatureArr) {
            arrayList.add(toByteArray.toByteArray());
        }
        return arrayList;
    }

    private static android.support.v4.provider.FontsContractCompat.TypefaceResult getFontInternal(android.content.Context r8, android.support.v4.provider.FontRequest r9, int r10) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = 0;
        r1 = r8.getPackageManager();	 Catch:{ NameNotFoundException -> 0x00ce }
        r2 = r8.getResources();	 Catch:{ NameNotFoundException -> 0x00ce }
        r3 = r9.getProviderAuthority();	 Catch:{ NameNotFoundException -> 0x00ce }
        r4 = 0;	 Catch:{ NameNotFoundException -> 0x00ce }
        r5 = r1.resolveContentProvider(r3, r4);	 Catch:{ NameNotFoundException -> 0x00ce }
        if (r5 != 0) goto L_0x0024;	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x0014:
        r8 = new android.content.pm.PackageManager$NameNotFoundException;	 Catch:{ NameNotFoundException -> 0x00ce }
        r9 = "No package found for authority: ";	 Catch:{ NameNotFoundException -> 0x00ce }
        r10 = java.lang.String.valueOf(r3);	 Catch:{ NameNotFoundException -> 0x00ce }
        r9 = r9.concat(r10);	 Catch:{ NameNotFoundException -> 0x00ce }
        r8.<init>(r9);	 Catch:{ NameNotFoundException -> 0x00ce }
        throw r8;	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x0024:
        r6 = r5.packageName;	 Catch:{ NameNotFoundException -> 0x00ce }
        r7 = r9.getProviderPackage();	 Catch:{ NameNotFoundException -> 0x00ce }
        r6 = r6.equals(r7);	 Catch:{ NameNotFoundException -> 0x00ce }
        if (r6 != 0) goto L_0x0050;	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x0030:
        r8 = new android.content.pm.PackageManager$NameNotFoundException;	 Catch:{ NameNotFoundException -> 0x00ce }
        r10 = new java.lang.StringBuilder;	 Catch:{ NameNotFoundException -> 0x00ce }
        r1 = "Found content provider ";	 Catch:{ NameNotFoundException -> 0x00ce }
        r10.<init>(r1);	 Catch:{ NameNotFoundException -> 0x00ce }
        r10.append(r3);	 Catch:{ NameNotFoundException -> 0x00ce }
        r1 = ", but package was not ";	 Catch:{ NameNotFoundException -> 0x00ce }
        r10.append(r1);	 Catch:{ NameNotFoundException -> 0x00ce }
        r9 = r9.getProviderPackage();	 Catch:{ NameNotFoundException -> 0x00ce }
        r10.append(r9);	 Catch:{ NameNotFoundException -> 0x00ce }
        r9 = r10.toString();	 Catch:{ NameNotFoundException -> 0x00ce }
        r8.<init>(r9);	 Catch:{ NameNotFoundException -> 0x00ce }
        throw r8;	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x0050:
        r3 = r5.packageName;	 Catch:{ NameNotFoundException -> 0x00ce }
        r6 = 64;	 Catch:{ NameNotFoundException -> 0x00ce }
        r1 = r1.getPackageInfo(r3, r6);	 Catch:{ NameNotFoundException -> 0x00ce }
        r1 = r1.signatures;	 Catch:{ NameNotFoundException -> 0x00ce }
        r1 = convertToByteArrayList(r1);	 Catch:{ NameNotFoundException -> 0x00ce }
        r3 = sByteArrayComparator;	 Catch:{ NameNotFoundException -> 0x00ce }
        java.util.Collections.sort(r1, r3);	 Catch:{ NameNotFoundException -> 0x00ce }
        r3 = r9.getCertificates();	 Catch:{ NameNotFoundException -> 0x00ce }
        if (r3 == 0) goto L_0x006e;	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x0069:
        r2 = r9.getCertificates();	 Catch:{ NameNotFoundException -> 0x00ce }
        goto L_0x0072;	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x006e:
        r2 = android.support.v4.content.res.FontResourcesParserCompat.readCerts(r2, r4);	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x0072:
        r3 = r4;	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x0073:
        r6 = r2.size();	 Catch:{ NameNotFoundException -> 0x00ce }
        if (r3 >= r6) goto L_0x0093;	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x0079:
        r6 = new java.util.ArrayList;	 Catch:{ NameNotFoundException -> 0x00ce }
        r7 = r2.get(r3);	 Catch:{ NameNotFoundException -> 0x00ce }
        r7 = (java.util.Collection) r7;	 Catch:{ NameNotFoundException -> 0x00ce }
        r6.<init>(r7);	 Catch:{ NameNotFoundException -> 0x00ce }
        r7 = sByteArrayComparator;	 Catch:{ NameNotFoundException -> 0x00ce }
        java.util.Collections.sort(r6, r7);	 Catch:{ NameNotFoundException -> 0x00ce }
        r6 = equalsByteArrayList(r1, r6);	 Catch:{ NameNotFoundException -> 0x00ce }
        if (r6 == 0) goto L_0x0090;	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x008f:
        goto L_0x0094;	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x0090:
        r3 = r3 + 1;	 Catch:{ NameNotFoundException -> 0x00ce }
        goto L_0x0073;	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x0093:
        r5 = r0;	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x0094:
        r1 = 1;	 Catch:{ NameNotFoundException -> 0x00ce }
        if (r5 != 0) goto L_0x009d;	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x0097:
        r9 = new android.support.v4.provider.FontsContractCompat$FontFamilyResult;	 Catch:{ NameNotFoundException -> 0x00ce }
        r9.<init>(r1, r0);	 Catch:{ NameNotFoundException -> 0x00ce }
        goto L_0x00a9;	 Catch:{ NameNotFoundException -> 0x00ce }
    L_0x009d:
        r2 = r5.authority;	 Catch:{ NameNotFoundException -> 0x00ce }
        r9 = getFontFromProvider$2412f3a4(r8, r9, r2);	 Catch:{ NameNotFoundException -> 0x00ce }
        r2 = new android.support.v4.provider.FontsContractCompat$FontFamilyResult;	 Catch:{ NameNotFoundException -> 0x00ce }
        r2.<init>(r4, r9);	 Catch:{ NameNotFoundException -> 0x00ce }
        r9 = r2;
    L_0x00a9:
        r2 = r9.getStatusCode();
        r3 = -3;
        if (r2 != 0) goto L_0x00c1;
    L_0x00b0:
        r9 = r9.getFonts();
        r8 = android.support.v4.graphics.TypefaceCompat.createFromFontInfo$7af7ae3(r8, r9, r10);
        r9 = new android.support.v4.provider.FontsContractCompat$TypefaceResult;
        if (r8 == 0) goto L_0x00bd;
    L_0x00bc:
        r3 = r4;
    L_0x00bd:
        r9.<init>(r8, r3);
        return r9;
    L_0x00c1:
        r8 = r9.getStatusCode();
        if (r8 != r1) goto L_0x00c8;
    L_0x00c7:
        r3 = -2;
    L_0x00c8:
        r8 = new android.support.v4.provider.FontsContractCompat$TypefaceResult;
        r8.<init>(r0, r3);
        return r8;
    L_0x00ce:
        r8 = new android.support.v4.provider.FontsContractCompat$TypefaceResult;
        r9 = -1;
        r8.<init>(r0, r9);
        return r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.provider.FontsContractCompat.getFontInternal(android.content.Context, android.support.v4.provider.FontRequest, int):android.support.v4.provider.FontsContractCompat$TypefaceResult");
    }
}

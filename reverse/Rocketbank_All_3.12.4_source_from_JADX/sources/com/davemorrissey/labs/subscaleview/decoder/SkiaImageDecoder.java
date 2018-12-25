package com.davemorrissey.labs.subscaleview.decoder;

import android.graphics.Bitmap.Config;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;

public class SkiaImageDecoder implements ImageDecoder {
    private static final String ASSET_PREFIX = "file:///android_asset/";
    private static final String FILE_PREFIX = "file://";
    private static final String RESOURCE_PREFIX = "android.resource://";
    private final Config bitmapConfig;

    public SkiaImageDecoder() {
        this(null);
    }

    public SkiaImageDecoder(Config config) {
        Config preferredBitmapConfig = SubsamplingScaleImageView.getPreferredBitmapConfig();
        if (config != null) {
            this.bitmapConfig = config;
        } else if (preferredBitmapConfig != null) {
            this.bitmapConfig = preferredBitmapConfig;
        } else {
            this.bitmapConfig = Config.RGB_565;
        }
    }

    public android.graphics.Bitmap decode(android.content.Context r9, android.net.Uri r10) throws java.lang.Exception {
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
        r8 = this;
        r0 = r10.toString();
        r1 = new android.graphics.BitmapFactory$Options;
        r1.<init>();
        r2 = r8.bitmapConfig;
        r1.inPreferredConfig = r2;
        r2 = "android.resource://";
        r2 = r0.startsWith(r2);
        if (r2 == 0) goto L_0x007a;
    L_0x0015:
        r0 = r10.getAuthority();
        r2 = r9.getPackageName();
        r2 = r2.equals(r0);
        if (r2 == 0) goto L_0x0028;
    L_0x0023:
        r2 = r9.getResources();
        goto L_0x0030;
    L_0x0028:
        r2 = r9.getPackageManager();
        r2 = r2.getResourcesForApplication(r0);
    L_0x0030:
        r10 = r10.getPathSegments();
        r3 = r10.size();
        r4 = 2;
        r5 = 1;
        r6 = 0;
        if (r3 != r4) goto L_0x0058;
    L_0x003d:
        r4 = r10.get(r6);
        r4 = (java.lang.String) r4;
        r7 = "drawable";
        r4 = r4.equals(r7);
        if (r4 == 0) goto L_0x0058;
    L_0x004b:
        r10 = r10.get(r5);
        r10 = (java.lang.String) r10;
        r3 = "drawable";
        r6 = r2.getIdentifier(r10, r3, r0);
        goto L_0x0071;
    L_0x0058:
        if (r3 != r5) goto L_0x0071;
    L_0x005a:
        r0 = r10.get(r6);
        r0 = (java.lang.CharSequence) r0;
        r0 = android.text.TextUtils.isDigitsOnly(r0);
        if (r0 == 0) goto L_0x0071;
    L_0x0066:
        r10 = r10.get(r6);	 Catch:{ NumberFormatException -> 0x0071 }
        r10 = (java.lang.String) r10;	 Catch:{ NumberFormatException -> 0x0071 }
        r10 = java.lang.Integer.parseInt(r10);	 Catch:{ NumberFormatException -> 0x0071 }
        r6 = r10;
    L_0x0071:
        r9 = r9.getResources();
        r9 = android.graphics.BitmapFactory.decodeResource(r9, r6, r1);
        goto L_0x00ba;
    L_0x007a:
        r2 = "file:///android_asset/";
        r2 = r0.startsWith(r2);
        r3 = 0;
        if (r2 == 0) goto L_0x0096;
    L_0x0083:
        r10 = 22;
        r10 = r0.substring(r10);
        r9 = r9.getAssets();
        r9 = r9.open(r10);
        r9 = android.graphics.BitmapFactory.decodeStream(r9, r3, r1);
        goto L_0x00ba;
    L_0x0096:
        r2 = "file://";
        r2 = r0.startsWith(r2);
        if (r2 == 0) goto L_0x00a8;
    L_0x009e:
        r9 = 7;
        r9 = r0.substring(r9);
        r9 = android.graphics.BitmapFactory.decodeFile(r9, r1);
        goto L_0x00ba;
    L_0x00a8:
        r9 = r9.getContentResolver();	 Catch:{ all -> 0x00c8 }
        r9 = r9.openInputStream(r10);	 Catch:{ all -> 0x00c8 }
        r10 = android.graphics.BitmapFactory.decodeStream(r9, r3, r1);	 Catch:{ all -> 0x00c5 }
        if (r9 == 0) goto L_0x00b9;
    L_0x00b6:
        r9.close();	 Catch:{ Exception -> 0x00b9 }
    L_0x00b9:
        r9 = r10;
    L_0x00ba:
        if (r9 != 0) goto L_0x00c4;
    L_0x00bc:
        r9 = new java.lang.RuntimeException;
        r10 = "Skia image region decoder returned null bitmap - image format may not be supported";
        r9.<init>(r10);
        throw r9;
    L_0x00c4:
        return r9;
    L_0x00c5:
        r10 = move-exception;
        r3 = r9;
        goto L_0x00c9;
    L_0x00c8:
        r10 = move-exception;
    L_0x00c9:
        if (r3 == 0) goto L_0x00ce;
    L_0x00cb:
        r3.close();	 Catch:{ Exception -> 0x00ce }
    L_0x00ce:
        throw r10;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.davemorrissey.labs.subscaleview.decoder.SkiaImageDecoder.decode(android.content.Context, android.net.Uri):android.graphics.Bitmap");
    }
}

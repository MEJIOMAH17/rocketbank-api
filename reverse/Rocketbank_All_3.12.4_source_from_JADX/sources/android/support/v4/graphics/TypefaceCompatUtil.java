package android.support.v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.support.annotation.RestrictTo;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.bitmap.GlideBitmapDrawable;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import java.nio.ByteBuffer;

@RestrictTo
public final class TypefaceCompatUtil implements ResourceTranscoder<GifBitmapWrapper, GlideDrawable> {
    private final ResourceTranscoder<Bitmap, GlideBitmapDrawable> bitmapDrawableResourceTranscoder;

    public final String getId() {
        return "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode";
    }

    public static java.io.File getTempFile(android.content.Context r5) {
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
        r1 = ".font";
        r0.<init>(r1);
        r1 = android.os.Process.myPid();
        r0.append(r1);
        r1 = "-";
        r0.append(r1);
        r1 = android.os.Process.myTid();
        r0.append(r1);
        r1 = "-";
        r0.append(r1);
        r0 = r0.toString();
        r1 = 0;
    L_0x0024:
        r2 = 100;
        if (r1 >= r2) goto L_0x004a;
    L_0x0028:
        r2 = new java.io.File;
        r3 = r5.getCacheDir();
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r4.append(r0);
        r4.append(r1);
        r4 = r4.toString();
        r2.<init>(r3, r4);
        r3 = r2.createNewFile();	 Catch:{ IOException -> 0x0047 }
        if (r3 == 0) goto L_0x0047;
    L_0x0046:
        return r2;
    L_0x0047:
        r1 = r1 + 1;
        goto L_0x0024;
    L_0x004a:
        r5 = 0;
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatUtil.getTempFile(android.content.Context):java.io.File");
    }

    private static java.nio.ByteBuffer mmap(java.io.File r9) {
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
        r1 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0032 }
        r1.<init>(r9);	 Catch:{ IOException -> 0x0032 }
        r2 = r1.getChannel();	 Catch:{ Throwable -> 0x001d, all -> 0x001a }
        r6 = r2.size();	 Catch:{ Throwable -> 0x001d, all -> 0x001a }
        r3 = java.nio.channels.FileChannel.MapMode.READ_ONLY;	 Catch:{ Throwable -> 0x001d, all -> 0x001a }
        r4 = 0;	 Catch:{ Throwable -> 0x001d, all -> 0x001a }
        r9 = r2.map(r3, r4, r6);	 Catch:{ Throwable -> 0x001d, all -> 0x001a }
        r1.close();	 Catch:{ IOException -> 0x0032 }
        return r9;
    L_0x001a:
        r9 = move-exception;
        r2 = r0;
        goto L_0x0023;
    L_0x001d:
        r9 = move-exception;
        throw r9;	 Catch:{ all -> 0x001f }
    L_0x001f:
        r2 = move-exception;
        r8 = r2;
        r2 = r9;
        r9 = r8;
    L_0x0023:
        if (r2 == 0) goto L_0x002e;
    L_0x0025:
        r1.close();	 Catch:{ Throwable -> 0x0029 }
        goto L_0x0031;
    L_0x0029:
        r1 = move-exception;
        r2.addSuppressed(r1);	 Catch:{ IOException -> 0x0032 }
        goto L_0x0031;	 Catch:{ IOException -> 0x0032 }
    L_0x002e:
        r1.close();	 Catch:{ IOException -> 0x0032 }
    L_0x0031:
        throw r9;	 Catch:{ IOException -> 0x0032 }
    L_0x0032:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatUtil.mmap(java.io.File):java.nio.ByteBuffer");
    }

    public static java.nio.ByteBuffer mmap$c2bc5d0(android.content.Context r9, android.net.Uri r10) {
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
        r9 = r9.getContentResolver();
        r0 = 0;
        r1 = "r";	 Catch:{ IOException -> 0x0067 }
        r9 = r9.openFileDescriptor(r10, r1, r0);	 Catch:{ IOException -> 0x0067 }
        if (r9 != 0) goto L_0x0013;	 Catch:{ IOException -> 0x0067 }
    L_0x000d:
        if (r9 == 0) goto L_0x0012;	 Catch:{ IOException -> 0x0067 }
    L_0x000f:
        r9.close();	 Catch:{ IOException -> 0x0067 }
    L_0x0012:
        return r0;
    L_0x0013:
        r10 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x0050, all -> 0x004d }
        r1 = r9.getFileDescriptor();	 Catch:{ Throwable -> 0x0050, all -> 0x004d }
        r10.<init>(r1);	 Catch:{ Throwable -> 0x0050, all -> 0x004d }
        r2 = r10.getChannel();	 Catch:{ Throwable -> 0x0038, all -> 0x0035 }
        r6 = r2.size();	 Catch:{ Throwable -> 0x0038, all -> 0x0035 }
        r3 = java.nio.channels.FileChannel.MapMode.READ_ONLY;	 Catch:{ Throwable -> 0x0038, all -> 0x0035 }
        r4 = 0;	 Catch:{ Throwable -> 0x0038, all -> 0x0035 }
        r1 = r2.map(r3, r4, r6);	 Catch:{ Throwable -> 0x0038, all -> 0x0035 }
        r10.close();	 Catch:{ Throwable -> 0x0050, all -> 0x004d }
        if (r9 == 0) goto L_0x0034;
    L_0x0031:
        r9.close();	 Catch:{ IOException -> 0x0067 }
    L_0x0034:
        return r1;
    L_0x0035:
        r1 = move-exception;
        r2 = r0;
        goto L_0x003e;
    L_0x0038:
        r1 = move-exception;
        throw r1;	 Catch:{ all -> 0x003a }
    L_0x003a:
        r2 = move-exception;
        r8 = r2;
        r2 = r1;
        r1 = r8;
    L_0x003e:
        if (r2 == 0) goto L_0x0049;
    L_0x0040:
        r10.close();	 Catch:{ Throwable -> 0x0044, all -> 0x004d }
        goto L_0x004c;
    L_0x0044:
        r10 = move-exception;
        r2.addSuppressed(r10);	 Catch:{ Throwable -> 0x0050, all -> 0x004d }
        goto L_0x004c;	 Catch:{ Throwable -> 0x0050, all -> 0x004d }
    L_0x0049:
        r10.close();	 Catch:{ Throwable -> 0x0050, all -> 0x004d }
    L_0x004c:
        throw r1;	 Catch:{ Throwable -> 0x0050, all -> 0x004d }
    L_0x004d:
        r10 = move-exception;
        r1 = r0;
        goto L_0x0056;
    L_0x0050:
        r10 = move-exception;
        throw r10;	 Catch:{ all -> 0x0052 }
    L_0x0052:
        r1 = move-exception;
        r8 = r1;
        r1 = r10;
        r10 = r8;
    L_0x0056:
        if (r9 == 0) goto L_0x0066;
    L_0x0058:
        if (r1 == 0) goto L_0x0063;
    L_0x005a:
        r9.close();	 Catch:{ Throwable -> 0x005e }
        goto L_0x0066;
    L_0x005e:
        r9 = move-exception;
        r1.addSuppressed(r9);	 Catch:{ IOException -> 0x0067 }
        goto L_0x0066;	 Catch:{ IOException -> 0x0067 }
    L_0x0063:
        r9.close();	 Catch:{ IOException -> 0x0067 }
    L_0x0066:
        throw r10;	 Catch:{ IOException -> 0x0067 }
    L_0x0067:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatUtil.mmap$c2bc5d0(android.content.Context, android.net.Uri):java.nio.ByteBuffer");
    }

    public static ByteBuffer copyToDirectBuffer(Context context, Resources resources, int i) {
        context = getTempFile(context);
        if (context == null) {
            return null;
        }
        try {
            if (copyToFile(context, resources, i) == null) {
                return null;
            }
            resources = mmap(context);
            context.delete();
            return resources;
        } finally {
            context.delete();
        }
    }

    public static boolean copyToFile(java.io.File r4, java.io.InputStream r5) {
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
        r1 = 0;
        r2 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x0023 }
        r2.<init>(r4, r0);	 Catch:{ IOException -> 0x0023 }
        r4 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r4 = new byte[r4];	 Catch:{ IOException -> 0x001e, all -> 0x001b }
    L_0x000b:
        r1 = r5.read(r4);	 Catch:{ IOException -> 0x001e, all -> 0x001b }
        r3 = -1;	 Catch:{ IOException -> 0x001e, all -> 0x001b }
        if (r1 == r3) goto L_0x0016;	 Catch:{ IOException -> 0x001e, all -> 0x001b }
    L_0x0012:
        r2.write(r4, r0, r1);	 Catch:{ IOException -> 0x001e, all -> 0x001b }
        goto L_0x000b;
    L_0x0016:
        r2.close();	 Catch:{ IOException -> 0x0019 }
    L_0x0019:
        r4 = 1;
        return r4;
    L_0x001b:
        r4 = move-exception;
        r1 = r2;
        goto L_0x0041;
    L_0x001e:
        r4 = move-exception;
        r1 = r2;
        goto L_0x0024;
    L_0x0021:
        r4 = move-exception;
        goto L_0x0041;
    L_0x0023:
        r4 = move-exception;
    L_0x0024:
        r5 = "TypefaceCompatUtil";	 Catch:{ all -> 0x0021 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0021 }
        r3 = "Error copying resource contents to temp file: ";	 Catch:{ all -> 0x0021 }
        r2.<init>(r3);	 Catch:{ all -> 0x0021 }
        r4 = r4.getMessage();	 Catch:{ all -> 0x0021 }
        r2.append(r4);	 Catch:{ all -> 0x0021 }
        r4 = r2.toString();	 Catch:{ all -> 0x0021 }
        android.util.Log.e(r5, r4);	 Catch:{ all -> 0x0021 }
        if (r1 == 0) goto L_0x0040;
    L_0x003d:
        r1.close();	 Catch:{ IOException -> 0x0040 }
    L_0x0040:
        return r0;
    L_0x0041:
        if (r1 == 0) goto L_0x0046;
    L_0x0043:
        r1.close();	 Catch:{ IOException -> 0x0046 }
    L_0x0046:
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatUtil.copyToFile(java.io.File, java.io.InputStream):boolean");
    }

    public static boolean copyToFile(java.io.File r0, android.content.res.Resources r1, int r2) {
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
        r1 = r1.openRawResource(r2);	 Catch:{ all -> 0x0010 }
        r0 = copyToFile(r0, r1);	 Catch:{ all -> 0x000e }
        if (r1 == 0) goto L_0x000d;
    L_0x000a:
        r1.close();	 Catch:{ IOException -> 0x000d }
    L_0x000d:
        return r0;
    L_0x000e:
        r0 = move-exception;
        goto L_0x0012;
    L_0x0010:
        r0 = move-exception;
        r1 = 0;
    L_0x0012:
        if (r1 == 0) goto L_0x0017;
    L_0x0014:
        r1.close();	 Catch:{ IOException -> 0x0017 }
    L_0x0017:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatUtil.copyToFile(java.io.File, android.content.res.Resources, int):boolean");
    }

    public TypefaceCompatUtil(ResourceTranscoder<Bitmap, GlideBitmapDrawable> resourceTranscoder) {
        this.bitmapDrawableResourceTranscoder = resourceTranscoder;
    }

    public final Resource<GlideDrawable> transcode(Resource<GifBitmapWrapper> resource) {
        GifBitmapWrapper gifBitmapWrapper = (GifBitmapWrapper) resource.get();
        Resource bitmapResource = gifBitmapWrapper.getBitmapResource();
        if (bitmapResource != null) {
            return this.bitmapDrawableResourceTranscoder.transcode(bitmapResource);
        }
        return gifBitmapWrapper.getGifResource();
    }
}

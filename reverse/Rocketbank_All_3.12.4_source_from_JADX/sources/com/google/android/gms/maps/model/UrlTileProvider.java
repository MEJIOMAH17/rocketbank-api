package com.google.android.gms.maps.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

public abstract class UrlTileProvider implements TileProvider {
    private final int zzrC;
    private final int zzrD;

    public UrlTileProvider(int i, int i2) {
        this.zzrC = i;
        this.zzrD = i2;
    }

    private static long zzb(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += (long) read;
        }
    }

    private static byte[] zzk(InputStream inputStream) throws IOException {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        zzb(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public final com.google.android.gms.maps.model.Tile getTile(int r2, int r3, int r4) {
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
        r1 = this;
        r2 = r1.getTileUrl(r2, r3, r4);
        if (r2 != 0) goto L_0x0009;
    L_0x0006:
        r2 = NO_TILE;
        return r2;
    L_0x0009:
        r3 = new com.google.android.gms.maps.model.Tile;	 Catch:{ IOException -> 0x001b }
        r4 = r1.zzrC;	 Catch:{ IOException -> 0x001b }
        r0 = r1.zzrD;	 Catch:{ IOException -> 0x001b }
        r2 = r2.openStream();	 Catch:{ IOException -> 0x001b }
        r2 = zzk(r2);	 Catch:{ IOException -> 0x001b }
        r3.<init>(r4, r0, r2);	 Catch:{ IOException -> 0x001b }
        return r3;
    L_0x001b:
        r3 = 0;
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.UrlTileProvider.getTile(int, int, int):com.google.android.gms.maps.model.Tile");
    }

    public abstract URL getTileUrl(int i, int i2, int i3);
}

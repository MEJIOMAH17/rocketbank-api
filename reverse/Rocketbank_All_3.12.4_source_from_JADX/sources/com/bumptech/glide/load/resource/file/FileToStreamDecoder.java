package com.bumptech.glide.load.resource.file;

import com.bumptech.glide.load.ResourceDecoder;
import java.io.File;
import java.io.InputStream;

public final class FileToStreamDecoder<T> implements ResourceDecoder<File, T> {
    private static final FileOpener DEFAULT_FILE_OPENER = new FileOpener();
    private final FileOpener fileOpener;
    private ResourceDecoder<InputStream, T> streamDecoder;

    static class FileOpener {
        FileOpener() {
        }
    }

    public final String getId() {
        return "";
    }

    public FileToStreamDecoder(ResourceDecoder<InputStream, T> resourceDecoder) {
        this(resourceDecoder, DEFAULT_FILE_OPENER);
    }

    private FileToStreamDecoder(ResourceDecoder<InputStream, T> resourceDecoder, FileOpener fileOpener) {
        this.streamDecoder = resourceDecoder;
        this.fileOpener = fileOpener;
    }

    private com.bumptech.glide.load.engine.Resource<T> decode(java.io.File r3, int r4, int r5) throws java.io.IOException {
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
        r2 = this;
        r0 = 0;
        r1 = new java.io.FileInputStream;	 Catch:{ all -> 0x0013 }
        r1.<init>(r3);	 Catch:{ all -> 0x0013 }
        r3 = r2.streamDecoder;	 Catch:{ all -> 0x0010 }
        r3 = r3.decode(r1, r4, r5);	 Catch:{ all -> 0x0010 }
        r1.close();	 Catch:{ IOException -> 0x000f }
    L_0x000f:
        return r3;
    L_0x0010:
        r3 = move-exception;
        r0 = r1;
        goto L_0x0014;
    L_0x0013:
        r3 = move-exception;
    L_0x0014:
        if (r0 == 0) goto L_0x0019;
    L_0x0016:
        r0.close();	 Catch:{ IOException -> 0x0019 }
    L_0x0019:
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.file.FileToStreamDecoder.decode(java.io.File, int, int):com.bumptech.glide.load.engine.Resource<T>");
    }
}

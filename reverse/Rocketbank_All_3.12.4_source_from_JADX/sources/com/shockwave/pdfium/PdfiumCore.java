package com.shockwave.pdfium;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.Surface;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Field;

public class PdfiumCore {
    private static final Class FD_CLASS = FileDescriptor.class;
    private static final String TAG = "com.shockwave.pdfium.PdfiumCore";
    private static final Object lock = new Object();
    private static Field mFdField;
    private int mCurrentDpi;

    private native void nativeCloseDocument(long j);

    private native void nativeClosePage(long j);

    private native void nativeClosePages(long[] jArr);

    private native long nativeGetBookmarkDestIndex(long j, long j2);

    private native String nativeGetBookmarkTitle(long j);

    private native String nativeGetDocumentMetaText(long j, String str);

    private native Long nativeGetFirstChildBookmark(long j, Long l);

    private native int nativeGetPageCount(long j);

    private native int nativeGetPageHeightPixel(long j, int i);

    private native int nativeGetPageHeightPoint(long j);

    private native int nativeGetPageWidthPixel(long j, int i);

    private native int nativeGetPageWidthPoint(long j);

    private native Long nativeGetSiblingBookmark(long j, long j2);

    private native long nativeLoadPage(long j, int i);

    private native long[] nativeLoadPages(long j, int i, int i2);

    private native long nativeOpenDocument(int i, String str);

    private native long nativeOpenMemDocument(byte[] bArr, String str);

    private native void nativeRenderPage(long j, Surface surface, int i, int i2, int i3, int i4, int i5, boolean z);

    private native void nativeRenderPageBitmap(long j, Bitmap bitmap, int i, int i2, int i3, int i4, int i5, boolean z);

    static {
        System.loadLibrary("modpdfium");
        System.loadLibrary("jniPdfium");
    }

    public PdfiumCore(Context context) {
        this.mCurrentDpi = context.getResources().getDisplayMetrics().densityDpi;
    }

    private static int getNumFd(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            if (mFdField == null) {
                Field declaredField = FD_CLASS.getDeclaredField("descriptor");
                mFdField = declaredField;
                declaredField.setAccessible(true);
            }
            return mFdField.getInt(parcelFileDescriptor.getFileDescriptor());
        } catch (ParcelFileDescriptor parcelFileDescriptor2) {
            parcelFileDescriptor2.printStackTrace();
            return -1;
        } catch (ParcelFileDescriptor parcelFileDescriptor22) {
            parcelFileDescriptor22.printStackTrace();
            return -1;
        }
    }

    public final PdfDocument newDocument(ParcelFileDescriptor parcelFileDescriptor, String str) throws IOException {
        PdfDocument pdfDocument = new PdfDocument();
        pdfDocument.parcelFileDescriptor = parcelFileDescriptor;
        synchronized (lock) {
            pdfDocument.mNativeDocPtr = nativeOpenDocument(getNumFd(parcelFileDescriptor), str);
        }
        return pdfDocument;
    }

    public final int getPageCount(PdfDocument pdfDocument) {
        synchronized (lock) {
            pdfDocument = nativeGetPageCount(pdfDocument.mNativeDocPtr);
        }
        return pdfDocument;
    }

    public final long openPage(PdfDocument pdfDocument, int i) {
        long nativeLoadPage;
        synchronized (lock) {
            nativeLoadPage = nativeLoadPage(pdfDocument.mNativeDocPtr, i);
            pdfDocument.mNativePagesPtr.put(Integer.valueOf(i), Long.valueOf(nativeLoadPage));
        }
        return nativeLoadPage;
    }

    public final int getPageWidth(PdfDocument pdfDocument, int i) {
        synchronized (lock) {
            Long l = (Long) pdfDocument.mNativePagesPtr.get(Integer.valueOf(i));
            if (l != null) {
                pdfDocument = nativeGetPageWidthPixel(l.longValue(), this.mCurrentDpi);
                return pdfDocument;
            }
            return null;
        }
    }

    public final int getPageHeight(PdfDocument pdfDocument, int i) {
        synchronized (lock) {
            Long l = (Long) pdfDocument.mNativePagesPtr.get(Integer.valueOf(i));
            if (l != null) {
                pdfDocument = nativeGetPageHeightPixel(l.longValue(), this.mCurrentDpi);
                return pdfDocument;
            }
            return null;
        }
    }

    public final void renderPageBitmap(PdfDocument pdfDocument, Bitmap bitmap, int i, int i2, int i3, int i4, int i5, boolean z) {
        NullPointerException e;
        NullPointerException nullPointerException;
        Exception e2;
        Exception exception;
        Throwable th;
        Throwable th2;
        synchronized (lock) {
            PdfiumCore pdfiumCore;
            try {
                try {
                    nativeRenderPageBitmap(((Long) pdfDocument.mNativePagesPtr.get(Integer.valueOf(i))).longValue(), bitmap, this.mCurrentDpi, i2, i3, i4, i5, z);
                } catch (NullPointerException e3) {
                    e = e3;
                    nullPointerException = e;
                    Log.e(TAG, "mContext may be null");
                    nullPointerException.printStackTrace();
                } catch (Exception e4) {
                    e2 = e4;
                    exception = e2;
                    Log.e(TAG, "Exception throw from native");
                    exception.printStackTrace();
                }
            } catch (NullPointerException e5) {
                e = e5;
                pdfiumCore = this;
                nullPointerException = e;
                Log.e(TAG, "mContext may be null");
                nullPointerException.printStackTrace();
            } catch (Exception e6) {
                e2 = e6;
                pdfiumCore = this;
                exception = e2;
                Log.e(TAG, "Exception throw from native");
                exception.printStackTrace();
            } catch (Throwable th3) {
                th = th3;
                th2 = th;
                throw th2;
            }
        }
    }

    public final void closeDocument(com.shockwave.pdfium.PdfDocument r5) {
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
        r4 = this;
        r0 = lock;
        monitor-enter(r0);
        r1 = r5.mNativePagesPtr;	 Catch:{ all -> 0x0041 }
        r1 = r1.keySet();	 Catch:{ all -> 0x0041 }
        r1 = r1.iterator();	 Catch:{ all -> 0x0041 }
    L_0x000d:
        r2 = r1.hasNext();	 Catch:{ all -> 0x0041 }
        if (r2 == 0) goto L_0x0029;	 Catch:{ all -> 0x0041 }
    L_0x0013:
        r2 = r1.next();	 Catch:{ all -> 0x0041 }
        r2 = (java.lang.Integer) r2;	 Catch:{ all -> 0x0041 }
        r3 = r5.mNativePagesPtr;	 Catch:{ all -> 0x0041 }
        r2 = r3.get(r2);	 Catch:{ all -> 0x0041 }
        r2 = (java.lang.Long) r2;	 Catch:{ all -> 0x0041 }
        r2 = r2.longValue();	 Catch:{ all -> 0x0041 }
        r4.nativeClosePage(r2);	 Catch:{ all -> 0x0041 }
        goto L_0x000d;	 Catch:{ all -> 0x0041 }
    L_0x0029:
        r1 = r5.mNativePagesPtr;	 Catch:{ all -> 0x0041 }
        r1.clear();	 Catch:{ all -> 0x0041 }
        r1 = r5.mNativeDocPtr;	 Catch:{ all -> 0x0041 }
        r4.nativeCloseDocument(r1);	 Catch:{ all -> 0x0041 }
        r1 = r5.parcelFileDescriptor;	 Catch:{ all -> 0x0041 }
        if (r1 == 0) goto L_0x003f;
    L_0x0037:
        r1 = r5.parcelFileDescriptor;	 Catch:{ IOException -> 0x003c }
        r1.close();	 Catch:{ IOException -> 0x003c }
    L_0x003c:
        r1 = 0;
        r5.parcelFileDescriptor = r1;	 Catch:{ all -> 0x0041 }
    L_0x003f:
        monitor-exit(r0);	 Catch:{ all -> 0x0041 }
        return;	 Catch:{ all -> 0x0041 }
    L_0x0041:
        r5 = move-exception;	 Catch:{ all -> 0x0041 }
        monitor-exit(r0);	 Catch:{ all -> 0x0041 }
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shockwave.pdfium.PdfiumCore.closeDocument(com.shockwave.pdfium.PdfDocument):void");
    }
}

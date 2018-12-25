package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.CancellationSignal.OnCancelListener;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintAttributes.Margins;
import android.print.PrintAttributes.MediaSize;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentAdapter.LayoutResultCallback;
import android.print.PrintDocumentAdapter.WriteResultCallback;
import android.print.PrintDocumentInfo.Builder;
import android.util.Log;
import com.bumptech.glide.load.Key;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

public final class PrintHelper implements Key {
    private final String signature;

    static class PrintHelperApi19 {
        final Context mContext;
        Options mDecodeOptions;
        private final Object mLock;

        /* renamed from: android.support.v4.print.PrintHelper$PrintHelperApi19$2 */
        class C01672 extends AsyncTask<Void, Void, Throwable> {
            final /* synthetic */ PrintAttributes val$attributes;
            final /* synthetic */ Bitmap val$bitmap;
            final /* synthetic */ CancellationSignal val$cancellationSignal;
            final /* synthetic */ ParcelFileDescriptor val$fileDescriptor;
            final /* synthetic */ int val$fittingMode;
            final /* synthetic */ PrintAttributes val$pdfAttributes;
            final /* synthetic */ WriteResultCallback val$writeResultCallback;

            C01672(CancellationSignal cancellationSignal, PrintAttributes printAttributes, Bitmap bitmap, PrintAttributes printAttributes2, int i, ParcelFileDescriptor parcelFileDescriptor, WriteResultCallback writeResultCallback) {
                this.val$cancellationSignal = cancellationSignal;
                this.val$pdfAttributes = printAttributes;
                this.val$bitmap = bitmap;
                this.val$attributes = printAttributes2;
                this.val$fittingMode = i;
                this.val$fileDescriptor = parcelFileDescriptor;
                this.val$writeResultCallback = writeResultCallback;
            }

            protected final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
                return doInBackground$5c22e4b4();
            }

            protected final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
                Throwable th = (Throwable) obj;
                if (this.val$cancellationSignal.isCanceled()) {
                    this.val$writeResultCallback.onWriteCancelled();
                } else if (th == null) {
                    this.val$writeResultCallback.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
                } else {
                    Log.e("PrintHelperApi19", "Error writing printed content", th);
                    this.val$writeResultCallback.onWriteFailed(null);
                }
            }

            private java.lang.Throwable doInBackground$5c22e4b4() {
                /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
                /*
                r11 = this;
                r0 = r11.val$cancellationSignal;	 Catch:{ Throwable -> 0x012f }
                r0 = r0.isCanceled();	 Catch:{ Throwable -> 0x012f }
                r1 = 0;	 Catch:{ Throwable -> 0x012f }
                if (r0 == 0) goto L_0x000a;	 Catch:{ Throwable -> 0x012f }
            L_0x0009:
                return r1;	 Catch:{ Throwable -> 0x012f }
            L_0x000a:
                r0 = new android.print.pdf.PrintedPdfDocument;	 Catch:{ Throwable -> 0x012f }
                r2 = android.support.v4.print.PrintHelper.PrintHelperApi19.this;	 Catch:{ Throwable -> 0x012f }
                r2 = r2.mContext;	 Catch:{ Throwable -> 0x012f }
                r3 = r11.val$pdfAttributes;	 Catch:{ Throwable -> 0x012f }
                r0.<init>(r2, r3);	 Catch:{ Throwable -> 0x012f }
                r2 = r11.val$bitmap;	 Catch:{ Throwable -> 0x012f }
                r3 = r11.val$pdfAttributes;	 Catch:{ Throwable -> 0x012f }
                r3 = r3.getColorMode();	 Catch:{ Throwable -> 0x012f }
                r4 = 1;	 Catch:{ Throwable -> 0x012f }
                if (r3 == r4) goto L_0x0021;	 Catch:{ Throwable -> 0x012f }
            L_0x0020:
                goto L_0x0051;	 Catch:{ Throwable -> 0x012f }
            L_0x0021:
                r3 = r2.getWidth();	 Catch:{ Throwable -> 0x012f }
                r5 = r2.getHeight();	 Catch:{ Throwable -> 0x012f }
                r6 = android.graphics.Bitmap.Config.ARGB_8888;	 Catch:{ Throwable -> 0x012f }
                r3 = android.graphics.Bitmap.createBitmap(r3, r5, r6);	 Catch:{ Throwable -> 0x012f }
                r5 = new android.graphics.Canvas;	 Catch:{ Throwable -> 0x012f }
                r5.<init>(r3);	 Catch:{ Throwable -> 0x012f }
                r6 = new android.graphics.Paint;	 Catch:{ Throwable -> 0x012f }
                r6.<init>();	 Catch:{ Throwable -> 0x012f }
                r7 = new android.graphics.ColorMatrix;	 Catch:{ Throwable -> 0x012f }
                r7.<init>();	 Catch:{ Throwable -> 0x012f }
                r8 = 0;	 Catch:{ Throwable -> 0x012f }
                r7.setSaturation(r8);	 Catch:{ Throwable -> 0x012f }
                r9 = new android.graphics.ColorMatrixColorFilter;	 Catch:{ Throwable -> 0x012f }
                r9.<init>(r7);	 Catch:{ Throwable -> 0x012f }
                r6.setColorFilter(r9);	 Catch:{ Throwable -> 0x012f }
                r5.drawBitmap(r2, r8, r8, r6);	 Catch:{ Throwable -> 0x012f }
                r5.setBitmap(r1);	 Catch:{ Throwable -> 0x012f }
                r2 = r3;	 Catch:{ Throwable -> 0x012f }
            L_0x0051:
                r3 = r11.val$cancellationSignal;	 Catch:{ Throwable -> 0x012f }
                r3 = r3.isCanceled();	 Catch:{ Throwable -> 0x012f }
                if (r3 == 0) goto L_0x005a;
            L_0x0059:
                return r1;
            L_0x005a:
                r3 = r0.startPage(r4);	 Catch:{ all -> 0x011a }
                r5 = new android.print.pdf.PrintedPdfDocument;	 Catch:{ all -> 0x011a }
                r6 = android.support.v4.print.PrintHelper.PrintHelperApi19.this;	 Catch:{ all -> 0x011a }
                r6 = r6.mContext;	 Catch:{ all -> 0x011a }
                r7 = r11.val$attributes;	 Catch:{ all -> 0x011a }
                r5.<init>(r6, r7);	 Catch:{ all -> 0x011a }
                r4 = r5.startPage(r4);	 Catch:{ all -> 0x011a }
                r6 = new android.graphics.RectF;	 Catch:{ all -> 0x011a }
                r7 = r4.getInfo();	 Catch:{ all -> 0x011a }
                r7 = r7.getContentRect();	 Catch:{ all -> 0x011a }
                r6.<init>(r7);	 Catch:{ all -> 0x011a }
                r5.finishPage(r4);	 Catch:{ all -> 0x011a }
                r5.close();	 Catch:{ all -> 0x011a }
                r4 = r2.getWidth();	 Catch:{ all -> 0x011a }
                r5 = r2.getHeight();	 Catch:{ all -> 0x011a }
                r7 = r11.val$fittingMode;	 Catch:{ all -> 0x011a }
                r8 = new android.graphics.Matrix;	 Catch:{ all -> 0x011a }
                r8.<init>();	 Catch:{ all -> 0x011a }
                r9 = r6.width();	 Catch:{ all -> 0x011a }
                r4 = (float) r4;	 Catch:{ all -> 0x011a }
                r9 = r9 / r4;	 Catch:{ all -> 0x011a }
                r10 = 2;	 Catch:{ all -> 0x011a }
                if (r7 != r10) goto L_0x00a3;	 Catch:{ all -> 0x011a }
            L_0x0098:
                r7 = r6.height();	 Catch:{ all -> 0x011a }
                r10 = (float) r5;	 Catch:{ all -> 0x011a }
                r7 = r7 / r10;	 Catch:{ all -> 0x011a }
                r7 = java.lang.Math.max(r9, r7);	 Catch:{ all -> 0x011a }
                goto L_0x00ad;	 Catch:{ all -> 0x011a }
            L_0x00a3:
                r7 = r6.height();	 Catch:{ all -> 0x011a }
                r10 = (float) r5;	 Catch:{ all -> 0x011a }
                r7 = r7 / r10;	 Catch:{ all -> 0x011a }
                r7 = java.lang.Math.min(r9, r7);	 Catch:{ all -> 0x011a }
            L_0x00ad:
                r8.postScale(r7, r7);	 Catch:{ all -> 0x011a }
                r9 = r6.width();	 Catch:{ all -> 0x011a }
                r4 = r4 * r7;	 Catch:{ all -> 0x011a }
                r9 = r9 - r4;	 Catch:{ all -> 0x011a }
                r4 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;	 Catch:{ all -> 0x011a }
                r9 = r9 / r4;	 Catch:{ all -> 0x011a }
                r10 = r6.height();	 Catch:{ all -> 0x011a }
                r5 = (float) r5;	 Catch:{ all -> 0x011a }
                r5 = r5 * r7;	 Catch:{ all -> 0x011a }
                r10 = r10 - r5;	 Catch:{ all -> 0x011a }
                r10 = r10 / r4;	 Catch:{ all -> 0x011a }
                r8.postTranslate(r9, r10);	 Catch:{ all -> 0x011a }
                r4 = r6.left;	 Catch:{ all -> 0x011a }
                r5 = r6.top;	 Catch:{ all -> 0x011a }
                r8.postTranslate(r4, r5);	 Catch:{ all -> 0x011a }
                r4 = r3.getCanvas();	 Catch:{ all -> 0x011a }
                r4.clipRect(r6);	 Catch:{ all -> 0x011a }
                r4 = r3.getCanvas();	 Catch:{ all -> 0x011a }
                r4.drawBitmap(r2, r8, r1);	 Catch:{ all -> 0x011a }
                r0.finishPage(r3);	 Catch:{ all -> 0x011a }
                r3 = r11.val$cancellationSignal;	 Catch:{ all -> 0x011a }
                r3 = r3.isCanceled();	 Catch:{ all -> 0x011a }
                if (r3 == 0) goto L_0x00f8;
            L_0x00e4:
                r0.close();	 Catch:{ Throwable -> 0x012f }
                r0 = r11.val$fileDescriptor;	 Catch:{ Throwable -> 0x012f }
                if (r0 == 0) goto L_0x00f0;
            L_0x00eb:
                r0 = r11.val$fileDescriptor;	 Catch:{ IOException -> 0x00f0 }
                r0.close();	 Catch:{ IOException -> 0x00f0 }
            L_0x00f0:
                r0 = r11.val$bitmap;	 Catch:{ Throwable -> 0x012f }
                if (r2 == r0) goto L_0x00f7;	 Catch:{ Throwable -> 0x012f }
            L_0x00f4:
                r2.recycle();	 Catch:{ Throwable -> 0x012f }
            L_0x00f7:
                return r1;
            L_0x00f8:
                r3 = new java.io.FileOutputStream;	 Catch:{ all -> 0x011a }
                r4 = r11.val$fileDescriptor;	 Catch:{ all -> 0x011a }
                r4 = r4.getFileDescriptor();	 Catch:{ all -> 0x011a }
                r3.<init>(r4);	 Catch:{ all -> 0x011a }
                r0.writeTo(r3);	 Catch:{ all -> 0x011a }
                r0.close();	 Catch:{ Throwable -> 0x012f }
                r0 = r11.val$fileDescriptor;	 Catch:{ Throwable -> 0x012f }
                if (r0 == 0) goto L_0x0112;
            L_0x010d:
                r0 = r11.val$fileDescriptor;	 Catch:{ IOException -> 0x0112 }
                r0.close();	 Catch:{ IOException -> 0x0112 }
            L_0x0112:
                r0 = r11.val$bitmap;	 Catch:{ Throwable -> 0x012f }
                if (r2 == r0) goto L_0x0119;	 Catch:{ Throwable -> 0x012f }
            L_0x0116:
                r2.recycle();	 Catch:{ Throwable -> 0x012f }
            L_0x0119:
                return r1;	 Catch:{ Throwable -> 0x012f }
            L_0x011a:
                r1 = move-exception;	 Catch:{ Throwable -> 0x012f }
                r0.close();	 Catch:{ Throwable -> 0x012f }
                r0 = r11.val$fileDescriptor;	 Catch:{ Throwable -> 0x012f }
                if (r0 == 0) goto L_0x0127;
            L_0x0122:
                r0 = r11.val$fileDescriptor;	 Catch:{ IOException -> 0x0127 }
                r0.close();	 Catch:{ IOException -> 0x0127 }
            L_0x0127:
                r0 = r11.val$bitmap;	 Catch:{ Throwable -> 0x012f }
                if (r2 == r0) goto L_0x012e;	 Catch:{ Throwable -> 0x012f }
            L_0x012b:
                r2.recycle();	 Catch:{ Throwable -> 0x012f }
            L_0x012e:
                throw r1;	 Catch:{ Throwable -> 0x012f }
            L_0x012f:
                r0 = move-exception;
                return r0;
                */
                throw new UnsupportedOperationException("Method not decompiled: android.support.v4.print.PrintHelper.PrintHelperApi19.2.doInBackground$5c22e4b4():java.lang.Throwable");
            }
        }

        /* renamed from: android.support.v4.print.PrintHelper$PrintHelperApi19$3 */
        class C01703 extends PrintDocumentAdapter {
            private PrintAttributes mAttributes;
            Bitmap mBitmap;
            AsyncTask<Uri, Boolean, Bitmap> mLoadBitmap;
            final /* synthetic */ PrintHelperApi19 this$0;
            final /* synthetic */ int val$fittingMode;
            final /* synthetic */ Uri val$imageFile;
            final /* synthetic */ String val$jobName;

            public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, LayoutResultCallback layoutResultCallback, Bundle bundle) {
                synchronized (this) {
                    this.mAttributes = printAttributes2;
                }
                if (cancellationSignal.isCanceled() != null) {
                    layoutResultCallback.onLayoutCancelled();
                } else if (this.mBitmap != null) {
                    layoutResultCallback.onLayoutFinished(new Builder(this.val$jobName).setContentType(1).setPageCount(1).build(), printAttributes2.equals(printAttributes) ^ 1);
                } else {
                    final CancellationSignal cancellationSignal2 = cancellationSignal;
                    final PrintAttributes printAttributes3 = printAttributes2;
                    final PrintAttributes printAttributes4 = printAttributes;
                    final LayoutResultCallback layoutResultCallback2 = layoutResultCallback;
                    this.mLoadBitmap = new AsyncTask<Uri, Boolean, Bitmap>() {

                        /* renamed from: android.support.v4.print.PrintHelper$PrintHelperApi19$3$1$1 */
                        class C01681 implements OnCancelListener {
                            C01681() {
                            }

                            public final void onCancel() {
                                C01703.this.cancelLoad();
                                C01691.this.cancel(false);
                            }
                        }

                        protected final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
                            return doInBackground$4055529b();
                        }

                        protected final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
                            Bitmap bitmap = (Bitmap) obj;
                            super.onPostExecute(bitmap);
                            if (bitmap != null) {
                                MediaSize mediaSize;
                                synchronized (this) {
                                    mediaSize = C01703.this.mAttributes.getMediaSize();
                                }
                                if (mediaSize != null) {
                                    if (mediaSize.isPortrait() != (bitmap.getWidth() <= bitmap.getHeight())) {
                                        Matrix matrix = new Matrix();
                                        matrix.postRotate(90.0f);
                                        bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                                    }
                                }
                            }
                            C01703.this.mBitmap = bitmap;
                            if (bitmap != null) {
                                layoutResultCallback2.onLayoutFinished(new Builder(C01703.this.val$jobName).setContentType(1).setPageCount(1).build(), 1 ^ printAttributes3.equals(printAttributes4));
                            } else {
                                layoutResultCallback2.onLayoutFailed(null);
                            }
                            C01703.this.mLoadBitmap = null;
                        }

                        protected final void onPreExecute() {
                            cancellationSignal2.setOnCancelListener(new C01681());
                        }

                        private android.graphics.Bitmap doInBackground$4055529b() {
                            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
                            /*
                            r2 = this;
                            r0 = android.support.v4.print.PrintHelper.PrintHelperApi19.C01703.this;	 Catch:{ FileNotFoundException -> 0x000d }
                            r0 = r0.this$0;	 Catch:{ FileNotFoundException -> 0x000d }
                            r1 = android.support.v4.print.PrintHelper.PrintHelperApi19.C01703.this;	 Catch:{ FileNotFoundException -> 0x000d }
                            r1 = r1.val$imageFile;	 Catch:{ FileNotFoundException -> 0x000d }
                            r0 = r0.loadConstrainedBitmap(r1);	 Catch:{ FileNotFoundException -> 0x000d }
                            return r0;
                        L_0x000d:
                            r0 = 0;
                            return r0;
                            */
                            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.print.PrintHelper.PrintHelperApi19.3.1.doInBackground$4055529b():android.graphics.Bitmap");
                        }

                        protected final /* bridge */ /* synthetic */ void onCancelled(Object obj) {
                            layoutResultCallback2.onLayoutCancelled();
                            C01703.this.mLoadBitmap = null;
                        }
                    }.execute(new Uri[null]);
                }
            }

            private void cancelLoad() {
                synchronized (this.this$0.mLock) {
                    if (this.this$0.mDecodeOptions != null) {
                        this.this$0.mDecodeOptions.requestCancelDecode();
                        this.this$0.mDecodeOptions = null;
                    }
                }
            }

            public void onFinish() {
                super.onFinish();
                cancelLoad();
                if (this.mLoadBitmap != null) {
                    this.mLoadBitmap.cancel(true);
                }
                if (this.mBitmap != null) {
                    this.mBitmap.recycle();
                    this.mBitmap = null;
                }
            }

            public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
                PrintHelperApi19 printHelperApi19 = this.this$0;
                PrintAttributes printAttributes = this.mAttributes;
                int i = this.val$fittingMode;
                Bitmap bitmap = this.mBitmap;
                pageRangeArr = new PrintAttributes.Builder().setMediaSize(printAttributes.getMediaSize()).setResolution(printAttributes.getResolution()).setMinMargins(printAttributes.getMinMargins());
                if (printAttributes.getColorMode() != 0) {
                    pageRangeArr.setColorMode(printAttributes.getColorMode());
                }
                new C01672(cancellationSignal, pageRangeArr.setMinMargins(new Margins(0, 0, 0, 0)).build(), bitmap, printAttributes, i, parcelFileDescriptor, writeResultCallback).execute(new Void[0]);
            }
        }

        private Bitmap loadConstrainedBitmap(Uri uri) throws FileNotFoundException {
            if (uri != null) {
                if (this.mContext != null) {
                    Options options = new Options();
                    options.inJustDecodeBounds = true;
                    loadBitmap(uri, options);
                    int i = options.outWidth;
                    int i2 = options.outHeight;
                    if (i > 0) {
                        if (i2 > 0) {
                            int max = Math.max(i, i2);
                            int i3 = 1;
                            while (max > 3500) {
                                max >>>= 1;
                                i3 <<= 1;
                            }
                            if (i3 > 0) {
                                if (Math.min(i, i2) / i3 > 0) {
                                    Options options2;
                                    synchronized (this.mLock) {
                                        this.mDecodeOptions = new Options();
                                        this.mDecodeOptions.inMutable = true;
                                        this.mDecodeOptions.inSampleSize = i3;
                                        options2 = this.mDecodeOptions;
                                    }
                                    try {
                                        uri = loadBitmap(uri, options2);
                                        synchronized (this.mLock) {
                                            this.mDecodeOptions = null;
                                        }
                                        return uri;
                                    } catch (Throwable th) {
                                        synchronized (this.mLock) {
                                            this.mDecodeOptions = null;
                                        }
                                    }
                                }
                            }
                            return null;
                        }
                    }
                    return null;
                }
            }
            throw new IllegalArgumentException("bad argument to getScaledBitmap");
        }

        private Bitmap loadBitmap(Uri uri, Options options) throws FileNotFoundException {
            if (uri != null) {
                if (this.mContext != null) {
                    InputStream inputStream = null;
                    try {
                        uri = this.mContext.getContentResolver().openInputStream(uri);
                        try {
                            options = BitmapFactory.decodeStream(uri, null, options);
                            if (uri != null) {
                                try {
                                    uri.close();
                                } catch (Uri uri2) {
                                    Log.w("PrintHelperApi19", "close fail ", uri2);
                                }
                            }
                            return options;
                        } catch (Throwable th) {
                            options = th;
                            inputStream = uri2;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Uri uri22) {
                                    Log.w("PrintHelperApi19", "close fail ", uri22);
                                }
                            }
                            throw options;
                        }
                    } catch (Throwable th2) {
                        options = th2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        throw options;
                    }
                }
            }
            throw new IllegalArgumentException("bad argument to loadBitmap");
        }
    }

    public PrintHelper(String str) {
        if (str == null) {
            throw new NullPointerException("Signature cannot be null!");
        }
        this.signature = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            if (getClass() == obj.getClass()) {
                return this.signature.equals(((PrintHelper) obj).signature);
            }
        }
        return null;
    }

    public final int hashCode() {
        return this.signature.hashCode();
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) throws UnsupportedEncodingException {
        messageDigest.update(this.signature.getBytes("UTF-8"));
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("StringSignature{signature='");
        stringBuilder.append(this.signature);
        stringBuilder.append('\'');
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}

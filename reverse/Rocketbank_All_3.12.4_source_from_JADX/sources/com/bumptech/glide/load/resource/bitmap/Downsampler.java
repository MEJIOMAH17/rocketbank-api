package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.ImageType;
import com.bumptech.glide.util.ByteArrayPool;
import com.bumptech.glide.util.ExceptionCatchingInputStream;
import com.bumptech.glide.util.MarkEnforcingInputStream;
import com.bumptech.glide.util.Util;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.io.InputStream;
import java.util.EnumSet;
import java.util.Queue;
import java.util.Set;

public abstract class Downsampler implements BitmapDecoder<InputStream> {
    public static final Downsampler AT_LEAST = new C13641();
    public static final Downsampler AT_MOST = new C13652();
    public static final Downsampler NONE = new C13663();
    private static final Queue<Options> OPTIONS_QUEUE = Util.createQueue(0);
    private static final Set<ImageType> TYPES_THAT_USE_POOL = EnumSet.of(ImageType.JPEG, ImageType.PNG_A, ImageType.PNG);

    /* renamed from: com.bumptech.glide.load.resource.bitmap.Downsampler$1 */
    static class C13641 extends Downsampler {
        public final String getId() {
            return "AT_LEAST.com.bumptech.glide.load.data.bitmap";
        }

        C13641() {
        }

        protected final int getSampleSize(int i, int i2, int i3, int i4) {
            return Math.min(i2 / i4, i / i3);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.Downsampler$2 */
    static class C13652 extends Downsampler {
        public final String getId() {
            return "AT_MOST.com.bumptech.glide.load.data.bitmap";
        }

        C13652() {
        }

        protected final int getSampleSize(int i, int i2, int i3, int i4) {
            i = (int) Math.ceil((double) Math.max(((float) i2) / ((float) i4), ((float) i) / ((float) i3)));
            i3 = 1;
            i2 = Math.max(1, Integer.highestOneBit(i));
            if (i2 >= i) {
                i3 = 0;
            }
            return i2 << i3;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.Downsampler$3 */
    static class C13663 extends Downsampler {
        public final String getId() {
            return "NONE.com.bumptech.glide.load.data.bitmap";
        }

        protected final int getSampleSize(int i, int i2, int i3, int i4) {
            return 0;
        }

        C13663() {
        }
    }

    protected abstract int getSampleSize(int i, int i2, int i3, int i4);

    public final Bitmap decode(InputStream inputStream, BitmapPool bitmapPool, int i, int i2, DecodeFormat decodeFormat) {
        int orientation;
        Throwable e;
        ByteArrayPool byteArrayPool;
        byte[] bArr;
        Throwable th;
        int i3;
        byte[] bArr2;
        int i4;
        int i5;
        Config config;
        ByteArrayPool byteArrayPool2;
        byte[] bArr3;
        Bitmap decodeStream;
        Bitmap bitmap;
        Matrix matrix;
        RectF rectF;
        int round;
        int round2;
        Config config2;
        Bitmap bitmap2;
        double d;
        Downsampler downsampler = this;
        BitmapPool bitmapPool2 = bitmapPool;
        ByteArrayPool byteArrayPool3 = ByteArrayPool.get();
        byte[] bytes = byteArrayPool3.getBytes();
        byte[] bytes2 = byteArrayPool3.getBytes();
        Options defaultOptions = getDefaultOptions();
        InputStream recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, bytes2);
        InputStream obtain = ExceptionCatchingInputStream.obtain(recyclableBufferedInputStream);
        InputStream markEnforcingInputStream = new MarkEnforcingInputStream(obtain);
        try {
            obtain.mark(5242880);
            try {
                orientation = new ImageHeaderParser(obtain).getOrientation();
                obtain.reset();
            } catch (Throwable e2) {
                Throwable th2 = e2;
                try {
                    if (Log.isLoggable("Downsampler", 5)) {
                        Log.w("Downsampler", "Cannot determine the image orientation from header", th2);
                    }
                    try {
                        obtain.reset();
                    } catch (Throwable e22) {
                        if (Log.isLoggable("Downsampler", 5)) {
                            Log.w("Downsampler", "Cannot reset the input stream", e22);
                        }
                    }
                    orientation = 0;
                } catch (Throwable th3) {
                    e22 = th3;
                    th = e22;
                    byteArrayPool.releaseBytes(bArr);
                    byteArrayPool.releaseBytes(bytes2);
                    obtain.release();
                    resetOptions(defaultOptions);
                    synchronized (OPTIONS_QUEUE) {
                        try {
                            OPTIONS_QUEUE.offer(defaultOptions);
                        } catch (Throwable e222) {
                            while (true) {
                                Throwable th4 = e222;
                            }
                        }
                    }
                    throw th;
                }
            }
        } catch (Throwable e2222) {
            if (Log.isLoggable("Downsampler", 5)) {
                Log.w("Downsampler", "Cannot reset the input stream", e2222);
            }
        } catch (Throwable th5) {
            e2222 = th5;
            byteArrayPool = byteArrayPool3;
            bArr = bytes;
            th = e2222;
            byteArrayPool.releaseBytes(bArr);
            byteArrayPool.releaseBytes(bytes2);
            obtain.release();
            resetOptions(defaultOptions);
            synchronized (OPTIONS_QUEUE) {
                OPTIONS_QUEUE.offer(defaultOptions);
            }
            throw th;
        }
        defaultOptions.inTempStorage = bytes;
        defaultOptions.inJustDecodeBounds = true;
        decodeStream(markEnforcingInputStream, recyclableBufferedInputStream, defaultOptions);
        defaultOptions.inJustDecodeBounds = false;
        int[] iArr = new int[]{defaultOptions.outWidth, defaultOptions.outHeight};
        int i6 = iArr[0];
        int i7 = iArr[1];
        switch (orientation) {
            case 3:
            case 4:
                i3 = 180;
                break;
            case 5:
            case 6:
                i3 = 90;
                break;
            case 7:
            case 8:
                i3 = SubsamplingScaleImageView.ORIENTATION_270;
                break;
            default:
                i3 = 0;
                break;
        }
        int i8 = i2;
        if (i8 == Integer.MIN_VALUE) {
            i8 = i;
            bArr2 = bytes2;
            i4 = i7;
        } else {
            bArr2 = bytes2;
            i4 = i8;
            i8 = i;
        }
        if (i8 == Integer.MIN_VALUE) {
            i8 = i6;
        }
        if (i3 != 90) {
            if (i3 != 270) {
                try {
                    i4 = getSampleSize(i6, i7, i8, i4);
                    if (i4 != 0) {
                        i4 = 1;
                        i5 = 0;
                    } else {
                        i5 = Integer.highestOneBit(i4);
                        i4 = 1;
                    }
                    i3 = Math.max(i4, i5);
                    config = getConfig(markEnforcingInputStream, decodeFormat);
                    defaultOptions.inSampleSize = i3;
                    defaultOptions.inPreferredConfig = config;
                    if (defaultOptions.inSampleSize != i4) {
                        if (19 <= VERSION.SDK_INT) {
                        }
                        byteArrayPool2 = byteArrayPool3;
                        bArr3 = bytes;
                        decodeStream = decodeStream(markEnforcingInputStream, recyclableBufferedInputStream, defaultOptions);
                        th = obtain.getException();
                        if (th == null) {
                            throw new RuntimeException(th);
                        }
                        bitmap = null;
                        if (decodeStream != null) {
                            matrix = new Matrix();
                            switch (orientation) {
                                case 2:
                                    matrix.setScale(-1.0f, 1.0f);
                                    break;
                                case 3:
                                    matrix.setRotate(180.0f);
                                    break;
                                case 4:
                                    matrix.setRotate(180.0f);
                                    matrix.postScale(-1.0f, 1.0f);
                                    break;
                                case 5:
                                    matrix.setRotate(90.0f);
                                    matrix.postScale(-1.0f, 1.0f);
                                    break;
                                case 6:
                                    matrix.setRotate(90.0f);
                                    break;
                                case 7:
                                    matrix.setRotate(-90.0f);
                                    matrix.postScale(-1.0f, 1.0f);
                                    break;
                                case 8:
                                    matrix.setRotate(-90.0f);
                                    break;
                                default:
                                    break;
                            }
                            if (matrix.isIdentity()) {
                                rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) decodeStream.getWidth(), (float) decodeStream.getHeight());
                                matrix.mapRect(rectF);
                                round = Math.round(rectF.width());
                                round2 = Math.round(rectF.height());
                                config2 = decodeStream.getConfig() == null ? decodeStream.getConfig() : Config.ARGB_8888;
                                bitmap2 = bitmapPool2.get(round, round2, config2);
                                if (bitmap2 == null) {
                                    bitmap2 = Bitmap.createBitmap(round, round2, config2);
                                }
                                matrix.postTranslate(-rectF.left, -rectF.top);
                                new Canvas(bitmap2).drawBitmap(decodeStream, matrix, new Paint(6));
                                bitmap = bitmap2;
                            } else {
                                bitmap = decodeStream;
                            }
                            if (!(decodeStream.equals(bitmap) || bitmapPool2.put(decodeStream))) {
                                decodeStream.recycle();
                            }
                        }
                        byteArrayPool = byteArrayPool2;
                        byteArrayPool.releaseBytes(bArr3);
                        byteArrayPool.releaseBytes(bArr2);
                        obtain.release();
                        resetOptions(defaultOptions);
                        synchronized (OPTIONS_QUEUE) {
                            try {
                                OPTIONS_QUEUE.offer(defaultOptions);
                            } catch (Throwable e22222) {
                                Throwable th6 = e22222;
                            }
                        }
                        return bitmap;
                    }
                    if (shouldUsePool(markEnforcingInputStream)) {
                        byteArrayPool2 = byteArrayPool3;
                        bArr3 = bytes;
                        d = (double) i3;
                        try {
                            decodeStream = bitmapPool2.getDirty((int) Math.ceil(((double) i6) / d), (int) Math.ceil(((double) i7) / d), config);
                            if (11 <= VERSION.SDK_INT) {
                                defaultOptions.inBitmap = decodeStream;
                            }
                            decodeStream = decodeStream(markEnforcingInputStream, recyclableBufferedInputStream, defaultOptions);
                            th = obtain.getException();
                            if (th == null) {
                                bitmap = null;
                                if (decodeStream != null) {
                                    matrix = new Matrix();
                                    switch (orientation) {
                                        case 2:
                                            matrix.setScale(-1.0f, 1.0f);
                                            break;
                                        case 3:
                                            matrix.setRotate(180.0f);
                                            break;
                                        case 4:
                                            matrix.setRotate(180.0f);
                                            matrix.postScale(-1.0f, 1.0f);
                                            break;
                                        case 5:
                                            matrix.setRotate(90.0f);
                                            matrix.postScale(-1.0f, 1.0f);
                                            break;
                                        case 6:
                                            matrix.setRotate(90.0f);
                                            break;
                                        case 7:
                                            matrix.setRotate(-90.0f);
                                            matrix.postScale(-1.0f, 1.0f);
                                            break;
                                        case 8:
                                            matrix.setRotate(-90.0f);
                                            break;
                                        default:
                                            break;
                                    }
                                    if (matrix.isIdentity()) {
                                        rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) decodeStream.getWidth(), (float) decodeStream.getHeight());
                                        matrix.mapRect(rectF);
                                        round = Math.round(rectF.width());
                                        round2 = Math.round(rectF.height());
                                        if (decodeStream.getConfig() == null) {
                                        }
                                        bitmap2 = bitmapPool2.get(round, round2, config2);
                                        if (bitmap2 == null) {
                                            bitmap2 = Bitmap.createBitmap(round, round2, config2);
                                        }
                                        matrix.postTranslate(-rectF.left, -rectF.top);
                                        new Canvas(bitmap2).drawBitmap(decodeStream, matrix, new Paint(6));
                                        bitmap = bitmap2;
                                    } else {
                                        bitmap = decodeStream;
                                    }
                                    decodeStream.recycle();
                                }
                                byteArrayPool = byteArrayPool2;
                                byteArrayPool.releaseBytes(bArr3);
                                byteArrayPool.releaseBytes(bArr2);
                                obtain.release();
                                resetOptions(defaultOptions);
                                synchronized (OPTIONS_QUEUE) {
                                    OPTIONS_QUEUE.offer(defaultOptions);
                                }
                                return bitmap;
                            }
                            throw new RuntimeException(th);
                        } catch (Throwable e222222) {
                            th = e222222;
                            bytes2 = bArr2;
                            byteArrayPool = byteArrayPool2;
                            bArr = bArr3;
                            byteArrayPool.releaseBytes(bArr);
                            byteArrayPool.releaseBytes(bytes2);
                            obtain.release();
                            resetOptions(defaultOptions);
                            synchronized (OPTIONS_QUEUE) {
                                OPTIONS_QUEUE.offer(defaultOptions);
                            }
                            throw th;
                        }
                    }
                    byteArrayPool2 = byteArrayPool3;
                    bArr3 = bytes;
                    decodeStream = decodeStream(markEnforcingInputStream, recyclableBufferedInputStream, defaultOptions);
                    th = obtain.getException();
                    if (th == null) {
                        throw new RuntimeException(th);
                    }
                    bitmap = null;
                    if (decodeStream != null) {
                        matrix = new Matrix();
                        switch (orientation) {
                            case 2:
                                matrix.setScale(-1.0f, 1.0f);
                                break;
                            case 3:
                                matrix.setRotate(180.0f);
                                break;
                            case 4:
                                matrix.setRotate(180.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 5:
                                matrix.setRotate(90.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 6:
                                matrix.setRotate(90.0f);
                                break;
                            case 7:
                                matrix.setRotate(-90.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 8:
                                matrix.setRotate(-90.0f);
                                break;
                            default:
                                break;
                        }
                        if (matrix.isIdentity()) {
                            bitmap = decodeStream;
                        } else {
                            rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) decodeStream.getWidth(), (float) decodeStream.getHeight());
                            matrix.mapRect(rectF);
                            round = Math.round(rectF.width());
                            round2 = Math.round(rectF.height());
                            if (decodeStream.getConfig() == null) {
                            }
                            bitmap2 = bitmapPool2.get(round, round2, config2);
                            if (bitmap2 == null) {
                                bitmap2 = Bitmap.createBitmap(round, round2, config2);
                            }
                            matrix.postTranslate(-rectF.left, -rectF.top);
                            new Canvas(bitmap2).drawBitmap(decodeStream, matrix, new Paint(6));
                            bitmap = bitmap2;
                        }
                        decodeStream.recycle();
                    }
                    byteArrayPool = byteArrayPool2;
                    byteArrayPool.releaseBytes(bArr3);
                    byteArrayPool.releaseBytes(bArr2);
                    obtain.release();
                    resetOptions(defaultOptions);
                    synchronized (OPTIONS_QUEUE) {
                        OPTIONS_QUEUE.offer(defaultOptions);
                    }
                    return bitmap;
                } catch (Throwable th7) {
                    e222222 = th7;
                    byteArrayPool = byteArrayPool3;
                    bArr = bytes;
                    bytes2 = bArr2;
                    th = e222222;
                    byteArrayPool.releaseBytes(bArr);
                    byteArrayPool.releaseBytes(bytes2);
                    obtain.release();
                    resetOptions(defaultOptions);
                    synchronized (OPTIONS_QUEUE) {
                        OPTIONS_QUEUE.offer(defaultOptions);
                    }
                    throw th;
                }
            }
        }
        i4 = getSampleSize(i7, i6, i8, i4);
        if (i4 != 0) {
            i5 = Integer.highestOneBit(i4);
            i4 = 1;
        } else {
            i4 = 1;
            i5 = 0;
        }
        i3 = Math.max(i4, i5);
        config = getConfig(markEnforcingInputStream, decodeFormat);
        defaultOptions.inSampleSize = i3;
        defaultOptions.inPreferredConfig = config;
        if (defaultOptions.inSampleSize != i4) {
            if (19 <= VERSION.SDK_INT) {
            }
            byteArrayPool2 = byteArrayPool3;
            bArr3 = bytes;
            decodeStream = decodeStream(markEnforcingInputStream, recyclableBufferedInputStream, defaultOptions);
            th = obtain.getException();
            if (th == null) {
                bitmap = null;
                if (decodeStream != null) {
                    matrix = new Matrix();
                    switch (orientation) {
                        case 2:
                            matrix.setScale(-1.0f, 1.0f);
                            break;
                        case 3:
                            matrix.setRotate(180.0f);
                            break;
                        case 4:
                            matrix.setRotate(180.0f);
                            matrix.postScale(-1.0f, 1.0f);
                            break;
                        case 5:
                            matrix.setRotate(90.0f);
                            matrix.postScale(-1.0f, 1.0f);
                            break;
                        case 6:
                            matrix.setRotate(90.0f);
                            break;
                        case 7:
                            matrix.setRotate(-90.0f);
                            matrix.postScale(-1.0f, 1.0f);
                            break;
                        case 8:
                            matrix.setRotate(-90.0f);
                            break;
                        default:
                            break;
                    }
                    if (matrix.isIdentity()) {
                        rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) decodeStream.getWidth(), (float) decodeStream.getHeight());
                        matrix.mapRect(rectF);
                        round = Math.round(rectF.width());
                        round2 = Math.round(rectF.height());
                        if (decodeStream.getConfig() == null) {
                        }
                        bitmap2 = bitmapPool2.get(round, round2, config2);
                        if (bitmap2 == null) {
                            bitmap2 = Bitmap.createBitmap(round, round2, config2);
                        }
                        matrix.postTranslate(-rectF.left, -rectF.top);
                        new Canvas(bitmap2).drawBitmap(decodeStream, matrix, new Paint(6));
                        bitmap = bitmap2;
                    } else {
                        bitmap = decodeStream;
                    }
                    decodeStream.recycle();
                }
                byteArrayPool = byteArrayPool2;
                byteArrayPool.releaseBytes(bArr3);
                byteArrayPool.releaseBytes(bArr2);
                obtain.release();
                resetOptions(defaultOptions);
                synchronized (OPTIONS_QUEUE) {
                    OPTIONS_QUEUE.offer(defaultOptions);
                }
                return bitmap;
            }
            throw new RuntimeException(th);
        }
        if (shouldUsePool(markEnforcingInputStream)) {
            byteArrayPool2 = byteArrayPool3;
            bArr3 = bytes;
            d = (double) i3;
            decodeStream = bitmapPool2.getDirty((int) Math.ceil(((double) i6) / d), (int) Math.ceil(((double) i7) / d), config);
            if (11 <= VERSION.SDK_INT) {
                defaultOptions.inBitmap = decodeStream;
            }
            decodeStream = decodeStream(markEnforcingInputStream, recyclableBufferedInputStream, defaultOptions);
            th = obtain.getException();
            if (th == null) {
                throw new RuntimeException(th);
            }
            bitmap = null;
            if (decodeStream != null) {
                matrix = new Matrix();
                switch (orientation) {
                    case 2:
                        matrix.setScale(-1.0f, 1.0f);
                        break;
                    case 3:
                        matrix.setRotate(180.0f);
                        break;
                    case 4:
                        matrix.setRotate(180.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 5:
                        matrix.setRotate(90.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 6:
                        matrix.setRotate(90.0f);
                        break;
                    case 7:
                        matrix.setRotate(-90.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 8:
                        matrix.setRotate(-90.0f);
                        break;
                    default:
                        break;
                }
                if (matrix.isIdentity()) {
                    bitmap = decodeStream;
                } else {
                    rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) decodeStream.getWidth(), (float) decodeStream.getHeight());
                    matrix.mapRect(rectF);
                    round = Math.round(rectF.width());
                    round2 = Math.round(rectF.height());
                    if (decodeStream.getConfig() == null) {
                    }
                    bitmap2 = bitmapPool2.get(round, round2, config2);
                    if (bitmap2 == null) {
                        bitmap2 = Bitmap.createBitmap(round, round2, config2);
                    }
                    matrix.postTranslate(-rectF.left, -rectF.top);
                    new Canvas(bitmap2).drawBitmap(decodeStream, matrix, new Paint(6));
                    bitmap = bitmap2;
                }
                decodeStream.recycle();
            }
            byteArrayPool = byteArrayPool2;
            byteArrayPool.releaseBytes(bArr3);
            byteArrayPool.releaseBytes(bArr2);
            obtain.release();
            resetOptions(defaultOptions);
            synchronized (OPTIONS_QUEUE) {
                OPTIONS_QUEUE.offer(defaultOptions);
            }
            return bitmap;
        }
        byteArrayPool2 = byteArrayPool3;
        bArr3 = bytes;
        try {
            decodeStream = decodeStream(markEnforcingInputStream, recyclableBufferedInputStream, defaultOptions);
            th = obtain.getException();
            if (th == null) {
                bitmap = null;
                if (decodeStream != null) {
                    matrix = new Matrix();
                    switch (orientation) {
                        case 2:
                            matrix.setScale(-1.0f, 1.0f);
                            break;
                        case 3:
                            matrix.setRotate(180.0f);
                            break;
                        case 4:
                            matrix.setRotate(180.0f);
                            matrix.postScale(-1.0f, 1.0f);
                            break;
                        case 5:
                            matrix.setRotate(90.0f);
                            matrix.postScale(-1.0f, 1.0f);
                            break;
                        case 6:
                            matrix.setRotate(90.0f);
                            break;
                        case 7:
                            matrix.setRotate(-90.0f);
                            matrix.postScale(-1.0f, 1.0f);
                            break;
                        case 8:
                            matrix.setRotate(-90.0f);
                            break;
                        default:
                            break;
                    }
                    if (matrix.isIdentity()) {
                        rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) decodeStream.getWidth(), (float) decodeStream.getHeight());
                        matrix.mapRect(rectF);
                        round = Math.round(rectF.width());
                        round2 = Math.round(rectF.height());
                        if (decodeStream.getConfig() == null) {
                        }
                        bitmap2 = bitmapPool2.get(round, round2, config2);
                        if (bitmap2 == null) {
                            bitmap2 = Bitmap.createBitmap(round, round2, config2);
                        }
                        matrix.postTranslate(-rectF.left, -rectF.top);
                        new Canvas(bitmap2).drawBitmap(decodeStream, matrix, new Paint(6));
                        bitmap = bitmap2;
                    } else {
                        bitmap = decodeStream;
                    }
                    decodeStream.recycle();
                }
                byteArrayPool = byteArrayPool2;
                byteArrayPool.releaseBytes(bArr3);
                byteArrayPool.releaseBytes(bArr2);
                obtain.release();
                resetOptions(defaultOptions);
                synchronized (OPTIONS_QUEUE) {
                    OPTIONS_QUEUE.offer(defaultOptions);
                }
                return bitmap;
            }
            throw new RuntimeException(th);
        } catch (Throwable th8) {
            e222222 = th8;
            bytes2 = bArr2;
            byteArrayPool = byteArrayPool2;
            bArr = bArr3;
            th = e222222;
            byteArrayPool.releaseBytes(bArr);
            byteArrayPool.releaseBytes(bytes2);
            obtain.release();
            resetOptions(defaultOptions);
            synchronized (OPTIONS_QUEUE) {
                OPTIONS_QUEUE.offer(defaultOptions);
            }
            throw th;
        }
    }

    private static boolean shouldUsePool(InputStream inputStream) {
        boolean contains;
        if (19 <= VERSION.SDK_INT) {
            return true;
        }
        inputStream.mark(1024);
        try {
            contains = TYPES_THAT_USE_POOL.contains(new ImageHeaderParser(inputStream).getType());
            return contains;
        } catch (IOException e) {
            contains = e;
            if (Log.isLoggable("Downsampler", 5)) {
                Log.w("Downsampler", "Cannot determine the image type from header", contains);
            }
            return null;
        } finally {
            try {
                inputStream.reset();
            } catch (InputStream inputStream2) {
                if (Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Cannot reset the input stream", inputStream2);
                }
            }
        }
    }

    private static Config getConfig(InputStream inputStream, DecodeFormat decodeFormat) {
        if (!(decodeFormat == DecodeFormat.ALWAYS_ARGB_8888 || decodeFormat == DecodeFormat.PREFER_ARGB_8888)) {
            if (VERSION.SDK_INT != 16) {
                boolean z = false;
                inputStream.mark(1024);
                boolean hasAlpha;
                try {
                    hasAlpha = new ImageHeaderParser(inputStream).getType().hasAlpha();
                    z = hasAlpha;
                } catch (IOException e) {
                    hasAlpha = e;
                    if (Log.isLoggable("Downsampler", 5)) {
                        Log.w("Downsampler", "Cannot determine whether the image has alpha or not from header for format ".concat(String.valueOf(decodeFormat)), hasAlpha);
                    }
                    if (z) {
                        return Config.ARGB_8888;
                    }
                    return Config.RGB_565;
                } finally {
                    try {
                        inputStream.reset();
                    } catch (InputStream inputStream2) {
                        if (Log.isLoggable("Downsampler", 5)) {
                            Log.w("Downsampler", "Cannot reset the input stream", inputStream2);
                        }
                    }
                }
                if (z) {
                    return Config.ARGB_8888;
                }
                return Config.RGB_565;
            }
        }
        return Config.ARGB_8888;
    }

    private static Bitmap decodeStream(MarkEnforcingInputStream markEnforcingInputStream, RecyclableBufferedInputStream recyclableBufferedInputStream, Options options) {
        if (options.inJustDecodeBounds) {
            markEnforcingInputStream.mark(5242880);
        } else {
            recyclableBufferedInputStream.fixMarkLimit();
        }
        recyclableBufferedInputStream = BitmapFactory.decodeStream(markEnforcingInputStream, null, options);
        try {
            if (options.inJustDecodeBounds) {
                markEnforcingInputStream.reset();
            }
        } catch (MarkEnforcingInputStream markEnforcingInputStream2) {
            if (Log.isLoggable("Downsampler", 6)) {
                StringBuilder stringBuilder = new StringBuilder("Exception loading inDecodeBounds=");
                stringBuilder.append(options.inJustDecodeBounds);
                stringBuilder.append(" sample=");
                stringBuilder.append(options.inSampleSize);
                Log.e("Downsampler", stringBuilder.toString(), markEnforcingInputStream2);
            }
        }
        return recyclableBufferedInputStream;
    }

    @TargetApi(11)
    private static synchronized Options getDefaultOptions() {
        Options options;
        synchronized (Downsampler.class) {
            synchronized (OPTIONS_QUEUE) {
                options = (Options) OPTIONS_QUEUE.poll();
            }
            if (options == null) {
                options = new Options();
                resetOptions(options);
            }
        }
        return options;
    }

    @TargetApi(11)
    private static void resetOptions(Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        if (11 <= VERSION.SDK_INT) {
            options.inBitmap = null;
            options.inMutable = true;
        }
    }
}

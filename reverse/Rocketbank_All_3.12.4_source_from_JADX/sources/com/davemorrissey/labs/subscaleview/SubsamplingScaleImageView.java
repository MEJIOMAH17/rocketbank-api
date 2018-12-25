package com.davemorrissey.labs.subscaleview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.ViewParent;
import com.davemorrissey.labs.subscaleview.decoder.CompatDecoderFactory;
import com.davemorrissey.labs.subscaleview.decoder.DecoderFactory;
import com.davemorrissey.labs.subscaleview.decoder.ImageDecoder;
import com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder;
import com.davemorrissey.labs.subscaleview.decoder.SkiaImageDecoder;
import com.davemorrissey.labs.subscaleview.decoder.SkiaImageRegionDecoder;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class SubsamplingScaleImageView extends View {
    public static final int EASE_IN_OUT_QUAD = 2;
    public static final int EASE_OUT_QUAD = 1;
    private static final int MESSAGE_LONG_CLICK = 1;
    public static final int ORIENTATION_0 = 0;
    public static final int ORIENTATION_180 = 180;
    public static final int ORIENTATION_270 = 270;
    public static final int ORIENTATION_90 = 90;
    public static final int ORIENTATION_USE_EXIF = -1;
    public static final int ORIGIN_ANIM = 1;
    public static final int ORIGIN_DOUBLE_TAP_ZOOM = 4;
    public static final int ORIGIN_FLING = 3;
    public static final int ORIGIN_TOUCH = 2;
    public static final int PAN_LIMIT_CENTER = 3;
    public static final int PAN_LIMIT_INSIDE = 1;
    public static final int PAN_LIMIT_OUTSIDE = 2;
    public static final int SCALE_TYPE_CENTER_CROP = 2;
    public static final int SCALE_TYPE_CENTER_INSIDE = 1;
    public static final int SCALE_TYPE_CUSTOM = 3;
    public static final int SCALE_TYPE_START = 4;
    private static final String TAG = "SubsamplingScaleImageView";
    public static int TILE_SIZE_AUTO = Integer.MAX_VALUE;
    private static final List<Integer> VALID_EASING_STYLES = Arrays.asList(new Integer[]{Integer.valueOf(2), Integer.valueOf(1)});
    private static final List<Integer> VALID_ORIENTATIONS = Arrays.asList(new Integer[]{Integer.valueOf(0), Integer.valueOf(90), Integer.valueOf(ORIENTATION_180), Integer.valueOf(ORIENTATION_270), Integer.valueOf(-1)});
    private static final List<Integer> VALID_PAN_LIMITS = Arrays.asList(new Integer[]{Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3)});
    private static final List<Integer> VALID_SCALE_TYPES = Arrays.asList(new Integer[]{Integer.valueOf(2), Integer.valueOf(1), Integer.valueOf(3), Integer.valueOf(4)});
    private static final List<Integer> VALID_ZOOM_STYLES = Arrays.asList(new Integer[]{Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3)});
    public static final int ZOOM_FOCUS_CENTER = 2;
    public static final int ZOOM_FOCUS_CENTER_IMMEDIATE = 3;
    public static final int ZOOM_FOCUS_FIXED = 1;
    private static Config preferredBitmapConfig;
    private Anim anim;
    private Bitmap bitmap;
    private DecoderFactory<? extends ImageDecoder> bitmapDecoderFactory;
    private boolean bitmapIsCached;
    private boolean bitmapIsPreview;
    private Paint bitmapPaint;
    private boolean debug;
    private Paint debugLinePaint;
    private Paint debugTextPaint;
    private ImageRegionDecoder decoder;
    private final ReadWriteLock decoderLock;
    private float density;
    private GestureDetector detector;
    private int doubleTapZoomDuration;
    private float doubleTapZoomScale;
    private int doubleTapZoomStyle;
    private float[] dstArray;
    private boolean eagerLoadingEnabled;
    private Executor executor;
    private int fullImageSampleSize;
    private Handler handler;
    private boolean imageLoadedSent;
    private boolean isPanning;
    private boolean isQuickScaling;
    private boolean isZooming;
    private Matrix matrix;
    private float maxScale;
    private int maxTileHeight;
    private int maxTileWidth;
    private int maxTouchCount;
    private float minScale;
    private int minimumScaleType;
    private int minimumTileDpi;
    private OnImageEventListener onImageEventListener;
    private OnLongClickListener onLongClickListener;
    private OnStateChangedListener onStateChangedListener;
    private int orientation;
    private Rect pRegion;
    private boolean panEnabled;
    private int panLimit;
    private Float pendingScale;
    private boolean quickScaleEnabled;
    private float quickScaleLastDistance;
    private boolean quickScaleMoved;
    private PointF quickScaleSCenter;
    private final float quickScaleThreshold;
    private PointF quickScaleVLastPoint;
    private PointF quickScaleVStart;
    private boolean readySent;
    private DecoderFactory<? extends ImageRegionDecoder> regionDecoderFactory;
    private int sHeight;
    private int sOrientation;
    private PointF sPendingCenter;
    private RectF sRect;
    private Rect sRegion;
    private PointF sRequestedCenter;
    private int sWidth;
    private ScaleAndTranslate satTemp;
    private float scale;
    private float scaleStart;
    private GestureDetector singleDetector;
    private float[] srcArray;
    private Paint tileBgPaint;
    private Map<Integer, List<Tile>> tileMap;
    private Uri uri;
    private PointF vCenterStart;
    private float vDistStart;
    private PointF vTranslate;
    private PointF vTranslateBefore;
    private PointF vTranslateStart;
    private boolean zoomEnabled;

    /* renamed from: com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView$1 */
    class C03411 implements Callback {
        C03411() {
        }

        public boolean handleMessage(Message message) {
            if (message.what == 1 && SubsamplingScaleImageView.this.onLongClickListener != null) {
                SubsamplingScaleImageView.this.maxTouchCount = 0;
                super.setOnLongClickListener(SubsamplingScaleImageView.this.onLongClickListener);
                SubsamplingScaleImageView.this.performLongClick();
                super.setOnLongClickListener(null);
            }
            return true;
        }
    }

    /* renamed from: com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView$3 */
    class C03433 extends SimpleOnGestureListener {
        C03433() {
        }

        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            SubsamplingScaleImageView.this.performClick();
            return true;
        }
    }

    private static class Anim {
        private long duration;
        private int easing;
        private boolean interruptible;
        private OnAnimationEventListener listener;
        private int origin;
        private PointF sCenterEnd;
        private PointF sCenterEndRequested;
        private PointF sCenterStart;
        private float scaleEnd;
        private float scaleStart;
        private long time;
        private PointF vFocusEnd;
        private PointF vFocusStart;

        private Anim() {
            this.duration = 500;
            this.interruptible = true;
            this.easing = 2;
            this.origin = 1;
            this.time = System.currentTimeMillis();
        }
    }

    public final class AnimationBuilder {
        private long duration;
        private int easing;
        private boolean interruptible;
        private OnAnimationEventListener listener;
        private int origin;
        private boolean panLimited;
        private final PointF targetSCenter;
        private final float targetScale;
        private final PointF vFocus;

        private AnimationBuilder(PointF pointF) {
            this.duration = 500;
            this.easing = 2;
            this.origin = 1;
            this.interruptible = true;
            this.panLimited = true;
            this.targetScale = SubsamplingScaleImageView.this.scale;
            this.targetSCenter = pointF;
            this.vFocus = null;
        }

        private AnimationBuilder(float f) {
            this.duration = 500;
            this.easing = 2;
            this.origin = 1;
            this.interruptible = true;
            this.panLimited = true;
            this.targetScale = f;
            this.targetSCenter = SubsamplingScaleImageView.this.getCenter();
            this.vFocus = null;
        }

        private AnimationBuilder(float f, PointF pointF) {
            this.duration = 500;
            this.easing = 2;
            this.origin = 1;
            this.interruptible = true;
            this.panLimited = true;
            this.targetScale = f;
            this.targetSCenter = pointF;
            this.vFocus = null;
        }

        private AnimationBuilder(float f, PointF pointF, PointF pointF2) {
            this.duration = 500;
            this.easing = 2;
            this.origin = 1;
            this.interruptible = true;
            this.panLimited = true;
            this.targetScale = f;
            this.targetSCenter = pointF;
            this.vFocus = pointF2;
        }

        public final AnimationBuilder withDuration(long j) {
            this.duration = j;
            return this;
        }

        public final AnimationBuilder withInterruptible(boolean z) {
            this.interruptible = z;
            return this;
        }

        public final AnimationBuilder withEasing(int i) {
            if (SubsamplingScaleImageView.VALID_EASING_STYLES.contains(Integer.valueOf(i))) {
                this.easing = i;
                return this;
            }
            throw new IllegalArgumentException("Unknown easing type: ".concat(String.valueOf(i)));
        }

        public final AnimationBuilder withOnAnimationEventListener(OnAnimationEventListener onAnimationEventListener) {
            this.listener = onAnimationEventListener;
            return this;
        }

        private AnimationBuilder withPanLimited(boolean z) {
            this.panLimited = z;
            return this;
        }

        private AnimationBuilder withOrigin(int i) {
            this.origin = i;
            return this;
        }

        public final void start() {
            if (!(SubsamplingScaleImageView.this.anim == null || SubsamplingScaleImageView.this.anim.listener == null)) {
                try {
                    SubsamplingScaleImageView.this.anim.listener.onInterruptedByNewAnim();
                } catch (Throwable e) {
                    Log.w(SubsamplingScaleImageView.TAG, "Error thrown by animation listener", e);
                }
            }
            int paddingLeft = SubsamplingScaleImageView.this.getPaddingLeft() + (((SubsamplingScaleImageView.this.getWidth() - SubsamplingScaleImageView.this.getPaddingRight()) - SubsamplingScaleImageView.this.getPaddingLeft()) / 2);
            int paddingTop = SubsamplingScaleImageView.this.getPaddingTop() + (((SubsamplingScaleImageView.this.getHeight() - SubsamplingScaleImageView.this.getPaddingBottom()) - SubsamplingScaleImageView.this.getPaddingTop()) / 2);
            float access$6500 = SubsamplingScaleImageView.this.limitedScale(this.targetScale);
            PointF access$6600 = this.panLimited ? SubsamplingScaleImageView.this.limitedSCenter(this.targetSCenter.x, this.targetSCenter.y, access$6500, new PointF()) : this.targetSCenter;
            SubsamplingScaleImageView.this.anim = new Anim();
            SubsamplingScaleImageView.this.anim.scaleStart = SubsamplingScaleImageView.this.scale;
            SubsamplingScaleImageView.this.anim.scaleEnd = access$6500;
            SubsamplingScaleImageView.this.anim.time = System.currentTimeMillis();
            SubsamplingScaleImageView.this.anim.sCenterEndRequested = access$6600;
            SubsamplingScaleImageView.this.anim.sCenterStart = SubsamplingScaleImageView.this.getCenter();
            SubsamplingScaleImageView.this.anim.sCenterEnd = access$6600;
            SubsamplingScaleImageView.this.anim.vFocusStart = SubsamplingScaleImageView.this.sourceToViewCoord(access$6600);
            SubsamplingScaleImageView.this.anim.vFocusEnd = new PointF((float) paddingLeft, (float) paddingTop);
            SubsamplingScaleImageView.this.anim.duration = this.duration;
            SubsamplingScaleImageView.this.anim.interruptible = this.interruptible;
            SubsamplingScaleImageView.this.anim.easing = this.easing;
            SubsamplingScaleImageView.this.anim.origin = this.origin;
            SubsamplingScaleImageView.this.anim.time = System.currentTimeMillis();
            SubsamplingScaleImageView.this.anim.listener = this.listener;
            if (this.vFocus != null) {
                float f = this.vFocus.x - (SubsamplingScaleImageView.this.anim.sCenterStart.x * access$6500);
                float f2 = this.vFocus.y - (SubsamplingScaleImageView.this.anim.sCenterStart.y * access$6500);
                ScaleAndTranslate scaleAndTranslate = new ScaleAndTranslate(access$6500, new PointF(f, f2));
                SubsamplingScaleImageView.this.fitToBounds(true, scaleAndTranslate);
                SubsamplingScaleImageView.this.anim.vFocusEnd = new PointF(this.vFocus.x + (scaleAndTranslate.vTranslate.x - f), this.vFocus.y + (scaleAndTranslate.vTranslate.y - f2));
            }
            SubsamplingScaleImageView.this.invalidate();
        }
    }

    private static class BitmapLoadTask extends AsyncTask<Void, Void, Integer> {
        private Bitmap bitmap;
        private final WeakReference<Context> contextRef;
        private final WeakReference<DecoderFactory<? extends ImageDecoder>> decoderFactoryRef;
        private Exception exception;
        private final boolean preview;
        private final Uri source;
        private final WeakReference<SubsamplingScaleImageView> viewRef;

        BitmapLoadTask(SubsamplingScaleImageView subsamplingScaleImageView, Context context, DecoderFactory<? extends ImageDecoder> decoderFactory, Uri uri, boolean z) {
            this.viewRef = new WeakReference(subsamplingScaleImageView);
            this.contextRef = new WeakReference(context);
            this.decoderFactoryRef = new WeakReference(decoderFactory);
            this.source = uri;
            this.preview = z;
        }

        protected Integer doInBackground(Void... voidArr) {
            try {
                voidArr = this.source.toString();
                Context context = (Context) this.contextRef.get();
                DecoderFactory decoderFactory = (DecoderFactory) this.decoderFactoryRef.get();
                SubsamplingScaleImageView subsamplingScaleImageView = (SubsamplingScaleImageView) this.viewRef.get();
                if (!(context == null || decoderFactory == null || subsamplingScaleImageView == null)) {
                    subsamplingScaleImageView.debug("BitmapLoadTask.doInBackground", new Object[0]);
                    this.bitmap = ((ImageDecoder) decoderFactory.make()).decode(context, this.source);
                    return Integer.valueOf(subsamplingScaleImageView.getExifOrientation(context, voidArr));
                }
            } catch (Void[] voidArr2) {
                Log.e(SubsamplingScaleImageView.TAG, "Failed to load bitmap", voidArr2);
                this.exception = voidArr2;
            } catch (Void[] voidArr22) {
                Log.e(SubsamplingScaleImageView.TAG, "Failed to load bitmap - OutOfMemoryError", voidArr22);
                this.exception = new RuntimeException(voidArr22);
            }
            return null;
        }

        protected void onPostExecute(Integer num) {
            SubsamplingScaleImageView subsamplingScaleImageView = (SubsamplingScaleImageView) this.viewRef.get();
            if (subsamplingScaleImageView != null) {
                if (this.bitmap == null || num == null) {
                    if (!(this.exception == null || subsamplingScaleImageView.onImageEventListener == null)) {
                        if (this.preview != null) {
                            subsamplingScaleImageView.onImageEventListener.onPreviewLoadError(this.exception);
                            return;
                        }
                        subsamplingScaleImageView.onImageEventListener.onImageLoadError(this.exception);
                    }
                } else if (this.preview) {
                    subsamplingScaleImageView.onPreviewLoaded(this.bitmap);
                } else {
                    subsamplingScaleImageView.onImageLoaded(this.bitmap, num.intValue(), false);
                }
            }
        }
    }

    public interface OnAnimationEventListener {
        void onComplete();

        void onInterruptedByNewAnim();

        void onInterruptedByUser();
    }

    public interface OnImageEventListener {
        void onImageLoadError(Exception exception);

        void onImageLoaded();

        void onPreviewLoadError(Exception exception);

        void onPreviewReleased();

        void onReady();

        void onTileLoadError(Exception exception);
    }

    public interface OnStateChangedListener {
        void onCenterChanged(PointF pointF, int i);

        void onScaleChanged(float f, int i);
    }

    private static class ScaleAndTranslate {
        private float scale;
        private PointF vTranslate;

        private ScaleAndTranslate(float f, PointF pointF) {
            this.scale = f;
            this.vTranslate = pointF;
        }
    }

    private static class Tile {
        private Bitmap bitmap;
        private Rect fileSRect;
        private boolean loading;
        private Rect sRect;
        private int sampleSize;
        private Rect vRect;
        private boolean visible;

        private Tile() {
        }
    }

    private static class TileLoadTask extends AsyncTask<Void, Void, Bitmap> {
        private final WeakReference<ImageRegionDecoder> decoderRef;
        private Exception exception;
        private final WeakReference<Tile> tileRef;
        private final WeakReference<SubsamplingScaleImageView> viewRef;

        TileLoadTask(SubsamplingScaleImageView subsamplingScaleImageView, ImageRegionDecoder imageRegionDecoder, Tile tile) {
            this.viewRef = new WeakReference(subsamplingScaleImageView);
            this.decoderRef = new WeakReference(imageRegionDecoder);
            this.tileRef = new WeakReference(tile);
            tile.loading = true;
        }

        protected Bitmap doInBackground(Void... voidArr) {
            SubsamplingScaleImageView subsamplingScaleImageView;
            try {
                subsamplingScaleImageView = (SubsamplingScaleImageView) this.viewRef.get();
                ImageRegionDecoder imageRegionDecoder = (ImageRegionDecoder) this.decoderRef.get();
                Tile tile = (Tile) this.tileRef.get();
                if (imageRegionDecoder == null || tile == null || subsamplingScaleImageView == null || !imageRegionDecoder.isReady() || !tile.visible) {
                    if (tile != null) {
                        tile.loading = false;
                    }
                    return null;
                }
                subsamplingScaleImageView.debug("TileLoadTask.doInBackground, tile.sRect=%s, tile.sampleSize=%d", tile.sRect, Integer.valueOf(tile.sampleSize));
                subsamplingScaleImageView.decoderLock.readLock().lock();
                if (imageRegionDecoder.isReady()) {
                    subsamplingScaleImageView.fileSRect(tile.sRect, tile.fileSRect);
                    if (subsamplingScaleImageView.sRegion != null) {
                        tile.fileSRect.offset(subsamplingScaleImageView.sRegion.left, subsamplingScaleImageView.sRegion.top);
                    }
                    Bitmap decodeRegion = imageRegionDecoder.decodeRegion(tile.fileSRect, tile.sampleSize);
                    subsamplingScaleImageView.decoderLock.readLock().unlock();
                    return decodeRegion;
                }
                tile.loading = false;
                subsamplingScaleImageView.decoderLock.readLock().unlock();
                return null;
            } catch (Void[] voidArr2) {
                Log.e(SubsamplingScaleImageView.TAG, "Failed to decode tile", voidArr2);
                this.exception = voidArr2;
            } catch (Void[] voidArr22) {
                Log.e(SubsamplingScaleImageView.TAG, "Failed to decode tile - OutOfMemoryError", voidArr22);
                this.exception = new RuntimeException(voidArr22);
            } catch (Throwable th) {
                subsamplingScaleImageView.decoderLock.readLock().unlock();
            }
        }

        protected void onPostExecute(Bitmap bitmap) {
            SubsamplingScaleImageView subsamplingScaleImageView = (SubsamplingScaleImageView) this.viewRef.get();
            Tile tile = (Tile) this.tileRef.get();
            if (!(subsamplingScaleImageView == null || tile == null)) {
                if (bitmap != null) {
                    tile.bitmap = bitmap;
                    tile.loading = null;
                    subsamplingScaleImageView.onTileLoaded();
                } else if (!(this.exception == null || subsamplingScaleImageView.onImageEventListener == null)) {
                    subsamplingScaleImageView.onImageEventListener.onTileLoadError(this.exception);
                }
            }
        }
    }

    private static class TilesInitTask extends AsyncTask<Void, Void, int[]> {
        private final WeakReference<Context> contextRef;
        private ImageRegionDecoder decoder;
        private final WeakReference<DecoderFactory<? extends ImageRegionDecoder>> decoderFactoryRef;
        private Exception exception;
        private final Uri source;
        private final WeakReference<SubsamplingScaleImageView> viewRef;

        TilesInitTask(SubsamplingScaleImageView subsamplingScaleImageView, Context context, DecoderFactory<? extends ImageRegionDecoder> decoderFactory, Uri uri) {
            this.viewRef = new WeakReference(subsamplingScaleImageView);
            this.contextRef = new WeakReference(context);
            this.decoderFactoryRef = new WeakReference(decoderFactory);
            this.source = uri;
        }

        protected int[] doInBackground(Void... voidArr) {
            try {
                voidArr = this.source.toString();
                Context context = (Context) this.contextRef.get();
                DecoderFactory decoderFactory = (DecoderFactory) this.decoderFactoryRef.get();
                SubsamplingScaleImageView subsamplingScaleImageView = (SubsamplingScaleImageView) this.viewRef.get();
                if (!(context == null || decoderFactory == null || subsamplingScaleImageView == null)) {
                    subsamplingScaleImageView.debug("TilesInitTask.doInBackground", new Object[0]);
                    this.decoder = (ImageRegionDecoder) decoderFactory.make();
                    Point init = this.decoder.init(context, this.source);
                    int i = init.x;
                    int i2 = init.y;
                    voidArr = subsamplingScaleImageView.getExifOrientation(context, voidArr);
                    if (subsamplingScaleImageView.sRegion != null) {
                        subsamplingScaleImageView.sRegion.left = Math.max(0, subsamplingScaleImageView.sRegion.left);
                        subsamplingScaleImageView.sRegion.top = Math.max(0, subsamplingScaleImageView.sRegion.top);
                        subsamplingScaleImageView.sRegion.right = Math.min(i, subsamplingScaleImageView.sRegion.right);
                        subsamplingScaleImageView.sRegion.bottom = Math.min(i2, subsamplingScaleImageView.sRegion.bottom);
                        i = subsamplingScaleImageView.sRegion.width();
                        i2 = subsamplingScaleImageView.sRegion.height();
                    }
                    return new int[]{i, i2, voidArr};
                }
            } catch (Void[] voidArr2) {
                Log.e(SubsamplingScaleImageView.TAG, "Failed to initialise bitmap decoder", voidArr2);
                this.exception = voidArr2;
            }
            return null;
        }

        protected void onPostExecute(int[] iArr) {
            SubsamplingScaleImageView subsamplingScaleImageView = (SubsamplingScaleImageView) this.viewRef.get();
            if (subsamplingScaleImageView != null) {
                if (this.decoder != null && iArr != null && iArr.length == 3) {
                    subsamplingScaleImageView.onTilesInited(this.decoder, iArr[0], iArr[1], iArr[2]);
                } else if (!(this.exception == null || subsamplingScaleImageView.onImageEventListener == null)) {
                    subsamplingScaleImageView.onImageEventListener.onImageLoadError(this.exception);
                }
            }
        }
    }

    public static class DefaultOnAnimationEventListener implements OnAnimationEventListener {
        public void onComplete() {
        }

        public void onInterruptedByNewAnim() {
        }

        public void onInterruptedByUser() {
        }
    }

    public static class DefaultOnImageEventListener implements OnImageEventListener {
        public void onImageLoadError(Exception exception) {
        }

        public void onImageLoaded() {
        }

        public void onPreviewLoadError(Exception exception) {
        }

        public void onPreviewReleased() {
        }

        public void onReady() {
        }

        public void onTileLoadError(Exception exception) {
        }
    }

    public static class DefaultOnStateChangedListener implements OnStateChangedListener {
        public void onCenterChanged(PointF pointF, int i) {
        }

        public void onScaleChanged(float f, int i) {
        }
    }

    private float easeInOutQuad(long j, float f, float f2, long j2) {
        float f3 = ((float) j) / (((float) j2) / 2.0f);
        if (f3 < 1.0f) {
            return (((f2 / 2.0f) * f3) * f3) + f;
        }
        f3 -= 1.0f;
        return (((-f2) / 2.0f) * ((f3 * (f3 - 2.0f)) - 1.0f)) + f;
    }

    private float easeOutQuad(long j, float f, float f2, long j2) {
        float f3 = ((float) j) / ((float) j2);
        return (((-f2) * f3) * (f3 - 2.0f)) + f;
    }

    protected void onImageLoaded() {
    }

    protected void onReady() {
    }

    public SubsamplingScaleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.orientation = 0;
        this.maxScale = 2.0f;
        this.minScale = minScale();
        this.minimumTileDpi = -1;
        this.panLimit = 1;
        this.minimumScaleType = 1;
        this.maxTileWidth = TILE_SIZE_AUTO;
        this.maxTileHeight = TILE_SIZE_AUTO;
        this.executor = AsyncTask.THREAD_POOL_EXECUTOR;
        this.eagerLoadingEnabled = true;
        this.panEnabled = true;
        this.zoomEnabled = true;
        this.quickScaleEnabled = true;
        this.doubleTapZoomScale = 1.0f;
        this.doubleTapZoomStyle = 1;
        this.doubleTapZoomDuration = 500;
        this.decoderLock = new ReentrantReadWriteLock(true);
        this.bitmapDecoderFactory = new CompatDecoderFactory(SkiaImageDecoder.class);
        this.regionDecoderFactory = new CompatDecoderFactory(SkiaImageRegionDecoder.class);
        this.srcArray = new float[8];
        this.dstArray = new float[8];
        this.density = getResources().getDisplayMetrics().density;
        setMinimumDpi(160);
        setDoubleTapZoomDpi(160);
        setMinimumTileDpi(320);
        setGestureDetector(context);
        this.handler = new Handler(new C03411());
        if (attributeSet != null) {
            attributeSet = getContext().obtainStyledAttributes(attributeSet, C0340R.styleable.SubsamplingScaleImageView);
            if (attributeSet.hasValue(C0340R.styleable.SubsamplingScaleImageView_assetName)) {
                String string = attributeSet.getString(C0340R.styleable.SubsamplingScaleImageView_assetName);
                if (string != null && string.length() > 0) {
                    setImage(ImageSource.asset(string).tilingEnabled());
                }
            }
            if (attributeSet.hasValue(C0340R.styleable.SubsamplingScaleImageView_src)) {
                int resourceId = attributeSet.getResourceId(C0340R.styleable.SubsamplingScaleImageView_src, 0);
                if (resourceId > 0) {
                    setImage(ImageSource.resource(resourceId).tilingEnabled());
                }
            }
            if (attributeSet.hasValue(C0340R.styleable.SubsamplingScaleImageView_panEnabled)) {
                setPanEnabled(attributeSet.getBoolean(C0340R.styleable.SubsamplingScaleImageView_panEnabled, true));
            }
            if (attributeSet.hasValue(C0340R.styleable.SubsamplingScaleImageView_zoomEnabled)) {
                setZoomEnabled(attributeSet.getBoolean(C0340R.styleable.SubsamplingScaleImageView_zoomEnabled, true));
            }
            if (attributeSet.hasValue(C0340R.styleable.SubsamplingScaleImageView_quickScaleEnabled)) {
                setQuickScaleEnabled(attributeSet.getBoolean(C0340R.styleable.SubsamplingScaleImageView_quickScaleEnabled, true));
            }
            if (attributeSet.hasValue(C0340R.styleable.SubsamplingScaleImageView_tileBackgroundColor)) {
                setTileBackgroundColor(attributeSet.getColor(C0340R.styleable.SubsamplingScaleImageView_tileBackgroundColor, Color.argb(0, 0, 0, 0)));
            }
            attributeSet.recycle();
        }
        this.quickScaleThreshold = TypedValue.applyDimension(1, 20.0f, context.getResources().getDisplayMetrics());
    }

    public SubsamplingScaleImageView(Context context) {
        this(context, null);
    }

    public static Config getPreferredBitmapConfig() {
        return preferredBitmapConfig;
    }

    public static void setPreferredBitmapConfig(Config config) {
        preferredBitmapConfig = config;
    }

    public final void setOrientation(int i) {
        if (VALID_ORIENTATIONS.contains(Integer.valueOf(i))) {
            this.orientation = i;
            reset(0);
            invalidate();
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Invalid orientation: ".concat(String.valueOf(i)));
    }

    public final void setImage(ImageSource imageSource) {
        setImage(imageSource, null, null);
    }

    public final void setImage(ImageSource imageSource, ImageViewState imageViewState) {
        setImage(imageSource, null, imageViewState);
    }

    public final void setImage(ImageSource imageSource, ImageSource imageSource2) {
        setImage(imageSource, imageSource2, null);
    }

    public final void setImage(ImageSource imageSource, ImageSource imageSource2, ImageViewState imageViewState) {
        if (imageSource == null) {
            throw new NullPointerException("imageSource must not be null");
        }
        reset(true);
        if (imageViewState != null) {
            restoreState(imageViewState);
        }
        if (imageSource2 != null) {
            if (imageSource.getBitmap() != null) {
                throw new IllegalArgumentException("Preview image cannot be used when a bitmap is provided for the main image");
            }
            if (imageSource.getSWidth() > null) {
                if (imageSource.getSHeight() > null) {
                    this.sWidth = imageSource.getSWidth();
                    this.sHeight = imageSource.getSHeight();
                    this.pRegion = imageSource2.getSRegion();
                    if (imageSource2.getBitmap() != null) {
                        this.bitmapIsCached = imageSource2.isCached();
                        onPreviewLoaded(imageSource2.getBitmap());
                    } else {
                        imageViewState = imageSource2.getUri();
                        if (imageViewState == null && imageSource2.getResource() != null) {
                            imageViewState = new StringBuilder("android.resource://");
                            imageViewState.append(getContext().getPackageName());
                            imageViewState.append("/");
                            imageViewState.append(imageSource2.getResource());
                            imageViewState = Uri.parse(imageViewState.toString());
                        }
                        execute(new BitmapLoadTask(this, getContext(), this.bitmapDecoderFactory, imageViewState, true));
                    }
                }
            }
            throw new IllegalArgumentException("Preview image cannot be used unless dimensions are provided for the main image");
        }
        if (imageSource.getBitmap() != null && imageSource.getSRegion() != null) {
            onImageLoaded(Bitmap.createBitmap(imageSource.getBitmap(), imageSource.getSRegion().left, imageSource.getSRegion().top, imageSource.getSRegion().width(), imageSource.getSRegion().height()), 0, false);
        } else if (imageSource.getBitmap() != null) {
            onImageLoaded(imageSource.getBitmap(), 0, imageSource.isCached());
        } else {
            this.sRegion = imageSource.getSRegion();
            this.uri = imageSource.getUri();
            if (this.uri == null && imageSource.getResource() != null) {
                imageSource2 = new StringBuilder("android.resource://");
                imageSource2.append(getContext().getPackageName());
                imageSource2.append("/");
                imageSource2.append(imageSource.getResource());
                this.uri = Uri.parse(imageSource2.toString());
            }
            if (imageSource.getTile() == null) {
                if (this.sRegion == null) {
                    execute(new BitmapLoadTask(this, getContext(), this.bitmapDecoderFactory, this.uri, false));
                    return;
                }
            }
            execute(new TilesInitTask(this, getContext(), this.regionDecoderFactory, this.uri));
        }
    }

    private void reset(boolean z) {
        debug("reset newImage=".concat(String.valueOf(z)), new Object[0]);
        this.scale = BitmapDescriptorFactory.HUE_RED;
        this.scaleStart = BitmapDescriptorFactory.HUE_RED;
        this.vTranslate = null;
        this.vTranslateStart = null;
        this.vTranslateBefore = null;
        this.pendingScale = Float.valueOf(BitmapDescriptorFactory.HUE_RED);
        this.sPendingCenter = null;
        this.sRequestedCenter = null;
        this.isZooming = false;
        this.isPanning = false;
        this.isQuickScaling = false;
        this.maxTouchCount = 0;
        this.fullImageSampleSize = 0;
        this.vCenterStart = null;
        this.vDistStart = BitmapDescriptorFactory.HUE_RED;
        this.quickScaleLastDistance = BitmapDescriptorFactory.HUE_RED;
        this.quickScaleMoved = false;
        this.quickScaleSCenter = null;
        this.quickScaleVLastPoint = null;
        this.quickScaleVStart = null;
        this.anim = null;
        this.satTemp = null;
        this.matrix = null;
        this.sRect = null;
        if (z) {
            this.uri = null;
            this.decoderLock.writeLock().lock();
            try {
                if (this.decoder) {
                    this.decoder.recycle();
                    this.decoder = null;
                }
                this.decoderLock.writeLock().unlock();
                if (this.bitmap && !this.bitmapIsCached) {
                    this.bitmap.recycle();
                }
                if (this.bitmap && this.bitmapIsCached && this.onImageEventListener) {
                    this.onImageEventListener.onPreviewReleased();
                }
                this.sWidth = 0;
                this.sHeight = 0;
                this.sOrientation = 0;
                this.sRegion = null;
                this.pRegion = null;
                this.readySent = false;
                this.imageLoadedSent = false;
                this.bitmap = null;
                this.bitmapIsPreview = false;
                this.bitmapIsCached = false;
            } catch (Throwable th) {
                this.decoderLock.writeLock().unlock();
            }
        }
        if (this.tileMap) {
            for (Entry value : this.tileMap.entrySet()) {
                for (Tile tile : (List) value.getValue()) {
                    tile.visible = false;
                    if (tile.bitmap != null) {
                        tile.bitmap.recycle();
                        tile.bitmap = null;
                    }
                }
            }
            this.tileMap = null;
        }
        setGestureDetector(getContext());
    }

    private void setGestureDetector(final Context context) {
        this.detector = new GestureDetector(context, new SimpleOnGestureListener() {
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (!SubsamplingScaleImageView.this.panEnabled || !SubsamplingScaleImageView.this.readySent || SubsamplingScaleImageView.this.vTranslate == null || motionEvent == null || motionEvent2 == null || ((Math.abs(motionEvent.getX() - motionEvent2.getX()) <= 50.0f && Math.abs(motionEvent.getY() - motionEvent2.getY()) <= 50.0f) || ((Math.abs(f) <= 500.0f && Math.abs(f2) <= 500.0f) || SubsamplingScaleImageView.this.isZooming))) {
                    return super.onFling(motionEvent, motionEvent2, f, f2);
                }
                motionEvent = new PointF(SubsamplingScaleImageView.this.vTranslate.x + (f * 0.25f), SubsamplingScaleImageView.this.vTranslate.y + (f2 * 0.25f));
                new AnimationBuilder(new PointF((((float) (SubsamplingScaleImageView.this.getWidth() / 2)) - motionEvent.x) / SubsamplingScaleImageView.this.scale, (((float) (SubsamplingScaleImageView.this.getHeight() / 2)) - motionEvent.y) / SubsamplingScaleImageView.this.scale)).withEasing(1).withPanLimited(BitmapDescriptorFactory.HUE_RED).withOrigin(4.2E-45f).start();
                return true;
            }

            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                SubsamplingScaleImageView.this.performClick();
                return true;
            }

            public boolean onDoubleTap(MotionEvent motionEvent) {
                if (!SubsamplingScaleImageView.this.zoomEnabled || !SubsamplingScaleImageView.this.readySent || SubsamplingScaleImageView.this.vTranslate == null) {
                    return super.onDoubleTapEvent(motionEvent);
                }
                SubsamplingScaleImageView.this.setGestureDetector(context);
                if (SubsamplingScaleImageView.this.quickScaleEnabled) {
                    SubsamplingScaleImageView.this.vCenterStart = new PointF(motionEvent.getX(), motionEvent.getY());
                    SubsamplingScaleImageView.this.vTranslateStart = new PointF(SubsamplingScaleImageView.this.vTranslate.x, SubsamplingScaleImageView.this.vTranslate.y);
                    SubsamplingScaleImageView.this.scaleStart = SubsamplingScaleImageView.this.scale;
                    SubsamplingScaleImageView.this.isQuickScaling = true;
                    SubsamplingScaleImageView.this.isZooming = true;
                    SubsamplingScaleImageView.this.quickScaleLastDistance = -1.0f;
                    SubsamplingScaleImageView.this.quickScaleSCenter = SubsamplingScaleImageView.this.viewToSourceCoord(SubsamplingScaleImageView.this.vCenterStart);
                    SubsamplingScaleImageView.this.quickScaleVStart = new PointF(motionEvent.getX(), motionEvent.getY());
                    SubsamplingScaleImageView.this.quickScaleVLastPoint = new PointF(SubsamplingScaleImageView.this.quickScaleSCenter.x, SubsamplingScaleImageView.this.quickScaleSCenter.y);
                    SubsamplingScaleImageView.this.quickScaleMoved = false;
                    return false;
                }
                SubsamplingScaleImageView.this.doubleTapZoom(SubsamplingScaleImageView.this.viewToSourceCoord(new PointF(motionEvent.getX(), motionEvent.getY())), new PointF(motionEvent.getX(), motionEvent.getY()));
                return true;
            }
        });
        this.singleDetector = new GestureDetector(context, new C03433());
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        debug("onSizeChanged %dx%d -> %dx%d", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i), Integer.valueOf(i2));
        i = getCenter();
        if (this.readySent != 0 && i != 0) {
            this.anim = 0;
            this.pendingScale = Float.valueOf(this.scale);
            this.sPendingCenter = i;
        }
    }

    protected void onMeasure(int i, int i2) {
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        i = MeasureSpec.getSize(i);
        i2 = MeasureSpec.getSize(i2);
        Object obj = null;
        Object obj2 = mode != 1073741824 ? 1 : null;
        if (mode2 != 1073741824) {
            obj = 1;
        }
        if (this.sWidth > 0 && this.sHeight > 0) {
            if (obj2 != null && obj != null) {
                i = sWidth();
                i2 = sHeight();
            } else if (obj != null) {
                i2 = (int) ((((double) sHeight()) / ((double) sWidth())) * ((double) i));
            } else if (obj2 != null) {
                i = (int) ((((double) sWidth()) / ((double) sHeight())) * ((double) i2));
            }
        }
        setMeasuredDimension(Math.max(i, getSuggestedMinimumWidth()), Math.max(i2, getSuggestedMinimumHeight()));
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.anim == null || this.anim.interruptible) {
            if (!(this.anim == null || this.anim.listener == null)) {
                try {
                    this.anim.listener.onInterruptedByUser();
                } catch (Throwable e) {
                    Log.w(TAG, "Error thrown by animation listener", e);
                }
            }
            this.anim = null;
            if (this.vTranslate == null) {
                if (this.singleDetector != null) {
                    this.singleDetector.onTouchEvent(motionEvent);
                }
                return true;
            } else if (this.isQuickScaling || !(this.detector == null || this.detector.onTouchEvent(motionEvent))) {
                if (this.vTranslateStart == null) {
                    this.vTranslateStart = new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                }
                if (this.vTranslateBefore == null) {
                    this.vTranslateBefore = new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                }
                if (this.vCenterStart == null) {
                    this.vCenterStart = new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                }
                float f = this.scale;
                this.vTranslateBefore.set(this.vTranslate);
                boolean onTouchEventInternal = onTouchEventInternal(motionEvent);
                sendStateChanged(f, this.vTranslateBefore, 2);
                if (!onTouchEventInternal) {
                    if (super.onTouchEvent(motionEvent) == null) {
                        return false;
                    }
                }
                return true;
            } else {
                this.isZooming = false;
                this.isPanning = false;
                this.maxTouchCount = 0;
                return true;
            }
        }
        requestDisallowInterceptTouchEvent(true);
        return true;
    }

    private boolean onTouchEventInternal(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        float distance;
        switch (motionEvent.getAction()) {
            case 0:
            case 5:
            case 261:
                this.anim = null;
                requestDisallowInterceptTouchEvent(true);
                this.maxTouchCount = Math.max(this.maxTouchCount, pointerCount);
                if (pointerCount >= 2) {
                    if (this.zoomEnabled) {
                        distance = distance(motionEvent.getX(0), motionEvent.getX(1), motionEvent.getY(0), motionEvent.getY(1));
                        this.scaleStart = this.scale;
                        this.vDistStart = distance;
                        this.vTranslateStart.set(this.vTranslate.x, this.vTranslate.y);
                        this.vCenterStart.set((motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f, (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f);
                    } else {
                        this.maxTouchCount = 0;
                    }
                    this.handler.removeMessages(1);
                } else if (!this.isQuickScaling) {
                    this.vTranslateStart.set(this.vTranslate.x, this.vTranslate.y);
                    this.vCenterStart.set(motionEvent.getX(), motionEvent.getY());
                    this.handler.sendEmptyMessageDelayed(1, 600);
                }
                return true;
            case 1:
            case 6:
            case 262:
                this.handler.removeMessages(1);
                if (this.isQuickScaling) {
                    this.isQuickScaling = false;
                    if (!this.quickScaleMoved) {
                        doubleTapZoom(this.quickScaleSCenter, this.vCenterStart);
                    }
                }
                if (this.maxTouchCount <= 0 || !(this.isZooming || this.isPanning)) {
                    if (pointerCount == 1) {
                        this.isZooming = false;
                        this.isPanning = false;
                        this.maxTouchCount = 0;
                    }
                    return true;
                }
                if (this.isZooming && pointerCount == 2) {
                    this.isPanning = true;
                    this.vTranslateStart.set(this.vTranslate.x, this.vTranslate.y);
                    if (motionEvent.getActionIndex() == 1) {
                        this.vCenterStart.set(motionEvent.getX(0), motionEvent.getY(0));
                    } else {
                        this.vCenterStart.set(motionEvent.getX(1), motionEvent.getY(1));
                    }
                }
                if (pointerCount < 3) {
                    this.isZooming = false;
                }
                if (pointerCount < 2) {
                    this.isPanning = false;
                    this.maxTouchCount = 0;
                }
                refreshRequiredTiles(true);
                return true;
            case 2:
                if (this.maxTouchCount > 0) {
                    float f;
                    if (pointerCount >= 2) {
                        distance = distance(motionEvent.getX(0), motionEvent.getX(1), motionEvent.getY(0), motionEvent.getY(1));
                        float x = (motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f;
                        float y = (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f;
                        if (this.zoomEnabled != null && (distance(this.vCenterStart.x, x, this.vCenterStart.y, y) > 1084227584 || Math.abs(distance - this.vDistStart) > 1084227584 || this.isPanning != null)) {
                            this.isZooming = true;
                            this.isPanning = true;
                            double d = (double) this.scale;
                            this.scale = Math.min(this.maxScale, (distance / this.vDistStart) * this.scaleStart);
                            if (this.scale <= minScale()) {
                                this.vDistStart = distance;
                                this.scaleStart = minScale();
                                this.vCenterStart.set(x, y);
                                this.vTranslateStart.set(this.vTranslate);
                            } else if (this.panEnabled != null) {
                                f = (this.vCenterStart.y - this.vTranslateStart.y) * (this.scale / this.scaleStart);
                                this.vTranslate.x = x - ((this.vCenterStart.x - this.vTranslateStart.x) * (this.scale / this.scaleStart));
                                this.vTranslate.y = y - f;
                                if ((((double) sHeight()) * d < ((double) getHeight()) && this.scale * ((float) sHeight()) >= ((float) getHeight())) || (d * ((double) sWidth()) < ((double) getWidth()) && this.scale * ((float) sWidth()) >= ((float) getWidth()))) {
                                    fitToBounds(true);
                                    this.vCenterStart.set(x, y);
                                    this.vTranslateStart.set(this.vTranslate);
                                    this.scaleStart = this.scale;
                                    this.vDistStart = distance;
                                }
                            } else if (this.sRequestedCenter != null) {
                                this.vTranslate.x = ((float) (getWidth() / 2)) - (this.scale * this.sRequestedCenter.x);
                                this.vTranslate.y = ((float) (getHeight() / 2)) - (this.scale * this.sRequestedCenter.y);
                            } else {
                                this.vTranslate.x = ((float) (getWidth() / 2)) - (this.scale * ((float) (sWidth() / 2)));
                                this.vTranslate.y = ((float) (getHeight() / 2)) - (this.scale * ((float) (sHeight() / 2)));
                            }
                            fitToBounds(true);
                            refreshRequiredTiles(this.eagerLoadingEnabled);
                        }
                    } else if (this.isQuickScaling) {
                        distance = (Math.abs(this.quickScaleVStart.y - motionEvent.getY()) * 2.0f) + this.quickScaleThreshold;
                        if (this.quickScaleLastDistance == -1.0f) {
                            this.quickScaleLastDistance = distance;
                        }
                        r1 = motionEvent.getY() > this.quickScaleVLastPoint.y;
                        this.quickScaleVLastPoint.set(BitmapDescriptorFactory.HUE_RED, motionEvent.getY());
                        r2 = 1.0f;
                        motionEvent = Math.abs(1065353216 - (distance / this.quickScaleLastDistance)) * 0.5f;
                        if (motionEvent > 0.03f || this.quickScaleMoved) {
                            this.quickScaleMoved = true;
                            if (this.quickScaleLastDistance > BitmapDescriptorFactory.HUE_RED) {
                                r2 = r1 ? motionEvent + 1065353216 : 1.0f - motionEvent;
                            }
                            double d2 = (double) this.scale;
                            this.scale = Math.max(minScale(), Math.min(this.maxScale, this.scale * r2));
                            if (this.panEnabled != null) {
                                r1 = (this.vCenterStart.y - this.vTranslateStart.y) * (this.scale / this.scaleStart);
                                this.vTranslate.x = this.vCenterStart.x - ((this.vCenterStart.x - this.vTranslateStart.x) * (this.scale / this.scaleStart));
                                this.vTranslate.y = this.vCenterStart.y - r1;
                                if ((((double) sHeight()) * d2 < ((double) getHeight()) && this.scale * ((float) sHeight()) >= ((float) getHeight())) || (d2 * ((double) sWidth()) < ((double) getWidth()) && this.scale * ((float) sWidth()) >= ((float) getWidth()))) {
                                    fitToBounds(true);
                                    this.vCenterStart.set(sourceToViewCoord(this.quickScaleSCenter));
                                    this.vTranslateStart.set(this.vTranslate);
                                    this.scaleStart = this.scale;
                                    distance = BitmapDescriptorFactory.HUE_RED;
                                }
                            } else if (this.sRequestedCenter != null) {
                                this.vTranslate.x = ((float) (getWidth() / 2)) - (this.scale * this.sRequestedCenter.x);
                                this.vTranslate.y = ((float) (getHeight() / 2)) - (this.scale * this.sRequestedCenter.y);
                            } else {
                                this.vTranslate.x = ((float) (getWidth() / 2)) - (this.scale * ((float) (sWidth() / 2)));
                                this.vTranslate.y = ((float) (getHeight() / 2)) - (this.scale * ((float) (sHeight() / 2)));
                            }
                        }
                        this.quickScaleLastDistance = distance;
                        fitToBounds(true);
                        refreshRequiredTiles(this.eagerLoadingEnabled);
                    } else if (!this.isZooming) {
                        distance = Math.abs(motionEvent.getX() - this.vCenterStart.x);
                        r2 = Math.abs(motionEvent.getY() - this.vCenterStart.y);
                        f = this.density * 5.0f;
                        if (distance > f || r2 > f || this.isPanning) {
                            this.vTranslate.x = this.vTranslateStart.x + (motionEvent.getX() - this.vCenterStart.x);
                            this.vTranslate.y = this.vTranslateStart.y + (motionEvent.getY() - this.vCenterStart.y);
                            motionEvent = this.vTranslate.x;
                            r1 = this.vTranslate.y;
                            fitToBounds(true);
                            motionEvent = motionEvent != this.vTranslate.x ? 1 : null;
                            boolean z = r1 != this.vTranslate.y;
                            boolean z2 = (motionEvent == null || distance <= r2 || this.isPanning) ? false : true;
                            boolean z3 = z && r2 > distance && !this.isPanning;
                            r1 = r1 == this.vTranslate.y && r2 > 3.0f * f;
                            if (!z2 && !z3 && (motionEvent == null || !z || r1 || this.isPanning != null)) {
                                this.isPanning = true;
                            } else if (distance > f || r2 > f) {
                                this.maxTouchCount = 0;
                                this.handler.removeMessages(1);
                                requestDisallowInterceptTouchEvent(false);
                            }
                            if (this.panEnabled == null) {
                                this.vTranslate.x = this.vTranslateStart.x;
                                this.vTranslate.y = this.vTranslateStart.y;
                                requestDisallowInterceptTouchEvent(false);
                            }
                            refreshRequiredTiles(this.eagerLoadingEnabled);
                        }
                    }
                    motionEvent = 1;
                    if (motionEvent != null) {
                        this.handler.removeMessages(1);
                        invalidate();
                        return true;
                    }
                }
                motionEvent = null;
                if (motionEvent != null) {
                    this.handler.removeMessages(1);
                    invalidate();
                    return true;
                }
                break;
            default:
                break;
        }
        return false;
    }

    private void requestDisallowInterceptTouchEvent(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private void doubleTapZoom(PointF pointF, PointF pointF2) {
        boolean z;
        float minScale;
        if (!this.panEnabled) {
            if (this.sRequestedCenter != null) {
                pointF.x = this.sRequestedCenter.x;
                pointF.y = this.sRequestedCenter.y;
            } else {
                pointF.x = (float) (sWidth() / 2);
                pointF.y = (float) (sHeight() / 2);
            }
        }
        float min = Math.min(this.maxScale, this.doubleTapZoomScale);
        if (((double) this.scale) > ((double) min) * 0.9d) {
            if (this.scale != this.minScale) {
                z = false;
                if (z) {
                    minScale = minScale();
                } else {
                    minScale = min;
                }
                if (this.doubleTapZoomStyle == 3) {
                    setScaleAndCenter(minScale, pointF);
                } else {
                    if (this.doubleTapZoomStyle != 2 && z) {
                        if (this.panEnabled) {
                            if (this.doubleTapZoomStyle == 1) {
                                new AnimationBuilder(min, pointF, pointF2).withInterruptible(false).withDuration((long) this.doubleTapZoomDuration).withOrigin(4).start();
                            }
                        }
                    }
                    new AnimationBuilder(minScale, pointF).withInterruptible(false).withDuration((long) this.doubleTapZoomDuration).withOrigin(4).start();
                }
                invalidate();
            }
        }
        z = true;
        if (z) {
            minScale = minScale();
        } else {
            minScale = min;
        }
        if (this.doubleTapZoomStyle == 3) {
            setScaleAndCenter(minScale, pointF);
        } else if (this.panEnabled) {
            new AnimationBuilder(minScale, pointF).withInterruptible(false).withDuration((long) this.doubleTapZoomDuration).withOrigin(4).start();
        } else if (this.doubleTapZoomStyle == 1) {
            new AnimationBuilder(min, pointF, pointF2).withInterruptible(false).withDuration((long) this.doubleTapZoomDuration).withOrigin(4).start();
        }
        invalidate();
    }

    protected void onDraw(Canvas canvas) {
        Canvas canvas2 = canvas;
        super.onDraw(canvas);
        createPaints();
        if (!(this.sWidth == 0 || r11.sHeight == 0 || getWidth() == 0)) {
            if (getHeight() != 0) {
                if (r11.tileMap == null && r11.decoder != null) {
                    initialiseBaseLayer(getMaxBitmapDimensions(canvas));
                }
                if (checkReady()) {
                    float ease;
                    int i;
                    StringBuilder stringBuilder;
                    preDraw();
                    if (!(r11.anim == null || r11.anim.vFocusStart == null)) {
                        boolean z;
                        float f = r11.scale;
                        if (r11.vTranslateBefore == null) {
                            r11.vTranslateBefore = new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                        }
                        r11.vTranslateBefore.set(r11.vTranslate);
                        long currentTimeMillis = System.currentTimeMillis() - r11.anim.time;
                        boolean z2 = currentTimeMillis > r11.anim.duration;
                        long min = Math.min(currentTimeMillis, r11.anim.duration);
                        r11.scale = ease(r11.anim.easing, min, r11.anim.scaleStart, r11.anim.scaleEnd - r11.anim.scaleStart, r11.anim.duration);
                        float ease2 = ease(r11.anim.easing, min, r11.anim.vFocusStart.x, r11.anim.vFocusEnd.x - r11.anim.vFocusStart.x, r11.anim.duration);
                        ease = ease(r11.anim.easing, min, r11.anim.vFocusStart.y, r11.anim.vFocusEnd.y - r11.anim.vFocusStart.y, r11.anim.duration);
                        PointF pointF = r11.vTranslate;
                        pointF.x -= sourceToViewX(r11.anim.sCenterEnd.x) - ease2;
                        pointF = r11.vTranslate;
                        pointF.y -= sourceToViewY(r11.anim.sCenterEnd.y) - ease;
                        if (!z2) {
                            if (r11.anim.scaleStart != r11.anim.scaleEnd) {
                                z = false;
                                fitToBounds(z);
                                sendStateChanged(f, r11.vTranslateBefore, r11.anim.origin);
                                refreshRequiredTiles(z2);
                                if (z2) {
                                    if (r11.anim.listener != null) {
                                        try {
                                            r11.anim.listener.onComplete();
                                        } catch (Throwable e) {
                                            Log.w(TAG, "Error thrown by animation listener", e);
                                        }
                                    }
                                    r11.anim = null;
                                }
                                invalidate();
                            }
                        }
                        z = true;
                        fitToBounds(z);
                        sendStateChanged(f, r11.vTranslateBefore, r11.anim.origin);
                        refreshRequiredTiles(z2);
                        if (z2) {
                            if (r11.anim.listener != null) {
                                r11.anim.listener.onComplete();
                            }
                            r11.anim = null;
                        }
                        invalidate();
                    }
                    int i2 = 35;
                    if (r11.tileMap == null || !isBaseLayerReady()) {
                        i = 35;
                        if (r11.bitmap != null) {
                            ease = r11.scale;
                            float f2 = r11.scale;
                            if (r11.bitmapIsPreview) {
                                ease = r11.scale * (((float) r11.sWidth) / ((float) r11.bitmap.getWidth()));
                                f2 = r11.scale * (((float) r11.sHeight) / ((float) r11.bitmap.getHeight()));
                            }
                            if (r11.matrix == null) {
                                r11.matrix = new Matrix();
                            }
                            r11.matrix.reset();
                            r11.matrix.postScale(ease, f2);
                            r11.matrix.postRotate((float) getRequiredRotation());
                            r11.matrix.postTranslate(r11.vTranslate.x, r11.vTranslate.y);
                            if (getRequiredRotation() == ORIENTATION_180) {
                                r11.matrix.postTranslate(r11.scale * ((float) r11.sWidth), r11.scale * ((float) r11.sHeight));
                            } else if (getRequiredRotation() == 90) {
                                r11.matrix.postTranslate(r11.scale * ((float) r11.sHeight), BitmapDescriptorFactory.HUE_RED);
                            } else if (getRequiredRotation() == ORIENTATION_270) {
                                r11.matrix.postTranslate(BitmapDescriptorFactory.HUE_RED, r11.scale * ((float) r11.sWidth));
                            }
                            if (r11.tileBgPaint != null) {
                                if (r11.sRect == null) {
                                    r11.sRect = new RectF();
                                }
                                r11.sRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) (r11.bitmapIsPreview ? r11.bitmap.getWidth() : r11.sWidth), (float) (r11.bitmapIsPreview ? r11.bitmap.getHeight() : r11.sHeight));
                                r11.matrix.mapRect(r11.sRect);
                                canvas2.drawRect(r11.sRect, r11.tileBgPaint);
                            }
                            canvas2.drawBitmap(r11.bitmap, r11.matrix, r11.bitmapPaint);
                        }
                    } else {
                        int min2 = Math.min(r11.fullImageSampleSize, calculateInSampleSize(r11.scale));
                        Object obj = null;
                        for (Entry entry : r11.tileMap.entrySet()) {
                            if (((Integer) entry.getKey()).intValue() == min2) {
                                for (Tile tile : (List) entry.getValue()) {
                                    if (tile.visible && (tile.loading || tile.bitmap == null)) {
                                        obj = 1;
                                    }
                                }
                            }
                        }
                        Iterator it = r11.tileMap.entrySet().iterator();
                        while (it.hasNext()) {
                            Entry entry2 = (Entry) it.next();
                            if (((Integer) entry2.getKey()).intValue() != min2) {
                                if (obj != null) {
                                }
                                i2 = i2;
                                it = it;
                                min2 = min2;
                            }
                            Iterator it2;
                            for (Iterator it3 = ((List) entry2.getValue()).iterator(); it3.hasNext(); it3 = it2) {
                                Tile tile2;
                                Iterator it4;
                                int i3;
                                Tile tile3 = (Tile) it3.next();
                                sourceToViewRect(tile3.sRect, tile3.vRect);
                                if (tile3.loading || tile3.bitmap == null) {
                                    tile2 = tile3;
                                    it2 = it3;
                                    it4 = it;
                                    i3 = min2;
                                    if (tile2.loading && r11.debug) {
                                        i = 35;
                                        canvas2.drawText("LOADING", (float) (tile2.vRect.left + px(5)), (float) (tile2.vRect.top + px(35)), r11.debugTextPaint);
                                        if (tile2.visible && r11.debug) {
                                            stringBuilder = new StringBuilder("ISS ");
                                            stringBuilder.append(tile2.sampleSize);
                                            stringBuilder.append(" RECT ");
                                            stringBuilder.append(tile2.sRect.top);
                                            stringBuilder.append(",");
                                            stringBuilder.append(tile2.sRect.left);
                                            stringBuilder.append(",");
                                            stringBuilder.append(tile2.sRect.bottom);
                                            stringBuilder.append(",");
                                            stringBuilder.append(tile2.sRect.right);
                                            canvas2.drawText(stringBuilder.toString(), (float) (tile2.vRect.left + px(5)), (float) (tile2.vRect.top + px(15)), r11.debugTextPaint);
                                        }
                                        i2 = i;
                                        it = it4;
                                        min2 = i3;
                                    }
                                } else {
                                    if (r11.tileBgPaint != null) {
                                        canvas2.drawRect(tile3.vRect, r11.tileBgPaint);
                                    }
                                    if (r11.matrix == null) {
                                        r11.matrix = new Matrix();
                                    }
                                    r11.matrix.reset();
                                    tile2 = tile3;
                                    it2 = it3;
                                    it4 = it;
                                    i3 = min2;
                                    setMatrixArray(r11.srcArray, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) tile3.bitmap.getWidth(), BitmapDescriptorFactory.HUE_RED, (float) tile3.bitmap.getWidth(), (float) tile3.bitmap.getHeight(), BitmapDescriptorFactory.HUE_RED, (float) tile3.bitmap.getHeight());
                                    if (getRequiredRotation() == 0) {
                                        setMatrixArray(r11.dstArray, (float) tile2.vRect.left, (float) tile2.vRect.top, (float) tile2.vRect.right, (float) tile2.vRect.top, (float) tile2.vRect.right, (float) tile2.vRect.bottom, (float) tile2.vRect.left, (float) tile2.vRect.bottom);
                                    } else if (getRequiredRotation() == 90) {
                                        setMatrixArray(r11.dstArray, (float) tile2.vRect.right, (float) tile2.vRect.top, (float) tile2.vRect.right, (float) tile2.vRect.bottom, (float) tile2.vRect.left, (float) tile2.vRect.bottom, (float) tile2.vRect.left, (float) tile2.vRect.top);
                                    } else if (getRequiredRotation() == ORIENTATION_180) {
                                        setMatrixArray(r11.dstArray, (float) tile2.vRect.right, (float) tile2.vRect.bottom, (float) tile2.vRect.left, (float) tile2.vRect.bottom, (float) tile2.vRect.left, (float) tile2.vRect.top, (float) tile2.vRect.right, (float) tile2.vRect.top);
                                    } else if (getRequiredRotation() == ORIENTATION_270) {
                                        setMatrixArray(r11.dstArray, (float) tile2.vRect.left, (float) tile2.vRect.bottom, (float) tile2.vRect.left, (float) tile2.vRect.top, (float) tile2.vRect.right, (float) tile2.vRect.top, (float) tile2.vRect.right, (float) tile2.vRect.bottom);
                                    }
                                    r11.matrix.setPolyToPoly(r11.srcArray, 0, r11.dstArray, 0, 4);
                                    canvas2.drawBitmap(tile2.bitmap, r11.matrix, r11.bitmapPaint);
                                    if (r11.debug) {
                                        canvas2.drawRect(tile2.vRect, r11.debugLinePaint);
                                    }
                                }
                                i = 35;
                                stringBuilder = new StringBuilder("ISS ");
                                stringBuilder.append(tile2.sampleSize);
                                stringBuilder.append(" RECT ");
                                stringBuilder.append(tile2.sRect.top);
                                stringBuilder.append(",");
                                stringBuilder.append(tile2.sRect.left);
                                stringBuilder.append(",");
                                stringBuilder.append(tile2.sRect.bottom);
                                stringBuilder.append(",");
                                stringBuilder.append(tile2.sRect.right);
                                canvas2.drawText(stringBuilder.toString(), (float) (tile2.vRect.left + px(5)), (float) (tile2.vRect.top + px(15)), r11.debugTextPaint);
                                i2 = i;
                                it = it4;
                                min2 = i3;
                            }
                            i2 = i2;
                            it = it;
                            min2 = min2;
                        }
                        i = i2;
                    }
                    if (r11.debug) {
                        stringBuilder = new StringBuilder("Scale: ");
                        stringBuilder.append(String.format(Locale.ENGLISH, "%.2f", new Object[]{Float.valueOf(r11.scale)}));
                        stringBuilder.append(" (");
                        stringBuilder.append(String.format(Locale.ENGLISH, "%.2f", new Object[]{Float.valueOf(minScale())}));
                        stringBuilder.append(" - ");
                        stringBuilder.append(String.format(Locale.ENGLISH, "%.2f", new Object[]{Float.valueOf(r11.maxScale)}));
                        stringBuilder.append(")");
                        canvas2.drawText(stringBuilder.toString(), (float) px(5), (float) px(15), r11.debugTextPaint);
                        stringBuilder = new StringBuilder("Translate: ");
                        stringBuilder.append(String.format(Locale.ENGLISH, "%.2f", new Object[]{Float.valueOf(r11.vTranslate.x)}));
                        stringBuilder.append(":");
                        stringBuilder.append(String.format(Locale.ENGLISH, "%.2f", new Object[]{Float.valueOf(r11.vTranslate.y)}));
                        canvas2.drawText(stringBuilder.toString(), (float) px(5), (float) px(30), r11.debugTextPaint);
                        PointF center = getCenter();
                        StringBuilder stringBuilder2 = new StringBuilder("Source center: ");
                        stringBuilder2.append(String.format(Locale.ENGLISH, "%.2f", new Object[]{Float.valueOf(center.x)}));
                        stringBuilder2.append(":");
                        stringBuilder2.append(String.format(Locale.ENGLISH, "%.2f", new Object[]{Float.valueOf(center.y)}));
                        canvas2.drawText(stringBuilder2.toString(), (float) px(5), (float) px(45), r11.debugTextPaint);
                        if (r11.anim != null) {
                            center = sourceToViewCoord(r11.anim.sCenterStart);
                            PointF sourceToViewCoord = sourceToViewCoord(r11.anim.sCenterEndRequested);
                            PointF sourceToViewCoord2 = sourceToViewCoord(r11.anim.sCenterEnd);
                            canvas2.drawCircle(center.x, center.y, (float) px(10), r11.debugLinePaint);
                            r11.debugLinePaint.setColor(-65536);
                            canvas2.drawCircle(sourceToViewCoord.x, sourceToViewCoord.y, (float) px(20), r11.debugLinePaint);
                            r11.debugLinePaint.setColor(-16776961);
                            canvas2.drawCircle(sourceToViewCoord2.x, sourceToViewCoord2.y, (float) px(25), r11.debugLinePaint);
                            r11.debugLinePaint.setColor(-16711681);
                            canvas2.drawCircle((float) (getWidth() / 2), (float) (getHeight() / 2), (float) px(30), r11.debugLinePaint);
                        }
                        if (r11.vCenterStart != null) {
                            r11.debugLinePaint.setColor(-65536);
                            canvas2.drawCircle(r11.vCenterStart.x, r11.vCenterStart.y, (float) px(20), r11.debugLinePaint);
                        }
                        if (r11.quickScaleSCenter != null) {
                            r11.debugLinePaint.setColor(-16776961);
                            canvas2.drawCircle(sourceToViewX(r11.quickScaleSCenter.x), sourceToViewY(r11.quickScaleSCenter.y), (float) px(i), r11.debugLinePaint);
                        }
                        if (r11.quickScaleVStart != null && r11.isQuickScaling) {
                            r11.debugLinePaint.setColor(-16711681);
                            canvas2.drawCircle(r11.quickScaleVStart.x, r11.quickScaleVStart.y, (float) px(30), r11.debugLinePaint);
                        }
                        r11.debugLinePaint.setColor(-65281);
                    }
                }
            }
        }
    }

    private void setMatrixArray(float[] fArr, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        fArr[0] = f;
        fArr[1] = f2;
        fArr[2] = f3;
        fArr[3] = f4;
        fArr[4] = f5;
        fArr[5] = f6;
        fArr[6] = f7;
        fArr[7] = f8;
    }

    private boolean isBaseLayerReady() {
        boolean z = true;
        if (this.bitmap != null && !this.bitmapIsPreview) {
            return true;
        }
        if (this.tileMap == null) {
            return false;
        }
        for (Entry entry : this.tileMap.entrySet()) {
            if (((Integer) entry.getKey()).intValue() == this.fullImageSampleSize) {
                for (Tile tile : (List) entry.getValue()) {
                    if (tile.loading || tile.bitmap == null) {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    private boolean checkReady() {
        boolean z = getWidth() > 0 && getHeight() > 0 && this.sWidth > 0 && this.sHeight > 0 && (this.bitmap != null || isBaseLayerReady());
        if (!this.readySent && z) {
            preDraw();
            this.readySent = true;
            onReady();
            if (this.onImageEventListener != null) {
                this.onImageEventListener.onReady();
            }
        }
        return z;
    }

    private boolean checkImageLoaded() {
        boolean isBaseLayerReady = isBaseLayerReady();
        if (!this.imageLoadedSent && isBaseLayerReady) {
            preDraw();
            this.imageLoadedSent = true;
            onImageLoaded();
            if (this.onImageEventListener != null) {
                this.onImageEventListener.onImageLoaded();
            }
        }
        return isBaseLayerReady;
    }

    private void createPaints() {
        if (this.bitmapPaint == null) {
            this.bitmapPaint = new Paint();
            this.bitmapPaint.setAntiAlias(true);
            this.bitmapPaint.setFilterBitmap(true);
            this.bitmapPaint.setDither(true);
        }
        if ((this.debugTextPaint == null || this.debugLinePaint == null) && this.debug) {
            this.debugTextPaint = new Paint();
            this.debugTextPaint.setTextSize((float) px(12));
            this.debugTextPaint.setColor(-65281);
            this.debugTextPaint.setStyle(Style.FILL);
            this.debugLinePaint = new Paint();
            this.debugLinePaint.setColor(-65281);
            this.debugLinePaint.setStyle(Style.STROKE);
            this.debugLinePaint.setStrokeWidth((float) px(1));
        }
    }

    private synchronized void initialiseBaseLayer(Point point) {
        debug("initialiseBaseLayer maxTileDimensions=%dx%d", Integer.valueOf(point.x), Integer.valueOf(point.y));
        this.satTemp = new ScaleAndTranslate(BitmapDescriptorFactory.HUE_RED, new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        fitToBounds(true, this.satTemp);
        this.fullImageSampleSize = calculateInSampleSize(this.satTemp.scale);
        if (this.fullImageSampleSize > 1) {
            this.fullImageSampleSize /= 2;
        }
        if (this.fullImageSampleSize != 1 || this.sRegion != null || sWidth() >= point.x || sHeight() >= point.y) {
            initialiseTileMap(point);
            for (Tile tileLoadTask : (List) this.tileMap.get(Integer.valueOf(this.fullImageSampleSize))) {
                execute(new TileLoadTask(this, this.decoder, tileLoadTask));
            }
            refreshRequiredTiles(true);
            return;
        }
        this.decoder.recycle();
        this.decoder = null;
        execute(new BitmapLoadTask(this, getContext(), this.bitmapDecoderFactory, this.uri, false));
    }

    private void refreshRequiredTiles(boolean z) {
        if (this.decoder != null) {
            if (this.tileMap != null) {
                int min = Math.min(this.fullImageSampleSize, calculateInSampleSize(this.scale));
                for (Entry value : this.tileMap.entrySet()) {
                    for (Tile tile : (List) value.getValue()) {
                        if (tile.sampleSize < min || (tile.sampleSize > min && tile.sampleSize != this.fullImageSampleSize)) {
                            tile.visible = false;
                            if (tile.bitmap != null) {
                                tile.bitmap.recycle();
                                tile.bitmap = null;
                            }
                        }
                        if (tile.sampleSize == min) {
                            if (tileVisible(tile)) {
                                tile.visible = true;
                                if (!tile.loading && tile.bitmap == null && z) {
                                    execute(new TileLoadTask(this, this.decoder, tile));
                                }
                            } else if (tile.sampleSize != this.fullImageSampleSize) {
                                tile.visible = false;
                                if (tile.bitmap != null) {
                                    tile.bitmap.recycle();
                                    tile.bitmap = null;
                                }
                            }
                        } else if (tile.sampleSize == this.fullImageSampleSize) {
                            tile.visible = true;
                        }
                    }
                }
            }
        }
    }

    private boolean tileVisible(Tile tile) {
        return (viewToSourceX(BitmapDescriptorFactory.HUE_RED) > ((float) tile.sRect.right) || ((float) tile.sRect.left) > viewToSourceX((float) getWidth()) || viewToSourceY(BitmapDescriptorFactory.HUE_RED) > ((float) tile.sRect.bottom) || ((float) tile.sRect.top) > viewToSourceY((float) getHeight())) ? null : true;
    }

    private void preDraw() {
        if (!(getWidth() == 0 || getHeight() == 0 || this.sWidth <= 0)) {
            if (this.sHeight > 0) {
                if (!(this.sPendingCenter == null || this.pendingScale == null)) {
                    this.scale = this.pendingScale.floatValue();
                    if (this.vTranslate == null) {
                        this.vTranslate = new PointF();
                    }
                    this.vTranslate.x = ((float) (getWidth() / 2)) - (this.scale * this.sPendingCenter.x);
                    this.vTranslate.y = ((float) (getHeight() / 2)) - (this.scale * this.sPendingCenter.y);
                    this.sPendingCenter = null;
                    this.pendingScale = null;
                    fitToBounds(true);
                    refreshRequiredTiles(true);
                }
                fitToBounds(false);
            }
        }
    }

    private int calculateInSampleSize(float f) {
        if (this.minimumTileDpi > 0) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            f *= ((float) this.minimumTileDpi) / ((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f);
        }
        int sWidth = (int) (((float) sWidth()) * f);
        int sHeight = (int) (((float) sHeight()) * f);
        if (sWidth != 0) {
            if (sHeight != 0) {
                int i = 1;
                if (sHeight() <= sHeight) {
                    if (sWidth() <= sWidth) {
                        sHeight = 1;
                        while (true) {
                            sWidth = i << 1;
                            if (sWidth < sHeight) {
                                return i;
                            }
                            i = sWidth;
                        }
                    }
                }
                sHeight = Math.round(((float) sHeight()) / ((float) sHeight));
                sWidth = Math.round(((float) sWidth()) / ((float) sWidth));
                if (sHeight >= sWidth) {
                    sHeight = sWidth;
                }
                while (true) {
                    sWidth = i << 1;
                    if (sWidth < sHeight) {
                        return i;
                    }
                    i = sWidth;
                }
            }
        }
        return 32;
    }

    private void fitToBounds(boolean z, ScaleAndTranslate scaleAndTranslate) {
        float f;
        float max;
        if (this.panLimit == 2 && isReady()) {
            z = false;
        }
        PointF access$4800 = scaleAndTranslate.vTranslate;
        float limitedScale = limitedScale(scaleAndTranslate.scale);
        float sWidth = ((float) sWidth()) * limitedScale;
        float sHeight = ((float) sHeight()) * limitedScale;
        if (this.panLimit == 3 && isReady()) {
            access$4800.x = Math.max(access$4800.x, ((float) (getWidth() / 2)) - sWidth);
            access$4800.y = Math.max(access$4800.y, ((float) (getHeight() / 2)) - sHeight);
        } else if (z) {
            access$4800.x = Math.max(access$4800.x, ((float) getWidth()) - sWidth);
            access$4800.y = Math.max(access$4800.y, ((float) getHeight()) - sHeight);
        } else {
            access$4800.x = Math.max(access$4800.x, -sWidth);
            access$4800.y = Math.max(access$4800.y, -sHeight);
        }
        float f2 = 0.5f;
        if (getPaddingLeft() <= 0) {
            if (getPaddingRight() <= 0) {
                f = 0.5f;
                if (getPaddingTop() > 0 || getPaddingBottom() > 0) {
                    f2 = ((float) getPaddingTop()) / ((float) (getPaddingTop() + getPaddingBottom()));
                }
                if (this.panLimit != 3 && isReady()) {
                    z = (float) Math.max(0, getWidth() / true);
                    max = (float) Math.max(0, getHeight() / 2);
                } else if (z) {
                    z = (float) Math.max(0, getWidth());
                    max = (float) Math.max(0, getHeight());
                } else {
                    z = Math.max(BitmapDescriptorFactory.HUE_RED, (((float) getWidth()) - sWidth) * f);
                    max = Math.max(BitmapDescriptorFactory.HUE_RED, (((float) getHeight()) - sHeight) * f2);
                }
                access$4800.x = Math.min(access$4800.x, z);
                access$4800.y = Math.min(access$4800.y, max);
                scaleAndTranslate.scale = limitedScale;
            }
        }
        f = ((float) getPaddingLeft()) / ((float) (getPaddingLeft() + getPaddingRight()));
        f2 = ((float) getPaddingTop()) / ((float) (getPaddingTop() + getPaddingBottom()));
        if (this.panLimit != 3) {
        }
        if (z) {
            z = (float) Math.max(0, getWidth());
            max = (float) Math.max(0, getHeight());
        } else {
            z = Math.max(BitmapDescriptorFactory.HUE_RED, (((float) getWidth()) - sWidth) * f);
            max = Math.max(BitmapDescriptorFactory.HUE_RED, (((float) getHeight()) - sHeight) * f2);
        }
        access$4800.x = Math.min(access$4800.x, z);
        access$4800.y = Math.min(access$4800.y, max);
        scaleAndTranslate.scale = limitedScale;
    }

    private void fitToBounds(boolean z) {
        Object obj;
        if (this.vTranslate == null) {
            obj = 1;
            this.vTranslate = new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        } else {
            obj = null;
        }
        if (this.satTemp == null) {
            this.satTemp = new ScaleAndTranslate(BitmapDescriptorFactory.HUE_RED, new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        }
        this.satTemp.scale = this.scale;
        this.satTemp.vTranslate.set(this.vTranslate);
        fitToBounds(z, this.satTemp);
        this.scale = this.satTemp.scale;
        this.vTranslate.set(this.satTemp.vTranslate);
        if (obj != null && !this.minimumScaleType) {
            this.vTranslate.set(vTranslateForSCenter((float) (sWidth() / 2), (float) (sHeight() / 2), this.scale));
        }
    }

    private void initialiseTileMap(Point point) {
        Point point2 = point;
        r3 = new Object[2];
        int i = 0;
        r3[0] = Integer.valueOf(point2.x);
        boolean z = true;
        r3[1] = Integer.valueOf(point2.y);
        debug("initialiseTileMap maxTileDimensions=%dx%d", r3);
        this.tileMap = new LinkedHashMap();
        int i2 = this.fullImageSampleSize;
        int i3 = 1;
        int i4 = i3;
        while (true) {
            int i5;
            List arrayList;
            int sWidth = sWidth() / i3;
            int sHeight = sHeight() / i4;
            int i6 = sWidth / i2;
            int i7 = sHeight / i2;
            while (true) {
                boolean z2;
                boolean z3;
                int i8;
                if ((i6 + i3) + z <= point2.x) {
                    if (((double) i6) <= ((double) getWidth()) * 1.25d || i2 >= r0.fullImageSampleSize) {
                        while (true) {
                            z2 = z;
                            i5 = i;
                            z3 = z2;
                            i4++;
                            sHeight = sHeight() / i4;
                            i7 = sHeight / i2;
                            i8 = i5;
                            z = z3;
                            i = i8;
                        }
                    }
                }
                z2 = z;
                i5 = i;
                z3 = z2;
                i3++;
                sWidth = sWidth() / i3;
                i6 = sWidth / i2;
                i8 = i5;
                z = z3;
                i = i8;
            }
            while (true) {
                if ((i7 + i4) + z <= point2.y) {
                    if (((double) i7) <= ((double) getHeight()) * 1.25d || i2 >= r0.fullImageSampleSize) {
                        arrayList = new ArrayList(i3 * i4);
                        i7 = i;
                    }
                }
                z2 = z;
                i5 = i;
                z3 = z2;
                i4++;
                sHeight = sHeight() / i4;
                i7 = sHeight / i2;
                i8 = i5;
                z = z3;
                i = i8;
            }
            arrayList = new ArrayList(i3 * i4);
            i7 = i;
            while (i7 < i3) {
                int i9 = i;
                while (i9 < i4) {
                    Tile tile = new Tile();
                    tile.sampleSize = i2;
                    tile.visible = i2 == r0.fullImageSampleSize ? z : z3;
                    tile.sRect = new Rect(i7 * sWidth, i9 * sHeight, i7 == i3 + -1 ? sWidth() : (i7 + 1) * sWidth, i9 == i4 + -1 ? sHeight() : (i9 + 1) * sHeight);
                    tile.vRect = new Rect(0, 0, 0, 0);
                    tile.fileSRect = new Rect(tile.sRect);
                    arrayList.add(tile);
                    i9++;
                    i = 0;
                    z = true;
                }
                z = z3;
                i7++;
                z = true;
            }
            i5 = i;
            r0.tileMap.put(Integer.valueOf(i2), arrayList);
            if (i2 != 1) {
                i2 /= 2;
                i8 = i5;
                z = true;
                i = i8;
            } else {
                return;
            }
        }
    }

    private synchronized void onTilesInited(ImageRegionDecoder imageRegionDecoder, int i, int i2, int i3) {
        debug("onTilesInited sWidth=%d, sHeight=%d, sOrientation=%d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(this.orientation));
        if (this.sWidth > 0 && this.sHeight > 0 && !(this.sWidth == i && this.sHeight == i2)) {
            reset(false);
            if (this.bitmap != null) {
                if (!this.bitmapIsCached) {
                    this.bitmap.recycle();
                }
                this.bitmap = null;
                if (this.onImageEventListener != null && this.bitmapIsCached) {
                    this.onImageEventListener.onPreviewReleased();
                }
                this.bitmapIsPreview = false;
                this.bitmapIsCached = false;
            }
        }
        this.decoder = imageRegionDecoder;
        this.sWidth = i;
        this.sHeight = i2;
        this.sOrientation = i3;
        checkReady();
        if (checkImageLoaded() == null && this.maxTileWidth > null && this.maxTileWidth != TILE_SIZE_AUTO && this.maxTileHeight > null && this.maxTileHeight != TILE_SIZE_AUTO && getWidth() > null && getHeight() > null) {
            initialiseBaseLayer(new Point(this.maxTileWidth, this.maxTileHeight));
        }
        invalidate();
        requestLayout();
    }

    private synchronized void onTileLoaded() {
        debug("onTileLoaded", new Object[0]);
        checkReady();
        checkImageLoaded();
        if (isBaseLayerReady() && this.bitmap != null) {
            if (!this.bitmapIsCached) {
                this.bitmap.recycle();
            }
            this.bitmap = null;
            if (this.onImageEventListener != null && this.bitmapIsCached) {
                this.onImageEventListener.onPreviewReleased();
            }
            this.bitmapIsPreview = false;
            this.bitmapIsCached = false;
        }
        invalidate();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void onPreviewLoaded(android.graphics.Bitmap r5) {
        /*
        r4 = this;
        monitor-enter(r4);
        r0 = "onPreviewLoaded";
        r1 = 0;
        r1 = new java.lang.Object[r1];	 Catch:{ all -> 0x0049 }
        r4.debug(r0, r1);	 Catch:{ all -> 0x0049 }
        r0 = r4.bitmap;	 Catch:{ all -> 0x0049 }
        if (r0 != 0) goto L_0x0044;
    L_0x000d:
        r0 = r4.imageLoadedSent;	 Catch:{ all -> 0x0049 }
        if (r0 == 0) goto L_0x0012;
    L_0x0011:
        goto L_0x0044;
    L_0x0012:
        r0 = r4.pRegion;	 Catch:{ all -> 0x0049 }
        if (r0 == 0) goto L_0x0031;
    L_0x0016:
        r0 = r4.pRegion;	 Catch:{ all -> 0x0049 }
        r0 = r0.left;	 Catch:{ all -> 0x0049 }
        r1 = r4.pRegion;	 Catch:{ all -> 0x0049 }
        r1 = r1.top;	 Catch:{ all -> 0x0049 }
        r2 = r4.pRegion;	 Catch:{ all -> 0x0049 }
        r2 = r2.width();	 Catch:{ all -> 0x0049 }
        r3 = r4.pRegion;	 Catch:{ all -> 0x0049 }
        r3 = r3.height();	 Catch:{ all -> 0x0049 }
        r5 = android.graphics.Bitmap.createBitmap(r5, r0, r1, r2, r3);	 Catch:{ all -> 0x0049 }
        r4.bitmap = r5;	 Catch:{ all -> 0x0049 }
        goto L_0x0033;
    L_0x0031:
        r4.bitmap = r5;	 Catch:{ all -> 0x0049 }
    L_0x0033:
        r5 = 1;
        r4.bitmapIsPreview = r5;	 Catch:{ all -> 0x0049 }
        r5 = r4.checkReady();	 Catch:{ all -> 0x0049 }
        if (r5 == 0) goto L_0x0042;
    L_0x003c:
        r4.invalidate();	 Catch:{ all -> 0x0049 }
        r4.requestLayout();	 Catch:{ all -> 0x0049 }
    L_0x0042:
        monitor-exit(r4);
        return;
    L_0x0044:
        r5.recycle();	 Catch:{ all -> 0x0049 }
        monitor-exit(r4);
        return;
    L_0x0049:
        r5 = move-exception;
        monitor-exit(r4);
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.onPreviewLoaded(android.graphics.Bitmap):void");
    }

    private synchronized void onImageLoaded(Bitmap bitmap, int i, boolean z) {
        debug("onImageLoaded", new Object[0]);
        if (this.sWidth > 0 && this.sHeight > 0 && !(this.sWidth == bitmap.getWidth() && this.sHeight == bitmap.getHeight())) {
            reset(false);
        }
        if (!(this.bitmap == null || this.bitmapIsCached)) {
            this.bitmap.recycle();
        }
        if (!(this.bitmap == null || !this.bitmapIsCached || this.onImageEventListener == null)) {
            this.onImageEventListener.onPreviewReleased();
        }
        this.bitmapIsPreview = false;
        this.bitmapIsCached = z;
        this.bitmap = bitmap;
        this.sWidth = bitmap.getWidth();
        this.sHeight = bitmap.getHeight();
        this.sOrientation = i;
        bitmap = checkReady();
        i = checkImageLoaded();
        if (!(bitmap == null && i == 0)) {
            invalidate();
            requestLayout();
        }
    }

    private int getExifOrientation(android.content.Context r10, java.lang.String r11) {
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
        r9 = this;
        r0 = "content";
        r0 = r11.startsWith(r0);
        r1 = 1;
        r2 = 0;
        if (r0 == 0) goto L_0x006e;
    L_0x000a:
        r0 = 0;
        r5 = new java.lang.String[r1];	 Catch:{ Exception -> 0x005b }
        r1 = "orientation";	 Catch:{ Exception -> 0x005b }
        r5[r2] = r1;	 Catch:{ Exception -> 0x005b }
        r3 = r10.getContentResolver();	 Catch:{ Exception -> 0x005b }
        r4 = android.net.Uri.parse(r11);	 Catch:{ Exception -> 0x005b }
        r6 = 0;	 Catch:{ Exception -> 0x005b }
        r7 = 0;	 Catch:{ Exception -> 0x005b }
        r8 = 0;	 Catch:{ Exception -> 0x005b }
        r10 = r3.query(r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x005b }
        if (r10 == 0) goto L_0x0051;
    L_0x0022:
        r11 = r10.moveToFirst();	 Catch:{ Exception -> 0x004f, all -> 0x004d }
        if (r11 == 0) goto L_0x0051;	 Catch:{ Exception -> 0x004f, all -> 0x004d }
    L_0x0028:
        r11 = r10.getInt(r2);	 Catch:{ Exception -> 0x004f, all -> 0x004d }
        r0 = VALID_ORIENTATIONS;	 Catch:{ Exception -> 0x004f, all -> 0x004d }
        r1 = java.lang.Integer.valueOf(r11);	 Catch:{ Exception -> 0x004f, all -> 0x004d }
        r0 = r0.contains(r1);	 Catch:{ Exception -> 0x004f, all -> 0x004d }
        if (r0 == 0) goto L_0x003d;	 Catch:{ Exception -> 0x004f, all -> 0x004d }
    L_0x0038:
        r0 = -1;	 Catch:{ Exception -> 0x004f, all -> 0x004d }
        if (r11 == r0) goto L_0x003d;	 Catch:{ Exception -> 0x004f, all -> 0x004d }
    L_0x003b:
        r2 = r11;	 Catch:{ Exception -> 0x004f, all -> 0x004d }
        goto L_0x0051;	 Catch:{ Exception -> 0x004f, all -> 0x004d }
    L_0x003d:
        r0 = TAG;	 Catch:{ Exception -> 0x004f, all -> 0x004d }
        r1 = "Unsupported orientation: ";	 Catch:{ Exception -> 0x004f, all -> 0x004d }
        r11 = java.lang.String.valueOf(r11);	 Catch:{ Exception -> 0x004f, all -> 0x004d }
        r11 = r1.concat(r11);	 Catch:{ Exception -> 0x004f, all -> 0x004d }
        android.util.Log.w(r0, r11);	 Catch:{ Exception -> 0x004f, all -> 0x004d }
        goto L_0x0051;
    L_0x004d:
        r11 = move-exception;
        goto L_0x0068;
    L_0x004f:
        r0 = r10;
        goto L_0x005b;
    L_0x0051:
        if (r10 == 0) goto L_0x00bd;
    L_0x0053:
        r10.close();
        goto L_0x00bd;
    L_0x0058:
        r11 = move-exception;
        r10 = r0;
        goto L_0x0068;
    L_0x005b:
        r10 = TAG;	 Catch:{ all -> 0x0058 }
        r11 = "Could not get orientation of image from media store";	 Catch:{ all -> 0x0058 }
        android.util.Log.w(r10, r11);	 Catch:{ all -> 0x0058 }
        if (r0 == 0) goto L_0x00bd;
    L_0x0064:
        r0.close();
        goto L_0x00bd;
    L_0x0068:
        if (r10 == 0) goto L_0x006d;
    L_0x006a:
        r10.close();
    L_0x006d:
        throw r11;
    L_0x006e:
        r10 = "file:///";
        r10 = r11.startsWith(r10);
        if (r10 == 0) goto L_0x00bd;
    L_0x0076:
        r10 = "file:///android_asset/";
        r10 = r11.startsWith(r10);
        if (r10 != 0) goto L_0x00bd;
    L_0x007e:
        r10 = new android.support.media.ExifInterface;	 Catch:{ Exception -> 0x00b6 }
        r0 = 7;	 Catch:{ Exception -> 0x00b6 }
        r11 = r11.substring(r0);	 Catch:{ Exception -> 0x00b6 }
        r10.<init>(r11);	 Catch:{ Exception -> 0x00b6 }
        r11 = "Orientation";	 Catch:{ Exception -> 0x00b6 }
        r10 = r10.getAttributeInt$505cff29(r11);	 Catch:{ Exception -> 0x00b6 }
        if (r10 == r1) goto L_0x00bd;	 Catch:{ Exception -> 0x00b6 }
    L_0x0090:
        if (r10 != 0) goto L_0x0093;	 Catch:{ Exception -> 0x00b6 }
    L_0x0092:
        goto L_0x00bd;	 Catch:{ Exception -> 0x00b6 }
    L_0x0093:
        r11 = 6;	 Catch:{ Exception -> 0x00b6 }
        if (r10 != r11) goto L_0x0099;	 Catch:{ Exception -> 0x00b6 }
    L_0x0096:
        r2 = 90;	 Catch:{ Exception -> 0x00b6 }
        goto L_0x00bd;	 Catch:{ Exception -> 0x00b6 }
    L_0x0099:
        r11 = 3;	 Catch:{ Exception -> 0x00b6 }
        if (r10 != r11) goto L_0x009f;	 Catch:{ Exception -> 0x00b6 }
    L_0x009c:
        r2 = 180; // 0xb4 float:2.52E-43 double:8.9E-322;	 Catch:{ Exception -> 0x00b6 }
        goto L_0x00bd;	 Catch:{ Exception -> 0x00b6 }
    L_0x009f:
        r11 = 8;	 Catch:{ Exception -> 0x00b6 }
        if (r10 != r11) goto L_0x00a6;	 Catch:{ Exception -> 0x00b6 }
    L_0x00a3:
        r2 = 270; // 0x10e float:3.78E-43 double:1.334E-321;	 Catch:{ Exception -> 0x00b6 }
        goto L_0x00bd;	 Catch:{ Exception -> 0x00b6 }
    L_0x00a6:
        r11 = TAG;	 Catch:{ Exception -> 0x00b6 }
        r0 = "Unsupported EXIF orientation: ";	 Catch:{ Exception -> 0x00b6 }
        r10 = java.lang.String.valueOf(r10);	 Catch:{ Exception -> 0x00b6 }
        r10 = r0.concat(r10);	 Catch:{ Exception -> 0x00b6 }
        android.util.Log.w(r11, r10);	 Catch:{ Exception -> 0x00b6 }
        goto L_0x00bd;
    L_0x00b6:
        r10 = TAG;
        r11 = "Could not get EXIF orientation of image";
        android.util.Log.w(r10, r11);
    L_0x00bd:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.getExifOrientation(android.content.Context, java.lang.String):int");
    }

    private void execute(AsyncTask<Void, Void, ?> asyncTask) {
        asyncTask.executeOnExecutor(this.executor, new Void[0]);
    }

    private void restoreState(ImageViewState imageViewState) {
        if (imageViewState != null && imageViewState.getCenter() != null && VALID_ORIENTATIONS.contains(Integer.valueOf(imageViewState.getOrientation()))) {
            this.orientation = imageViewState.getOrientation();
            this.pendingScale = Float.valueOf(imageViewState.getScale());
            this.sPendingCenter = imageViewState.getCenter();
            invalidate();
        }
    }

    public void setMaxTileSize(int i) {
        this.maxTileWidth = i;
        this.maxTileHeight = i;
    }

    public void setMaxTileSize(int i, int i2) {
        this.maxTileWidth = i;
        this.maxTileHeight = i2;
    }

    private Point getMaxBitmapDimensions(Canvas canvas) {
        return new Point(Math.min(canvas.getMaximumBitmapWidth(), this.maxTileWidth), Math.min(canvas.getMaximumBitmapHeight(), this.maxTileHeight));
    }

    private int sWidth() {
        int requiredRotation = getRequiredRotation();
        if (requiredRotation != 90) {
            if (requiredRotation != ORIENTATION_270) {
                return this.sWidth;
            }
        }
        return this.sHeight;
    }

    private int sHeight() {
        int requiredRotation = getRequiredRotation();
        if (requiredRotation != 90) {
            if (requiredRotation != ORIENTATION_270) {
                return this.sHeight;
            }
        }
        return this.sWidth;
    }

    private void fileSRect(Rect rect, Rect rect2) {
        if (getRequiredRotation() == 0) {
            rect2.set(rect);
        } else if (getRequiredRotation() == 90) {
            rect2.set(rect.top, this.sHeight - rect.right, rect.bottom, this.sHeight - rect.left);
        } else if (getRequiredRotation() == ORIENTATION_180) {
            rect2.set(this.sWidth - rect.right, this.sHeight - rect.bottom, this.sWidth - rect.left, this.sHeight - rect.top);
        } else {
            rect2.set(this.sWidth - rect.bottom, rect.left, this.sWidth - rect.top, rect.right);
        }
    }

    private int getRequiredRotation() {
        if (this.orientation == -1) {
            return this.sOrientation;
        }
        return this.orientation;
    }

    private float distance(float f, float f2, float f3, float f4) {
        f -= f2;
        f3 -= f4;
        return (float) Math.sqrt((double) ((f * f) + (f3 * f3)));
    }

    public void recycle() {
        reset(true);
        this.bitmapPaint = null;
        this.debugTextPaint = null;
        this.debugLinePaint = null;
        this.tileBgPaint = null;
    }

    private float viewToSourceX(float f) {
        if (this.vTranslate == null) {
            return Float.NaN;
        }
        return (f - this.vTranslate.x) / this.scale;
    }

    private float viewToSourceY(float f) {
        if (this.vTranslate == null) {
            return Float.NaN;
        }
        return (f - this.vTranslate.y) / this.scale;
    }

    public void viewToFileRect(Rect rect, Rect rect2) {
        if (this.vTranslate != null) {
            if (this.readySent) {
                rect2.set((int) viewToSourceX((float) rect.left), (int) viewToSourceY((float) rect.top), (int) viewToSourceX((float) rect.right), (int) viewToSourceY((float) rect.bottom));
                fileSRect(rect2, rect2);
                rect2.set(Math.max(0, rect2.left), Math.max(0, rect2.top), Math.min(this.sWidth, rect2.right), Math.min(this.sHeight, rect2.bottom));
                if (this.sRegion != null) {
                    rect2.offset(this.sRegion.left, this.sRegion.top);
                }
            }
        }
    }

    public void visibleFileRect(Rect rect) {
        if (this.vTranslate != null) {
            if (this.readySent) {
                rect.set(0, 0, getWidth(), getHeight());
                viewToFileRect(rect, rect);
            }
        }
    }

    public final PointF viewToSourceCoord(PointF pointF) {
        return viewToSourceCoord(pointF.x, pointF.y, new PointF());
    }

    public final PointF viewToSourceCoord(float f, float f2) {
        return viewToSourceCoord(f, f2, new PointF());
    }

    public final PointF viewToSourceCoord(PointF pointF, PointF pointF2) {
        return viewToSourceCoord(pointF.x, pointF.y, pointF2);
    }

    public final PointF viewToSourceCoord(float f, float f2, PointF pointF) {
        if (this.vTranslate == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        pointF.set(viewToSourceX(f), viewToSourceY(f2));
        return pointF;
    }

    private float sourceToViewX(float f) {
        if (this.vTranslate == null) {
            return Float.NaN;
        }
        return (f * this.scale) + this.vTranslate.x;
    }

    private float sourceToViewY(float f) {
        if (this.vTranslate == null) {
            return Float.NaN;
        }
        return (f * this.scale) + this.vTranslate.y;
    }

    public final PointF sourceToViewCoord(PointF pointF) {
        return sourceToViewCoord(pointF.x, pointF.y, new PointF());
    }

    public final PointF sourceToViewCoord(float f, float f2) {
        return sourceToViewCoord(f, f2, new PointF());
    }

    public final PointF sourceToViewCoord(PointF pointF, PointF pointF2) {
        return sourceToViewCoord(pointF.x, pointF.y, pointF2);
    }

    public final PointF sourceToViewCoord(float f, float f2, PointF pointF) {
        if (this.vTranslate == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        pointF.set(sourceToViewX(f), sourceToViewY(f2));
        return pointF;
    }

    private Rect sourceToViewRect(Rect rect, Rect rect2) {
        rect2.set((int) sourceToViewX((float) rect.left), (int) sourceToViewY((float) rect.top), (int) sourceToViewX((float) rect.right), (int) sourceToViewY((float) rect.bottom));
        return rect2;
    }

    private PointF vTranslateForSCenter(float f, float f2, float f3) {
        int paddingLeft = getPaddingLeft() + (((getWidth() - getPaddingRight()) - getPaddingLeft()) / 2);
        int paddingTop = getPaddingTop() + (((getHeight() - getPaddingBottom()) - getPaddingTop()) / 2);
        if (this.satTemp == null) {
            this.satTemp = new ScaleAndTranslate(BitmapDescriptorFactory.HUE_RED, new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        }
        this.satTemp.scale = f3;
        this.satTemp.vTranslate.set(((float) paddingLeft) - (f * f3), ((float) paddingTop) - (f2 * f3));
        fitToBounds(Float.MIN_VALUE, this.satTemp);
        return this.satTemp.vTranslate;
    }

    private PointF limitedSCenter(float f, float f2, float f3, PointF pointF) {
        f = vTranslateForSCenter(f, f2, f3);
        pointF.set((((float) (getPaddingLeft() + (((getWidth() - getPaddingRight()) - getPaddingLeft()) / 2))) - f.x) / f3, (((float) (getPaddingTop() + (((getHeight() - getPaddingBottom()) - getPaddingTop()) / 2))) - f.y) / f3);
        return pointF;
    }

    private float minScale() {
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        if (this.minimumScaleType != 2) {
            if (this.minimumScaleType != 4) {
                if (this.minimumScaleType != 3 || this.minScale <= BitmapDescriptorFactory.HUE_RED) {
                    return Math.min(((float) (getWidth() - paddingLeft)) / ((float) sWidth()), ((float) (getHeight() - paddingBottom)) / ((float) sHeight()));
                }
                return this.minScale;
            }
        }
        return Math.max(((float) (getWidth() - paddingLeft)) / ((float) sWidth()), ((float) (getHeight() - paddingBottom)) / ((float) sHeight()));
    }

    private float limitedScale(float f) {
        return Math.min(this.maxScale, Math.max(minScale(), f));
    }

    private float ease(int i, long j, float f, float f2, long j2) {
        switch (i) {
            case 1:
                return easeOutQuad(j, f, f2, j2);
            case 2:
                return easeInOutQuad(j, f, f2, j2);
            default:
                throw new IllegalStateException("Unexpected easing type: ".concat(String.valueOf(i)));
        }
    }

    private void debug(String str, Object... objArr) {
        if (this.debug) {
            Log.d(TAG, String.format(str, objArr));
        }
    }

    private int px(int i) {
        return (int) (this.density * ((float) i));
    }

    public final void setRegionDecoderClass(Class<? extends ImageRegionDecoder> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("Decoder class cannot be set to null");
        }
        this.regionDecoderFactory = new CompatDecoderFactory(cls);
    }

    public final void setRegionDecoderFactory(DecoderFactory<? extends ImageRegionDecoder> decoderFactory) {
        if (decoderFactory == null) {
            throw new IllegalArgumentException("Decoder factory cannot be set to null");
        }
        this.regionDecoderFactory = decoderFactory;
    }

    public final void setBitmapDecoderClass(Class<? extends ImageDecoder> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("Decoder class cannot be set to null");
        }
        this.bitmapDecoderFactory = new CompatDecoderFactory(cls);
    }

    public final void setBitmapDecoderFactory(DecoderFactory<? extends ImageDecoder> decoderFactory) {
        if (decoderFactory == null) {
            throw new IllegalArgumentException("Decoder factory cannot be set to null");
        }
        this.bitmapDecoderFactory = decoderFactory;
    }

    public final void getPanRemaining(RectF rectF) {
        if (isReady()) {
            float sWidth = this.scale * ((float) sWidth());
            float sHeight = this.scale * ((float) sHeight());
            if (this.panLimit == 3) {
                rectF.top = Math.max(BitmapDescriptorFactory.HUE_RED, -(this.vTranslate.y - ((float) (getHeight() / 2))));
                rectF.left = Math.max(BitmapDescriptorFactory.HUE_RED, -(this.vTranslate.x - ((float) (getWidth() / 2))));
                rectF.bottom = Math.max(BitmapDescriptorFactory.HUE_RED, this.vTranslate.y - (((float) (getHeight() / 2)) - sHeight));
                rectF.right = Math.max(BitmapDescriptorFactory.HUE_RED, this.vTranslate.x - (((float) (getWidth() / 2)) - sWidth));
            } else if (this.panLimit == 2) {
                rectF.top = Math.max(BitmapDescriptorFactory.HUE_RED, -(this.vTranslate.y - ((float) getHeight())));
                rectF.left = Math.max(BitmapDescriptorFactory.HUE_RED, -(this.vTranslate.x - ((float) getWidth())));
                rectF.bottom = Math.max(BitmapDescriptorFactory.HUE_RED, this.vTranslate.y + sHeight);
                rectF.right = Math.max(BitmapDescriptorFactory.HUE_RED, this.vTranslate.x + sWidth);
            } else {
                rectF.top = Math.max(BitmapDescriptorFactory.HUE_RED, -this.vTranslate.y);
                rectF.left = Math.max(BitmapDescriptorFactory.HUE_RED, -this.vTranslate.x);
                rectF.bottom = Math.max(BitmapDescriptorFactory.HUE_RED, (sHeight + this.vTranslate.y) - ((float) getHeight()));
                rectF.right = Math.max(BitmapDescriptorFactory.HUE_RED, (sWidth + this.vTranslate.x) - ((float) getWidth()));
            }
        }
    }

    public final void setPanLimit(int i) {
        if (VALID_PAN_LIMITS.contains(Integer.valueOf(i))) {
            this.panLimit = i;
            if (isReady() != 0) {
                fitToBounds(1);
                invalidate();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Invalid pan limit: ".concat(String.valueOf(i)));
    }

    public final void setMinimumScaleType(int i) {
        if (VALID_SCALE_TYPES.contains(Integer.valueOf(i))) {
            this.minimumScaleType = i;
            if (isReady() != 0) {
                fitToBounds(1);
                invalidate();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Invalid scale type: ".concat(String.valueOf(i)));
    }

    public final void setMaxScale(float f) {
        this.maxScale = f;
    }

    public final void setMinScale(float f) {
        this.minScale = f;
    }

    public final void setMinimumDpi(int i) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setMaxScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / ((float) i));
    }

    public final void setMaximumDpi(int i) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setMinScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / ((float) i));
    }

    public float getMaxScale() {
        return this.maxScale;
    }

    public final float getMinScale() {
        return minScale();
    }

    public void setMinimumTileDpi(int i) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.minimumTileDpi = (int) Math.min((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f, (float) i);
        if (isReady() != 0) {
            reset(0);
            invalidate();
        }
    }

    public final PointF getCenter() {
        return viewToSourceCoord((float) (getWidth() / 2), (float) (getHeight() / 2));
    }

    public final float getScale() {
        return this.scale;
    }

    public final void setScaleAndCenter(float f, PointF pointF) {
        this.anim = null;
        this.pendingScale = Float.valueOf(f);
        this.sPendingCenter = pointF;
        this.sRequestedCenter = pointF;
        invalidate();
    }

    public final void resetScaleAndCenter() {
        this.anim = null;
        this.pendingScale = Float.valueOf(limitedScale(BitmapDescriptorFactory.HUE_RED));
        if (isReady()) {
            this.sPendingCenter = new PointF((float) (sWidth() / 2), (float) (sHeight() / 2));
        } else {
            this.sPendingCenter = new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }
        invalidate();
    }

    public final boolean isReady() {
        return this.readySent;
    }

    public final boolean isImageLoaded() {
        return this.imageLoadedSent;
    }

    public final int getSWidth() {
        return this.sWidth;
    }

    public final int getSHeight() {
        return this.sHeight;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    public final int getAppliedOrientation() {
        return getRequiredRotation();
    }

    public final ImageViewState getState() {
        return (this.vTranslate == null || this.sWidth <= 0 || this.sHeight <= 0) ? null : new ImageViewState(getScale(), getCenter(), getOrientation());
    }

    public final boolean isZoomEnabled() {
        return this.zoomEnabled;
    }

    public final void setZoomEnabled(boolean z) {
        this.zoomEnabled = z;
    }

    public final boolean isQuickScaleEnabled() {
        return this.quickScaleEnabled;
    }

    public final void setQuickScaleEnabled(boolean z) {
        this.quickScaleEnabled = z;
    }

    public final boolean isPanEnabled() {
        return this.panEnabled;
    }

    public final void setPanEnabled(boolean z) {
        this.panEnabled = z;
        if (!z && this.vTranslate) {
            this.vTranslate.x = ((float) (getWidth() / 2)) - (this.scale * ((float) (sWidth() / 2)));
            this.vTranslate.y = ((float) (getHeight() / 2)) - (this.scale * ((float) (sHeight() / 2)));
            if (isReady()) {
                refreshRequiredTiles(true);
                invalidate();
            }
        }
    }

    public final void setTileBackgroundColor(int i) {
        if (Color.alpha(i) == 0) {
            this.tileBgPaint = 0;
        } else {
            this.tileBgPaint = new Paint();
            this.tileBgPaint.setStyle(Style.FILL);
            this.tileBgPaint.setColor(i);
        }
        invalidate();
    }

    public final void setDoubleTapZoomScale(float f) {
        this.doubleTapZoomScale = f;
    }

    public final void setDoubleTapZoomDpi(int i) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setDoubleTapZoomScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / ((float) i));
    }

    public final void setDoubleTapZoomStyle(int i) {
        if (VALID_ZOOM_STYLES.contains(Integer.valueOf(i))) {
            this.doubleTapZoomStyle = i;
            return;
        }
        throw new IllegalArgumentException("Invalid zoom style: ".concat(String.valueOf(i)));
    }

    public final void setDoubleTapZoomDuration(int i) {
        this.doubleTapZoomDuration = Math.max(0, i);
    }

    public void setExecutor(Executor executor) {
        if (executor == null) {
            throw new NullPointerException("Executor must not be null");
        }
        this.executor = executor;
    }

    public void setEagerLoadingEnabled(boolean z) {
        this.eagerLoadingEnabled = z;
    }

    public final void setDebug(boolean z) {
        this.debug = z;
    }

    public boolean hasImage() {
        if (this.uri == null) {
            if (this.bitmap == null) {
                return false;
            }
        }
        return true;
    }

    public void setOnLongClickListener(OnLongClickListener onLongClickListener) {
        this.onLongClickListener = onLongClickListener;
    }

    public void setOnImageEventListener(OnImageEventListener onImageEventListener) {
        this.onImageEventListener = onImageEventListener;
    }

    public void setOnStateChangedListener(OnStateChangedListener onStateChangedListener) {
        this.onStateChangedListener = onStateChangedListener;
    }

    private void sendStateChanged(float f, PointF pointF, int i) {
        if (!(this.onStateChangedListener == null || this.scale == f)) {
            this.onStateChangedListener.onScaleChanged(this.scale, i);
        }
        if (this.onStateChangedListener != null && this.vTranslate.equals(pointF) == null) {
            this.onStateChangedListener.onCenterChanged(getCenter(), i);
        }
    }

    public AnimationBuilder animateCenter(PointF pointF) {
        if (isReady()) {
            return new AnimationBuilder(pointF);
        }
        return null;
    }

    public AnimationBuilder animateScale(float f) {
        if (isReady()) {
            return new AnimationBuilder(f);
        }
        return null;
    }

    public AnimationBuilder animateScaleAndCenter(float f, PointF pointF) {
        if (isReady()) {
            return new AnimationBuilder(f, pointF);
        }
        return null;
    }
}

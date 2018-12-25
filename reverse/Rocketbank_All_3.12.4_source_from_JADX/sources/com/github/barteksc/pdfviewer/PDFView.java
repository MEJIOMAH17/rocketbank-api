package com.github.barteksc.pdfviewer;

import android.arch.lifecycle.GeneratedAdapter;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.HandlerThread;
import android.support.v4.content.Loader;
import android.support.v4.util.Pools;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.RelativeLayout;
import com.github.barteksc.pdfviewer.listener.OnLoadCompleteListener;
import com.github.barteksc.pdfviewer.model.PagePart;
import com.github.barteksc.pdfviewer.source.DocumentSource;
import com.github.barteksc.pdfviewer.util.Constants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.shockwave.pdfium.PdfDocument;
import com.shockwave.pdfium.PdfiumCore;
import java.io.File;

public class PDFView extends RelativeLayout {
    private static final String TAG = "PDFView";
    private AnimationManager animationManager;
    private boolean annotationRendering = false;
    private PaintFlagsDrawFilter antialiasFilter = new PaintFlagsDrawFilter(0, 3);
    private boolean bestQuality = false;
    CacheManager cacheManager;
    private int currentFilteredPage;
    private int currentPage;
    private float currentXOffset = BitmapDescriptorFactory.HUE_RED;
    private float currentYOffset = BitmapDescriptorFactory.HUE_RED;
    private Paint debugPaint;
    private DecodingAsyncTask decodingAsyncTask;
    private int defaultPage = 0;
    private int documentPageCount;
    private DragPinchManager dragPinchManager;
    private boolean enableAntialiasing = true;
    private int[] filteredUserPageIndexes;
    private int[] filteredUserPages;
    private boolean isScrollHandleInit = false;
    private float maxZoom = 3.0f;
    private float midZoom = 1.75f;
    private float minZoom = 1.0f;
    private GeneratedAdapter onDrawListener$33caec06;
    private GeneratedAdapter onErrorListener$3b7c5f18;
    private OnLoadCompleteListener onLoadCompleteListener;
    private GeneratedAdapter onPageChangeListener$3f6eef3f;
    private GeneratedAdapter onPageScrollListener$1750b33e;
    private GeneratedAdapter onRenderListener$6de79dd8;
    private float optimalPageHeight;
    private float optimalPageWidth;
    private int[] originalUserPages;
    private int pageHeight;
    private int pageWidth;
    private PagesLoader pagesLoader;
    private Paint paint;
    private PdfDocument pdfDocument;
    private PdfiumCore pdfiumCore;
    private boolean recycled = true;
    private boolean renderDuringScale = false;
    RenderingHandler renderingHandler;
    private final HandlerThread renderingHandlerThread = new HandlerThread("PDF renderer");
    private ScrollDir scrollDir = ScrollDir.NONE;
    private Loader.OnLoadCompleteListener scrollHandle$a08f615;
    private State state = State.DEFAULT;
    private boolean swipeVertical = true;
    private float zoom = 1.0f;

    public class Configurator {
        private boolean annotationRendering;
        private boolean antialiasing;
        private int defaultPage;
        private final DocumentSource documentSource;
        private boolean enableDoubletap;
        private boolean enableSwipe;
        private OnLoadCompleteListener onLoadCompleteListener;
        private int[] pageNumbers;
        private String password;
        private Loader.OnLoadCompleteListener scrollHandle$a08f615;
        private boolean swipeHorizontal;

        private Configurator(DocumentSource documentSource) {
            this.pageNumbers = null;
            this.enableSwipe = true;
            this.enableDoubletap = true;
            this.defaultPage = 0;
            this.swipeHorizontal = false;
            this.annotationRendering = false;
            this.password = null;
            this.scrollHandle$a08f615 = null;
            this.antialiasing = true;
            this.documentSource = documentSource;
        }

        public final Configurator enableSwipe$5da59061() {
            this.enableSwipe = true;
            return this;
        }

        public final Configurator enableDoubletap$5da59061() {
            this.enableDoubletap = true;
            return this;
        }

        public final Configurator onLoad(OnLoadCompleteListener onLoadCompleteListener) {
            this.onLoadCompleteListener = onLoadCompleteListener;
            return this;
        }

        public final Configurator defaultPage$1978f8f0() {
            this.defaultPage = 0;
            return this;
        }

        public final Configurator swipeHorizontal$5da59061() {
            this.swipeHorizontal = false;
            return this;
        }

        public final void load() {
            PDFView.this.recycle();
            PDFView.this.onDrawListener$33caec06 = null;
            PDFView.this.onPageChangeListener$3f6eef3f = null;
            PDFView.this.onPageScrollListener$1750b33e = null;
            PDFView.this.onRenderListener$6de79dd8 = null;
            PDFView.this.enableSwipe(this.enableSwipe);
            PDFView.this.enableDoubletap(this.enableDoubletap);
            PDFView.this.defaultPage = 0;
            PDFView.this.setSwipeVertical$1385ff();
            PDFView.this.enableAnnotationRendering$1385ff();
            PDFView.this.scrollHandle$a08f615 = null;
            PDFView.this.enableAntialiasing(this.antialiasing);
            PDFView.this.dragPinchManager.setSwipeVertical(PDFView.this.swipeVertical);
            PDFView.access$1000$266a07eb$54bb7d2a(PDFView.this, this.documentSource, this.onLoadCompleteListener);
        }
    }

    enum ScrollDir {
        NONE,
        START,
        END
    }

    private enum State {
        DEFAULT,
        LOADED,
        SHOWN,
        ERROR
    }

    public PDFView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (isInEditMode() == null) {
            this.cacheManager = new CacheManager();
            this.animationManager = new AnimationManager(this);
            this.dragPinchManager = new DragPinchManager(this, this.animationManager);
            this.paint = new Paint();
            this.debugPaint = new Paint();
            this.debugPaint.setStyle(Style.STROKE);
            this.pdfiumCore = new PdfiumCore(context);
            setWillNotDraw(false);
        }
    }

    private void showPage(int i) {
        if (!this.recycled) {
            if (i <= 0) {
                i = 0;
            } else if (i >= this.documentPageCount) {
                i = this.documentPageCount - 1;
            }
            this.currentPage = i;
            this.currentFilteredPage = i;
            loadPages();
        }
    }

    private float getPositionOffset() {
        float height;
        if (this.swipeVertical) {
            height = (-this.currentYOffset) / ((((float) this.documentPageCount) * (this.optimalPageHeight * this.zoom)) - ((float) getHeight()));
        } else {
            height = (-this.currentXOffset) / ((((float) this.documentPageCount) * (this.optimalPageWidth * this.zoom)) - ((float) getWidth()));
        }
        if (height <= BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        return height >= 1.0f ? 1.0f : height;
    }

    public final int getPageCount() {
        return this.documentPageCount;
    }

    public final void enableSwipe(boolean z) {
        this.dragPinchManager.setSwipeEnabled(z);
    }

    public final void enableDoubletap(boolean z) {
        this.dragPinchManager.enableDoubletap(z);
    }

    public final void recycle() {
        this.animationManager.stopAll();
        if (this.renderingHandler != null) {
            this.renderingHandler.stop();
            this.renderingHandler.removeMessages(1);
        }
        if (this.decodingAsyncTask != null) {
            this.decodingAsyncTask.cancel(true);
        }
        this.cacheManager.recycle();
        if (!(this.pdfiumCore == null || this.pdfDocument == null)) {
            this.pdfiumCore.closeDocument(this.pdfDocument);
        }
        this.renderingHandler = null;
        this.originalUserPages = null;
        this.filteredUserPages = null;
        this.filteredUserPageIndexes = null;
        this.pdfDocument = null;
        this.scrollHandle$a08f615 = null;
        this.isScrollHandleInit = false;
        this.currentYOffset = BitmapDescriptorFactory.HUE_RED;
        this.currentXOffset = BitmapDescriptorFactory.HUE_RED;
        this.zoom = 1.0f;
        this.recycled = true;
        this.state = State.DEFAULT;
    }

    protected void onDetachedFromWindow() {
        recycle();
        super.onDetachedFromWindow();
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (isInEditMode() == 0) {
            this.animationManager.stopAll();
            calculateOptimalWidthAndHeight();
            loadPages();
            if (this.swipeVertical != 0) {
                moveTo$483d6f3f(this.currentXOffset, calculateCenterOffsetForPage(this.currentFilteredPage));
            } else {
                moveTo$483d6f3f(calculateCenterOffsetForPage(this.currentFilteredPage), this.currentYOffset);
            }
        }
    }

    protected void onDraw(Canvas canvas) {
        if (!isInEditMode()) {
            if (this.enableAntialiasing) {
                canvas.setDrawFilter(this.antialiasFilter);
            }
            Drawable background = getBackground();
            if (background == null) {
                canvas.drawColor(-1);
            } else {
                background.draw(canvas);
            }
            if (!this.recycled && this.state == State.SHOWN) {
                float f = this.currentXOffset;
                float f2 = this.currentYOffset;
                canvas.translate(f, f2);
                for (PagePart drawPart : this.cacheManager.getThumbnails()) {
                    drawPart(canvas, drawPart);
                }
                for (PagePart drawPart2 : this.cacheManager.getPageParts()) {
                    drawPart(canvas, drawPart2);
                }
                canvas.translate(-f, -f2);
            }
        }
    }

    private void drawPart(Canvas canvas, PagePart pagePart) {
        RectF pageRelativeBounds = pagePart.getPageRelativeBounds();
        Bitmap renderedBitmap = pagePart.getRenderedBitmap();
        if (!renderedBitmap.isRecycled()) {
            float userPage;
            if (this.swipeVertical) {
                userPage = (((float) pagePart.getUserPage()) * this.optimalPageHeight) * this.zoom;
                pagePart = null;
            } else {
                pagePart = (((float) pagePart.getUserPage()) * this.optimalPageWidth) * this.zoom;
                userPage = BitmapDescriptorFactory.HUE_RED;
            }
            canvas.translate(pagePart, userPage);
            Rect rect = new Rect(0, 0, renderedBitmap.getWidth(), renderedBitmap.getHeight());
            float f = (pageRelativeBounds.left * this.optimalPageWidth) * this.zoom;
            float f2 = (pageRelativeBounds.top * this.optimalPageHeight) * this.zoom;
            RectF rectF = new RectF((float) ((int) f), (float) ((int) f2), (float) ((int) (f + ((pageRelativeBounds.width() * this.optimalPageWidth) * this.zoom))), (float) ((int) (f2 + ((pageRelativeBounds.height() * this.optimalPageHeight) * this.zoom))));
            float f3 = this.currentXOffset + pagePart;
            f = this.currentYOffset + userPage;
            if (rectF.left + f3 < ((float) getWidth()) && f3 + rectF.right > BitmapDescriptorFactory.HUE_RED && rectF.top + f < ((float) getHeight())) {
                if (f + rectF.bottom > BitmapDescriptorFactory.HUE_RED) {
                    canvas.drawBitmap(renderedBitmap, rect, rectF, this.paint);
                    boolean z = Constants.DEBUG_MODE;
                    canvas.translate(-pagePart, -userPage);
                    return;
                }
            }
            canvas.translate(-pagePart, -userPage);
        }
    }

    public final void loadPages() {
        if (!(this.optimalPageWidth == BitmapDescriptorFactory.HUE_RED || this.optimalPageHeight == BitmapDescriptorFactory.HUE_RED)) {
            if (this.renderingHandler != null) {
                this.renderingHandler.removeMessages(1);
                this.cacheManager.makeANewSet();
                this.pagesLoader.loadPages();
                invalidate();
            }
        }
    }

    final void loadComplete(PdfDocument pdfDocument, int i, int i2) {
        this.state = State.LOADED;
        this.documentPageCount = this.pdfiumCore.getPageCount(pdfDocument);
        this.pdfDocument = pdfDocument;
        this.pageWidth = i;
        this.pageHeight = i2;
        calculateOptimalWidthAndHeight();
        this.pagesLoader = new PagesLoader(this);
        if (this.renderingHandlerThread.isAlive() == 0) {
            this.renderingHandlerThread.start();
        }
        this.renderingHandler = new RenderingHandler(this.renderingHandlerThread.getLooper(), this, this.pdfiumCore, pdfDocument);
        this.renderingHandler.start();
        if (this.onLoadCompleteListener != null) {
            this.onLoadCompleteListener.loadComplete(this.documentPageCount);
        }
        if (this.swipeVertical != null) {
            moveTo$483d6f3f(this.currentXOffset, 0 * (this.optimalPageHeight * this.zoom));
        } else {
            moveTo$483d6f3f(0 * (this.optimalPageWidth * this.zoom), this.currentYOffset);
        }
        showPage(null);
    }

    final void loadError(Throwable th) {
        this.state = State.ERROR;
        recycle();
        invalidate();
        Log.e(TAG, "load pdf error", th);
    }

    public final void onBitmapRendered(PagePart pagePart) {
        if (this.state == State.LOADED) {
            this.state = State.SHOWN;
        }
        if (pagePart.isThumbnail()) {
            this.cacheManager.cacheThumbnail(pagePart);
        } else {
            this.cacheManager.cachePart(pagePart);
        }
        invalidate();
    }

    private float calculateCenterOffsetForPage(int i) {
        if (this.swipeVertical) {
            return (-(((float) i) * this.optimalPageHeight)) + (((float) (getHeight() / 2)) - (this.optimalPageHeight / 2.0f));
        }
        return (-(((float) i) * this.optimalPageWidth)) + (((float) (getWidth() / 2)) - (this.optimalPageWidth / 2.0f));
    }

    private void calculateOptimalWidthAndHeight() {
        if (this.state != State.DEFAULT) {
            if (getWidth() != 0) {
                float width = (float) getWidth();
                float height = (float) getHeight();
                float f = ((float) this.pageWidth) / ((float) this.pageHeight);
                float floor = (float) Math.floor((double) (width / f));
                if (floor > height) {
                    width = (float) Math.floor((double) (f * height));
                } else {
                    height = floor;
                }
                this.optimalPageWidth = width;
                this.optimalPageHeight = height;
            }
        }
    }

    public final void moveTo(float f, float f2) {
        moveTo$483d6f3f(f, f2);
    }

    private void moveTo$483d6f3f(float f, float f2) {
        if (this.swipeVertical) {
            if (this.optimalPageWidth * this.zoom < ((float) getWidth())) {
                f = ((float) (getWidth() / 2)) - ((this.optimalPageWidth * this.zoom) / 2.0f);
            } else if (f > BitmapDescriptorFactory.HUE_RED) {
                f = BitmapDescriptorFactory.HUE_RED;
            } else if ((this.optimalPageWidth * this.zoom) + f < ((float) getWidth())) {
                f = ((float) getWidth()) - (this.optimalPageWidth * this.zoom);
            }
            if (((float) this.documentPageCount) * (this.optimalPageHeight * this.zoom) < ((float) getHeight())) {
                f2 = (((float) getHeight()) - (((float) this.documentPageCount) * (this.optimalPageHeight * this.zoom))) / 2.0f;
            } else if (f2 > BitmapDescriptorFactory.HUE_RED) {
                f2 = BitmapDescriptorFactory.HUE_RED;
            } else if (((((float) this.documentPageCount) * this.optimalPageHeight) * this.zoom) + f2 < ((float) getHeight())) {
                f2 = (-((((float) this.documentPageCount) * this.optimalPageHeight) * this.zoom)) + ((float) getHeight());
            }
            if (f2 < this.currentYOffset) {
                this.scrollDir = ScrollDir.END;
            } else if (f2 > this.currentYOffset) {
                this.scrollDir = ScrollDir.START;
            } else {
                this.scrollDir = ScrollDir.NONE;
            }
        } else {
            if (this.optimalPageHeight * this.zoom < ((float) getHeight())) {
                f2 = ((float) (getHeight() / 2)) - ((this.optimalPageHeight * this.zoom) / 2.0f);
            } else if (f2 > BitmapDescriptorFactory.HUE_RED) {
                f2 = BitmapDescriptorFactory.HUE_RED;
            } else if ((this.optimalPageHeight * this.zoom) + f2 < ((float) getHeight())) {
                f2 = ((float) getHeight()) - (this.optimalPageHeight * this.zoom);
            }
            if (((float) this.documentPageCount) * (this.optimalPageWidth * this.zoom) < ((float) getWidth())) {
                f = (((float) getWidth()) - (((float) this.documentPageCount) * (this.optimalPageWidth * this.zoom))) / 2.0f;
            } else if (f > BitmapDescriptorFactory.HUE_RED) {
                f = BitmapDescriptorFactory.HUE_RED;
            } else if (((((float) this.documentPageCount) * this.optimalPageWidth) * this.zoom) + f < ((float) getWidth())) {
                f = (-((((float) this.documentPageCount) * this.optimalPageWidth) * this.zoom)) + ((float) getWidth());
            }
            if (f < this.currentXOffset) {
                this.scrollDir = ScrollDir.END;
            } else if (f > this.currentXOffset) {
                this.scrollDir = ScrollDir.START;
            } else {
                this.scrollDir = ScrollDir.NONE;
            }
        }
        this.currentXOffset = f;
        this.currentYOffset = f2;
        getPositionOffset();
        invalidate();
    }

    final ScrollDir getScrollDir() {
        return this.scrollDir;
    }

    final void loadPageByOffset() {
        float f;
        float f2;
        if (this.swipeVertical) {
            f = this.currentYOffset;
            f2 = this.optimalPageHeight;
        } else {
            f = this.currentXOffset;
            f2 = this.optimalPageWidth;
        }
        int floor = (int) Math.floor((double) ((Math.abs(f) + ((float) (getHeight() / 5))) / (f2 * this.zoom)));
        if (floor < 0 || floor > this.documentPageCount - 1 || floor == this.currentPage) {
            loadPages();
        } else {
            showPage(floor);
        }
    }

    final int getDocumentPageCount() {
        return this.documentPageCount;
    }

    public final void moveRelativeTo(float f, float f2) {
        moveTo$483d6f3f(this.currentXOffset + f, this.currentYOffset + f2);
    }

    public final void zoomCenteredTo(float f, PointF pointF) {
        float f2 = f / this.zoom;
        this.zoom = f;
        moveTo$483d6f3f((this.currentXOffset * f2) + (pointF.x - (pointF.x * f2)), (this.currentYOffset * f2) + (pointF.y - (pointF.y * f2)));
    }

    public final void zoomCenteredRelativeTo(float f, PointF pointF) {
        zoomCenteredTo(this.zoom * f, pointF);
    }

    public final float getCurrentXOffset() {
        return this.currentXOffset;
    }

    public final float getCurrentYOffset() {
        return this.currentYOffset;
    }

    public final float toCurrentScale(float f) {
        return f * this.zoom;
    }

    public final float getZoom() {
        return this.zoom;
    }

    public final boolean isZooming() {
        return this.zoom != this.minZoom;
    }

    public final float getOptimalPageWidth() {
        return this.optimalPageWidth;
    }

    public final float getOptimalPageHeight() {
        return this.optimalPageHeight;
    }

    public final void resetZoomWithAnimation() {
        this.animationManager.startZoomAnimation((float) (getWidth() / 2), (float) (getHeight() / 2), this.zoom, this.minZoom);
    }

    public final void zoomWithAnimation(float f, float f2, float f3) {
        this.animationManager.startZoomAnimation(f, f2, this.zoom, f3);
    }

    public final float getMidZoom() {
        return this.midZoom;
    }

    public final float getMaxZoom() {
        return this.maxZoom;
    }

    public final boolean isSwipeVertical() {
        return this.swipeVertical;
    }

    public final void setSwipeVertical$1385ff() {
        this.swipeVertical = true;
    }

    public final void enableAnnotationRendering$1385ff() {
        this.annotationRendering = false;
    }

    public final void enableAntialiasing(boolean z) {
        this.enableAntialiasing = z;
    }

    public final Configurator fromFile(File file) {
        return new Configurator(new Pools(file));
    }

    static /* synthetic */ void access$1000$266a07eb$54bb7d2a(PDFView pDFView, DocumentSource documentSource, OnLoadCompleteListener onLoadCompleteListener) {
        if (pDFView.recycled) {
            pDFView.onLoadCompleteListener = onLoadCompleteListener;
            pDFView.onErrorListener$3b7c5f18 = null;
            pDFView.recycled = false;
            pDFView.decodingAsyncTask = new DecodingAsyncTask(documentSource, pDFView, pDFView.pdfiumCore);
            pDFView.decodingAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            return;
        }
        throw new IllegalStateException("Don't call load on a PDF View without recycling it first.");
    }
}

package com.github.barteksc.pdfviewer;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.github.barteksc.pdfviewer.model.PagePart;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.shockwave.pdfium.PdfDocument;
import com.shockwave.pdfium.PdfiumCore;
import java.util.HashSet;
import java.util.Set;

final class RenderingHandler extends Handler {
    private final Set<Integer> openedPages = new HashSet();
    private PdfDocument pdfDocument;
    private PDFView pdfView;
    private PdfiumCore pdfiumCore;
    private RectF renderBounds = new RectF();
    private Matrix renderMatrix = new Matrix();
    private Rect roundedRenderBounds = new Rect();
    private boolean running = null;

    class RenderingTask {
        boolean annotationRendering = false;
        boolean bestQuality = false;
        RectF bounds;
        int cacheOrder;
        float height;
        int page;
        boolean thumbnail;
        int userPage;
        float width;

        RenderingTask(float f, float f2, RectF rectF, int i, int i2, boolean z, int i3, boolean z2) {
            this.page = i2;
            this.width = f;
            this.height = f2;
            this.bounds = rectF;
            this.userPage = i;
            this.thumbnail = z;
            this.cacheOrder = i3;
        }
    }

    RenderingHandler(Looper looper, PDFView pDFView, PdfiumCore pdfiumCore, PdfDocument pdfDocument) {
        super(looper);
        this.pdfView = pDFView;
        this.pdfiumCore = pdfiumCore;
        this.pdfDocument = pdfDocument;
    }

    final void addRenderingTask$401b142b$3bdfdd21(int i, int i2, float f, float f2, RectF rectF, boolean z, int i3) {
        sendMessage(obtainMessage(1, new RenderingTask(f, f2, rectF, i, i2, z, i3, false)));
    }

    public final void handleMessage(Message message) {
        message = proceed((RenderingTask) message.obj);
        if (message != null) {
            if (this.running) {
                this.pdfView.post(new Runnable() {
                    public final void run() {
                        RenderingHandler.this.pdfView.onBitmapRendered(message);
                    }
                });
                return;
            }
            message.getRenderedBitmap().recycle();
        }
    }

    private PagePart proceed(RenderingTask renderingTask) {
        if (!this.openedPages.contains(Integer.valueOf(renderingTask.page))) {
            this.openedPages.add(Integer.valueOf(renderingTask.page));
            this.pdfiumCore.openPage(this.pdfDocument, renderingTask.page);
        }
        int round = Math.round(renderingTask.width);
        int round2 = Math.round(renderingTask.height);
        try {
            Bitmap createBitmap = Bitmap.createBitmap(round, round2, Config.ARGB_8888);
            RectF rectF = renderingTask.bounds;
            this.renderMatrix.reset();
            float f = (float) round;
            float f2 = (float) round2;
            this.renderMatrix.postTranslate((-rectF.left) * f, (-rectF.top) * f2);
            this.renderMatrix.postScale(1.0f / rectF.width(), 1.0f / rectF.height());
            this.renderBounds.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, f2);
            this.renderMatrix.mapRect(this.renderBounds);
            this.renderBounds.round(this.roundedRenderBounds);
            this.pdfiumCore.renderPageBitmap(this.pdfDocument, createBitmap, renderingTask.page, this.roundedRenderBounds.left, this.roundedRenderBounds.top, this.roundedRenderBounds.width(), this.roundedRenderBounds.height(), renderingTask.annotationRendering);
            Bitmap copy = createBitmap.copy(Config.RGB_565, false);
            createBitmap.recycle();
            return new PagePart(renderingTask.userPage, renderingTask.page, copy, renderingTask.bounds, renderingTask.thumbnail, renderingTask.cacheOrder);
        } catch (RenderingTask renderingTask2) {
            renderingTask2.printStackTrace();
            return null;
        }
    }

    final void stop() {
        this.running = false;
    }

    final void start() {
        this.running = true;
    }
}

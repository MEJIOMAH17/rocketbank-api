package com.github.barteksc.pdfviewer;

import android.graphics.RectF;
import android.util.Pair;
import com.github.barteksc.pdfviewer.util.Constants;
import com.github.barteksc.pdfviewer.util.Constants.Cache;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

final class PagesLoader {
    private int cacheOrder;
    private float colWidth;
    private Pair<Integer, Integer> colsRows;
    private float pageRelativePartHeight;
    private float pageRelativePartWidth;
    private float partRenderHeight;
    private float partRenderWidth;
    private PDFView pdfView;
    private float rowHeight;
    private float scaledHeight;
    private float scaledWidth;
    private int thumbnailHeight;
    private final RectF thumbnailRect = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f);
    private int thumbnailWidth;
    private float xOffset;
    private float yOffset;

    class Holder {
        int col;
        int page;
        int row;

        private Holder() {
        }
    }

    public PagesLoader(PDFView pDFView) {
        this.pdfView = pDFView;
    }

    private Holder getPageAndCoordsByOffset(float f) {
        Holder holder = new Holder();
        if (f > BitmapDescriptorFactory.HUE_RED) {
            f = BitmapDescriptorFactory.HUE_RED;
        }
        f = -f;
        if (this.pdfView.isSwipeVertical()) {
            holder.page = ((int) (((double) (f / this.scaledHeight)) + 16384.0d)) - 16384;
            holder.row = ((int) (((double) (Math.abs(f - (this.scaledHeight * ((float) holder.page))) / this.rowHeight)) + 16384.0d)) - 16384;
            holder.col = ((int) (((double) (this.xOffset / this.colWidth)) + 16384.0d)) - 16384;
        } else {
            holder.page = ((int) (((double) (f / this.scaledWidth)) + 16384.0d)) - 16384;
            holder.col = ((int) (((double) (Math.abs(f - (this.scaledWidth * ((float) holder.page))) / this.colWidth)) + 16384.0d)) - 16384;
            holder.row = ((int) (((double) (this.yOffset / this.rowHeight)) + 16384.0d)) - 16384;
        }
        return holder;
    }

    private void loadThumbnail(int i, int i2) {
        if (!this.pdfView.cacheManager.containsThumbnail$59dc7696(i, i2, this.thumbnailRect)) {
            this.pdfView.renderingHandler.addRenderingTask$401b142b$3bdfdd21(i, i2, (float) this.thumbnailWidth, (float) this.thumbnailHeight, this.thumbnailRect, true, 0);
        }
    }

    private int loadRelative(int i, int i2, boolean z) {
        int i3 = 0;
        if (this.pdfView.isSwipeVertical()) {
            i = (this.pdfView.getCurrentYOffset() - ((float) (z ? this.pdfView.getHeight() : false))) - ((this.rowHeight * ((float) i)) + 1065353216);
        } else {
            i = (this.pdfView.getCurrentXOffset() - ((float) (z ? this.pdfView.getWidth() : false))) - (this.colWidth * ((float) i));
        }
        i = getPageAndCoordsByOffset(i);
        z = i.page;
        if (z >= false || z >= this.pdfView.getDocumentPageCount()) {
            z = true;
        }
        if (z >= false) {
            return 0;
        }
        loadThumbnail(i.page, z);
        int i4;
        int width;
        int intValue;
        int i5;
        if (this.pdfView.isSwipeVertical()) {
            i4 = (((int) (((double) (this.xOffset / this.colWidth)) + 16384.0d)) - 16384) - 1;
            if (i4 < 0) {
                i4 = 0;
            }
            width = (((int) (((double) ((this.xOffset + ((float) this.pdfView.getWidth())) / this.colWidth)) + 16384.999999999996d)) - 16384) + 1;
            intValue = ((Integer) this.colsRows.first).intValue();
            i5 = width > intValue ? intValue : width;
            while (i4 <= i5) {
                if (loadCell(i.page, z, i.row, i4, this.pageRelativePartWidth, this.pageRelativePartHeight)) {
                    i3++;
                }
                if (i3 >= i2) {
                    return i3;
                }
                i4++;
            }
        } else {
            i4 = (((int) (((double) (this.yOffset / this.rowHeight)) + 16384.0d)) - 16384) - 1;
            if (i4 < 0) {
                i4 = 0;
            }
            width = (((int) (((double) ((this.yOffset + ((float) this.pdfView.getHeight())) / this.rowHeight)) + 16384.999999999996d)) - 16384) + 1;
            intValue = ((Integer) this.colsRows.second).intValue();
            i5 = width > intValue ? intValue : width;
            while (i4 <= i5) {
                if (loadCell(i.page, z, i4, i.col, this.pageRelativePartWidth, this.pageRelativePartHeight)) {
                    i3++;
                }
                if (i3 >= i2) {
                    return i3;
                }
                i4++;
            }
        }
        return i3;
    }

    private int loadVisible() {
        Holder pageAndCoordsByOffset;
        int i;
        int i2;
        Holder pageAndCoordsByOffset2;
        int intValue;
        if (this.pdfView.isSwipeVertical()) {
            pageAndCoordsByOffset = getPageAndCoordsByOffset(this.pdfView.getCurrentYOffset());
            pageAndCoordsByOffset2 = getPageAndCoordsByOffset((this.pdfView.getCurrentYOffset() - ((float) this.pdfView.getHeight())) + 1.0f);
            if (pageAndCoordsByOffset.page == pageAndCoordsByOffset2.page) {
                i = (pageAndCoordsByOffset2.row - pageAndCoordsByOffset.row) + 1;
            } else {
                intValue = (((Integer) this.colsRows.second).intValue() - pageAndCoordsByOffset.row) + 0;
                i2 = pageAndCoordsByOffset.page;
                while (true) {
                    i2++;
                    if (i2 >= pageAndCoordsByOffset2.page) {
                        break;
                    }
                    intValue += ((Integer) this.colsRows.second).intValue();
                }
                i = (pageAndCoordsByOffset2.row + 1) + intValue;
            }
            intValue = 0;
            i2 = intValue;
            while (intValue < i && i2 < Cache.CACHE_SIZE) {
                i2 += loadRelative(intValue, Cache.CACHE_SIZE - i2, false);
                intValue++;
            }
        } else {
            pageAndCoordsByOffset = getPageAndCoordsByOffset(this.pdfView.getCurrentXOffset());
            pageAndCoordsByOffset2 = getPageAndCoordsByOffset((this.pdfView.getCurrentXOffset() - ((float) this.pdfView.getWidth())) + 1.0f);
            if (pageAndCoordsByOffset.page == pageAndCoordsByOffset2.page) {
                i = (pageAndCoordsByOffset2.col - pageAndCoordsByOffset.col) + 1;
            } else {
                intValue = (((Integer) this.colsRows.first).intValue() - pageAndCoordsByOffset.col) + 0;
                i2 = pageAndCoordsByOffset.page;
                while (true) {
                    i2++;
                    if (i2 >= pageAndCoordsByOffset2.page) {
                        break;
                    }
                    intValue += ((Integer) this.colsRows.first).intValue();
                }
                i = (pageAndCoordsByOffset2.col + 1) + intValue;
            }
            intValue = 0;
            i2 = intValue;
            while (intValue < i && i2 < Cache.CACHE_SIZE) {
                i2 += loadRelative(intValue, Cache.CACHE_SIZE - i2, false);
                intValue++;
            }
        }
        i = pageAndCoordsByOffset.page - 1;
        if (i < 0 || i >= this.pdfView.getDocumentPageCount()) {
            i = -1;
        }
        if (i >= 0) {
            loadThumbnail(pageAndCoordsByOffset.page - 1, i);
        }
        i = pageAndCoordsByOffset.page + 1;
        if (i < 0 || i >= this.pdfView.getDocumentPageCount()) {
            i = -1;
        }
        if (i >= 0) {
            loadThumbnail(pageAndCoordsByOffset.page + 1, i);
        }
        return i2;
    }

    private boolean loadCell(int i, int i2, int i3, int i4, float f, float f2) {
        float f3 = ((float) i4) * f;
        float f4 = ((float) i3) * f2;
        float f5 = this.partRenderWidth;
        float f6 = this.partRenderHeight;
        float f7 = f3 + f > 1.0f ? 1.0f - f3 : f;
        float f8 = f4 + f2 > 1.0f ? 1.0f - f4 : f2;
        float f9 = f5 * f7;
        float f10 = f6 * f8;
        RectF rectF = new RectF(f3, f4, f7 + f3, f8 + f4);
        if (f9 <= BitmapDescriptorFactory.HUE_RED || f10 <= BitmapDescriptorFactory.HUE_RED) {
            return false;
        }
        int i5 = i;
        int i6 = i2;
        if (!r0.pdfView.cacheManager.upPartIfContained$1e4e1661(i5, i6, rectF, r0.cacheOrder)) {
            r0.pdfView.renderingHandler.addRenderingTask$401b142b$3bdfdd21(i5, i6, f9, f10, rectF, false, r0.cacheOrder);
        }
        r0.cacheOrder++;
        return true;
    }

    public final void loadPages() {
        this.scaledHeight = this.pdfView.toCurrentScale(this.pdfView.getOptimalPageHeight());
        this.scaledWidth = this.pdfView.toCurrentScale(this.pdfView.getOptimalPageWidth());
        this.thumbnailWidth = (int) (this.pdfView.getOptimalPageWidth() * Constants.THUMBNAIL_RATIO);
        this.thumbnailHeight = (int) (this.pdfView.getOptimalPageHeight() * Constants.THUMBNAIL_RATIO);
        float optimalPageHeight = (Constants.PART_SIZE * (1.0f / this.pdfView.getOptimalPageHeight())) / this.pdfView.getZoom();
        this.colsRows = new Pair(Integer.valueOf(((int) (((double) (1.0f / ((Constants.PART_SIZE * (1.0f / this.pdfView.getOptimalPageWidth())) / this.pdfView.getZoom()))) + 16384.999999999996d)) - 16384), Integer.valueOf(((int) (((double) (1.0f / optimalPageHeight)) + 16384.999999999996d)) - 16384));
        float currentXOffset = this.pdfView.getCurrentXOffset();
        if (currentXOffset > BitmapDescriptorFactory.HUE_RED) {
            currentXOffset = BitmapDescriptorFactory.HUE_RED;
        }
        this.xOffset = -currentXOffset;
        currentXOffset = this.pdfView.getCurrentYOffset();
        if (currentXOffset > BitmapDescriptorFactory.HUE_RED) {
            currentXOffset = BitmapDescriptorFactory.HUE_RED;
        }
        this.yOffset = -currentXOffset;
        this.rowHeight = this.scaledHeight / ((float) ((Integer) this.colsRows.second).intValue());
        this.colWidth = this.scaledWidth / ((float) ((Integer) this.colsRows.first).intValue());
        this.pageRelativePartWidth = 1.0f / ((float) ((Integer) this.colsRows.first).intValue());
        this.pageRelativePartHeight = 1.0f / ((float) ((Integer) this.colsRows.second).intValue());
        this.partRenderWidth = Constants.PART_SIZE / this.pageRelativePartWidth;
        this.partRenderHeight = Constants.PART_SIZE / this.pageRelativePartHeight;
        this.cacheOrder = 1;
        int loadVisible = loadVisible();
        int i = 0;
        if (this.pdfView.getScrollDir().equals(ScrollDir.END)) {
            while (i < Constants.PRELOAD_COUNT && loadVisible < Cache.CACHE_SIZE) {
                loadVisible += loadRelative(i, loadVisible, true);
                i++;
            }
            return;
        }
        for (int i2 = 0; i2 > (-Constants.PRELOAD_COUNT) && loadVisible < Cache.CACHE_SIZE; i2--) {
            loadVisible += loadRelative(i2, loadVisible, false);
        }
    }
}

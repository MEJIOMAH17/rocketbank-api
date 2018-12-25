package com.github.barteksc.pdfviewer.model;

import android.graphics.Bitmap;
import android.graphics.RectF;

public final class PagePart {
    private int cacheOrder;
    private int page;
    private RectF pageRelativeBounds;
    private Bitmap renderedBitmap;
    private boolean thumbnail;
    private int userPage;

    public PagePart(int i, int i2, Bitmap bitmap, RectF rectF, boolean z, int i3) {
        this.userPage = i;
        this.page = i2;
        this.renderedBitmap = bitmap;
        this.pageRelativeBounds = rectF;
        this.thumbnail = z;
        this.cacheOrder = i3;
    }

    public final int getCacheOrder() {
        return this.cacheOrder;
    }

    public final int getUserPage() {
        return this.userPage;
    }

    public final Bitmap getRenderedBitmap() {
        return this.renderedBitmap;
    }

    public final RectF getPageRelativeBounds() {
        return this.pageRelativeBounds;
    }

    public final boolean isThumbnail() {
        return this.thumbnail;
    }

    public final void setCacheOrder(int i) {
        this.cacheOrder = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PagePart)) {
            return false;
        }
        PagePart pagePart = (PagePart) obj;
        if (pagePart.page == this.page && pagePart.userPage == this.userPage && pagePart.pageRelativeBounds.left == this.pageRelativeBounds.left && pagePart.pageRelativeBounds.right == this.pageRelativeBounds.right && pagePart.pageRelativeBounds.top == this.pageRelativeBounds.top && pagePart.pageRelativeBounds.bottom == this.pageRelativeBounds.bottom) {
            return true;
        }
        return false;
    }
}

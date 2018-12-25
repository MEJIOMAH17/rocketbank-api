package com.github.barteksc.pdfviewer;

import android.graphics.RectF;
import com.github.barteksc.pdfviewer.model.PagePart;
import com.github.barteksc.pdfviewer.util.Constants.Cache;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;

final class CacheManager {
    private final PriorityQueue<PagePart> activeCache = new PriorityQueue(Cache.CACHE_SIZE, this.comparator);
    private final PagePartComparator comparator = new PagePartComparator();
    private final Object passiveActiveLock = new Object();
    private final PriorityQueue<PagePart> passiveCache = new PriorityQueue(Cache.CACHE_SIZE, this.comparator);
    private final List<PagePart> thumbnails = new ArrayList();

    class PagePartComparator implements Comparator<PagePart> {
        PagePartComparator() {
        }

        public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
            PagePart pagePart = (PagePart) obj;
            PagePart pagePart2 = (PagePart) obj2;
            if (pagePart.getCacheOrder() == pagePart2.getCacheOrder()) {
                return null;
            }
            return pagePart.getCacheOrder() > pagePart2.getCacheOrder() ? 1 : -1;
        }
    }

    public final void cachePart(PagePart pagePart) {
        synchronized (this.passiveActiveLock) {
            synchronized (this.passiveActiveLock) {
                while (this.activeCache.size() + this.passiveCache.size() >= Cache.CACHE_SIZE && !this.passiveCache.isEmpty()) {
                    ((PagePart) this.passiveCache.poll()).getRenderedBitmap().recycle();
                }
                while (this.activeCache.size() + this.passiveCache.size() >= Cache.CACHE_SIZE && !this.activeCache.isEmpty()) {
                    ((PagePart) this.activeCache.poll()).getRenderedBitmap().recycle();
                }
            }
            this.activeCache.offer(pagePart);
        }
    }

    public final void makeANewSet() {
        synchronized (this.passiveActiveLock) {
            this.passiveCache.addAll(this.activeCache);
            this.activeCache.clear();
        }
    }

    public final void cacheThumbnail(PagePart pagePart) {
        synchronized (this.thumbnails) {
            if (this.thumbnails.size() >= Cache.THUMBNAILS_CACHE_SIZE) {
                ((PagePart) this.thumbnails.remove(0)).getRenderedBitmap().recycle();
            }
            this.thumbnails.add(pagePart);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean upPartIfContained$1e4e1661(int r9, int r10, android.graphics.RectF r11, int r12) {
        /*
        r8 = this;
        r7 = new com.github.barteksc.pdfviewer.model.PagePart;
        r3 = 0;
        r5 = 0;
        r6 = 0;
        r0 = r7;
        r1 = r9;
        r2 = r10;
        r4 = r11;
        r0.<init>(r1, r2, r3, r4, r5, r6);
        r9 = r8.passiveActiveLock;
        monitor-enter(r9);
        r10 = r8.passiveCache;	 Catch:{ all -> 0x0033 }
        r10 = find(r10, r7);	 Catch:{ all -> 0x0033 }
        r11 = 1;
        if (r10 == 0) goto L_0x0027;
    L_0x0018:
        r0 = r8.passiveCache;	 Catch:{ all -> 0x0033 }
        r0.remove(r10);	 Catch:{ all -> 0x0033 }
        r10.setCacheOrder(r12);	 Catch:{ all -> 0x0033 }
        r12 = r8.activeCache;	 Catch:{ all -> 0x0033 }
        r12.offer(r10);	 Catch:{ all -> 0x0033 }
        monitor-exit(r9);	 Catch:{ all -> 0x0033 }
        return r11;
    L_0x0027:
        r10 = r8.activeCache;	 Catch:{ all -> 0x0033 }
        r10 = find(r10, r7);	 Catch:{ all -> 0x0033 }
        if (r10 == 0) goto L_0x0030;
    L_0x002f:
        goto L_0x0031;
    L_0x0030:
        r11 = 0;
    L_0x0031:
        monitor-exit(r9);	 Catch:{ all -> 0x0033 }
        return r11;
    L_0x0033:
        r10 = move-exception;
        monitor-exit(r9);	 Catch:{ all -> 0x0033 }
        throw r10;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.barteksc.pdfviewer.CacheManager.upPartIfContained$1e4e1661(int, int, android.graphics.RectF, int):boolean");
    }

    public final boolean containsThumbnail$59dc7696(int i, int i2, RectF rectF) {
        PagePart pagePart = new PagePart(i, i2, null, rectF, true, 0);
        synchronized (this.thumbnails) {
            for (PagePart equals : this.thumbnails) {
                if (equals.equals(pagePart) != null) {
                    return true;
                }
            }
            return false;
        }
    }

    private static PagePart find(PriorityQueue<PagePart> priorityQueue, PagePart pagePart) {
        priorityQueue = priorityQueue.iterator();
        while (priorityQueue.hasNext()) {
            PagePart pagePart2 = (PagePart) priorityQueue.next();
            if (pagePart2.equals(pagePart)) {
                return pagePart2;
            }
        }
        return null;
    }

    public final List<PagePart> getPageParts() {
        List<PagePart> arrayList;
        synchronized (this.passiveActiveLock) {
            arrayList = new ArrayList(this.passiveCache);
            arrayList.addAll(this.activeCache);
        }
        return arrayList;
    }

    public final List<PagePart> getThumbnails() {
        List<PagePart> list;
        synchronized (this.thumbnails) {
            list = this.thumbnails;
        }
        return list;
    }

    public final void recycle() {
        synchronized (this.passiveActiveLock) {
            Iterator it = this.passiveCache.iterator();
            while (it.hasNext()) {
                ((PagePart) it.next()).getRenderedBitmap().recycle();
            }
            this.passiveCache.clear();
            it = this.activeCache.iterator();
            while (it.hasNext()) {
                ((PagePart) it.next()).getRenderedBitmap().recycle();
            }
            this.activeCache.clear();
        }
        synchronized (this.thumbnails) {
            for (PagePart renderedBitmap : this.thumbnails) {
                renderedBitmap.getRenderedBitmap().recycle();
            }
            this.thumbnails.clear();
        }
    }
}

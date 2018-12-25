package ru.rocketbank.core.manager.loader.cacher;

import android.util.SparseArray;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.network.model.NanoFeedResult;

/* compiled from: FeedCache.kt */
public final class FeedCache {
    private final HashSet<FeedItem> cachedOperations = new HashSet();
    private final SparseArray<NanoFeedResult> cachedPages = new SparseArray();
    private final int lastCacheSize;
    private final ReentrantReadWriteLock lock = new ReentrantReadWriteLock();
    private final ArrayList<FeedItem> topItems = new ArrayList();

    public final <T> T readLock(ReadWriteLock readWriteLock, Function0<? extends T> function0) {
        Intrinsics.checkParameterIsNotNull(readWriteLock, "lock");
        Intrinsics.checkParameterIsNotNull(function0, "body");
        readWriteLock.readLock().lock();
        try {
            function0 = function0.invoke();
            return function0;
        } finally {
            readWriteLock.readLock();
        }
    }

    public final <T> T writeLock(ReadWriteLock readWriteLock, Function0<? extends T> function0) {
        Intrinsics.checkParameterIsNotNull(readWriteLock, "lock");
        Intrinsics.checkParameterIsNotNull(function0, "body");
        readWriteLock = readWriteLock.writeLock();
        readWriteLock.lock();
        try {
            function0 = function0.invoke();
            return function0;
        } finally {
            readWriteLock.unlock();
        }
    }

    private final void mergeInsertPage(NanoFeedResult nanoFeedResult) {
        this.cachedPages.put(nanoFeedResult.pagination.getCurrentPage(), nanoFeedResult);
        ArrayList arrayList = nanoFeedResult.feed.list;
        Intrinsics.checkExpressionValueIsNotNull(arrayList, "nanoFeedResult.feed.list");
        mergeItems(arrayList);
        nanoFeedResult = nanoFeedResult.feed.list;
        Intrinsics.checkExpressionValueIsNotNull(nanoFeedResult, "nanoFeedResult.feed.list");
        mergeTop(nanoFeedResult);
    }

    public final boolean mergeOrUpdatePage(NanoFeedResult nanoFeedResult, NanoFeedResult nanoFeedResult2) {
        Intrinsics.checkParameterIsNotNull(nanoFeedResult, "nanoFeedResult");
        Intrinsics.checkParameterIsNotNull(nanoFeedResult2, "cachedPage");
        ArrayList arrayList = nanoFeedResult.feed.list;
        nanoFeedResult2 = nanoFeedResult2.feed.list;
        ArrayList arrayList2 = nanoFeedResult.feed.list;
        Intrinsics.checkExpressionValueIsNotNull(arrayList2, "nanoFeedResult.feed.list");
        mergeItems(arrayList2);
        nanoFeedResult = nanoFeedResult.top.list;
        Intrinsics.checkExpressionValueIsNotNull(nanoFeedResult, "nanoFeedResult.top.list");
        mergeTop(nanoFeedResult);
        if (arrayList.size() == nanoFeedResult2.size() && arrayList.isEmpty() == null && (Intrinsics.areEqual((FeedItem) arrayList.get(0), (FeedItem) nanoFeedResult2.get(0)) ^ 1) != null) {
            return false;
        }
        return true;
    }

    public final void mergeItems(ArrayList<FeedItem> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "itemsList");
        int i = 1;
        int size = arrayList.size() - 1;
        if (size > 0) {
            while (true) {
                FeedItem feedItem = (FeedItem) arrayList.get(i);
                int indexOf = CollectionsKt___CollectionsKt.indexOf(this.cachedOperations, feedItem);
                if (indexOf < 0) {
                    this.cachedOperations.add(feedItem);
                } else if (((FeedItem) CollectionsKt___CollectionsKt.elementAt(this.cachedOperations, indexOf)).getHappenedAt() != feedItem.getHappenedAt()) {
                    this.cachedOperations.add(feedItem);
                }
                if (i != size) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    private final void mergeTop(ArrayList<FeedItem> arrayList) {
        mergeItems(arrayList);
        this.topItems.clear();
        this.topItems.addAll(arrayList);
    }

    public final NanoFeedResult merge(NanoFeedResult nanoFeedResult) {
        Intrinsics.checkParameterIsNotNull(nanoFeedResult, "nanoFeedResult");
        Lock writeLock = this.lock.writeLock();
        writeLock.lock();
        try {
            int currentPage = nanoFeedResult.pagination.getCurrentPage();
            if (nanoFeedResult.pagination.getTotalCount() >= this.lastCacheSize) {
                NanoFeedResult nanoFeedResult2 = (NanoFeedResult) this.cachedPages.get(currentPage);
                if (nanoFeedResult2 != null) {
                    mergeOrUpdatePage(nanoFeedResult, nanoFeedResult2);
                } else {
                    mergeInsertPage(nanoFeedResult);
                }
            }
            writeLock.unlock();
            return nanoFeedResult;
        } catch (Throwable th) {
            writeLock.unlock();
        }
    }
}

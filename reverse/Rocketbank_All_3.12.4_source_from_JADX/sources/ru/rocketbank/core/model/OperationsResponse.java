package ru.rocketbank.core.model;

import java.util.ArrayList;
import ru.rocketbank.core.model.dto.Pagination;
import ru.rocketbank.core.network.model.FeedItem;

/* compiled from: OperationsResponse.kt */
public final class OperationsResponse {
    private SafeOperationList feed;
    private Pagination pagination;

    /* compiled from: OperationsResponse.kt */
    public static final class SafeOperationList extends ArrayList<FeedItem> {
        public final /* bridge */ boolean contains(Object obj) {
            return !(obj instanceof FeedItem) ? null : contains((FeedItem) obj);
        }

        public final /* bridge */ boolean contains(FeedItem feedItem) {
            return super.contains(feedItem);
        }

        public final /* bridge */ int getSize() {
            return super.size();
        }

        public final /* bridge */ int indexOf(Object obj) {
            return !(obj instanceof FeedItem) ? -1 : indexOf((FeedItem) obj);
        }

        public final /* bridge */ int indexOf(FeedItem feedItem) {
            return super.indexOf(feedItem);
        }

        public final /* bridge */ int lastIndexOf(Object obj) {
            return !(obj instanceof FeedItem) ? -1 : lastIndexOf((FeedItem) obj);
        }

        public final /* bridge */ int lastIndexOf(FeedItem feedItem) {
            return super.lastIndexOf(feedItem);
        }

        public final /* bridge */ FeedItem remove(int i) {
            return removeAt(i);
        }

        public final /* bridge */ boolean remove(Object obj) {
            return !(obj instanceof FeedItem) ? null : remove((FeedItem) obj);
        }

        public final /* bridge */ boolean remove(FeedItem feedItem) {
            return super.remove(feedItem);
        }

        public final /* bridge */ FeedItem removeAt(int i) {
            return (FeedItem) super.remove(i);
        }

        public final /* bridge */ int size() {
            return getSize();
        }
    }

    public final SafeOperationList getFeed() {
        return this.feed;
    }

    public final void setFeed(SafeOperationList safeOperationList) {
        this.feed = safeOperationList;
    }

    public final Pagination getPagination() {
        return this.pagination;
    }

    public final void setPagination(Pagination pagination) {
        this.pagination = pagination;
    }
}

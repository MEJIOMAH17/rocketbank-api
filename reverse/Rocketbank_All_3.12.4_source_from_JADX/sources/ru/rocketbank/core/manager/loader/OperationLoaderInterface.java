package ru.rocketbank.core.manager.loader;

import ru.rocketbank.core.model.FeedList;
import rx.Observable;

/* compiled from: OperationLoaderInterface.kt */
public interface OperationLoaderInterface {
    Observable<FeedList> getCachedItems();

    String getSearchString();

    boolean isLastLoaded();

    boolean isSearch();

    Observable<FeedList> loadNextPage();

    Observable<FeedList> loadPage(int i);
}

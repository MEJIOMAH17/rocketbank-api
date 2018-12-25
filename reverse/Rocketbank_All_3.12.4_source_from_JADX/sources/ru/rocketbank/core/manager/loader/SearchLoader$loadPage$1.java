package ru.rocketbank.core.manager.loader;

import java.util.LinkedList;
import java.util.List;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.manager.FeedManager.Companion;
import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.model.response.OperationsSearchResponse;
import ru.rocketbank.core.network.model.FeedItem;
import rx.functions.Func1;

/* compiled from: SearchLoader.kt */
final class SearchLoader$loadPage$1<T, R> implements Func1<T, R> {
    final /* synthetic */ SearchLoader this$0;

    SearchLoader$loadPage$1(SearchLoader searchLoader) {
        this.this$0 = searchLoader;
    }

    public final FeedList call(OperationsSearchResponse operationsSearchResponse) {
        LinkedList linkedList = new LinkedList();
        FeedList feedList = new FeedList();
        if (operationsSearchResponse != null) {
            int size;
            boolean z = false;
            if (operationsSearchResponse.getOperations() != null) {
                size = operationsSearchResponse.getOperations().size();
                for (Operation operation : operationsSearchResponse.getOperations()) {
                    linkedList.add(new FeedItem(operation.isRocketRubleOperation() ? 16 : 4, operation));
                }
            } else {
                size = 0;
            }
            feedList.pagination = operationsSearchResponse.getPagination();
            if (this.this$0.isLastLoaded() == null) {
                operationsSearchResponse = this.this$0;
                Companion companion = FeedManager.Companion;
                if (size < 30) {
                    z = true;
                }
                operationsSearchResponse.setLastLoaded(z);
            }
        }
        feedList.feed = linkedList;
        feedList.top = (List) new LinkedList();
        return feedList;
    }
}

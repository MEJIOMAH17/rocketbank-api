package ru.rocketbank.core.manager.loader;

import java.util.LinkedList;
import java.util.List;
import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.model.dto.operations.OperationsRequestResponseData;
import ru.rocketbank.core.network.model.FeedItem;
import rx.functions.Func1;

/* compiled from: TagOperationLoader.kt */
final class TagOperationLoader$loadPage$1<T, R> implements Func1<T, R> {
    final /* synthetic */ TagOperationLoader this$0;

    TagOperationLoader$loadPage$1(TagOperationLoader tagOperationLoader) {
        this.this$0 = tagOperationLoader;
    }

    public final FeedList call(OperationsRequestResponseData operationsRequestResponseData) {
        LinkedList linkedList = new LinkedList();
        FeedList feedList = new FeedList();
        if (operationsRequestResponseData != null) {
            if (operationsRequestResponseData.getOperations() != null) {
                List<Operation> operations = operationsRequestResponseData.getOperations();
                operations.size();
                for (Operation operation : operations) {
                    linkedList.add(new FeedItem(operation.isRocketRubleOperation() ? 16 : 4, operation));
                }
            }
            feedList.pagination = operationsRequestResponseData.getPagination();
            if (!this.this$0.isLastLoaded()) {
                this.this$0.setLastLoaded(this.this$0.getCurrentPage() == operationsRequestResponseData.getPagination().getTotalPages() ? true : null);
            }
        }
        feedList.feed = linkedList;
        feedList.top = (List) new LinkedList();
        return feedList;
    }
}

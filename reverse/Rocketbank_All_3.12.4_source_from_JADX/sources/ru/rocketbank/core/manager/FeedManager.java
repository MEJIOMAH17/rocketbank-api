package ru.rocketbank.core.manager;

import android.util.Log;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.loader.FeedLoader;
import ru.rocketbank.core.manager.loader.OperationLoader;
import ru.rocketbank.core.manager.loader.OperationSimpleLoader;
import ru.rocketbank.core.manager.loader.SafeOperationLoader;
import ru.rocketbank.core.manager.loader.SearchLoader;
import ru.rocketbank.core.manager.loader.TagOperationLoader;
import ru.rocketbank.core.model.AbstractOperation;
import ru.rocketbank.core.model.Empty;
import ru.rocketbank.core.model.ResponseContainerData;
import ru.rocketbank.core.model.TokenRequestData;
import ru.rocketbank.core.model.dto.MonthCashBackModel;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.user.Authorization;
import rx.Observable;
import rx.schedulers.Schedulers;

/* compiled from: FeedManager.kt */
public final class FeedManager {
    public static final Companion Companion = new Companion();
    private static final int DEFAULT_PAGE_LOAD_LIMIT = 30;
    private static final String TAG = "FeedManager";
    private final Authorization authorization;
    private final FeedLoader feedLoader;
    private final OperationApi operationApi;

    /* compiled from: FeedManager.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: FeedManager.kt */
    public static final class FeedRefreshIsNeeded {
    }

    public FeedManager(Authorization authorization, OperationApi operationApi, FeedLoader feedLoader) {
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        Intrinsics.checkParameterIsNotNull(operationApi, "operationApi");
        Intrinsics.checkParameterIsNotNull(feedLoader, "feedLoader");
        this.authorization = authorization;
        this.operationApi = operationApi;
        this.feedLoader = feedLoader;
    }

    public final FeedLoader getFeedLoader() {
        return this.feedLoader;
    }

    public final void refresh() {
        this.feedLoader.loadPage(1).subscribe(new FeedManager$refresh$1());
    }

    public final Observable<ResponseContainerData> sendMoneyToFriend(long j) {
        j = this.operationApi.sendFriendMoney(j, new TokenRequestData(this.authorization.getToken())).doOnNext(new FeedManager$sendMoneyToFriend$1(this, j));
        Intrinsics.checkExpressionValueIsNotNull(j, "operationApi.sendFriendM…removeFromCacheById(id) }");
        return j;
    }

    public final Observable<ResponseContainerData> declineMoneyToFriend(long j) {
        j = this.operationApi.declineFriendMoney(j, new TokenRequestData(this.authorization.getToken())).doOnNext(new FeedManager$declineMoneyToFriend$1(this, j));
        Intrinsics.checkExpressionValueIsNotNull(j, "operationApi.declineFrie…removeFromCacheById(id) }");
        return j;
    }

    public final Observable<ResponseContainerData> cancelMoneyToFriend(long j) {
        j = this.operationApi.cancelFriendMoney(j, new TokenRequestData(this.authorization.getToken())).doOnNext(new FeedManager$cancelMoneyToFriend$1(this, j));
        Intrinsics.checkExpressionValueIsNotNull(j, "operationApi.cancelFrien…removeFromCacheById(id) }");
        return j;
    }

    public final void refreshTail() {
        this.feedLoader.resetLastLoaded();
        int currentPage = this.feedLoader.getCurrentPage() - 1;
        int i = 2;
        if (2 <= currentPage) {
            while (true) {
                this.feedLoader.loadPage(i).subscribe(new FeedManager$refreshTail$1(i));
                if (i != currentPage) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final OperationLoader getSearchLoader(String str) {
        Intrinsics.checkParameterIsNotNull(str, "searchString");
        String token = this.authorization.getToken();
        Log.v("Authorization", "token: ".concat(String.valueOf(token)));
        return new SearchLoader(this.operationApi, str, token);
    }

    public final OperationLoader getSafeOperationLoader(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        return new SafeOperationLoader(this.operationApi, str);
    }

    public final TagOperationLoader getTagOperationLoader(String str) {
        Intrinsics.checkParameterIsNotNull(str, "tag");
        return new TagOperationLoader(this.operationApi, str);
    }

    public final OperationSimpleLoader getOperationLoader() {
        return new OperationSimpleLoader(this.operationApi);
    }

    public final Observable<Empty> sendMonthCashBack(List<Long> list) {
        Intrinsics.checkParameterIsNotNull(list, "ids");
        MonthCashBackModel monthCashBackModel = new MonthCashBackModel();
        monthCashBackModel.merchants = list;
        monthCashBackModel.token = this.authorization.getToken();
        list = this.operationApi.sendMonthCashBack(monthCashBackModel).observeOn(Schedulers.io());
        Intrinsics.checkExpressionValueIsNotNull(list, "operationApi.sendMonthCa…bserveOn(Schedulers.io())");
        return list;
    }

    public final void stashOperation(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        OperationApi operationApi = this.operationApi;
        AbstractOperation operation = feedItem.getOperation();
        if (operation == null) {
            Intrinsics.throwNpe();
        }
        operationApi.stash(operation.getId(), "").subscribeOn(Schedulers.io()).subscribe(new FeedManager$stashOperation$1(this, feedItem));
    }
}

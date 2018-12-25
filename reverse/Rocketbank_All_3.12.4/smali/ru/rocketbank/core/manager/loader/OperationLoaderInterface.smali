.class public interface abstract Lru/rocketbank/core/manager/loader/OperationLoaderInterface;
.super Ljava/lang/Object;
.source "OperationLoaderInterface.kt"


# virtual methods
.method public abstract getCachedItems()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/FeedList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSearchString()Ljava/lang/String;
.end method

.method public abstract isLastLoaded()Z
.end method

.method public abstract isSearch()Z
.end method

.method public abstract loadNextPage()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/FeedList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadPage(I)Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/FeedList;",
            ">;"
        }
    .end annotation
.end method

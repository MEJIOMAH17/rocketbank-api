.class final Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$1;
.super Ljava/lang/Object;
.source "FeedLoader.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/loader/FeedLoader;->loadPage(I)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;",
        "Lrx/Observable<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/loader/FeedLoader;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/loader/FeedLoader;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$1;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lru/rocketbank/core/network/model/NanoFeedResult;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$1;->call(Lru/rocketbank/core/network/model/NanoFeedResult;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/network/model/NanoFeedResult;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/NanoFeedResult;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/NanoFeedResult;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$1;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    const-string v1, "result"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$merger(Lru/rocketbank/core/manager/loader/FeedLoader;Lru/rocketbank/core/network/model/NanoFeedResult;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.class final Lru/rocketbank/core/manager/loader/FeedLoader$merger$1;
.super Ljava/lang/Object;
.source "FeedLoader.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/loader/FeedLoader;->merger(Lru/rocketbank/core/network/model/NanoFeedResult;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $nanoFeedResult:Lru/rocketbank/core/network/model/NanoFeedResult;

.field final synthetic this$0:Lru/rocketbank/core/manager/loader/FeedLoader;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/loader/FeedLoader;Lru/rocketbank/core/network/model/NanoFeedResult;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/FeedLoader$merger$1;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    iput-object p2, p0, Lru/rocketbank/core/manager/loader/FeedLoader$merger$1;->$nanoFeedResult:Lru/rocketbank/core/network/model/NanoFeedResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/loader/FeedLoader$merger$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lru/rocketbank/core/network/model/NanoFeedResult;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader$merger$1;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-static {v0}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$getFeedCache$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Lru/rocketbank/core/manager/loader/cacher/FeedCache;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/manager/loader/FeedLoader$merger$1;->$nanoFeedResult:Lru/rocketbank/core/network/model/NanoFeedResult;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->merge(Lru/rocketbank/core/network/model/NanoFeedResult;)Lru/rocketbank/core/network/model/NanoFeedResult;

    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method

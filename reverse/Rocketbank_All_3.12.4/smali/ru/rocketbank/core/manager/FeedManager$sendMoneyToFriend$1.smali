.class final Lru/rocketbank/core/manager/FeedManager$sendMoneyToFriend$1;
.super Ljava/lang/Object;
.source "FeedManager.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/FeedManager;->sendMoneyToFriend(J)Lrx/Observable;
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
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/ResponseContainerData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $id:J

.field final synthetic this$0:Lru/rocketbank/core/manager/FeedManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/FeedManager;J)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/FeedManager$sendMoneyToFriend$1;->this$0:Lru/rocketbank/core/manager/FeedManager;

    iput-wide p2, p0, Lru/rocketbank/core/manager/FeedManager$sendMoneyToFriend$1;->$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 2

    .line 1060
    iget-object p1, p0, Lru/rocketbank/core/manager/FeedManager$sendMoneyToFriend$1;->this$0:Lru/rocketbank/core/manager/FeedManager;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/FeedManager;->getFeedLoader()Lru/rocketbank/core/manager/loader/FeedLoader;

    move-result-object p1

    iget-wide v0, p0, Lru/rocketbank/core/manager/FeedManager$sendMoneyToFriend$1;->$id:J

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/core/manager/loader/FeedLoader;->removeFromCacheById(J)V

    return-void
.end method

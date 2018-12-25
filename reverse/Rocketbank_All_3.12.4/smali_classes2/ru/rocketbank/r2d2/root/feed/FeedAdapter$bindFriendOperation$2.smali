.class public final Lru/rocketbank/r2d2/root/feed/FeedAdapter$bindFriendOperation$2;
.super Ljava/lang/Object;
.source "FeedAdapter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedAdapter;->bindFriendOperation(Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/core/model/dto/operations/Friend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/FeedAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/FeedAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 481
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$bindFriendOperation$2;->this$0:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAction(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$bindFriendOperation$2;->this$0:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->access$getFeedPresenter$p(Lru/rocketbank/r2d2/root/feed/FeedAdapter;)Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->onRequestDeclined(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void
.end method

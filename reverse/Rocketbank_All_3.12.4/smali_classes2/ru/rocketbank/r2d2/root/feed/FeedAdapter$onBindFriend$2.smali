.class final Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$2;
.super Ljava/lang/Object;
.source "FeedAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedAdapter;->onBindFriend(Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/FriendOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $feedItem:Lru/rocketbank/core/network/model/FeedItem;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/FeedAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/FeedAdapter;Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$2;->this$0:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$2;->$feedItem:Lru/rocketbank/core/network/model/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 367
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$2;->this$0:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$2;->$feedItem:Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->removeItem(Lru/rocketbank/core/network/model/FeedItem;)V

    .line 368
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$2;->this$0:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->access$getFeedPresenter$p(Lru/rocketbank/r2d2/root/feed/FeedAdapter;)Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$2;->$feedItem:Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->stashOperation(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void
.end method

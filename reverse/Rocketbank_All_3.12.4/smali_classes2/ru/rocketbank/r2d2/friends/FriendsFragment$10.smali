.class Lru/rocketbank/r2d2/friends/FriendsFragment$10;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/FriendsFragment;->requestCursorUpdate(Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

.field final synthetic val$queryPart:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendsFragment;Ljava/lang/String;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$10;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$10;->val$queryPart:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 369
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment$10;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 374
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$10;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$10;->val$queryPart:Ljava/lang/String;

    invoke-static {v1, v2}, Lru/rocketbank/r2d2/friends/FriendsFragment;->access$200(Lru/rocketbank/r2d2/friends/FriendsFragment;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    :try_start_1
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    .line 380
    :cond_0
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 381
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 386
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 389
    :cond_1
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 390
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

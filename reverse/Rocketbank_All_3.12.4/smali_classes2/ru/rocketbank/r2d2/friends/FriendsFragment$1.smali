.class Lru/rocketbank/r2d2/friends/FriendsFragment$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/FriendsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/events/ContactsEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$1;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 170
    check-cast p1, Lru/rocketbank/core/events/ContactsEvent;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment$1;->call(Lru/rocketbank/core/events/ContactsEvent;)V

    return-void
.end method

.method public call(Lru/rocketbank/core/events/ContactsEvent;)V
    .locals 1

    .line 173
    invoke-virtual {p1}, Lru/rocketbank/core/events/ContactsEvent;->getInProgressEvent()Lru/rocketbank/core/events/InProgressEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$1;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->access$000(Lru/rocketbank/r2d2/friends/FriendsFragment;)V

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$1;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->onRocketFriendsLoaded(Lru/rocketbank/core/events/ContactsEvent;)V

    return-void
.end method

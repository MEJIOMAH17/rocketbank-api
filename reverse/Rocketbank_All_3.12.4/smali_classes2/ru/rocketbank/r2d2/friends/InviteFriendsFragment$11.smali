.class Lru/rocketbank/r2d2/friends/InviteFriendsFragment$11;
.super Ljava/lang/Object;
.source "InviteFriendsFragment.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->onRocketFriendsLoaded(Lru/rocketbank/core/events/ContactsEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/util/List<",
        "Lru/rocketbank/core/model/contact/InvitedFriend;",
        ">;",
        "Lrx/Observable<",
        "Lru/rocketbank/core/model/contact/InvitedFriend;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$11;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$11;->call(Ljava/util/List;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/util/List;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/InvitedFriend;",
            ">;)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/contact/InvitedFriend;",
            ">;"
        }
    .end annotation

    .line 252
    invoke-static {p1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

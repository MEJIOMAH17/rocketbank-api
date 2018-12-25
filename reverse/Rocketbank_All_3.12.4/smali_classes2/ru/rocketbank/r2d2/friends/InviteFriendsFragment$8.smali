.class Lru/rocketbank/r2d2/friends/InviteFriendsFragment$8;
.super Ljava/lang/Object;
.source "InviteFriendsFragment.java"

# interfaces
.implements Lrx/functions/Func2;


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
        "Lrx/functions/Func2<",
        "Ljava/util/ArrayList<",
        "Lru/rocketbank/core/model/contact/InvitedFriend;",
        ">;",
        "Lru/rocketbank/core/model/contact/InvitedFriend;",
        "Ljava/util/ArrayList<",
        "Lru/rocketbank/core/model/contact/InvitedFriend;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$8;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 267
    check-cast p1, Ljava/util/ArrayList;

    check-cast p2, Lru/rocketbank/core/model/contact/InvitedFriend;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$8;->call(Ljava/util/ArrayList;Lru/rocketbank/core/model/contact/InvitedFriend;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/util/ArrayList;Lru/rocketbank/core/model/contact/InvitedFriend;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/contact/InvitedFriend;",
            ">;",
            "Lru/rocketbank/core/model/contact/InvitedFriend;",
            ")",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/contact/InvitedFriend;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

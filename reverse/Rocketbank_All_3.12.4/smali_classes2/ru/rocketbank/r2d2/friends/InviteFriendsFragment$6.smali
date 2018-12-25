.class Lru/rocketbank/r2d2/friends/InviteFriendsFragment$6;
.super Ljava/lang/Object;
.source "InviteFriendsFragment.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1<",
        "Ljava/util/ArrayList<",
        "Lru/rocketbank/core/model/contact/InvitedFriend;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

.field final synthetic val$contactsEvent:Lru/rocketbank/core/events/ContactsEvent;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;Lru/rocketbank/core/events/ContactsEvent;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$6;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$6;->val$contactsEvent:Lru/rocketbank/core/events/ContactsEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 274
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$6;->call(Ljava/util/ArrayList;)V

    return-void
.end method

.method public call(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/contact/InvitedFriend;",
            ">;)V"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$6;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$6;->val$contactsEvent:Lru/rocketbank/core/events/ContactsEvent;

    invoke-virtual {v2}, Lru/rocketbank/core/events/ContactsEvent;->getRocketContactIDS()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->rocketContactIDS:Ljava/util/ArrayList;

    .line 278
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$6;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$6;->val$contactsEvent:Lru/rocketbank/core/events/ContactsEvent;

    invoke-virtual {v2}, Lru/rocketbank/core/events/ContactsEvent;->getServerContacts()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->rocketFriends:Ljava/util/ArrayList;

    .line 279
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$6;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->access$402(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 280
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$6;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->refreshDataSources()V

    return-void
.end method

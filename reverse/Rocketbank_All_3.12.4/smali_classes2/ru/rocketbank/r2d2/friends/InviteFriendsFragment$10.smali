.class Lru/rocketbank/r2d2/friends/InviteFriendsFragment$10;
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
        "Lru/rocketbank/core/model/contact/InvitedFriend;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$10;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lru/rocketbank/core/model/contact/InvitedFriend;)Ljava/lang/Boolean;
    .locals 0

    .line 258
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/InvitedFriend;->getUser()Lru/rocketbank/core/model/contact/ServerContact;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/ServerContact;->getFirstName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/rocketbank/r2d2/Utils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 255
    check-cast p1, Lru/rocketbank/core/model/contact/InvitedFriend;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$10;->call(Lru/rocketbank/core/model/contact/InvitedFriend;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

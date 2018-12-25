.class Lru/rocketbank/r2d2/friends/InviteFriendsFragment$5;
.super Ljava/lang/Object;
.source "InviteFriendsFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->requestURL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$5;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 197
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$5;->call(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method public call(Lru/rocketbank/core/model/UserModel;)V
    .locals 2

    .line 200
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getInvites()Lru/rocketbank/core/model/InvitesModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/InvitesModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://"

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://"

    const-string v1, ""

    .line 202
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 204
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$5;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    iget-object v0, v0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->titleURL:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

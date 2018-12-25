.class Lru/rocketbank/r2d2/friends/FriendsFragment$3;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lrx/functions/Action2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/FriendsFragment;->createFriendAdapter()Lru/rocketbank/r2d2/friends/FriendsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action2<",
        "Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;",
        "Lru/rocketbank/core/model/contact/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$3;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 190
    check-cast p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;

    check-cast p2, Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/friends/FriendsFragment$3;->call(Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;Lru/rocketbank/core/model/contact/Contact;)V

    return-void
.end method

.method public call(Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;Lru/rocketbank/core/model/contact/Contact;)V
    .locals 7

    .line 193
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$3;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lru/rocketbank/core/model/contact/Contact;->updateContacts(Landroid/content/Context;)V

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "a"

    .line 196
    iget-object v2, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->avatar:Lru/rocketbank/core/widgets/ContactAvatarView;

    invoke-virtual {v2}, Lru/rocketbank/core/widgets/ContactAvatarView;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "n"

    .line 197
    iget-object v2, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$3;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/support/v4/util/Pair;

    const/4 v3, 0x0

    iget-object v4, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->avatar:Lru/rocketbank/core/widgets/ContactAvatarView;

    iget-object v5, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->avatar:Lru/rocketbank/core/widgets/ContactAvatarView;

    .line 200
    invoke-virtual {v5}, Lru/rocketbank/core/widgets/ContactAvatarView;->getTransitionName()Ljava/lang/String;

    move-result-object v5

    .line 1086
    new-instance v6, Landroid/support/v4/util/Pair;

    invoke-direct {v6, v4, v5}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    const/4 v3, 0x1

    .line 200
    iget-object v4, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v5, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 201
    invoke-virtual {v5}, Landroid/widget/TextView;->getTransitionName()Ljava/lang/String;

    move-result-object v5

    .line 2086
    new-instance v6, Landroid/support/v4/util/Pair;

    invoke-direct {v6, v4, v5}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    const/4 v3, 0x2

    .line 201
    iget-object v4, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->root:Landroid/view/ViewGroup;

    iget-object p1, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->root:Landroid/view/ViewGroup;

    .line 202
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTransitionName()Ljava/lang/String;

    move-result-object p1

    .line 3086
    new-instance v5, Landroid/support/v4/util/Pair;

    invoke-direct {v5, v4, p1}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    .line 199
    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/support/v4/util/Pair;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object p1

    .line 203
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$3;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v1, p2, v0, p1}, Lru/rocketbank/r2d2/friends/FriendActivity;->startActivity(Landroid/content/Context;Lru/rocketbank/core/model/contact/Contact;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    .line 206
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$3;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/friends/FriendActivity;->startActivity(Landroid/content/Context;Lru/rocketbank/core/model/contact/Contact;)V

    return-void
.end method

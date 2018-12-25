.class final Lru/rocketbank/r2d2/friends/ChooseFriendFragment$createFriendAdapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChooseFriendFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/ChooseFriendFragment;->createFriendAdapter()Lru/rocketbank/r2d2/friends/ChooseFriendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;",
        "Lru/rocketbank/core/model/contact/Contact;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/ChooseFriendFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/ChooseFriendFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/ChooseFriendFragment$createFriendAdapter$1;->this$0:Lru/rocketbank/r2d2/friends/ChooseFriendFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;

    check-cast p2, Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/friends/ChooseFriendFragment$createFriendAdapter$1;->invoke(Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;Lru/rocketbank/core/model/contact/Contact;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;Lru/rocketbank/core/model/contact/Contact;)V
    .locals 3

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "contact"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/ChooseFriendFragment$createFriendAdapter$1;->this$0:Lru/rocketbank/r2d2/friends/ChooseFriendFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/ChooseFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lru/rocketbank/r2d2/friends/ChooseFriendActivity;->Companion:Lru/rocketbank/r2d2/friends/ChooseFriendActivity$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/friends/ChooseFriendActivity$Companion;->getKEY_CONTACT()Ljava/lang/String;

    move-result-object v2

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 18
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/ChooseFriendFragment$createFriendAdapter$1;->this$0:Lru/rocketbank/r2d2/friends/ChooseFriendFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/ChooseFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

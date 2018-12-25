.class public final Lru/rocketbank/r2d2/friends/ChooseFriendAdapter;
.super Lru/rocketbank/r2d2/friends/FriendsAdapter;
.source "ChooseFriendFragment.kt"


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;",
            "-",
            "Lru/rocketbank/core/model/contact/Contact;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onContactClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lru/rocketbank/r2d2/friends/ChooseFriendAdapter$sam$rx_functions_Action2$0;

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/friends/ChooseFriendAdapter$sam$rx_functions_Action2$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lrx/functions/Action2;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;-><init>(Lrx/functions/Action2;)V

    return-void
.end method


# virtual methods
.method protected final hasFriends()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final hasTransfers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

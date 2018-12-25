.class public final Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$Companion;
.super Ljava/lang/Object;
.source "TransferFriendAmountFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lru/rocketbank/core/model/contact/Contact;)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;
    .locals 3

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;-><init>()V

    .line 177
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "contact"

    .line 178
    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 180
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->setArguments(Landroid/os/Bundle;)V

    .line 181
    check-cast v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    return-object v0
.end method

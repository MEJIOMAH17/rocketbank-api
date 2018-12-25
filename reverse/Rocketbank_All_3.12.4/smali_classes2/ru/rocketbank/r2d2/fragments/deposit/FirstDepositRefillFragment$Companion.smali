.class public final Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$Companion;
.super Ljava/lang/Object;
.source "FirstDepositRefillFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 467
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lru/rocketbank/core/network/model/Deposit;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;
    .locals 3

    const-string v0, "deposit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCard"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "money"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;-><init>()V

    .line 479
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DEPOSIT"

    .line 480
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, ""

    if-eqz p2, :cond_0

    const-string p1, "true"

    :cond_0
    const-string p2, "REFILLABLE"

    .line 483
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "CARD"

    .line 484
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MONEY"

    .line 485
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "CURRENCY"

    .line 486
    invoke-virtual {v1, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

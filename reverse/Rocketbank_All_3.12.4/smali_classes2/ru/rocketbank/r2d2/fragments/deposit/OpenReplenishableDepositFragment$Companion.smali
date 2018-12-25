.class public final Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$Companion;
.super Ljava/lang/Object;
.source "OpenReplenishableDepositFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;)Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;
    .locals 3

    const-string v0, "deposits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;-><init>()V

    .line 172
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DEPOSITS"

    .line 173
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.class public final Lru/rocketbank/r2d2/fragments/deposit/DepositTypeFragment$Companion;
.super Ljava/lang/Object;
.source "DepositTypeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/deposit/DepositTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositTypeFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lru/rocketbank/core/network/model/Deposit;)Lru/rocketbank/r2d2/fragments/deposit/DepositTypeFragment;
    .locals 2

    const-string v0, "deposit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ARG_DEPOSIT"

    .line 47
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    new-instance p1, Lru/rocketbank/r2d2/fragments/deposit/DepositTypeFragment;

    invoke-direct {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositTypeFragment;-><init>()V

    .line 49
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositTypeFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

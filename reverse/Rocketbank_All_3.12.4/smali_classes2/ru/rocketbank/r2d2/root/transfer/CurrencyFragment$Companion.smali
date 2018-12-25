.class public final Lru/rocketbank/r2d2/root/transfer/CurrencyFragment$Companion;
.super Ljava/lang/Object;
.source "CurrencyFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/transfer/CurrencyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/transfer/CurrencyFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lru/rocketbank/r2d2/root/transfer/CurrencyFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/transfer/CurrencyFragment;-><init>()V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CURRENCY"

    .line 32
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/transfer/CurrencyFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

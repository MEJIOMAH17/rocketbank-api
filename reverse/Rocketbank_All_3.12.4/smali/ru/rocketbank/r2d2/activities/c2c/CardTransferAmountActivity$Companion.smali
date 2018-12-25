.class public final Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity$Companion;
.super Ljava/lang/Object;
.source "CardTransferAmountActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;Lru/rocketbank/core/model/CardModel;Lru/rocketbank/core/model/CardData;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    sget-object v1, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$Companion;->getCARD_EXTRA()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    sget-object p2, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$Companion;->getCARD_DATA_EXTRA()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Landroid/os/Parcelable;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

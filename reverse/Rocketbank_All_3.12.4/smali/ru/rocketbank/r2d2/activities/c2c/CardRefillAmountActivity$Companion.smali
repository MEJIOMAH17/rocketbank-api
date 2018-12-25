.class public final Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity$Companion;
.super Ljava/lang/Object;
.source "CardRefillAmountActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;Lru/rocketbank/core/model/CardData;Lru/rocketbank/core/model/CardModel;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    sget-object v1, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$Companion;->getCARD_EXTRA()Ljava/lang/String;

    move-result-object v1

    check-cast p3, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    sget-object p3, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$Companion;

    invoke-virtual {p3}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$Companion;->getCARD_DATA_EXTRA()Ljava/lang/String;

    move-result-object p3

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

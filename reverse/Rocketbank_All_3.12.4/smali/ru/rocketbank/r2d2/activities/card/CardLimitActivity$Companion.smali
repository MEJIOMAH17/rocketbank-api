.class public final Lru/rocketbank/r2d2/activities/card/CardLimitActivity$Companion;
.super Ljava/lang/Object;
.source "CardLimitActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/card/CardLimitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEXTRA_CARD_TOKEN()Ljava/lang/String;
    .locals 1

    .line 224
    invoke-static {}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->access$getEXTRA_CARD_TOKEN$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$Companion;->getEXTRA_CARD_TOKEN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

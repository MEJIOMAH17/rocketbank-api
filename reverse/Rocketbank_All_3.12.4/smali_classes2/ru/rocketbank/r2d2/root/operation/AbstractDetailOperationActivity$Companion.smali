.class public final Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;
.super Ljava/lang/Object;
.source "AbstractDetailOperationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOPERATION_EXTRA()Ljava/lang/String;
    .locals 1

    .line 264
    invoke-static {}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->access$getOPERATION_EXTRA$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOUT_STATE_COMMENT()Ljava/lang/String;
    .locals 1

    .line 266
    invoke-static {}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->access$getOUT_STATE_COMMENT$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOUT_STATE_COMMENT_SAVED()Ljava/lang/String;
    .locals 1

    .line 267
    invoke-static {}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->access$getOUT_STATE_COMMENT_SAVED$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 262
    invoke-static {}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final start(Landroid/content/Context;Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/operations/Operation;->isRocketRubleOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$Companion;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void

    .line 280
    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/DetailOperationActivity$Companion;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void
.end method

.method public final start(Landroid/content/Context;Lru/rocketbank/core/model/dto/operations/Operation;Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/operations/Operation;->isRocketRubleOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$Companion;

    invoke-virtual {v0, p1, p2, p3}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/dto/operations/Operation;Landroid/support/v4/app/ActivityOptionsCompat;)V

    return-void

    .line 273
    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/DetailOperationActivity$Companion;

    invoke-virtual {v0, p1, p2, p3}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/dto/operations/Operation;Landroid/support/v4/app/ActivityOptionsCompat;)V

    return-void
.end method

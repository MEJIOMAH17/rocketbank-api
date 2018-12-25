.class public final Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity$Companion;
.super Ljava/lang/Object;
.source "CardTransferProcessActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCARD_DATA()Ljava/lang/String;
    .locals 1

    .line 228
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;->access$getCARD_DATA$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCARD_MODEL()Ljava/lang/String;
    .locals 1

    .line 229
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;->access$getCARD_MODEL$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMONEY_BODY()Ljava/lang/String;
    .locals 1

    .line 230
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;->access$getMONEY_BODY$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPROCESSING_EXECUTED()Ljava/lang/String;
    .locals 1

    .line 220
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;->access$getPROCESSING_EXECUTED$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getREQUEST_PROCESSING()I
    .locals 1

    .line 219
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;->access$getREQUEST_PROCESSING$cp()I

    move-result v0

    return v0
.end method

.method public final getSTATUS_APPROVED()I
    .locals 1

    .line 223
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;->access$getSTATUS_APPROVED$cp()I

    move-result v0

    return v0
.end method

.method public final getSTATUS_ERROR()I
    .locals 1

    .line 222
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;->access$getSTATUS_ERROR$cp()I

    move-result v0

    return v0
.end method

.method public final getSTATUS_PROCESSING()I
    .locals 1

    .line 224
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;->access$getSTATUS_PROCESSING$cp()I

    move-result v0

    return v0
.end method

.method public final getSTATUS_UNKNOWN()I
    .locals 1

    .line 226
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;->access$getSTATUS_UNKNOWN$cp()I

    move-result v0

    return v0
.end method

.method public final getSTATUS_WTF()I
    .locals 1

    .line 225
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;->access$getSTATUS_WTF$cp()I

    move-result v0

    return v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 217
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final newInstance(Landroid/content/Context;Lru/rocketbank/core/network/model/SendMoneyBody;Lru/rocketbank/core/model/CardModel;Lru/rocketbank/core/model/CardData;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendMoneyBody"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity$Companion;->getCARD_MODEL()Ljava/lang/String;

    move-result-object v2

    check-cast p3, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 236
    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity$Companion;->getCARD_DATA()Ljava/lang/String;

    move-result-object p3

    check-cast p4, Landroid/os/Parcelable;

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 237
    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity$Companion;->getMONEY_BODY()Ljava/lang/String;

    move-result-object p3

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

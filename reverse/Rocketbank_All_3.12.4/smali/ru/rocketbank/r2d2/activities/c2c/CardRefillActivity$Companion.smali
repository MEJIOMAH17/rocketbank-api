.class public final Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$Companion;
.super Ljava/lang/Object;
.source "CardRefillActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic AMOUNT$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic CARD_BODY$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic PROCESSING_EXECUTED$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic STATUS_APPROVED$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic STATUS_ERROR$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic STATUS_PROCESSING$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic STATUS_UNKNOWN$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic STATUS_WTF$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic TAG$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getAMOUNT()Ljava/lang/String;
    .locals 1

    .line 233
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->access$getAMOUNT$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCARD_BODY()Ljava/lang/String;
    .locals 1

    .line 234
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->access$getCARD_BODY$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPROCESSING_EXECUTED()Ljava/lang/String;
    .locals 1

    .line 225
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->access$getPROCESSING_EXECUTED$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSTATUS_APPROVED()I
    .locals 1

    .line 228
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->access$getSTATUS_APPROVED$cp()I

    move-result v0

    return v0
.end method

.method public final getSTATUS_ERROR()I
    .locals 1

    .line 227
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->access$getSTATUS_ERROR$cp()I

    move-result v0

    return v0
.end method

.method public final getSTATUS_PROCESSING()I
    .locals 1

    .line 229
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->access$getSTATUS_PROCESSING$cp()I

    move-result v0

    return v0
.end method

.method public final getSTATUS_UNKNOWN()I
    .locals 1

    .line 231
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->access$getSTATUS_UNKNOWN$cp()I

    move-result v0

    return v0
.end method

.method public final getSTATUS_WTF()I
    .locals 1

    .line 230
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->access$getSTATUS_WTF$cp()I

    move-result v0

    return v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 223
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final newInstance(Landroid/content/Context;DLru/rocketbank/core/network/model/CardBody;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$Companion;->getAMOUNT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 241
    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$Companion;->getCARD_BODY()Ljava/lang/String;

    move-result-object p2

    check-cast p4, Landroid/os/Parcelable;

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

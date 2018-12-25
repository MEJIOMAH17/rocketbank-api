.class public final Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity$Companion;
.super Ljava/lang/Object;
.source "RocketCafeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity$Companion;-><init>()V

    return-void
.end method

.method private static synthetic CAFE_URI_SCHEME$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic CANCEL_RESULT$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic ERROR_RESULT$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic KEY_AMOUNT$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic OK_RESULT$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final start(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    invoke-static {}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->access$getKEY_AMOUNT$cp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

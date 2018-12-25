.class public final Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;
.super Ljava/lang/Object;
.source "Enter3dSecActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 271
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic ERROR$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic EXTRA_HTML$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic EXTRA_ID$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic REQUEST_CODE$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic RESULT$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic RESULT_FAILED$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic RESULT_OK$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic TAG$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic TIMEOUT$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getERROR()Ljava/lang/String;
    .locals 1

    .line 283
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getERROR$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getREQUEST_CODE()I
    .locals 1

    .line 281
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getREQUEST_CODE$cp()I

    move-result v0

    return v0
.end method

.method public final getRESULT()Ljava/lang/String;
    .locals 1

    .line 282
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getRESULT$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRESULT_FAILED()I
    .locals 1

    .line 279
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getRESULT_FAILED$cp()I

    move-result v0

    return v0
.end method

.method public final getRESULT_OK()I
    .locals 1

    .line 278
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getRESULT_OK$cp()I

    move-result v0

    return v0
.end method

.method public final getTIMEOUT()J
    .locals 2

    .line 284
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getTIMEOUT$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final startActivity(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "html"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    new-instance v0, Landroid/content/Intent;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getEXTRA_ID$cp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    invoke-static {}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getEXTRA_HTML$cp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    sget-object p2, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity$Companion;->getREQUEST_PROCESSING()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

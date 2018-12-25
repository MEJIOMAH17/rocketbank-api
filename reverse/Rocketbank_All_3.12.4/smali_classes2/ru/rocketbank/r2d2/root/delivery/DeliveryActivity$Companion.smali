.class public final Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;
.super Ljava/lang/Object;
.source "DeliveryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;-><init>()V

    return-void
.end method

.method private static synthetic KEY_COMPLETED$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic KEY_IS_LEAD$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic KEY_TOKEN$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic STEP_SCHEDULED$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic STEP_SELECT_ADDRESS$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic STEP_SELECT_DATE$annotations()V
    .locals 0

    return-void
.end method

.method public static bridge synthetic startCompleted$default(Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 192
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;->startCompleted(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic startPending$default(Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 184
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;->startPending(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final startCompleted(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    invoke-static {}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->access$getKEY_TOKEN$cp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-static {}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->access$getKEY_COMPLETED$cp()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    invoke-static {}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->access$getKEY_IS_LEAD$cp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startPending(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    invoke-static {}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->access$getKEY_TOKEN$cp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-static {}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->access$getKEY_IS_LEAD$cp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

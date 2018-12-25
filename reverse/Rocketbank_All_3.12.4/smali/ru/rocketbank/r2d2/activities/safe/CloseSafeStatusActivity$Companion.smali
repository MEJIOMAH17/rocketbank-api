.class public final Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity$Companion;
.super Ljava/lang/Object;
.source "CloseSafeStatusActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIntent(Landroid/content/Context;Lru/rocketbank/core/model/SafeAccount;)Landroid/content/Intent;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeAccount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lru/rocketbank/r2d2/activities/StatusActivity;->Companion:Lru/rocketbank/r2d2/activities/StatusActivity$Companion;

    const-class v1, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;

    const v2, 0x7f1100c7

    invoke-virtual {v0, p1, v1, v2}, Lru/rocketbank/r2d2/activities/StatusActivity$Companion;->createIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object p1

    .line 18
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity$Companion;->getKEY_DATA()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "intent"

    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getKEY_DATA()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-static {}, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->access$getKEY_DATA$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

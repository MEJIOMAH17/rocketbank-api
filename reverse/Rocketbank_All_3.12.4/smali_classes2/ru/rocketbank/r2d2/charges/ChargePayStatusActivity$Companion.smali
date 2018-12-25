.class public final Lru/rocketbank/r2d2/charges/ChargePayStatusActivity$Companion;
.super Ljava/lang/Object;
.source "ChargePayStatusActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIntent(Landroid/app/Activity;Lru/rocketbank/core/model/charge/ChargeModel;)Landroid/content/Intent;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chargeModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lru/rocketbank/core/model/charge/ChargeModel;->getDocument_type()Lru/rocketbank/core/model/charge/DocumentType;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/model/charge/DocumentType;->ctc:Lru/rocketbank/core/model/charge/DocumentType;

    if-ne v0, v1, :cond_0

    const v0, 0x7f110370

    goto :goto_0

    :cond_0
    const v0, 0x7f11045c

    .line 32
    :goto_0
    sget-object v1, Lru/rocketbank/r2d2/activities/StatusActivity;->Companion:Lru/rocketbank/r2d2/activities/StatusActivity$Companion;

    check-cast p1, Landroid/content/Context;

    const-class v2, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;

    invoke-virtual {v1, p1, v2, v0}, Lru/rocketbank/r2d2/activities/StatusActivity$Companion;->createIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object p1

    .line 33
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->access$getKEY_DATA$cp()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "intent"

    .line 34
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.class public final Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;
.super Ljava/lang/Object;
.source "ChargeInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/charges/ChargeInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIntent(Landroid/content/Context;Ljava/lang/Class;Lru/rocketbank/core/model/charge/ChargeModel;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lru/rocketbank/r2d2/charges/ChargeInfoActivity;",
            ">;",
            "Lru/rocketbank/core/model/charge/ChargeModel;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chargeModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object p1, p0

    check-cast p1, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;->getKEY_CHARGE()Ljava/lang/String;

    move-result-object p1

    check-cast p3, Landroid/os/Parcelable;

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Intent(context, activity\u2026(KEY_CHARGE, chargeModel)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getKEY_CHARGE()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->access$getKEY_CHARGE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getREQUEST_CODE()I
    .locals 1

    .line 21
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->access$getREQUEST_CODE$cp()I

    move-result v0

    return v0
.end method

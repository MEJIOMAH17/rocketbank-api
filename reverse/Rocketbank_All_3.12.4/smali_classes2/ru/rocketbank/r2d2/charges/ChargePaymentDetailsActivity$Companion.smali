.class public final Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;
.super Ljava/lang/Object;
.source "ChargePaymentDetailsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;-><init>()V

    return-void
.end method

.method private final createIntent(Landroid/content/Context;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeType;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    move-object p1, p0

    check-cast p1, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->getKEY_ICON()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    .line 44
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 46
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->getKEY_CHARGE_TYPE()Ljava/lang/String;

    move-result-object p1

    check-cast p3, Ljava/io/Serializable;

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method static bridge synthetic createIntent$default(Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;Landroid/content/Context;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeType;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/content/Intent;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 40
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->createIntent(Landroid/content/Context;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeType;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final start(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p3, :cond_2

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 55
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 57
    :cond_1
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string v0, "\u041e\u043f\u0430, \u0447\u0443\u0434\u0435\u0441\u0430 \u0441\u043b\u0443\u0447\u0430\u044e\u0442\u0441\u044f!"

    invoke-direct {p3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Throwable;

    invoke-static {p3}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 52
    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic start$default(Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 50
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->start(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic start$default(Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;Landroid/content/Context;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeType;Landroid/os/Bundle;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 35
    invoke-virtual/range {v1 .. v6}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeType;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final getKEY_CHARGE()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->access$getKEY_CHARGE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKEY_CHARGE_TYPE()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->access$getKEY_CHARGE_TYPE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKEY_ICON()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->access$getKEY_ICON$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKEY_LOAD_ON_START()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->access$getKEY_LOAD_ON_START$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeType;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chargeType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;

    invoke-direct {v0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->createIntent(Landroid/content/Context;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeType;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    .line 37
    invoke-direct {v0, p1, p2, p5}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->start(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

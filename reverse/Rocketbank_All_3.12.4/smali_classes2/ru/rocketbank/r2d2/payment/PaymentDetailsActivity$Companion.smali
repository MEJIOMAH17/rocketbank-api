.class public final Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;
.super Ljava/lang/Object;
.source "PaymentDetailsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;-><init>()V

    return-void
.end method

.method public static bridge synthetic start$default(Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;Landroid/content/Context;Lru/rocketbank/core/model/provider/Provider;Landroid/os/Bundle;Lru/rocketbank/core/model/transfers/Template;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 108
    invoke-virtual/range {v1 .. v6}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/provider/Provider;Landroid/os/Bundle;Lru/rocketbank/core/model/transfers/Template;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final getPROVIDER_EXTRA()Ljava/lang/String;
    .locals 1

    .line 105
    invoke-static {}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->access$getPROVIDER_EXTRA$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final start(Landroid/content/Context;Lru/rocketbank/core/model/provider/Provider;Landroid/os/Bundle;Lru/rocketbank/core/model/transfers/Template;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;->getPROVIDER_EXTRA()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    .line 112
    invoke-static {}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->access$getPAYMENT_EXTRA$cp()Ljava/lang/String;

    move-result-object p2

    check-cast p4, Ljava/io/Serializable;

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    .line 115
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    if-eqz p5, :cond_4

    .line 117
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-ge p2, p3, :cond_2

    goto :goto_0

    .line 120
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x10

    if-lt p2, p3, :cond_3

    .line 121
    invoke-virtual {p1, v0, p5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 123
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "\u041e\u043f\u0430, \u0447\u0443\u0434\u0435\u0441\u0430 \u0441\u043b\u0443\u0447\u0430\u044e\u0442\u0441\u044f!"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p2}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 118
    :cond_4
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

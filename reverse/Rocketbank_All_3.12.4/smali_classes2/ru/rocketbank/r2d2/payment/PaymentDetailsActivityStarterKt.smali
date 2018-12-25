.class public final Lru/rocketbank/r2d2/payment/PaymentDetailsActivityStarterKt;
.super Ljava/lang/Object;
.source "PaymentDetailsActivityStarter.kt"


# direct methods
.method public static final startPaymentActivity(Landroid/content/Context;Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/Provider;->getId()I

    move-result v0

    .line 13
    sget-object v1, Lru/rocketbank/core/model/charge/ChargeType;->PENALTY:Lru/rocketbank/core/model/charge/ChargeType;

    invoke-virtual {v1}, Lru/rocketbank/core/model/charge/ChargeType;->getProviderID()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v1, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;

    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/Provider;->getIcon()Ljava/lang/String;

    move-result-object v3

    const-string v0, "provider.icon"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lru/rocketbank/core/model/charge/ChargeType;->PENALTY:Lru/rocketbank/core/model/charge/ChargeType;

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeType;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    .line 15
    :cond_0
    sget-object v1, Lru/rocketbank/core/model/charge/ChargeType;->TAX:Lru/rocketbank/core/model/charge/ChargeType;

    invoke-virtual {v1}, Lru/rocketbank/core/model/charge/ChargeType;->getProviderID()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v1, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;

    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/Provider;->getIcon()Ljava/lang/String;

    move-result-object v3

    const-string v0, "provider.icon"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lru/rocketbank/core/model/charge/ChargeType;->TAX:Lru/rocketbank/core/model/charge/ChargeType;

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeType;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    .line 17
    :cond_1
    sget-object v1, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/provider/Provider;Landroid/os/Bundle;Lru/rocketbank/core/model/transfers/Template;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic startPaymentActivity$default(Landroid/content/Context;Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;Landroid/os/Bundle;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x8

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 10
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivityStarterKt;->startPaymentActivity(Landroid/content/Context;Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

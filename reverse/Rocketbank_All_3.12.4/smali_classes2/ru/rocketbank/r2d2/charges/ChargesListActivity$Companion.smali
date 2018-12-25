.class public final Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;
.super Ljava/lang/Object;
.source "ChargesListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/charges/ChargesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;-><init>()V

    return-void
.end method

.method public static bridge synthetic createChargeSumText$default(Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;Landroid/content/Context;Lru/rocketbank/core/model/charge/ChargeModel;ILjava/lang/Integer;ILjava/lang/Object;)Landroid/text/SpannableStringBuilder;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const p3, 0x7f060228

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 96
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->createChargeSumText(Landroid/content/Context;Lru/rocketbank/core/model/charge/ChargeModel;ILjava/lang/Integer;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic start$default(Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 76
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic start$default(Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
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

    .line 57
    invoke-virtual/range {v1 .. v6}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic start$default(Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v1, p7, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, p3

    :goto_0
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, p4

    :goto_1
    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object v8, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 66
    invoke-virtual/range {v3 .. v9}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createChargeSumText(Landroid/content/Context;Lru/rocketbank/core/model/charge/ChargeModel;ILjava/lang/Integer;)Landroid/text/SpannableStringBuilder;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chargeModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    .line 98
    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v1

    .line 100
    new-instance v2, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-direct {v2, p1, v0, v1}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    .line 102
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Lru/rocketbank/core/model/charge/ChargeModel;->getRequisites()Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    move-result-object v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getAmount()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    sget-object v1, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v1, v7}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLru/rocketbank/core/model/enums/Currency;Z)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/16 v5, 0x21

    if-eqz p4, :cond_1

    .line 106
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v6, v8, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 108
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 105
    invoke-virtual {v0, v6, v7, v8, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 112
    :cond_1
    invoke-virtual {p2}, Lru/rocketbank/core/model/charge/ChargeModel;->getDiscount_amount()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 114
    new-instance p3, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p3}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 116
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 113
    invoke-virtual {v0, p3, v7, v6, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string p3, " ("

    .line 119
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 120
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    .line 121
    invoke-virtual {p2}, Lru/rocketbank/core/model/charge/ChargeModel;->getDiscount_amount()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :cond_2
    sget-object v6, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    invoke-virtual {v2, v3, v4, v6, v7}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLru/rocketbank/core/model/enums/Currency;Z)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 124
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, 0x7f0600a4

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 126
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 123
    invoke-virtual {v0, v2, p3, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-eqz p4, :cond_3

    .line 131
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {v2, p4, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 133
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p4

    .line 130
    invoke-virtual {v0, v2, p3, p4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 137
    :cond_3
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    const-string p4, " "

    .line 139
    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {v0, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const p4, 0x7f1104c9

    .line 140
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {v0, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p4, " "

    .line 141
    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {v0, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 142
    sget-object p4, Lru/rocketbank/core/model/charge/ChargeModel;->Companion:Lru/rocketbank/core/model/charge/ChargeModel$Companion;

    invoke-virtual {p4}, Lru/rocketbank/core/model/charge/ChargeModel$Companion;->getDATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object p4

    invoke-virtual {p2}, Lru/rocketbank/core/model/charge/ChargeModel;->getDiscount_date_calendar()Ljava/util/Calendar;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 145
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    const p4, 0x7f060048

    invoke-static {p1, p4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 147
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    .line 144
    invoke-virtual {v0, p2, p3, p1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 151
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 p2, 0xe

    invoke-direct {p1, p2, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 153
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 150
    invoke-virtual {v0, p1, p3, p2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string p1, ")"

    .line 156
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 159
    :cond_5
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p1, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 161
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    .line 158
    invoke-virtual {v0, p2, v7, p1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_2
    return-object v0
.end method

.method public final createIntent(Landroid/content/Context;Lru/rocketbank/core/model/charge/ChargeType;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chargeType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/charges/ChargesListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    move-object p1, p0

    check-cast p1, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->getKEY_CHARGE_TYPE()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 92
    sget-object p1, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->getKEY_ICON()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final getKEY_CHARGES()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->access$getKEY_CHARGES$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKEY_CHARGE_TYPE()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->access$getKEY_CHARGE_TYPE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKEY_CTC()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->access$getKEY_CTC$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKEY_DRIVER_LICENCE()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->access$getKEY_DRIVER_LICENCE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKEY_INN()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->access$getKEY_INN$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKEY_LOAD_ACTUAL()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->access$getKEY_LOAD_ACTUAL$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKEY_RECYCLER_VIEW_STATE()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->access$getKEY_RECYCLER_VIEW_STATE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKEY_UIN()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-static {}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->access$getKEY_UIN$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

    sget-object v1, Lru/rocketbank/core/model/charge/ChargeType;->TAX:Lru/rocketbank/core/model/charge/ChargeType;

    invoke-virtual {v0, p1, v1, p2}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->createIntent(Landroid/content/Context;Lru/rocketbank/core/model/charge/ChargeType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 78
    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->getKEY_INN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->getKEY_LOAD_ACTUAL()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

    sget-object v1, Lru/rocketbank/core/model/charge/ChargeType;->PENALTY:Lru/rocketbank/core/model/charge/ChargeType;

    invoke-virtual {v0, p1, v1, p2}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->createIntent(Landroid/content/Context;Lru/rocketbank/core/model/charge/ChargeType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 59
    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->getKEY_CTC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->getKEY_DRIVER_LICENCE()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->getKEY_UIN()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->getKEY_LOAD_ACTUAL()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

    sget-object v1, Lru/rocketbank/core/model/charge/ChargeType;->PENALTY_TAX:Lru/rocketbank/core/model/charge/ChargeType;

    invoke-virtual {v0, p1, v1, p2}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->createIntent(Landroid/content/Context;Lru/rocketbank/core/model/charge/ChargeType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 68
    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->getKEY_CTC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->getKEY_DRIVER_LICENCE()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->getKEY_UIN()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->getKEY_INN()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->getKEY_LOAD_ACTUAL()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeType;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chargeType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

    invoke-virtual {v0, p1, p3, p2}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->createIntent(Landroid/content/Context;Lru/rocketbank/core/model/charge/ChargeType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 85
    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->getKEY_LOAD_ACTUAL()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

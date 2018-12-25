.class public final Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Companion;
.super Ljava/lang/Object;
.source "DatePeriodChooseDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;
    .locals 1

    const-string v0, "tax_period"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tax_period_kind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "quarter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "month"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v0, "year"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_3
    const-string v0, "date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 204
    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;-><init>(Ljava/lang/String;)V

    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    return-object p2

    :sswitch_4
    const-string v0, "halfyear"

    .line 203
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->Companion:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period$Companion;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period$Companion;->create(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    move-result-object p1

    return-object p1

    :sswitch_5
    const-string v0, "custom"

    .line 203
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 206
    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;-><init>(Ljava/lang/String;)V

    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    return-object p2

    .line 207
    :cond_0
    :goto_1
    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;-><init>(Ljava/lang/String;)V

    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x5069748f -> :sswitch_5
        -0x3280910 -> :sswitch_4
        0x2eefae -> :sswitch_3
        0x38883d -> :sswitch_2
        0x6342280 -> :sswitch_1
        0x26d3a2ac -> :sswitch_0
    .end sparse-switch
.end method

.class public final Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period$Companion;
.super Ljava/lang/Object;
.source "DatePeriodChooseDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatePeriodChooseDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatePeriodChooseDialog.kt\nru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period$Companion\n*L\n1#1,306:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;
    .locals 9

    const-string v0, "tax_period"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tax_period_kind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;-><init>()V

    .line 254
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 p1, 0x2

    new-array v2, p1, [Ljava/lang/String;

    const-string p1, "."

    const/4 v7, 0x0

    aput-object p1, v2, v7

    const-string p1, ":"

    const/4 v8, 0x1

    aput-object p1, v2, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 255
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v8, :cond_0

    .line 256
    check-cast v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    return-object v0

    .line 258
    :cond_0
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->setYear(I)V

    .line 259
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3280910

    if-eq v1, v2, :cond_3

    const v2, 0x6342280

    if-eq v1, v2, :cond_2

    const v2, 0x26d3a2ac

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "quarter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 261
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->setQuarter(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const-string v1, "month"

    .line 259
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 260
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->setMonth(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    const-string v1, "halfyear"

    .line 259
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 262
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->setHalf(Ljava/lang/Integer;)V

    .line 253
    :cond_4
    :goto_0
    check-cast v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    return-object v0
.end method

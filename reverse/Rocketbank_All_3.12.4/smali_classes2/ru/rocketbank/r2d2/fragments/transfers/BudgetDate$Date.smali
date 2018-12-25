.class public final Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;
.super Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;
.source "DatePeriodChooseDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Date"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatePeriodChooseDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatePeriodChooseDialog.kt\nru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date\n*L\n1#1,306:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date$Companion;

.field private static final format:Ljava/text/SimpleDateFormat;


# instance fields
.field private day:Ljava/lang/Integer;

.field private month:Ljava/lang/Integer;

.field private year:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->Companion:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date$Companion;

    .line 214
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->format:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;-><init>(Lkotlin/jvm/internal/Ref;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "period"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;-><init>()V

    .line 222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "calendar"

    .line 223
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    .line 224
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->day:Ljava/lang/Integer;

    const/4 p1, 0x2

    .line 225
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->month:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 226
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->year:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$getFormat$cp()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 212
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->format:Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public final getDay()Ljava/lang/Integer;
    .locals 1

    .line 217
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->day:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMonth()Ljava/lang/Integer;
    .locals 1

    .line 218
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->month:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getYear()Ljava/lang/Integer;
    .locals 1

    .line 219
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->year:Ljava/lang/Integer;

    return-object v0
.end method

.method public final kind()Ljava/lang/String;
    .locals 1

    const-string v0, "date"

    return-object v0
.end method

.method public final setDay(Ljava/lang/Integer;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->day:Ljava/lang/Integer;

    return-void
.end method

.method public final setMonth(Ljava/lang/Integer;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->month:Ljava/lang/Integer;

    return-void
.end method

.method public final setYear(Ljava/lang/Integer;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->year:Ljava/lang/Integer;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 238
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final value()Ljava/lang/String;
    .locals 4

    .line 232
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->format:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->year:Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    :goto_0
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 234
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->month:Ljava/lang/Integer;

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    :goto_1
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 235
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->day:Ljava/lang/Integer;

    const/4 v3, 0x5

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    :goto_2
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    const-string v2, "Calendar.getInstance().a\u2026MONTH))\n                }"

    .line 232
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format.format(Calendar.g\u2026)\n                }.time)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.class public final Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;
.super Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;
.source "DatePeriodChooseDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Period"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period$Companion;


# instance fields
.field private half:Ljava/lang/Integer;

.field private month:Ljava/lang/Integer;

.field private quarter:Ljava/lang/Integer;

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->Companion:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;-><init>(Lkotlin/jvm/internal/Ref;)V

    .line 270
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->year:I

    return-void
.end method


# virtual methods
.method public final getHalf()Ljava/lang/Integer;
    .locals 1

    .line 269
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->half:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMonth()Ljava/lang/Integer;
    .locals 1

    .line 267
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->month:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getQuarter()Ljava/lang/Integer;
    .locals 1

    .line 268
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->quarter:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getYear()I
    .locals 1

    .line 270
    iget v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->year:I

    return v0
.end method

.method public final kind()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->month:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const-string v0, "month"

    return-object v0

    .line 284
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->quarter:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v0, "quarter"

    return-object v0

    .line 285
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->half:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const-string v0, "halfyear"

    return-object v0

    :cond_2
    const-string v0, "year"

    return-object v0
.end method

.method public final setHalf(Ljava/lang/Integer;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->half:Ljava/lang/Integer;

    return-void
.end method

.method public final setMonth(Ljava/lang/Integer;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->month:Ljava/lang/Integer;

    return-void
.end method

.method public final setQuarter(Ljava/lang/Integer;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->quarter:Ljava/lang/Integer;

    return-void
.end method

.method public final setYear(I)V
    .locals 0

    .line 270
    iput p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->year:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 273
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->month:Ljava/lang/Integer;

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f03000a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->month:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_0
    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->year:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 276
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->quarter:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f03000e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->quarter:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_2
    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->year:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 277
    :cond_3
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->half:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f030007

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->half:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_4
    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->year:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 278
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final value()Ljava/lang/String;
    .locals 3

    .line 290
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->month:Ljava/lang/Integer;

    const/16 v1, 0x2e

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->month:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->year:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 294
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->quarter:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->quarter:Ljava/lang/Integer;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->year:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 298
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->half:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 299
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->half:Ljava/lang/Integer;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->year:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 302
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

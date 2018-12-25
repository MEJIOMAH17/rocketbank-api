.class public final Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;
.super Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;
.source "DatePeriodChooseDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Custom"
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/Ref;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;-><init>(Lkotlin/jvm/internal/Ref;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;->value:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 241
    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final kind()Ljava/lang/String;
    .locals 1

    const-string v0, "custom"

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;->value:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 247
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final value()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.class public abstract Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;
.super Ljava/lang/Object;
.source "DatePeriodChooseDialog.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;,
        Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;,
        Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;,
        Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;->Companion:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract kind()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract value()Ljava/lang/String;
.end method

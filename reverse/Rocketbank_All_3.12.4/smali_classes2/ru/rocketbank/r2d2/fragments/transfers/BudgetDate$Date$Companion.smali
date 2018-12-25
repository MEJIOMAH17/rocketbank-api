.class public final Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date$Companion;
.super Ljava/lang/Object;
.source "DatePeriodChooseDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 214
    invoke-static {}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->access$getFormat$cp()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

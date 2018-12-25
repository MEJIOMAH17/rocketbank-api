.class public final Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;
.super Ljava/lang/Object;
.source "DatePeriodChooseDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatePeriodChooseDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatePeriodChooseDialog.kt\nru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion\n*L\n1#1,306:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;-><init>()V

    return-void
.end method

.method public static bridge synthetic newInstance$default(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;ZILjava/lang/Object;)Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;->newInstance(Z)Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDATE_PERIOD()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-static {}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->access$getDATE_PERIOD$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getYears()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->access$getYears$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final newInstance(Z)Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;
    .locals 3

    .line 48
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "IS_MONTH_ONLY"

    .line 50
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final setYears(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->access$setYears$cp(Ljava/util/List;)V

    return-void
.end method

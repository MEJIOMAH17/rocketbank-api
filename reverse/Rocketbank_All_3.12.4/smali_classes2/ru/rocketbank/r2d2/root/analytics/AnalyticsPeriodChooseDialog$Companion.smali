.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$Companion;
.super Ljava/lang/Object;
.source "AnalyticsPeriodChooseDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnalyticsPeriodChooseDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyticsPeriodChooseDialog.kt\nru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$Companion\n*L\n1#1,133:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(IILjava/util/Calendar;[I)Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;
    .locals 3

    .line 35
    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MONTH"

    .line 37
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "YEAR"

    .line 38
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "JOINT_IDS"

    .line 39
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    if-eqz p3, :cond_0

    const-string p1, "FIRST_OPERATION_DATE"

    .line 40
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

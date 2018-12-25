.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1$2;
.super Ljava/lang/Object;
.source "AnalyticsPeriodChooseDialog.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;->call(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $monthYears:Ljava/util/List;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1$2;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1$2;->$monthYears:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelected(ILjava/lang/String;)V
    .locals 1

    .line 109
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1$2;->$monthYears:Ljava/util/List;

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 110
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1$2;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;

    iget-object p2, p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {p2, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->access$setYear$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;I)V

    .line 111
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1$2;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;

    iget-object p2, p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p2, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->access$setMonth$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;I)V

    return-void
.end method

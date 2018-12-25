.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$2;
.super Ljava/lang/Object;
.source "AnalyticsPeriodChooseDialog.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->fillYearWheel(Lru/rocketbank/core/widgets/WheelView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$2;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 0

    .line 115
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$2;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->access$onCancelClick(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;)V

    return-void
.end method
